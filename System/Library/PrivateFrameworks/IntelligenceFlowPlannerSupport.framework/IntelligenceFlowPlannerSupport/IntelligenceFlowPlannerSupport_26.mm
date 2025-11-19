uint64_t sub_22C07ECB4()
{
  v0 = *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUserDisambiguateExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C07EE0C(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1974C();
      sub_22BE2C988(v6, v7);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v8 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
    sub_22BE25FB0(v8);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07EE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(0) + 20);
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

void sub_22C07F00C()
{
  sub_22BE19460();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_22BE48298();
  v8 = type metadata accessor for TranscriptProtoStatementID(v7);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v12 = sub_22BE3E79C();
  v14 = sub_22BE5CE4C(v12, v13);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A8B4();
  v18 = (sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00) - 8);
  v19 = *(*v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  v21 = *(v4(0) + 20);
  v22 = v18[14];
  sub_22C0B1CCC();
  sub_22C0B1CCC();
  sub_22BE3CAA4(v1);
  if (v23)
  {
    sub_22BE3CAA4(v1 + v22);
    if (v23)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909100, &unk_22C27FD00);
LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  sub_22BE3EA80();
  sub_22BE22868();
  sub_22BE3CAA4(v1 + v22);
  if (v23)
  {
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v24 = sub_22BE33FCC();
  v26 = static TranscriptProtoStatementID.== infix(_:_:)(v24, v25);
  sub_22C0B08BC();
  sub_22BE2C254();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v30(*v0, *v6) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C0B1AC8();
  sub_22BE18E5C();
  sub_22BE2C988(v27, v28);
  v29 = sub_22C272FD4();
LABEL_14:
  sub_22BE1C1DC(v29);
  sub_22BE1AABC();
}

uint64_t sub_22C07F33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AE8, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07F3BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07F42C()
{
  sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return sub_22C270774();
}

uint64_t sub_22C07F4B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFF0);
  sub_22BE199F4(v0, qword_27D90DFF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "extractionCandidates";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoAnswerSynthesisExpression.decodeMessage<A>(decoder:)()
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
      sub_22C07F754();
    }
  }
}

uint64_t sub_22C07F754()
{
  v0 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoAnswerSynthesisExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C07F8BC(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
      sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v6 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
    sub_22BE25FB0(v6);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0) + 20);
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

uint64_t sub_22C07FB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AE0, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07FBE0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07FC50()
{
  sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);

  return sub_22C270774();
}

uint64_t sub_22C07FCDC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E008);
  sub_22BE199F4(v0, qword_27D90E008);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appEntity";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "onScreenText";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoAnswerSynthesisExtractionCandidate.decodeMessage<A>(decoder:)()
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
      sub_22BE231C0();
      sub_22C05D830();
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE236F4();
      sub_22C07FF58(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_22C07FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
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
    sub_22BE33928(v12, &qword_27D909158, &qword_22C27FD50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
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
  sub_22BE33928(v29, &qword_27D909158, &qword_22C27FD50);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoAnswerSynthesisExtractionCandidate.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE3AE04();
      sub_22C0B08BC();
      sub_22BE17D78();
      sub_22C08073C();
      if (v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = sub_22BE17D78();
      sub_22C080534(v11, v12, v13, v14);
      sub_22BE3AE04();
      sub_22C0B08BC();
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
  sub_22BE235A8(v9);
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C080534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909158, &qword_22C27FD50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

uint64_t sub_22C08073C()
{
  v0 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D909158, &qword_22C27FD50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
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

void static TranscriptProtoAnswerSynthesisExtractionCandidate.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909160, &qword_22C27FD58);
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
      sub_22BE33928(v0, &qword_27D909158, &qword_22C27FD50);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
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
    sub_22BE3AE04();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909160, &qword_22C27FD58);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoAnswerSynthesisExtractionCandidateEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D909158, &qword_22C27FD50);
  if (&qword_27D909158)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C080B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AD8, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C080B98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C080C08()
{
  sub_22BE2C988(&qword_27D90F020, type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate);

  return sub_22C270774();
}

uint64_t TranscriptProtoToolParameterValue.decodeMessage<A>(decoder:)()
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
      v3 = sub_22BE236F4();
      sub_22C080D20(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_22C080D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v44 = a3;
  v43 = a2;
  v5 = sub_22C272594();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v36 - v25;
  sub_22BE19DC4(&v36 - v25, 1, 1, v5);
  v38 = a1;
  sub_22BE22868();
  v37 = v15;
  v27 = sub_22BE1AEA8(v14, 1, v15);
  if (v27 == 1)
  {
    sub_22BE33928(v14, &qword_27D90F038, &qword_22C297100);
    v28 = v42;
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
    v29 = v42;
    v30 = *(v42 + 32);
    v30(v10, v19, v5);
    v30(v26, v10, v5);
    sub_22BE19DC4(v26, 0, 1, v5);
    v28 = v29;
  }

  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  v31 = v40;
  sub_22C2706F4();
  if (v31)
  {
    v32 = v26;
    return sub_22BE33928(v32, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v24, 1, v5) == 1)
  {
    sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
    v32 = v24;
    return sub_22BE33928(v32, &qword_27D909128, &qword_22C294AA0);
  }

  v34 = *(v28 + 32);
  v34(v39, v24, v5);
  if (v27 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
  v35 = v38;
  sub_22BE33928(v38, &qword_27D90F038, &qword_22C297100);
  v34(v35, v39, v5);
  return sub_22BE19DC4(v35, 0, 1, v37);
}

uint64_t sub_22C08122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  if (sub_22BE1AEA8(v7, 1, v13) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F038, &qword_22C297100);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static TranscriptProtoToolParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90F040, &qword_22C297108);
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
      sub_22BE33928(v0, &qword_27D90F038, &qword_22C297100);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoToolParameterValue(0);
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
    sub_22BE33928(v0, &qword_27D90F040, &qword_22C297108);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoToolParameterValueEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F038, &qword_22C297100);
  if (&qword_27D90F038)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C0816C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AD0, type metadata accessor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C081744(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0817B4()
{
  sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);

  return sub_22C270774();
}

uint64_t sub_22C081840()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E038);
  sub_22BE199F4(v0, qword_27D90E038);
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
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSpanMatchedEntityStatement.decodeMessage<A>(decoder:)()
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
      sub_22C081ACC();
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C081ACC()
{
  v0 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0) + 20);
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE2C988(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity);
  return sub_22C2706F4();
}

void sub_22C081BD4()
{
  sub_22BE1B214();
  v2 = v1;
  v4 = v3;
  sub_22BE33A5C();
  v5 = sub_22BE192B4();
  v6(v5);
  if (!v0)
  {
    v7 = sub_22BE17D78();
    v4(v7);
    v8 = *(v2(0) + 24);
    sub_22BE19514();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C081C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909138, &qword_22C2B5A80);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSpanMatchedEntityStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v45);
  v12 = sub_22BE5CE4C(&qword_27D909140, &unk_22C27FD40);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
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
  v26 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D909100;
    v33 = &unk_22C27FD00;
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
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v35 = sub_22BE1A6BC();
  v37 = static TranscriptProtoStatementID.== infix(_:_:)(v35, v36);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v38 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  sub_22BE35EA0(v38);
  sub_22BE4270C();
  sub_22BE3AEBC();
  v39 = sub_22BE2BA98();
  sub_22BE36144(v39, v40);
  if (v31)
  {
    sub_22BE18A84();
    if (v31)
    {
      sub_22BE33928(v0, &qword_27D909138, &qword_22C2B5A80);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v43, v44);
      v42 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v41)
  {
    sub_22C0B1AA4();
LABEL_19:
    v32 = &qword_27D909140;
    v33 = &unk_22C27FD40;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoSpanMatchedEntity.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D909138, &qword_22C2B5A80);
  if (&qword_22C2B5A80)
  {
    goto LABEL_24;
  }

LABEL_21:
  v42 = 0;
LABEL_22:
  sub_22BE1C1DC(v42);
  sub_22BE1AABC();
}

uint64_t sub_22C082254(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AC8, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0822D4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C082344()
{
  sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return sub_22C270774();
}

void sub_22C08246C()
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
  }

  sub_22BEE93D4();
}

void TranscriptProtoEntitySpanMatchResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0), sub_22BE2C988(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
    sub_22BE294F8(matched);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C082638(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AC0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0826B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C082728()
{
  sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return sub_22C270774();
}

uint64_t sub_22C0827B4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E068);
  sub_22BE199F4(v0, qword_27D90E068);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrittenQuery";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retrievedTools";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "types";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoToolRetrievalResponse.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 3:
        sub_22BE2037C();
        sub_22C270614();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C082B04();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C082BA4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C082B04()
{
  type metadata accessor for ContextProtoRetrievedTool(0);
  sub_22BE2C988(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool);
  return sub_22C2706E4();
}

uint64_t sub_22C082BA4()
{
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BE2C988(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType);
  return sub_22C2706E4();
}

void TranscriptProtoToolRetrievalResponse.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_22BE1B448();
    if (!v5 || (sub_22BE2910C(), sub_22C270844(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (sub_22BE3C588(), sub_22C2707F4(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_22C0B17D0(), sub_22BE2C988(v6, v7), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_22BE2C988(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
          {
            v8 = *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
            sub_22BE1AC30();
          }
        }
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoToolRetrievalResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v10 = *(v3 + 40);
  v11 = *(v2 + 40);
  sub_22BE98FD4();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v3 + 48);
  v14 = *(v2 + 48);
  sub_22BE9983C();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v17, v18);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C082F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AB8, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C082F9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08300C()
{
  sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return sub_22C270774();
}

uint64_t sub_22C083098()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E080);
  sub_22BE199F4(v0, qword_27D90E080);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 5;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 8;
  *v12 = "interpretedStatementResults";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemResponse.decodeMessage<A>(decoder:)()
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
      case 8:
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 7:
        sub_22C0B17B8();
        sub_22BE18E2C();
        sub_22C097DC8();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C083394();
        break;
    }
  }
}

uint64_t sub_22C083394()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 20);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
  return sub_22C2706F4();
}

void TranscriptProtoSystemResponse.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C083518(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22C0B17B8();
    sub_22BE17D60();
    sub_22C098190();
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
      sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v6 = type metadata accessor for TranscriptProtoSystemResponse(0);
    sub_22BE375E4(v6);
    sub_22BE363D4();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C083518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F078, &unk_22C2AE7D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSystemResponse.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE2021C();
  v6 = type metadata accessor for TranscriptProtoResponseOutput(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v10 = sub_22BE289D8();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = sub_22BE5CE4C(&qword_27D90F080, &qword_22C297110);
  sub_22BE252F0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE25CD0();
  v35 = type metadata accessor for TranscriptProtoSystemResponse(0);
  sub_22C0B1DC0(v35);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v1);
  if (!v20)
  {
    sub_22BE3AF28();
    sub_22BE22868();
    sub_22BE19FE0(v1 + v2);
    if (!v20)
    {
      sub_22C0B0868();
      sub_22BE1B5E0();
      static TranscriptProtoResponseOutput.== infix(_:_:)();
      v23 = v22;
      sub_22BE194F8();
      sub_22C0B08BC();
      sub_22BE18240();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D90F078, &unk_22C2AE7D0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v1, &qword_27D90F080, &qword_22C297110);
    goto LABEL_10;
  }

  sub_22BE19FE0(v1 + v2);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90F078, &unk_22C2AE7D0);
LABEL_13:
  v24 = *(v35 + 24);
  v25 = *(v4 + v24 + 8);
  if (*(v0 + v24 + 8))
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    sub_22BE3A508((v0 + v24));
    v28 = v20 && v26 == v27;
    if (!v28 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v25)
  {
    goto LABEL_10;
  }

  v29 = *v0;
  v30 = *v4;
  sub_22BE9D960();
  if (v31)
  {
    v32 = *(v35 + 28);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v33, v34);
    v21 = sub_22BE39E58();
    goto LABEL_11;
  }

LABEL_10:
  v21 = 0;
LABEL_11:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}

uint64_t sub_22C083A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AB0, type metadata accessor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C083A9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C083B0C()
{
  sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);

  return sub_22C270774();
}

uint64_t sub_22C083B98()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E098);
  sub_22BE199F4(v0, qword_27D90E098);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultStatementId";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originProgramStatementId";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionEventId";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "toolId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "originTaskStatementId";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoInterpretedStatementResult.decodeMessage<A>(decoder:)()
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
        sub_22C0B1860();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C083FA0();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22C084054();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C084108();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C083FA0()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C084054()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C084108()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoInterpretedStatementResult.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22BE51670();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22C084294(v1, v2, v3, v4);
    v5 = sub_22BE17D78();
    sub_22C084468(v5, v6, v7, v8);
    sub_22BE17D78();
    sub_22C099168();
    sub_22BE17D78();
    sub_22C0983C4();
    v9 = sub_22BE17D78();
    sub_22C08463C(v9, v10, v11, v12);
    v13 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 40);
    sub_22BE19514();
  }
}

uint64_t sub_22C084294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 20);
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

uint64_t sub_22C084468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 24);
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

uint64_t sub_22C08463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 36);
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

void static TranscriptProtoInterpretedStatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22C0B1E74();
  v88 = type metadata accessor for TranscriptProtoStatementID(v3);
  v4 = sub_22BE18000(v88);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE38A28(v7);
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v83[1] = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  v85 = v83 - v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  sub_22BE3668C(v16);
  v17 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v18 = sub_22BE272C0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v84 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v23);
  v24 = sub_22BE374E4();
  v25 = type metadata accessor for TranscriptProtoStatementOutcome(v24);
  v26 = sub_22BE18000(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  v29 = sub_22BE1B5E0();
  v31 = sub_22BE5CE4C(v29, v30);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE28738();
  v35 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1B72C();
  v40 = *(v39 + 56);
  v89 = v2;
  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v41)
  {
    sub_22BE181B0(v0 + v40);
    if (v41)
    {
      sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_11;
    }

LABEL_9:
    v42 = &qword_27D90CA70;
    v43 = &qword_22C2968E8;
    v44 = v0;
LABEL_26:
    sub_22BE33928(v44, v42, v43);
    goto LABEL_27;
  }

  sub_22BE22868();
  sub_22BE181B0(v0 + v40);
  if (v41)
  {
    sub_22BE38A40();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B1878();
  sub_22C0B0868();
  static TranscriptProtoStatementOutcome.== infix(_:_:)();
  v46 = v45;
  sub_22BE36680();
  sub_22C0B08BC();
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90CA68, &unk_22C296C50);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v47 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v48 = v47[5];
  v49 = v87;
  v50 = *(v87 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v51 = sub_22BE26188();
  if (sub_22BE1AEA8(v51, v52, v88) == 1)
  {
    sub_22BE3E950(v1 + v50);
    if (!v41)
    {
      goto LABEL_25;
    }

    sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
    goto LABEL_17;
  }

  sub_22BE22868();
  sub_22BE3E950(v1 + v50);
  if (v41)
  {
    goto LABEL_24;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v53 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v53, v54);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
LABEL_17:
    v55 = v47[6];
    v56 = *(v49 + 48);
    v1 = v86;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE3E950(v1);
    if (v41)
    {
      sub_22BE3E950(v1 + v56);
      if (!v41)
      {
        goto LABEL_25;
      }

      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22C0B1FA8();
      sub_22BE3E950(v1 + v56);
      if (v57)
      {
        goto LABEL_24;
      }

      sub_22BE18AA8();
      sub_22C0B0868();
      v59 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v59, v60);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v61 = v47[7];
    sub_22C0B1E80();
    if (v64)
    {
      if (!v62)
      {
        goto LABEL_27;
      }

      sub_22BE3A508(v63);
      v67 = v41 && v65 == v66;
      if (!v67 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v62)
    {
      goto LABEL_27;
    }

    v68 = v47[8];
    sub_22C0B1E80();
    if (v71)
    {
      if (!v69)
      {
        goto LABEL_27;
      }

      sub_22BE3A508(v70);
      v74 = v41 && v72 == v73;
      if (!v74 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v69)
    {
      goto LABEL_27;
    }

    v75 = v47[9];
    v76 = *(v49 + 48);
    v1 = v84;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE3E950(v1);
    if (v41)
    {
      sub_22BE3E950(v1 + v76);
      if (!v41)
      {
        goto LABEL_25;
      }

      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_55:
      v80 = v47[10];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v81, v82);
      sub_22C0B1968();
      v58 = sub_22C272FD4();
      goto LABEL_28;
    }

    sub_22BE22868();
    sub_22BE3E950(v1 + v76);
    if (!v77)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v78 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v78, v79);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_55;
    }

LABEL_24:
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_25:
    v42 = &qword_27D909100;
    v43 = &unk_22C27FD00;
    v44 = v1;
    goto LABEL_26;
  }

LABEL_27:
  v58 = 0;
LABEL_28:
  sub_22BE1C1DC(v58);
  sub_22BE1AABC();
}

uint64_t sub_22C084F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AA8, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C084FDC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08504C()
{
  sub_22BE2C988(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return sub_22C270774();
}

uint64_t sub_22C0850D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0B0);
  sub_22BE199F4(v0, qword_27D90E0B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "expression";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "isRoot";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "isExpanded";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "canonicalIndex";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "executionSupportType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoProgramStatement.decodeMessage<A>(decoder:)()
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
        sub_22BE1A338();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C0854CC();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C085580();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C0855E4();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22C085628();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22C08568C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0854CC()
{
  v0 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 20);
  type metadata accessor for TranscriptProtoExpression(0);
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression);
  return sub_22C2706F4();
}

uint64_t sub_22C0855E4()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 28));
  return sub_22C2705B4();
}

uint64_t sub_22C08568C()
{
  v0 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 36);
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  return sub_22C2706F4();
}

void TranscriptProtoProgramStatement.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22BE51D20();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22C0857FC(v1, v2, v3, v4);
    v5 = sub_22BE17D78();
    sub_22C0859D0(v5);
    sub_22BE17D78();
    sub_22C085A48();
    v6 = sub_22BE17D78();
    sub_22C085AAC(v6);
    v7 = sub_22BE17D78();
    sub_22C085B24(v7, v8, v9, v10);
    v11 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 40);
    sub_22BE19514();
  }
}

uint64_t sub_22C0857FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F0A8, &qword_22C2B5B70);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C0859D0(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C085A48()
{
  v1 = sub_22BE378F4();
  result = v2(v1);
  if (*(v0 + *(result + 28)) != 2)
  {
    sub_22C0B164C();
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22C085AAC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270854();
  }

  return result;
}

uint64_t sub_22C085B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 36);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F098, &unk_22C2AE7E0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoProgramStatement.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = v4;
  v81 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v6 = sub_22BE18000(v81);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22C0B1ABC(v9);
  v10 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v80 = sub_22BE5CE4C(&qword_27D90F0A0, &qword_22C297118);
  sub_22BE18000(v80);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE181D0(v17, v78);
  v18 = type metadata accessor for TranscriptProtoExpression(0);
  v19 = sub_22BE272C0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22BE38A28(v22);
  v23 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE29250(v27, v79);
  v28 = sub_22BE5CE4C(&qword_27D90F0B0, &qword_22C297120);
  sub_22BE28784(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE23E58();
  v32 = type metadata accessor for TranscriptProtoStatementID(0);
  v33 = sub_22BE18000(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE18DFC();
  v36 = sub_22BE1AEE4();
  v38 = sub_22BE5CE4C(v36, v37);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE19668();
  v42 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE19E64();
  v47 = *(v46 + 56);
  sub_22BE25C08();
  sub_22C0B1A8C();
  sub_22C0B1C60();
  sub_22C0B1A8C();
  sub_22BE18190(v1);
  if (v48)
  {
    sub_22BE18A84();
    if (v48)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_12;
    }

LABEL_9:
    v49 = &qword_27D909100;
    v50 = &unk_22C27FD00;
LABEL_10:
    v51 = v1;
LABEL_21:
    sub_22BE33928(v51, v49, v50);
    goto LABEL_22;
  }

  sub_22BE3C5E4();
  sub_22BE22868();
  sub_22BE18A84();
  if (v48)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v52 = static TranscriptProtoStatementID.== infix(_:_:)(v0, v2);
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v53 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v54 = v53[5];
  v55 = *(v83 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v56 = sub_22BE3C598();
  sub_22BE36144(v56, v57);
  if (v48)
  {
    sub_22BE18190(v3 + v55);
    if (v48)
    {
      sub_22BE33928(v3, &qword_27D90F0A8, &qword_22C2B5B70);
      goto LABEL_25;
    }

LABEL_20:
    v49 = &qword_27D90F0B0;
    v50 = &qword_22C297120;
    v51 = v3;
    goto LABEL_21;
  }

  sub_22BE22868();
  sub_22BE18190(v3 + v55);
  if (v58)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_20;
  }

  sub_22C0B0868();
  v60 = sub_22BE200E0();
  static TranscriptProtoExpression.== infix(_:_:)(v60);
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90F0A8, &qword_22C2B5B70);
  if ((&qword_22C2B5B70 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_22C0B1BDC(v53[6]);
  if (v48)
  {
    if (v61 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v61 == 2 || ((v62 ^ v61) & 1) != 0)
  {
    goto LABEL_22;
  }

  sub_22C0B1BDC(v53[7]);
  if (v48)
  {
    if (v63 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v63 == 2 || ((v64 ^ v63) & 1) != 0)
  {
    goto LABEL_22;
  }

  v65 = v53[8];
  v66 = (v5 + v65);
  v67 = *(v5 + v65 + 4);
  v68 = (v84 + v65);
  v69 = *(v84 + v65 + 4);
  if (v67)
  {
    if (!v69)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v66 != *v68)
    {
      LOBYTE(v69) = 1;
    }

    if (v69)
    {
      goto LABEL_22;
    }
  }

  v70 = v53[9];
  v71 = *(v80 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  v1 = v82;
  sub_22BE3CBC0();
  sub_22BE22868();
  v72 = sub_22BFB1A7C();
  sub_22BE36144(v72, v73);
  if (v48)
  {
    sub_22BE18A84();
    if (v48)
    {
      sub_22BE33928(v82, &qword_27D90F098, &unk_22C2AE7E0);
LABEL_53:
      v75 = v53[10];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v76, v77);
      v59 = sub_22BE406DC();
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v74)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_51:
    v49 = &qword_27D90F0A0;
    v50 = &qword_22C297118;
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE200E0();
  static TranscriptProtoProgramStatement.ExecutionSupportType.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v82, &qword_27D90F098, &unk_22C2AE7E0);
  if (&unk_22C2AE7E0)
  {
    goto LABEL_53;
  }

LABEL_22:
  v59 = 0;
LABEL_23:
  sub_22BE1C1DC(v59);
  sub_22BE1AABC();
}

uint64_t sub_22C0863F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AA0, type metadata accessor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C086470(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0864E0()
{
  sub_22BE2C988(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement);

  return sub_22C270774();
}

uint64_t sub_22C086560()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000015, 0x800000022C2D9320);
  qword_27D90E0C8 = 0xD00000000000001BLL;
  unk_27D90E0D0 = 0x800000022C2D89E0;
  return result;
}

uint64_t sub_22C0865F4(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return sub_22BE18944();
}

uint64_t sub_22C086644()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0D8);
  sub_22BE199F4(v0, qword_27D90E0D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supported";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unsupportedListValue";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C086830()
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
      v3 = sub_22BE18E2C();
      v10 = 1;
LABEL_8:
      sub_22C00E1C8(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
    }

    else if (v1 == 1)
    {
      v3 = sub_22BE18E2C();
      v10 = 0;
      goto LABEL_8;
    }
  }
}

void sub_22C0868C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BE410C0();
  if (*v4 == 2)
  {
    goto LABEL_6;
  }

  sub_22BE17D78();
  if (v7)
  {
    sub_22C086A14();
  }

  else
  {
    sub_22C086934();
  }

  if (!v5)
  {
LABEL_6:
    v8 = a4(0);
    sub_22BE235A8(v8);
  }
}

void sub_22C086934()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  v5 = *v0;
  if (v5 == 2 || (v5 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v6, v7);
    sub_22C0B1684();
    sub_22C0B16A4();
    v8 = sub_22C0B14DC();
    v9(v8);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

void sub_22C086A14()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  v5 = *v0;
  if (v5 == 2 || (v5 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v6, v7);
    sub_22BE19478();
    sub_22C0B16A4();
    v8 = sub_22C0B14DC();
    v9(v8);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

uint64_t sub_22C086B10()
{
  sub_22BE18378();
  sub_22C0B1DF0(v0, v1);
  if (v4 != 2)
  {
    if (v3 == 2 || ((v3 ^ v4) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    v5 = v2(0);
    sub_22BE3636C(v5);
    sub_22BE18E5C();
    sub_22BE2C988(v6, v7);
    return sub_22BE2B85C() & 1;
  }

  if (v3 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_22C086C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A98, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C086C98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C086D08()
{
  sub_22BE2C988(&qword_27D910648, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return sub_22C270774();
}

uint64_t sub_22C086D94()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281075FF8);
  sub_22BE199F4(v0, qword_281075FF8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceLocale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userLocale";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "responseLocale";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C086F9C()
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

    if (result == 3 || result == 2)
    {
      sub_22BE27184();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE27184();
      v2();
    }
  }

  return result;
}

uint64_t sub_22C087040(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 32) == *(v3 + 32) && *(v4 + 40) == *(v3 + 40);
  if (!v12 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v13 = a3(0);
  sub_22C0B1BAC(v13);
  sub_22BE18E5C();
  sub_22BE2C988(v14, v15);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C087174(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A90, type metadata accessor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0871F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C087260()
{
  sub_22BE2C988(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);

  return sub_22C270774();
}

uint64_t sub_22C0872EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E0F0);
  sub_22BE199F4(v0, qword_27D90E0F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voiceGender";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userGender";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t static TranscriptProtoGenderSettings.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v2 + 1) != *(v3 + 1))
  {
    return 0;
  }

  v4 = type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE23A04(v4);
  sub_22BE18E5C();
  sub_22BE2C988(v5, v6);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0877C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A88, type metadata accessor for TranscriptProtoGenderSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C087840(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0878B0()
{
  sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);

  return sub_22C270774();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270634();
    }
  }

  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270804(), !v1))
  {
    v3 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
    return sub_22BE294F8(v3);
  }

  return result;
}

uint64_t static TranscriptProtoDeviceDetailsDeviceType.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_22BE1B2D4();
  v3 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v2);
  sub_22BE3636C(v3);
  sub_22BE18E5C();
  sub_22BE2C988(v4, v5);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C087B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A80, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C087BC4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C087C34()
{
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_22C270774();
}

uint64_t sub_22C087CC0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E120);
  sub_22BE199F4(v0, qword_27D90E120);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceIdsId";
  *(v6 + 8) = 11;
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
  return sub_22C2708A4();
}

uint64_t sub_22C087ED8()
{
  v0 = *(type metadata accessor for TranscriptProtoDeviceDetails(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_22C2706F4();
}

uint64_t sub_22C087FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoDeviceDetails(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F0E8, &qword_22C2B5C90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoDeviceDetails.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE23708();
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE18DFC();
  v10 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = sub_22BE5CE4C(&qword_27D90F0F0, &qword_22C297128);
  sub_22BE28F58(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E64();
  v18 = *v0;
  v19 = v0[1];
  sub_22BE33C20();
  v22 = v22 && v20 == v21;
  if (!v22 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_17;
  }

  v23 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE3E440(v23);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1568();
  sub_22BE181B0(v1);
  if (v22)
  {
    sub_22BE181B0(v1 + v4);
    if (v22)
    {
      sub_22BE33928(v1, &qword_27D90F0E8, &qword_22C2B5C90);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v1 + v4);
  if (v27)
  {
    sub_22C0B1AA4();
LABEL_15:
    v28 = &qword_27D90F0F0;
    v29 = &qword_22C297128;
LABEL_16:
    sub_22BE33928(v1, v28, v29);
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  sub_22C0B1D54();
  if (*v3 != *v2)
  {
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v28 = &qword_27D90F0E8;
    v29 = &qword_22C2B5C90;
    goto LABEL_16;
  }

  v30 = *(v6 + 20);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v31, v32);
  v33 = sub_22C0B1B14();
  sub_22C0B08BC();
  sub_22BE3EA80();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90F0E8, &qword_22C2B5C90);
  if ((v33 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_22C0B16F4();
  sub_22BE18E5C();
  sub_22BE2C988(v24, v25);
  v26 = sub_22BE35FB8();
LABEL_18:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22C08850C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A78, type metadata accessor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08858C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0885FC()
{
  sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);

  return sub_22C270774();
}

uint64_t sub_22C088688()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281077F58);
  sub_22BE199F4(v0, qword_281077F58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStatementID.decodeMessage<A>(decoder:)()
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
      sub_22BE2037C();
      sub_22C270694();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706C4();
    }
  }

  return result;
}

uint64_t static TranscriptProtoStatementID.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    sub_22BE18378();
    v4 = *(v2 + 16);
    if (*(v3 + 16))
    {
      if (v4)
      {
        sub_22C0B1A50();
        v7 = v7 && v5 == v6;
        if (v7 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v4)
    {
LABEL_9:
      v8 = type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE23A04(v8);
      sub_22BE18E5C();
      sub_22BE2C988(v9, v10);
      return sub_22BE2B85C() & 1;
    }
  }

  return 0;
}

uint64_t sub_22C0889EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A70, type metadata accessor for TranscriptProtoStatementID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C088A68(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C088AD8()
{
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);

  return sub_22C270774();
}

uint64_t sub_22C088B64()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E138);
  sub_22BE199F4(v0, qword_27D90E138);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tool";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originProgramStatementId";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoToolResolution.decodeMessage<A>(decoder:)()
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
        sub_22C088F0C();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C088E58();
        break;
      case 1:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C088E58()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C088F0C()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void sub_22C089028()
{
  sub_22BE2BB34();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE33A5C();
  v7 = sub_22BE192B4();
  v8(v7);
  if (!v0)
  {
    v9 = sub_22BE17D78();
    v6(v9);
    v10 = sub_22BE17D78();
    v4(v10);
    v11 = *(v2(0) + 28);
    sub_22BE19514();
  }

  sub_22BEE93D4();
}

uint64_t sub_22C0890C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = sub_22C272674();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C180, &unk_22C296C40);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_27D90C790, MEMORY[0x277D72898]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C0892C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 20);
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

uint64_t sub_22C089494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 24);
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

void static TranscriptProtoToolResolution.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE37EB4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE272C0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v9);
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BE38A28(v15);
  v16 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v17 = sub_22BE28784(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  v71 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE183BC();
  v22 = sub_22C272674();
  v23 = sub_22BE35868(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE336DC();
  v28 = &qword_27D90C180;
  v29 = sub_22BE2590C();
  v31 = sub_22BE5CE4C(v29, v30);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE234F4();
  v35 = sub_22BE5CE4C(&qword_27D90C188, &qword_22C290E48);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE28738();
  v40 = *(v39 + 56);
  sub_22C0B1B94();
  sub_22BEC067C();
  sub_22C0B1C60();
  sub_22BEC067C();
  sub_22BE181B0(v1);
  if (v41)
  {
    sub_22BE181B0(v1 + v40);
    if (v41)
    {
      sub_22BE33928(v1, &qword_27D90C180, &unk_22C296C40);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE181B0(v1 + v40);
    if (!v41)
    {
      v48 = sub_22C0B1C84();
      v49(v48);
      sub_22BE39220();
      sub_22BE2C988(v50, v51);
      sub_22BE39EAC();
      v28 = sub_22C272FD4();
      v52 = *(v25 + 8);
      v53 = sub_22BE19454();
      v52(v53);
      v54 = sub_22BE35838();
      v52(v54);
      sub_22BE33928(v1, &qword_27D90C180, &unk_22C296C40);
      if ((v28 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      v55 = type metadata accessor for TranscriptProtoToolResolution(0);
      sub_22C0B1EBC(v55);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      v56 = sub_22BE3C688();
      if (sub_22BE1AEA8(v56, v57, v72) == 1)
      {
        sub_22C0B1518(v3 + v28);
        if (!v41)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE35EF8();
        sub_22C0B1518(v3 + v28);
        if (v41)
        {
          sub_22BE17DB0();
          sub_22C0B08BC();
LABEL_18:
          v45 = &qword_27D909100;
          v46 = &unk_22C27FD00;
          v47 = v3;
          goto LABEL_29;
        }

        sub_22BE18AA8();
        sub_22C0B0868();
        v58 = sub_22BE1B328();
        v60 = static TranscriptProtoStatementID.== infix(_:_:)(v58, v59);
        sub_22BE1AB74();
        sub_22C0B08BC();
        sub_22BE200D4();
        sub_22C0B08BC();
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v60 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v61 = *(v0 + 24);
      v62 = *(v40 + 48);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1518(v71);
      if (v41)
      {
        sub_22C0B1518(v71 + v62);
        if (v41)
        {
          sub_22BE33928(v71, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22C0B1518(v71 + v62);
        if (!v63)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v65 = sub_22BE392D4();
          v67 = static TranscriptProtoStatementID.== infix(_:_:)(v65, v66);
          sub_22BE1AB74();
          sub_22C0B08BC();
          sub_22BE33FCC();
          sub_22C0B08BC();
          sub_22BE33928(v71, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((v67 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          v68 = *(v0 + 28);
          sub_22C2704B4();
          sub_22BE18E5C();
          sub_22BE2C988(v69, v70);
          sub_22C0B1968();
          sub_22BE39F74();
          v64 = sub_22C272FD4();
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v45 = &qword_27D909100;
      v46 = &unk_22C27FD00;
      v47 = v71;
      goto LABEL_29;
    }

    v42 = *(v25 + 8);
    v43 = sub_22BE35838();
    v44(v43);
  }

  v45 = &qword_27D90C188;
  v46 = &qword_22C290E48;
  v47 = v1;
LABEL_29:
  sub_22BE33928(v47, v45, v46);
LABEL_30:
  v64 = 0;
LABEL_31:
  sub_22BE1C1DC(v64);
  sub_22BE1AABC();
}

uint64_t sub_22C089CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A68, type metadata accessor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C089D30(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C089DA0()
{
  sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution);

  return sub_22C270774();
}

uint64_t sub_22C089E2C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E150);
  sub_22BE199F4(v0, qword_27D90E150);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "operation";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "statementIdToUndo";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUndoRedoRequest.decodeMessage<A>(decoder:)()
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
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BE52254();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C08A184();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C08A238();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C08A184()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08A238()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUndoRedoRequest.traverse<A>(visitor:)()
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    if (!v0)
    {
      sub_22BE2BC90();
      if (v3)
      {
        sub_22BFC2DD4();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      v4 = sub_22BE17D60();
      sub_22C08A3AC(v4, v5, v6, v7);
      v8 = sub_22BE17D60();
      sub_22C08A580(v8, v9, v10, v11);
      v12 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 36);
      sub_22BE1AC30();
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C08A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 28);
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

uint64_t sub_22C08A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 32);
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

void static TranscriptProtoUndoRedoRequest.== infix(_:_:)()
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
  v19 = *v0;
  v20 = v0[1];
  sub_22BE33C20();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22C0B1C78();
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_37;
    }

    sub_22BE3C714();
    v28 = v23 && v26 == v27;
    if (!v28 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_15:
    sub_22BE36248();
    if (!v23)
    {
      goto LABEL_37;
    }

    v46 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
    v29 = v46[7];
    v30 = *(v2 + 48);
    sub_22BE26234();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1972C(v3);
    if (v23)
    {
      sub_22BE1972C(v3 + v30);
      if (v23)
      {
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_27:
        v36 = v46[8];
        v37 = *(v2 + 48);
        sub_22BE4885C();
        sub_22BE4885C();
        sub_22BE26A1C();
        if (v23)
        {
          sub_22BE1972C(v1 + v37);
          if (v23)
          {
            sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
            goto LABEL_40;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE1972C(v1 + v37);
          if (!v38)
          {
            sub_22BE1868C();
            sub_22C0B0868();
            v40 = sub_22BE200E0();
            v42 = static TranscriptProtoStatementID.== infix(_:_:)(v40, v41);
            sub_22BE324FC();
            sub_22C0B08BC();
            sub_22BE33560();
            sub_22C0B08BC();
            sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
            if ((v42 & 1) == 0)
            {
              goto LABEL_37;
            }

LABEL_40:
            v43 = v46[9];
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v44, v45);
            v39 = sub_22BE2B85C();
            goto LABEL_38;
          }

          sub_22BE17DB0();
          sub_22C0B08BC();
        }

        v32 = v1;
        goto LABEL_36;
      }
    }

    else
    {
      sub_22BE3E79C();
      sub_22BE22868();
      sub_22BE1972C(v3 + v30);
      if (!v31)
      {
        sub_22BE4160C();
        sub_22C0B0868();
        v33 = sub_22C0B1E68();
        v35 = static TranscriptProtoStatementID.== infix(_:_:)(v33, v34);
        sub_22C0B08BC();
        sub_22BE25C94();
        sub_22C0B08BC();
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v35 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

      sub_22BE17DB0();
      sub_22C0B08BC();
    }

    v32 = v3;
LABEL_36:
    sub_22BE33928(v32, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_37:
  v39 = 0;
LABEL_38:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t sub_22C08ABB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A60, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08AC34(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08ACA4()
{
  sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return sub_22C270774();
}

uint64_t sub_22C08AD30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E168);
  sub_22BE199F4(v0, qword_27D90E168);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operation";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementIdToUndo";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C08AFEC()
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
      case 1:
        sub_22BE3EA80();
        sub_22C2706A4();
        break;
      case 2:
        v8 = sub_22BE1A8F8();
        v3(v8);
        break;
      case 3:
        v6 = sub_22BE1A8F8();
        v2(v6);
        break;
      case 4:
        v7 = sub_22BE1A8F8();
        v0(v7);
        break;
      default:
        continue;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08B0A4()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08B158()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoClientUndoRedoRequest.traverse<A>(visitor:)()
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v2 || (sub_22BFC2DD4(), sub_22BE23CE4(), sub_22C2707D4(), !v0))
    {
      v3 = sub_22BE17D60();
      sub_22C08B2BC(v3, v4, v5, v6);
      if (!v0)
      {
        v7 = sub_22BE17D60();
        sub_22C08B490(v7, v8, v9, v10);
        v11 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 32);
        sub_22BE1AC30();
      }
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C08B2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 24);
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

uint64_t sub_22C08B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 28);
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

void static TranscriptProtoClientUndoRedoRequest.== infix(_:_:)()
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
  v19 = *v0;
  v20 = v0[1];
  sub_22BE33C20();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22BE36248();
  if (!v23)
  {
    goto LABEL_28;
  }

  v42 = v1;
  v41 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v24 = v41[6];
  v25 = *(v2 + 48);
  sub_22C0B1760();
  sub_22BE22868();
  sub_22C0B1760();
  sub_22BE22868();
  sub_22BE1972C(v3);
  if (v23)
  {
    sub_22BE1972C(v3 + v25);
    if (v23)
    {
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_18;
    }

LABEL_16:
    v27 = v3;
LABEL_27:
    sub_22BE33928(v27, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_28;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v3 + v25);
  if (v26)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_16;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v28 = sub_22C0B1E68();
  v30 = static TranscriptProtoStatementID.== infix(_:_:)(v28, v29);
  sub_22C0B08BC();
  sub_22BE25C94();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  v31 = v41[7];
  v32 = *(v2 + 48);
  sub_22BE4885C();
  sub_22BE4885C();
  sub_22BE1972C(v42);
  if (v23)
  {
    sub_22BE1972C(v42 + v32);
    if (v23)
    {
      sub_22BE33928(v42, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_31:
      v38 = v41[8];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v39, v40);
      v34 = sub_22BE2B85C();
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  sub_22C0B1DB4();
  sub_22BE22868();
  sub_22BE1972C(v42 + v32);
  if (v33)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_26:
    v27 = v42;
    goto LABEL_27;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v35 = sub_22BE200E0();
  v37 = static TranscriptProtoStatementID.== infix(_:_:)(v35, v36);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE33560();
  sub_22C0B08BC();
  sub_22BE33928(v42, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v37)
  {
    goto LABEL_31;
  }

LABEL_28:
  v34 = 0;
LABEL_29:
  sub_22BE1C1DC(v34);
  sub_22BE1AABC();
}

uint64_t sub_22C08BA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A58, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08BB18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08BB88()
{
  sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return sub_22C270774();
}

uint64_t sub_22C08BC14()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E180);
  sub_22BE199F4(v0, qword_27D90E180);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTypeConversionRequest.decodeMessage<A>(decoder:)()
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
        sub_22C08BFAC();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C08BEF8();
        break;
      case 1:
        sub_22C0B13FC();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C08BEF8()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 20);
  sub_22C2725A4();
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800]);
  return sub_22C2706F4();
}

uint64_t sub_22C08BFAC()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 20);
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

uint64_t sub_22C08C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 24);
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

void static TranscriptProtoTypeConversionRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22C0B1BA0();
  v88 = type metadata accessor for TranscriptProtoStatementID(v3);
  v4 = sub_22BE18000(v88);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v7);
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE33FF0(v12, v82);
  v87 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v87);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE4098C(v16, v83);
  v94 = sub_22C2725A4();
  v17 = sub_22BE179D8(v94);
  v91 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22C0B1ABC(v21);
  v22 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE181D0(v26, v84);
  v27 = sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE1B7B0(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1BC94(v31, v85);
  v32 = sub_22C272594();
  v33 = sub_22BE35868(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE38390();
  v38 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A8B4();
  v42 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1B01C();
  v47 = *(v46 + 56);
  sub_22BE25300();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v48)
  {
    sub_22BE181B0(v2 + v47);
    if (v48)
    {
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE3EA80();
    sub_22BE22868();
    sub_22BE181B0(v2 + v47);
    if (!v48)
    {
      sub_22BE47DF4();
      v55(v1, v2 + v47, v0);
      sub_22BE192C8();
      sub_22BE2C988(v56, v57);
      sub_22BE2C254();
      v58 = sub_22C272FD4();
      v59 = *(v35 + 8);
      v60 = sub_22BE1804C();
      v59(v60);
      v61 = sub_22BE2565C();
      v59(v61);
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      v62 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
      v63 = v62[5];
      v64 = *(v92 + 48);
      sub_22BE27B84();
      sub_22BE22868();
      sub_22C0B1C48();
      sub_22BE27B84();
      sub_22BE22868();
      v65 = sub_22BE406A0();
      if (sub_22BE1AEA8(v65, v66, v94) == 1)
      {
        sub_22BE200F8(v93 + v64);
        if (!v48)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v93, &qword_27D90C138, &qword_22C2CB830);
      }

      else
      {
        sub_22BE22868();
        sub_22BE200F8(v93 + v64);
        if (v48)
        {
          (*(v91 + 8))(v90, v94);
LABEL_18:
          v52 = &qword_27D90C140;
          v53 = &qword_22C290E40;
          v54 = v93;
          goto LABEL_29;
        }

        sub_22BE47DF4();
        v67(v86, v93 + v64, v94);
        sub_22BE23328();
        sub_22BE2C988(v68, v69);
        sub_22C0B1B94();
        v70 = sub_22C272FD4();
        v71 = *(v91 + 8);
        v71(v86, v94);
        v71(v90, v94);
        sub_22BE33928(v93, &qword_27D90C138, &qword_22C2CB830);
        if ((v70 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v72 = v62[6];
      sub_22C0B1B6C();
      sub_22BE27B84();
      sub_22BE22868();
      sub_22BE3CBC0();
      sub_22BE22868();
      v73 = sub_22BFB1A7C();
      sub_22BE36144(v73, v74);
      if (v48)
      {
        sub_22BE18A84();
        if (v48)
        {
          sub_22BE33928(v89, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22C0B1D14();
        sub_22BE18A84();
        if (!v75)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v77 = sub_22BE200E0();
          static TranscriptProtoStatementID.== infix(_:_:)(v77, v78);
          sub_22BE39304();
          sub_22BE39EAC();
          sub_22C0B08BC();
          sub_22BE33928(v89, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((&unk_22C2AE4A0 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          v79 = v62[7];
          sub_22C2704B4();
          sub_22BE18E5C();
          sub_22BE2C988(v80, v81);
          v76 = sub_22BE406DC();
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v52 = &qword_27D909100;
      v53 = &unk_22C27FD00;
      v54 = v89;
      goto LABEL_29;
    }

    v49 = *(v35 + 8);
    v50 = sub_22BE2565C();
    v51(v50);
  }

  v52 = &qword_27D909130;
  v53 = &unk_22C27FD30;
  v54 = v2;
LABEL_29:
  sub_22BE33928(v54, v52, v53);
LABEL_30:
  v76 = 0;
LABEL_31:
  sub_22BE1C1DC(v76);
  sub_22BE1AABC();
}

uint64_t sub_22C08CBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A50, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08CC64(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08CCD4()
{
  sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return sub_22C270774();
}

uint64_t sub_22C08CD60()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E198);
  sub_22BE199F4(v0, qword_27D90E198);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originStatementId";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTypeConversionResult.decodeMessage<A>(decoder:)()
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
        sub_22C08D0F8();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C08D044();
        break;
      case 1:
        sub_22C0B13FC();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C08D044()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08D0F8()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void sub_22C08D200()
{
  sub_22BE2BB34();
  v4 = v3;
  sub_22BE44820();
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22C016E74();
  if (!v0)
  {
    v5 = sub_22BE17D78();
    v2(v5);
    v6 = sub_22BE17D78();
    v1(v6);
    v7 = *(v4(0) + 28);
    sub_22BE19514();
  }

  sub_22BEE93D4();
}

uint64_t sub_22C08D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 20);
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

uint64_t sub_22C08D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 24);
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

void static TranscriptProtoTypeConversionResult.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE37EB4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE272C0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v9);
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BE38A28(v15);
  v16 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v17 = sub_22BE28784(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  v71 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE183BC();
  v22 = sub_22C272594();
  v23 = sub_22BE35868(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE336DC();
  v28 = &qword_27D909128;
  v29 = sub_22BE2590C();
  v31 = sub_22BE5CE4C(v29, v30);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE234F4();
  v35 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE28738();
  v40 = *(v39 + 56);
  sub_22C0B1B94();
  sub_22BEC067C();
  sub_22C0B1C60();
  sub_22BEC067C();
  sub_22BE181B0(v1);
  if (v41)
  {
    sub_22BE181B0(v1 + v40);
    if (v41)
    {
      sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE181B0(v1 + v40);
    if (!v41)
    {
      v48 = sub_22C0B1C84();
      v49(v48);
      sub_22BE192C8();
      sub_22BE2C988(v50, v51);
      sub_22BE39EAC();
      v28 = sub_22C272FD4();
      v52 = *(v25 + 8);
      v53 = sub_22BE19454();
      v52(v53);
      v54 = sub_22BE35838();
      v52(v54);
      sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      v55 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
      sub_22C0B1EBC(v55);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      v56 = sub_22BE3C688();
      if (sub_22BE1AEA8(v56, v57, v72) == 1)
      {
        sub_22C0B1518(v3 + v28);
        if (!v41)
        {
          goto LABEL_18;
        }

        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE35EF8();
        sub_22C0B1518(v3 + v28);
        if (v41)
        {
          sub_22BE17DB0();
          sub_22C0B08BC();
LABEL_18:
          v45 = &qword_27D909100;
          v46 = &unk_22C27FD00;
          v47 = v3;
          goto LABEL_29;
        }

        sub_22BE18AA8();
        sub_22C0B0868();
        v58 = sub_22BE1B328();
        v60 = static TranscriptProtoStatementID.== infix(_:_:)(v58, v59);
        sub_22BE1AB74();
        sub_22C0B08BC();
        sub_22BE200D4();
        sub_22C0B08BC();
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v60 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v61 = *(v0 + 24);
      v62 = *(v40 + 48);
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1754();
      sub_22BE22868();
      sub_22C0B1518(v71);
      if (v41)
      {
        sub_22C0B1518(v71 + v62);
        if (v41)
        {
          sub_22BE33928(v71, &qword_27D9090F8, &unk_22C2AE4A0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22C0B1518(v71 + v62);
        if (!v63)
        {
          sub_22BE18AA8();
          sub_22C0B0868();
          v65 = sub_22BE392D4();
          v67 = static TranscriptProtoStatementID.== infix(_:_:)(v65, v66);
          sub_22BE1AB74();
          sub_22C0B08BC();
          sub_22BE33FCC();
          sub_22C0B08BC();
          sub_22BE33928(v71, &qword_27D9090F8, &unk_22C2AE4A0);
          if ((v67 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_33:
          v68 = *(v0 + 28);
          sub_22C2704B4();
          sub_22BE18E5C();
          sub_22BE2C988(v69, v70);
          sub_22C0B1968();
          sub_22BE39F74();
          v64 = sub_22C272FD4();
          goto LABEL_31;
        }

        sub_22BE17DB0();
        sub_22C0B08BC();
      }

      v45 = &qword_27D909100;
      v46 = &unk_22C27FD00;
      v47 = v71;
      goto LABEL_29;
    }

    v42 = *(v25 + 8);
    v43 = sub_22BE35838();
    v44(v43);
  }

  v45 = &qword_27D909130;
  v46 = &unk_22C27FD30;
  v47 = v1;
LABEL_29:
  sub_22BE33928(v47, v45, v46);
LABEL_30:
  v64 = 0;
LABEL_31:
  sub_22BE1C1DC(v64);
  sub_22BE1AABC();
}

uint64_t sub_22C08DC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A48, type metadata accessor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08DCFC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08DD6C()
{
  sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);

  return sub_22C270774();
}

uint64_t sub_22C08DDF8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E1B0);
  sub_22BE199F4(v0, qword_27D90E1B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "toolRetrievalResponse";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "dynamicEnumerationEntities";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "context";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoQueryDecorationResult.decodeMessage<A>(decoder:)()
{
  sub_22BE1B214();
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
        sub_22C0B1950();
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C08E1D0();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C0478F0();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFE0AA0();
        break;
      default:
        continue;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08E1D0()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 28);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C988(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

void TranscriptProtoQueryDecorationResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22C0B1938(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = sub_22BE17D60();
    sub_22C08E3E4(v4, v5, v6, v7);
    if (!v0)
    {
      sub_22BE3A458();
      if (v8)
      {
        type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
        sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      sub_22C0B1AE4();
      if (v9)
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_22C0B1550();
        sub_22BE2C988(v10, v11);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      v12 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 32);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v9 = *(*(DecorationToolRetrievalResponse - 8) + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v10 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C08E8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A40, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08E954(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08E9C4()
{
  sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return sub_22C270774();
}

uint64_t sub_22C08EA5C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E1C8);
  sub_22BE199F4(v0, qword_27D90E1C8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
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
  *v10 = "dataSource";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "payload";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.decodeMessage<A>(decoder:)()
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
        sub_22C08EDB8();
        break;
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 1:
        sub_22BE18E2C();
        sub_22C08ED04();
        break;
    }
  }

  return result;
}

uint64_t sub_22C08ED04()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C08EDB8()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 24);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22C08EEF4(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = *v1;
    v8 = v1[1];
    sub_22BE1B448();
    if (v9)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v10 = sub_22BE17D60();
    sub_22C08F0C8(v10, v11, v12, v13);
    DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
    sub_22BE375E4(DecorationPrePlannerResult);
    return sub_22BE363D4();
  }

  return result;
}

uint64_t sub_22C08EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 20);
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

uint64_t sub_22C08F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v9 = *(*(DecorationPrePlannerResultPayload - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v10 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerResultPayload) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F138, &unk_22C2AE7F0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoQueryDecorationPrePlannerResult.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C0B1BA0();
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v2);
  v4 = sub_22BE272C0(DecorationPrePlannerResultPayload);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BEE94C8(v7);
  v8 = sub_22BE5CE4C(&qword_27D90F138, &unk_22C2AE7F0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE3C048(v12, v55);
  v13 = sub_22BE5CE4C(&qword_27D90F140, &qword_22C297130);
  sub_22BE1B7B0(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v58 = v17;
  v18 = sub_22BE183BC();
  v19 = type metadata accessor for TranscriptProtoStatementID(v18);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v23 = sub_22BE19454();
  v25 = sub_22BE5CE4C(v23, v24);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B01C();
  v29 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE385BC(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22BE1AED0();
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v33);
  v34 = DecorationPrePlannerResult[5];
  v35 = *(v0 + 56);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE1C14C(v1);
  if (v36)
  {
    sub_22BE1C14C(v1 + v35);
    if (v36)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v37 = &qword_27D909100;
    v38 = &unk_22C27FD00;
    v39 = v1;
LABEL_25:
    sub_22BE33928(v39, v37, v38);
    goto LABEL_26;
  }

  sub_22BE25C94();
  sub_22BE22868();
  sub_22BE1C14C(v1 + v35);
  if (v36)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v40 = sub_22BE23108();
  v42 = static TranscriptProtoStatementID.== infix(_:_:)(v40, v41);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  sub_22C0B1E1C();
  if (v36)
  {
    v45 = v43 == v44;
  }

  else
  {
    v45 = 0;
  }

  if (!v45 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v46 = DecorationPrePlannerResult[6];
  v47 = *(v56 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v48 = sub_22BE23E90();
  sub_22BE36144(v48, v49);
  if (v36)
  {
    sub_22BE18190(v58 + v47);
    if (v36)
    {
      sub_22BE33928(v58, &qword_27D90F138, &unk_22C2AE7F0);
LABEL_29:
      v52 = DecorationPrePlannerResult[7];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v53, v54);
      v51 = sub_22C0B1F58();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_22BE35EF8();
  sub_22BE18190(v58 + v47);
  if (v50)
  {
    sub_22BE3FEA4();
LABEL_24:
    v37 = &qword_27D90F140;
    v38 = &qword_22C297130;
    v39 = v58;
    goto LABEL_25;
  }

  sub_22C0B0868();
  sub_22BE232C8();
  static TranscriptProtoQueryDecorationPrePlannerResultPayload.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v58, &qword_27D90F138, &unk_22C2AE7F0);
  if (&unk_22C2AE7F0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v51 = 0;
LABEL_27:
  sub_22BE1C1DC(v51);
  sub_22BE1AABC();
}

uint64_t sub_22C08F750(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08F7D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08F840()
{
  sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_22C270774();
}

uint64_t sub_22C08F944()
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
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

void sub_22C08F9CC()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE18648();
  if (!*(*v0 + 16) || (sub_22BE1BAB8(), sub_22C270824(), !v1))
  {
    v4 = v3(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A30, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08FB70(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08FBE0()
{
  sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (sub_22C272594(), sub_22BE192C8(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
    sub_22BE294F8(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C08FE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C08FF18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C08FF88()
{
  sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoRetrievedContext(0), sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
    sub_22BE294F8(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090268(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0902E8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090358()
{
  sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.decodeMessage<A>(decoder:)()
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
      sub_22C0B1950();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22C0B1938(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
    sub_22BE294F8(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090618(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A18, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090698(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090708()
{
  sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoRetrievedTool(0), sub_22C0B17D0(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
    sub_22BE294F8(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0909D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090A58(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090AC8()
{
  sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_22C270774();
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.decodeMessage<A>(decoder:)()
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
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for ContextProtoToolQueryOutput(0), sub_22BE2C988(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
    sub_22BE294F8(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C090DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A08, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C090E28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C090E98()
{
  sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_22C270774();
}

uint64_t sub_22C090F30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E270);
  sub_22BE199F4(v0, qword_27D90E270);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "strings";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typedValues";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "retrievedContexts";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entitySpanMatchResults";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retrievedTools";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "toolQueryOutputs";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.decodeMessage<A>(decoder:)()
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
        sub_22C0912D8(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22C0917D0(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C091CC8(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22C0921C0(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C0926B8(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C092BB0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0912D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111A0, &qword_22C2ADED0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
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
      sub_22BE33928(v22, &qword_27D9111A0, &qword_22C2ADED0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant);
    }
  }

  sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111A0, &qword_22C2ADED0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedStringVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111A0, &qword_22C2ADED0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111A0, &qword_22C2ADED0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111A0, &qword_22C2ADED0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0917D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111A8, &qword_22C2ADED8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9111A8, &qword_22C2ADED8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111A8, &qword_22C2ADED8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedTypedValueVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111A8, &qword_22C2ADED8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111A8, &qword_22C2ADED8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111A8, &qword_22C2ADED8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C091CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111B0, &qword_22C2ADEE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9111B0, &qword_22C2ADEE0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111B0, &qword_22C2ADEE0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111B0, &qword_22C2ADEE0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111B0, &qword_22C2ADEE0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111B0, &qword_22C2ADEE0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0921C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111B8, &qword_22C2ADEE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9111B8, &qword_22C2ADEE8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111B8, &qword_22C2ADEE8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111B8, &qword_22C2ADEE8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111B8, &qword_22C2ADEE8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111B8, &qword_22C2ADEE8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0926B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111C0, &qword_22C2ADEF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9111C0, &qword_22C2ADEF0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111C0, &qword_22C2ADEF0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111C0, &qword_22C2ADEF0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111C0, &qword_22C2ADEF0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111C0, &qword_22C2ADEF0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C092BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v14 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v15 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111C8, &qword_22C2ADEF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, DecorationPrePlannerPayloadEnum);
  v31 = DecorationPrePlannerPayloadEnum;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D9111C8, &qword_22C2ADEF8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111C8, &qword_22C2ADEF8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111C8, &qword_22C2ADEF8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111C8, &qword_22C2ADEF8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111C8, &qword_22C2ADEF8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F180, &qword_22C2CCAC0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoQueryDecorationPrePlannerResultPayload.traverse<A>(visitor:)()
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
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  sub_22BE2B890(DecorationPrePlannerPayloadEnum);
  if (v8)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = sub_22BE17D78();
      sub_22C0933D0(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = sub_22BE17D78();
      sub_22C0935D8(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = sub_22BE17D78();
      sub_22C0937E0(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = sub_22BE17D78();
      sub_22C0939E8(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = sub_22BE17D78();
      sub_22C093BF0(v29, v30, v31, v32);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22C0931CC(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_10:
    DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
    sub_22BE235A8(DecorationPrePlannerResultPayload);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0931CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0933D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0935D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0937E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0939E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107C0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C093BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F180, &qword_22C2CCAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v9 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  sub_22BE22868();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F180, &qword_22C2CCAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9107D8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoQueryDecorationPrePlannerResultPayload.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(v1);
  v3 = sub_22BE26880(DecorationPrePlannerPayloadEnum);
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
  v12 = sub_22BE5CE4C(&qword_27D90F188, &qword_22C297138);
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
      sub_22BE33928(v0, &qword_27D90F180, &qword_22C2CCAC0);
LABEL_12:
      DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
      sub_22BE3636C(DecorationPrePlannerResultPayload);
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
    sub_22BE33928(v0, &qword_27D90F188, &qword_22C297138);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoQueryDecorationPrePlannerPayloadEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F180, &qword_22C2CCAC0);
  if (&qword_27D90F180)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C094088(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910A00, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094108(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094178()
{
  sub_22BE2C988(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_22C270774();
}

uint64_t sub_22C0942A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109F8, type metadata accessor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094328(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094398()
{
  sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning);

  return sub_22C270774();
}

void TranscriptProtoSkipStatement.decodeMessage<A>(decoder:)()
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
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

void static TranscriptProtoSkipStatement.== infix(_:_:)()
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
      v21 = type metadata accessor for TranscriptProtoSkipStatement(0);
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

uint64_t sub_22C094788(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109F0, type metadata accessor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C094808(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C094878()
{
  sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement);

  return sub_22C270774();
}

uint64_t sub_22C094910()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2B8);
  sub_22BE199F4(v0, qword_27D90E2B8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterStatementIds";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C094B3C()
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
      v6 = sub_22C0B1638();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C094BB0()
{
  v0 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0) + 20);
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  return sub_22C2706F4();
}

void TranscriptProtoExecutionPreconditionEvaluatorRequest.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  v2 = sub_22BE3B0CC();
  sub_22C094D2C(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      sub_22C270464();
      v7 = sub_22C0B19C8();
      type metadata accessor for TranscriptProtoStatementID(v7);
      sub_22BE3C91C();
      sub_22BE2C988(v8, v1);
      sub_22BE41578();
      sub_22BE2C988(v9, v1);
      sub_22BE37D10();
      sub_22BE3CEA4();
      sub_22C0B14F0();
    }

    v10 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
    sub_22BE25FB0(v10);
  }

  sub_22C0B171C();
}

uint64_t sub_22C094D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1A8, &qword_22C297140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F1A8, &qword_22C297140);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoExecutionPreconditionEvaluatorRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22C0B1BA0();
  v6 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v5);
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
  v16 = sub_22BE5CE4C(&qword_27D90F1B0, &qword_22C297148);
  sub_22BE252F0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE25CD0();
  v28 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  sub_22C0B1DC0(v28);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v1);
  if (v20)
  {
    sub_22BE19FE0(v1 + v2);
    if (v20)
    {
      sub_22BE33928(v1, &qword_27D90F1A8, &qword_22C297140);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D90F1B0, &qword_22C297148);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE19FE0(v1 + v2);
  if (v20)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  sub_22BE200E0();
  static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.== infix(_:_:)();
  sub_22BE377A4();
  sub_22C0B08BC();
  sub_22BE18240();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90F1A8, &qword_22C297140);
  if ((&qword_27D90F1A8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v21 = *v0;
  v22 = *v4;
  sub_22BEA3AF0();
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = *(v28 + 24);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v25, v26);
  v27 = sub_22BE39E58();
LABEL_14:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C0951FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109E8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09527C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0952EC()
{
  sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return sub_22C270774();
}

uint64_t sub_22C095384()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2D0);
  sub_22BE199F4(v0, qword_27D90E2D0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0955B0()
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
      sub_22BE431C0();
      sub_22C0B1760();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE431C0();
      sub_22C0B1760();
      v2();
    }
  }

  return result;
}

uint64_t sub_22C09562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
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
    sub_22BE33928(v12, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F1C0, &qword_22C2AE810);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C095B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911198, &qword_22C2ADEC8);
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
    sub_22BE33928(v12, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F1C0, &qword_22C2AE810);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  sub_22BE1AEE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_22BE17D78();
    sub_22C0962FC(v9, v10, v11, v12);
  }

  else
  {
    v13 = sub_22BE17D78();
    sub_22C0960F4(v13, v14, v15, v16);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
    sub_22BE235A8(v17);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0960F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0962FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F1C0, &qword_22C2AE810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoClientAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F1C0, &qword_22C2AE810);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90F1C8, &qword_22C297150);
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
      sub_22BE33928(v0, &qword_27D90F1C0, &qword_22C2AE810);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
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
    sub_22BE33928(v0, &qword_27D90F1C8, &qword_22C297150);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F1C0, &qword_22C2AE810);
  if (&qword_27D90F1C0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C096794(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109E0, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C096814(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C096884()
{
  sub_22BE2C988(&qword_27D910850, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return sub_22C270774();
}

uint64_t sub_22C096910()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E2E8);
  sub_22BE199F4(v0, qword_27D90E2E8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequestId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C096B28()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestAmendment(0) + 20);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
  return sub_22C2706F4();
}

uint64_t sub_22C096C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequestAmendment(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E568, &unk_22C2CC8B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequestAmendment.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoRequestContent(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20394();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  sub_22BE3E440(v17);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90E568, &unk_22C2CC8B0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
      v19 = sub_22BE2B85C();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v18)
  {
    sub_22C0B1538();
    sub_22C0B08BC();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90E570, &qword_22C296F18);
    goto LABEL_15;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoRequestContent.== infix(_:_:)();
  v21 = v20;
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E568, &unk_22C2CC8B0);
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C0970AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109D8, type metadata accessor for TranscriptProtoRequestAmendment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09712C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09719C()
{
  sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);

  return sub_22C270774();
}

uint64_t sub_22C097338(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109D0, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0973B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C097428()
{
  sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return sub_22C270774();
}

uint64_t sub_22C097558(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109C8, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0975D8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C097648()
{
  sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return sub_22C270774();
}

uint64_t sub_22C097710()
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
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C09783C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109C0, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0978BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09792C()
{
  sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return sub_22C270774();
}

uint64_t sub_22C0979B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E348);
  sub_22BE199F4(v0, qword_27D90E348);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientQueryId";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "toolId";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "actionEventId";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoIntermediateSystemResponse.decodeMessage<A>(decoder:)()
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
        sub_22C097D14();
        break;
      case 2:
        sub_22BE31058();
        sub_22BE18E2C();
        sub_22C097DC8();
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C097E0C();
        break;
      case 5:
        sub_22C0B18F0();
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C097D14()
{
  v0 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(0) + 20);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
  return sub_22C2706F4();
}

uint64_t sub_22C097DC8()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 24));
  return sub_22C270694();
}

uint64_t sub_22C097E0C()
{
  v0 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C097EC0()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 32));
  return sub_22C270694();
}

void TranscriptProtoIntermediateSystemResponse.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  sub_22C097FBC(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE31058();
    sub_22BE17D60();
    sub_22C098190();
    v6 = *v1;
    v7 = v1[1];
    sub_22BE1B448();
    if (v8)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v9 = sub_22BE17D60();
    sub_22C0981F0(v9, v10, v11, v12);
    sub_22C0B18F0();
    sub_22BE17D60();
    sub_22C0983C4();
    v13 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(0) + 36);
    sub_22BE1AC30();
  }
}

uint64_t sub_22C097FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F078, &unk_22C2AE7D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22C098190()
{
  v0 = sub_22BE379B8();
  v2 = v1(v0);
  sub_22C0B1DD8(*(v2 + 24));
  if (v4)
  {
    v5 = *v3;
    sub_22BE25B10();
    sub_22C270844();
  }
}

uint64_t sub_22C0981F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(0) + 28);
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

void sub_22C0983C4()
{
  v0 = sub_22BE379B8();
  v2 = v1(v0);
  sub_22C0B1DD8(*(v2 + 32));
  if (v4)
  {
    v5 = *v3;
    sub_22BE25B10();
    sub_22C270844();
  }
}

void static TranscriptProtoIntermediateSystemResponse.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE39FFC();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE28784(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BEE94C8(v10);
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE3C048(v15, v64);
  v16 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE1B7B0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE35C94(v20, v65);
  v21 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v22 = sub_22BE18000(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v25 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v29 = sub_22BE5CE4C(&qword_27D90F080, &qword_22C297110);
  sub_22BE385BC(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22BE1AED0();
  v67 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v33);
  v34 = v67[5];
  v35 = *(v0 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1C14C(v2);
  if (v36)
  {
    sub_22BE1C14C(v2 + v35);
    if (v36)
    {
      sub_22BE33928(v2, &qword_27D90F078, &unk_22C2AE7D0);
      goto LABEL_14;
    }

LABEL_9:
    v37 = &qword_27D90F080;
    v38 = &qword_22C297110;
    v39 = v2;
LABEL_10:
    sub_22BE33928(v39, v37, v38);
    goto LABEL_11;
  }

  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE1C14C(v2 + v35);
  if (v36)
  {
    sub_22C0B1BC4();
    goto LABEL_9;
  }

  sub_22C0B0868();
  static TranscriptProtoResponseOutput.== infix(_:_:)();
  v21 = v41;
  sub_22BE25EFC();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90F078, &unk_22C2AE7D0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v42 = v67[6];
  sub_22BE28DB4();
  if (v45)
  {
    if (!v43)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v44);
    v48 = v36 && v46 == v47;
    if (!v48 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v43)
  {
    goto LABEL_11;
  }

  v49 = *v1 == *v4 && v1[1] == v4[1];
  if (!v49 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_11;
  }

  v50 = v67[7];
  sub_22C0B1DE4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v51 = sub_22BE23E90();
  sub_22BE36144(v51, v52);
  if (!v36)
  {
    sub_22BE22868();
    sub_22BE18190(v66 + v21);
    if (!v53)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v54 = sub_22BE200E0();
      static TranscriptProtoStatementID.== infix(_:_:)(v54, v55);
      sub_22BE39304();
      sub_22BE39EAC();
      sub_22C0B08BC();
      sub_22BE33928(v66, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_36;
  }

  sub_22BE18190(v66 + v21);
  if (!v36)
  {
LABEL_36:
    v37 = &qword_27D909100;
    v38 = &unk_22C27FD00;
    v39 = v66;
    goto LABEL_10;
  }

  sub_22BE33928(v66, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_38:
  v56 = v67[8];
  v57 = *(v4 + v56 + 8);
  if (*(v1 + v56 + 8))
  {
    if (v57)
    {
      sub_22BE3A508((v1 + v56));
      v60 = v36 && v58 == v59;
      if (v60 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_47;
      }
    }
  }

  else if (!v57)
  {
LABEL_47:
    v61 = v67[9];
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v62, v63);
    sub_22BE3A008();
    v40 = sub_22C272FD4();
    goto LABEL_12;
  }

LABEL_11:
  v40 = 0;
LABEL_12:
  sub_22BE1C1DC(v40);
  sub_22BE1AABC();
}

uint64_t sub_22C09896C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109B8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0989EC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C098A5C()
{
  sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);

  return sub_22C270774();
}

uint64_t sub_22C098AE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E360);
  sub_22BE199F4(v0, qword_27D90E360);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "renderedResponse";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toolId";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionEventId";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.decodeMessage<A>(decoder:)()
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
        sub_22C2705C4();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22C098DF8();
        break;
      case 4:
        sub_22BE3CF0C();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C098DF8()
{
  v0 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C098EAC()
{
  v0 = sub_22BE378F4();
  v2 = v1(v0);
  sub_22BE26130(*(v2 + 28));
  return sub_22C270694();
}

void TranscriptProtoIntermediateSystemResponseRendered.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
  {
    v2 = sub_22BE17D60();
    sub_22BE3D7F4(v2);
    if (!v1)
    {
      v3 = sub_22BE17D60();
      sub_22C098F94(v3, v4, v5, v6);
      sub_22BE3CF0C();
      sub_22BE17D60();
      sub_22C099168();
      v7 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0) + 32);
      sub_22BE1AC30();
    }
  }
}

uint64_t sub_22C098F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0) + 24);
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

void sub_22C099168()
{
  v0 = sub_22BE379B8();
  v2 = v1(v0);
  sub_22C0B1DD8(*(v2 + 28));
  if (v4)
  {
    v5 = *v3;
    sub_22BE25B10();
    sub_22C270844();
  }
}

void static TranscriptProtoIntermediateSystemResponseRendered.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE26880(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E64();
  sub_22C0B16C4();
  if (!v21)
  {
    goto LABEL_2;
  }

  v18 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v18)
    {
      goto LABEL_2;
    }

    sub_22C0B1A50();
    v21 = v21 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v18)
  {
    goto LABEL_2;
  }

  v22 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  sub_22C0B1694(v22);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (!v21)
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v23)
    {
      sub_22BE1868C();
      sub_22C0B0868();
      v24 = sub_22BE38970();
      v26 = static TranscriptProtoStatementID.== infix(_:_:)(v24, v25);
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_23;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_21:
    sub_22BE33928(v3, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_2;
  }

  sub_22BE19538();
  if (!v21)
  {
    goto LABEL_21;
  }

  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_23:
  sub_22BE4827C();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_2;
    }

    sub_22BE3A508(v28);
    v32 = v21 && v30 == v31;
    if (!v32 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_32:
    v33 = *(v2 + 32);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v34, v35);
    v17 = sub_22BE2B85C();
    goto LABEL_3;
  }

  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_2:
  v17 = 0;
LABEL_3:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22C0994D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109B0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C099550(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0995C0()
{
  sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);

  return sub_22C270774();
}

uint64_t sub_22C0996B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F208, &qword_22C2AE820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAgentRequestEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911190, &qword_22C2ADEC0);
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
    sub_22BE33928(v12, &qword_27D90F208, &qword_22C2AE820);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v22, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
  v24 = v31;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
    v25 = v20;
    return sub_22BE33928(v25, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22C0B0868();
  if (v23 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F208, &qword_22C2AE820);
  sub_22C0B0868();
  return sub_22BE19DC4(v27, 0, 1, v28);
}

uint64_t sub_22C099B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F208, &qword_22C2AE820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAgentRequestEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F208, &qword_22C2AE820);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoAgentRequestEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90F210, &qword_22C297158);
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
      sub_22BE33928(v0, &qword_27D90F208, &qword_22C2AE820);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoAgentRequest(0);
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
    sub_22BE33928(v0, &qword_27D90F210, &qword_22C297158);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoAgentRequestEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F208, &qword_22C2AE820);
  if (&qword_27D90F208)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C099FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109A8, type metadata accessor for TranscriptProtoAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09A07C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09A0EC()
{
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);

  return sub_22C270774();
}

uint64_t sub_22C09A178()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E390);
  sub_22BE199F4(v0, qword_27D90E390);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "destinationAgentID";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C09A390()
{
  v0 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(0) + 20);
  type metadata accessor for TranscriptProtoAgentRequest(0);
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
  return sub_22C2706F4();
}

uint64_t sub_22C09A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F220, &unk_22C2AE830);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentHandoffRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoAgentRequest(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90F228, &qword_22C297160);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20394();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  sub_22BE3E440(v17);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
      v19 = sub_22BE2B85C();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v18)
  {
    sub_22C0B1A00();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90F228, &qword_22C297160);
    goto LABEL_15;
  }

  sub_22BE3FF18();
  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoAgentRequest.== infix(_:_:)();
  v21 = v20;
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C09A8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9109A0, type metadata accessor for TranscriptProtoAgentHandoffRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09A97C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09A9EC()
{
  sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);

  return sub_22C270774();
}

void TranscriptProtoAgentPassRequest.decodeMessage<A>(decoder:)()
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

uint64_t sub_22C09AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_22BE33A5C();
  v7 = sub_22BE192B4();
  result = v8(v7);
  if (!v5)
  {
    v10 = a5(0);
    return sub_22BE235A8(v10);
  }

  return result;
}

uint64_t sub_22C09ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F220, &unk_22C2AE830);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentPassRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoAgentRequest(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90F228, &qword_22C297160);
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
      sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
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
    sub_22C0B1A00();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90F228, &qword_22C297160);
    goto LABEL_10;
  }

  sub_22BE3FF18();
  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoAgentRequest.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F220, &unk_22C2AE830);
  if (&qword_27D90F220)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C09B02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910998, type metadata accessor for TranscriptProtoAgentPassRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09B0AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09B11C()
{
  sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);

  return sub_22C270774();
}

uint64_t sub_22C09B1B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22C2708C4();
  sub_22BE952A4(v3, a2);
  v4 = sub_22BE18944();
  sub_22BE199F4(v4, v5);
  return sub_22C2708B4();
}

uint64_t sub_22C09B290(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910990, type metadata accessor for TranscriptProtoAgentYieldRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09B310(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09B380()
{
  sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);

  return sub_22C270774();
}

uint64_t sub_22C09B408()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E3D8);
  sub_22BE199F4(v0, qword_27D90E3D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sourceAgentID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primiviteAction";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C09B620()
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
      sub_22BE1A8C4();
      sub_22BE32BF0();
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

uint64_t sub_22C09B698()
{
  v0 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(0) + 20);
  type metadata accessor for TranscriptProtoPrimitiveAction(0);
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);
  return sub_22C2706F4();
}

uint64_t sub_22C09B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90F248, &unk_22C2CC860);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoAgentPrimitiveAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoPrimitiveAction(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90F250, &qword_22C297168);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20394();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  sub_22BE3E440(v17);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90F248, &unk_22C2CC860);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
      v19 = sub_22BE2B85C();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v18)
  {
    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90F250, &qword_22C297168);
    goto LABEL_15;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoPrimitiveAction.== infix(_:_:)();
  v21 = v20;
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F248, &unk_22C2CC860);
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C09BC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910988, type metadata accessor for TranscriptProtoAgentPrimitiveAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09BCA4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09BD14()
{
  sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);

  return sub_22C270774();
}

uint64_t sub_22C09BDA0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90E3F0);
  sub_22BE199F4(v0, qword_27D90E3F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "handoff";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pass";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "yield";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C09C020()
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
        sub_22BE36680();
        sub_22C0B1710();
        v0();
        break;
      case 2:
        sub_22BE36680();
        sub_22C0B1710();
        v2();
        break;
      case 1:
        sub_22BE36680();
        sub_22C0B1710();
        v3();
        break;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C09C0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
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
  v16 = sub_22BE5CE4C(&qword_27D911178, &qword_22C2ADEA8);
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911178, &qword_22C2ADEA8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911178, &qword_22C2ADEA8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911178, &qword_22C2ADEA8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911178, &qword_22C2ADEA8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911178, &qword_22C2ADEA8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C09C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
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
  v16 = sub_22BE5CE4C(&qword_27D911180, &qword_22C2ADEB0);
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911180, &qword_22C2ADEB0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911180, &qword_22C2ADEB0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911180, &qword_22C2ADEB0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911180, &qword_22C2ADEB0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911180, &qword_22C2ADEB0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}