uint64_t sub_22C601E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C601E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C601EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_22C601F4C(uint64_t a1, char a2, void *a3)
{
  v37 = a1;
  v36 = sub_22C90634C();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_22C90636C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v38[3] = &type metadata for GenerativeAssistantToolsRiskProvider;
  v38[4] = &off_283FBE918;
  v20 = MEMORY[0x277D84F98];
  LOBYTE(v38[0]) = a2;
  a3[3] = MEMORY[0x277D84F98];
  a3[4] = v20;
  a3[6] = 0;
  a3[7] = 0;
  a3[5] = 0;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v21 = *(v13 + 8);
  v35 = v12;
  v21(v17, v12);
  v22 = sub_22C90635C();
  v23 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v24 = swift_slowAlloc();
    v34 = v9;
    v25 = v24;
    *v24 = 0;
    v26 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v22, v23, v26, "JointResolverTrialConfigProvider.init", "", v25, 2u);
    v27 = v25;
    v9 = v34;
    MEMORY[0x2318B9880](v27, -1, -1);
  }

  v28 = v36;
  (*(v5 + 16))(v9, v11, v36);
  v29 = sub_22C9063AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v5 + 8))(v11, v28);
  v21(v19, v35);
  a3[2] = v37;
  sub_22C378A4C(v38, (a3 + 8));

  sub_22C763E98();
  sub_22C763B48();

  sub_22C36FF94(v38);
  return a3;
}

void sub_22C602294()
{
  v1 = v0[95];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[71];
  v7 = v0[70];
}

uint64_t sub_22C6022F0(uint64_t a1)
{
  *(a1 + 8) = sub_22C5FEF40;
  v3 = *(v2 + 912);
  return v1;
}

void sub_22C60231C()
{
  v5 = *(v2 + 74);
  *(v1 + 16) = v0;
  v6 = v1 + v4;
  *(v6 + 32) = v5;
  *(v6 + 33) = v3;
}

void sub_22C602358()
{
  v3 = *(v1 + 16);
  v2 = v1 + 16;
  v4 = v0 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

uint64_t sub_22C602374()
{
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[49];
  *(v1 - 104) = v0[31];
  *(v1 - 96) = v3;
}

uint64_t sub_22C6023C8()
{
  v2 = v0[57];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = v0[36];

  return sub_22C903FAC();
}

void sub_22C6023EC()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_22C602428()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22C602458()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C602478()
{
  *(v4 - 136) = v0;
  *(v4 - 128) = v3;
  v6 = *(v2 + 544);
  *(v4 - 96) = v1;
}

void sub_22C602498()
{
  v3 = v0[57];
  v4 = v0[53];
  v5 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[50];
}

void sub_22C6024B8(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v4, a3, a2, v3, 0x16u);
}

uint64_t sub_22C6024D8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a2;
  v18 = a1;
  v5 = sub_22C908C5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_22C3D3364();
  v14 = 1;
  if (sub_22C370B74(v13, 1, v5) == 1)
  {
    v15 = a3;
    return sub_22C36C640(v15, v14, 1, v5);
  }

  (*(v6 + 32))(v9, v13, v5);
  v15 = a3;
  v18(v9);
  if (!v3)
  {
    (*(v6 + 8))(v9, v5);
    v14 = 0;
    return sub_22C36C640(v15, v14, 1, v5);
  }

  result = (*(v6 + 8))(v9, v5);
  __break(1u);
  return result;
}

void sub_22C6026CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v49 = v24;
  v25 = sub_22C90069C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C377578();
  v31 = sub_22C36CC9C();
  v33 = sub_22C3A5908(v31, v32);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v38 = &v48 - v37;
  sub_22C370114();
  sub_22C3D3364();
  if (sub_22C370B74(v38, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  v39 = *(v28 + 32);
  v40 = sub_22C36CA88();
  v41(v40);
  v49(&a10, v21);
  if (!v20)
  {
    v42 = *(v28 + 8);
    v43 = sub_22C36D384();
    v44(v43);
LABEL_4:
    sub_22C3772F0();
    sub_22C36FB20();
    return;
  }

  v45 = *(v28 + 8);
  v46 = sub_22C36D384();
  v47(v46);
  __break(1u);
}

uint64_t sub_22C6029B4()
{
  sub_22C3865D8();
  v2 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C36CD40();
  v7 = type metadata accessor for PlanPostProcessor.ExpressionContext(v6);
  v8 = sub_22C369A9C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37BDA4();
  v11 = sub_22C3707B4();
  sub_22C36D0A8(v11, v12, v13);
  if (v14)
  {
    v15 = sub_22C633C98();
    sub_22C3AC228(v15, v16, v17);
    sub_22C633CB8();
    sub_22C62B048(v18);
    v19 = sub_22C901FAC();
    sub_22C369848(v19);
    (*(v20 + 8))(v0);
    v21 = sub_22C633C88();
    return sub_22C3AC228(v21, v22, v23);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    v24 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C633DA4();
    sub_22C62CA30();
    *v1 = v28;
    v25 = sub_22C901FAC();
    sub_22C369848(v25);
    return (*(v26 + 8))(v0);
  }
}

void sub_22C602E50()
{
  sub_22C3BDA38();
  sub_22C3865D8();
  v2 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36CD40();
  v6 = sub_22C907F9C();
  v7 = sub_22C369824(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C36C0E0();
  sub_22C36D0A8(v10, v11, v6);
  if (v12)
  {
    v13 = sub_22C633C98();
    sub_22C3AC228(v13, v14, v15);
    sub_22C633CB8();
    sub_22C62B1F8(v16);
    v17 = sub_22C9014CC();
    sub_22C369848(v17);
    (*(v18 + 8))(v0);
    v19 = sub_22C633C88();
    sub_22C3AC228(v19, v20, v21);
  }

  else
  {
    v22 = sub_22C36CB1C();
    v23(v22);
    v24 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_22C633B18();
    sub_22C62CD44(v25, v26);
    sub_22C633E88();
    v27 = sub_22C9014CC();
    sub_22C369848(v27);
    (*(v28 + 8))(v0);
  }

  sub_22C3BDA24();
}

void sub_22C603314()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v1 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22C36FDCC();
  v6 = type metadata accessor for ToolPromptMap(v5);
  v7 = sub_22C369A9C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C36C0E0();
  sub_22C36D0A8(v10, v11, v12);
  if (v13)
  {
    v14 = sub_22C372FA4();
    sub_22C3AC228(v14, v15, &unk_22C912630);
    sub_22C37BED4();
    sub_22C62BCF8();

    v16 = sub_22C36ECB4();
    sub_22C3AC228(v16, v17, &unk_22C912630);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    v18 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62D4CC(v19, v20, v21);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C603470()
{
  sub_22C3865D8();
  v1 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22C36CD40();
  v6 = type metadata accessor for PromptTreeIdentifier.Label(v5);
  v7 = sub_22C369A9C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C37BDA4();
  v10 = sub_22C3707B4();
  sub_22C36D0A8(v10, v11, v12);
  if (v13)
  {
    v14 = sub_22C633C98();
    sub_22C3AC228(v14, v15, v16);
    v17 = sub_22C633CB8();
    sub_22C62B620(v17, v18);
    sub_22C634030();
    v19 = sub_22C633C88();
    return sub_22C3AC228(v19, v20, v21);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    v22 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_22C633DA4();
    sub_22C62D6A4(v23, v24);
    *v0 = v26;
    return sub_22C634030();
  }
}

void sub_22C603588()
{
  sub_22C3BDA38();
  sub_22C3865D8();
  v1 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36FDCC();
  v5 = sub_22C902D0C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = sub_22C36C0E0();
  sub_22C36D0A8(v11, v12, v5);
  if (v13)
  {
    v14 = sub_22C372FA4();
    sub_22C3AC228(v14, v15, &unk_22C912190);
    sub_22C633FA8();
    sub_22C62B7D8(v16);
    v17 = *(v8 + 8);
    v18 = sub_22C37BD98();
    v19(v18);
    v20 = sub_22C36ECB4();
    sub_22C3AC228(v20, v21, &unk_22C912190);
  }

  else
  {
    sub_22C51E3FC();
    v22 = sub_22C37A004();
    v23(v22);
    v24 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_22C633B18();
    sub_22C62D8A8(v25, v26);
    sub_22C633E88();
    v27 = *(v8 + 8);
    v28 = sub_22C37BD98();
    v29(v28);
  }

  sub_22C3BDA24();
}

void sub_22C6036EC()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v1 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22C36FDCC();
  v6 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(v5);
  v7 = sub_22C369A9C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C36C0E0();
  sub_22C36D0A8(v10, v11, v12);
  if (v13)
  {
    v14 = sub_22C372FA4();
    sub_22C3AC228(v14, v15, &unk_22C919AE0);
    sub_22C37BED4();
    sub_22C62BCF8();

    v16 = sub_22C36ECB4();
    sub_22C3AC228(v16, v17, &unk_22C919AE0);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    v18 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62DC28(v19, v20, v21);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C603848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22C3A5908(&qword_27D9BF478, &qword_22C922738);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ActionParameterValue(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22C370B74(a1, 1, v16) == 1)
  {
    sub_22C3AC228(a1, &qword_27D9BF478, &qword_22C922738);
    sub_22C62BCF8();

    return sub_22C3AC228(v11, &qword_27D9BF478, &qword_22C922738);
  }

  else
  {
    sub_22C630194();
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_22C62E614(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

void sub_22C603D40()
{
  sub_22C3BDA38();
  sub_22C3862D8();
  v1 = sub_22C3A5908(&qword_27D9BF458, &qword_22C922718);
  sub_22C369914(v1);
  v3 = *(v2 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22C36FDCC();
  v6 = type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(v5);
  v7 = sub_22C369A9C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C36C0E0();
  sub_22C36D0A8(v10, v11, v12);
  if (v13)
  {
    v14 = sub_22C372FA4();
    sub_22C3AC228(v14, v15, &qword_22C922718);
    sub_22C37BED4();
    sub_22C62BCF8();

    v16 = sub_22C36ECB4();
    sub_22C3AC228(v16, v17, &qword_22C922718);
  }

  else
  {
    sub_22C372FA4();
    sub_22C630194();
    v18 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C3816F0();
    sub_22C37EBD0();
    sub_22C62EA34(v19, v20, v21);

    sub_22C633E88();
  }

  sub_22C3BDA24();
}

uint64_t sub_22C6041CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 255)
  {
    sub_22C3AC228(a1, &qword_27D9BF3C8, &qword_22C928BF0);
    sub_22C633FA8();
    sub_22C62BE24(v8);
    sub_22C3723BC();
    sub_22C62E9E0(a2, v9);
    return sub_22C3AC228(v11, &qword_27D9BF3C8, &qword_22C928BF0);
  }

  else
  {
    v4 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v4;
    v12 = *(a1 + 32);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_22C62EEA8(v11, a2);
    *v2 = v10;
    sub_22C3723BC();
    return sub_22C62E9E0(a2, v6);
  }
}

uint64_t sub_22C6042A4()
{
  sub_22C3865D8();
  v2 = sub_22C3A5908(&qword_27D9BF3A8, &qword_22C922668);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C36CD40();
  v7 = type metadata accessor for DialogValuesResolver.CollectedValue(v6);
  v8 = sub_22C369A9C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37BDA4();
  v11 = sub_22C3707B4();
  sub_22C36D0A8(v11, v12, v13);
  if (v14)
  {
    v15 = sub_22C633C98();
    sub_22C3AC228(v15, v16, v17);
    sub_22C633CB8();
    sub_22C62BF4C(v18);
    v19 = sub_22C9093BC();
    sub_22C369848(v19);
    (*(v20 + 8))(v0);
    v21 = sub_22C633C88();
    return sub_22C3AC228(v21, v22, v23);
  }

  else
  {
    sub_22C372164();
    sub_22C630194();
    v24 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_22C633DA4();
    sub_22C62F348(v25, v26);
    *v1 = v30;
    v27 = sub_22C9093BC();
    sub_22C369848(v27);
    return (*(v28 + 8))(v0);
  }
}

uint64_t sub_22C604438(uint64_t a1, void (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v15 = a1;
  v8 = *(a5 + 16);
  while (v8 != v7)
  {
    v9 = sub_22C90430C();
    sub_22C3699B8(v9);
    v11 = *(v10 + 80);
    sub_22C37BEE8();
    sub_22C369B5C();
    a2(&v15, v13 + *(v12 + 72) * v7++);
    if (v5)
    {
    }
  }

  return v15;
}

uint64_t sub_22C60450C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v15[1] = a2;
  v7 = 0;
  v15[0] = a1;
  v8 = *(a5 + 16);
  while (v8 != v7)
  {
    v9 = sub_22C9070DC();
    sub_22C3699B8(v9);
    v11 = *(v10 + 80);
    sub_22C37BEE8();
    sub_22C369B5C();
    a3(v15, v13 + *(v12 + 72) * v7++);
    if (v5)
    {
    }
  }

  return v15[0];
}

void sub_22C6045F0()
{
  sub_22C370030();
  sub_22C63418C();
  v25[1] = v6;
  v25[0] = sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0);
  sub_22C36985C(v25[0]);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = (v25 - v10);
  v13 = v2 + 64;
  v12 = *(v2 + 64);
  v14 = *(v2 + 32);
  sub_22C36D280();
  sub_22C634664();
  v15 = 0;
  while (v3)
  {
    v27 = v0;
LABEL_8:
    sub_22C634570();
    v17 = *(v26 + 56);
    v18 = *(*(v26 + 48) + 8 * v5);
    v19 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
    sub_22C369914(v19);
    v21 = v17 + *(v20 + 72) * v5;
    v22 = *(v25[0] + 48);
    sub_22C62E98C();
    *v11 = v18;

    v23 = sub_22C63481C();
    v24(v23);
    v0 = v1;
    sub_22C3AC228(v11, &qword_27D9BC4B0, &unk_22C9134C0);
    if (v1)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v4)
    {

      goto LABEL_11;
    }

    v3 = *(v13 + 8 * v16);
    ++v15;
    if (v3)
    {
      v27 = v0;
      v15 = v16;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22C6047A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v82 = v20;
  v24 = v23;
  v26 = v25;
  v75 = v27;
  v76 = v28;
  v30 = v29;
  v74 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v31 = sub_22C36985C(v74);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  v73 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v72 = v36;
  v71 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  sub_22C36985C(v71);
  v38 = *(v37 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v39);
  v41 = &v69 - v40;
  a10 = v30;
  v77 = *(v24 + 16);

  v42 = 0;
  v69 = v24;
  v70 = v26;
  for (i = (v24 + 64); ; i += 5)
  {
    if (v77 == v42)
    {

LABEL_8:
      sub_22C36FB20();
      return;
    }

    if (v42 >= *(v26 + 16))
    {
      break;
    }

    v44 = v74;
    v45 = (v72 + *(v74 + 48));
    v46 = sub_22C90981C();
    sub_22C369824(v46);
    v48 = v47;
    v49 = v26 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v51 = *(v50 + 72);
    v78 = v42;
    v52 = *(v50 + 16);
    v53 = sub_22C634418();
    v54(v53);
    v56 = *(i - 4);
    v55 = *(i - 3);
    v58 = *(i - 1);
    v80 = *(i - 2);
    v57 = v80;
    v81 = v55;
    v79 = v58;
    v59 = *i;
    *v45 = v56;
    v45[1] = v55;
    v45[2] = v57;
    v45[3] = v58;
    v45[4] = v59;
    v60 = v73;
    sub_22C3D3310();
    v61 = v60 + *(v44 + 48);
    v62 = &v41[*(v71 + 48)];
    v63 = *(v48 + 32);
    sub_22C36E644();
    v65(v64);
    v66 = *(v61 + 32);
    v67 = *(v61 + 16);
    *v62 = *v61;
    *(v62 + 1) = v67;
    *(v62 + 4) = v66;

    sub_22C456C94(v81, v80);
    v68 = v82;
    v75(&a10, v41);
    v82 = v68;
    if (v68)
    {
      sub_22C3AC228(v41, &qword_27D9BD8E8, &unk_22C919AD0);

      goto LABEL_8;
    }

    v42 = v78 + 1;
    sub_22C3AC228(v41, &qword_27D9BD8E8, &unk_22C919AD0);
    v26 = v70;
  }

  __break(1u);
}

void sub_22C604A84()
{
  sub_22C370030();
  sub_22C63418C();
  v26[1] = v6;
  v26[0] = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C(v26[0]);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v13 = v2 + 64;
  v12 = *(v2 + 64);
  v14 = *(v2 + 32);
  sub_22C36D280();
  sub_22C634664();
  v15 = 0;
  while (v3)
  {
    v28 = v0;
LABEL_8:
    sub_22C634570();
    v17 = v27;
    v18 = *(v27 + 48);
    v19 = sub_22C902C9C();
    sub_22C369A9C(v19);
    (*(v20 + 16))(v11, v18 + *(v20 + 72) * v5);
    v21 = *(v17 + 56);
    v22 = sub_22C902D0C();
    sub_22C369A9C(v22);
    (*(v23 + 16))(&v11[*(v26[0] + 48)], v21 + *(v23 + 72) * v5);
    v24 = sub_22C63481C();
    v25(v24);
    v0 = v1;
    sub_22C3AC228(v11, &qword_27D9BAF30, &unk_22C90FAA0);
    if (v1)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v4)
    {

      goto LABEL_11;
    }

    v3 = *(v13 + 8 * v16);
    ++v15;
    if (v3)
    {
      v28 = v0;
      v15 = v16;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C604C58(uint64_t a1, void (*a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = 0;
  v16 = a1;
  v9 = *(a4 + 16);
  while (v9 != v8)
  {
    v10 = a5(0);
    sub_22C3699B8(v10);
    v12 = *(v11 + 80);
    sub_22C37BEE8();
    sub_22C369B5C();
    a2(&v16, v14 + *(v13 + 72) * v8++);
    if (v5)
    {
    }
  }

  return v16;
}

uint64_t sub_22C604D3C(uint64_t a1)
{
  v18 = a1;
  sub_22C63418C();
  v4 = v3;
  v7 = v5 + 56;
  v6 = *(v5 + 56);
  v8 = *(v5 + 32);
  sub_22C36D280();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v15 = 0;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      v17 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v11)))));

      v4(&v18, &v17);
      if (v1)
      {
        break;
      }

      v11 &= v11 - 1;

      v15 = v16;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        return v18;
      }

      v11 = *(v7 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C604EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v58 = v23;
  v59 = v24;
  v25 = v20;
  v27 = v26;
  v56 = v28;
  v57 = v29;
  v31 = v30;
  v55 = sub_22C3A5908(v29, v23);
  sub_22C36985C(v55);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C36D5B4();
  v54 = v35;
  a10 = v31;
  v37 = v27 + 64;
  v36 = *(v27 + 64);
  v38 = *(v27 + 32);
  sub_22C36D280();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v60 = v27;

  v44 = 0;
  while (v41)
  {
    v61 = v25;
    v45 = v44;
LABEL_8:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = v46 | (v45 << 6);
    v48 = *(v60 + 56);
    v49 = (*(v60 + 48) + 16 * v47);
    v51 = *v49;
    v50 = v49[1];
    v52 = v59(0);
    sub_22C369A9C(v52);
    (*(v53 + 16))(&v54[*(v55 + 48)], v48 + *(v53 + 72) * v47);
    *v54 = v51;
    *(v54 + 1) = v50;

    v56(&a10, v54);
    v25 = v61;
    sub_22C3AC228(v54, v57, v58);
    if (v61)
    {

LABEL_11:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      goto LABEL_11;
    }

    v41 = *(v37 + 8 * v45);
    ++v44;
    if (v41)
    {
      v61 = v25;
      v44 = v45;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C605054(uint64_t a1)
{
  v22 = a1;
  sub_22C63418C();
  v20 = v3;
  v6 = v4 + 64;
  v5 = *(v4 + 64);
  v7 = *(v4 + 32);
  sub_22C36D280();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_6:
      v16 = __clz(__rbit64(v10)) | (v15 << 6);
      v17 = (*(v2 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(v2 + 56) + 8 * v16);
      v21[0] = *v17;
      v21[1] = v18;
      v21[2] = v19;

      v20(&v22, v21);
      if (v1)
      {
        break;
      }

      v10 &= v10 - 1;

      v14 = v15;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        return v22;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C6051CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v52 = v25;
  v27 = v26;
  v54 = v28(0);
  sub_22C369824(v54);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  v35 = v51 - v34;
  a10 = v27;
  v37 = v24 + 56;
  v36 = *(v24 + 56);
  v38 = *(v24 + 32);
  sub_22C36D280();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v51[1] = v30 + 16;
  v53 = v30 + 8;
  v55 = v24;

  v44 = 0;
  if (v41)
  {
    while (1)
    {
      v45 = v44;
      v46 = v54;
LABEL_7:
      (*(v30 + 16))(v35, *(v55 + 48) + *(v30 + 72) * (__clz(__rbit64(v41)) | (v45 << 6)), v46);
      v52(&a10, v35);
      if (v20)
      {
        break;
      }

      v41 &= v41 - 1;
      v47 = sub_22C63478C();
      v48(v47);
      v44 = v45;
      if (!v41)
      {
        goto LABEL_3;
      }
    }

    v49 = sub_22C63478C();
    v50(v49);

LABEL_11:
    sub_22C3772F0();
    sub_22C36FB20();
  }

  else
  {
LABEL_3:
    v46 = v54;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {

        goto LABEL_11;
      }

      v41 = *(v37 + 8 * v45);
      ++v44;
      if (v41)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

unint64_t sub_22C6053F8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0xF000000000000007;
  }

  sub_22C633A64();
  v5 = sub_22C628BA8(v3, v4, sub_22C6293AC);
  if ((v6 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  sub_22C634780(v5);

  return v2;
}

unint64_t sub_22C605458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_22C633A64();
    v4 = sub_22C628BA8(v2, v3, sub_22C6293AC);
    if (v5)
    {
      sub_22C634780(v4);
      sub_22C454710(0xD000000000000007);
    }
  }

  return 0xD000000000000007;
}

uint64_t sub_22C6054B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_22C3736B4();
    v6 = sub_22C36E5AC(v3, v4, v5, sub_22C36EF04);
    if (v7)
    {
      sub_22C634960(v6);
    }
  }

  return sub_22C36BA00();
}

uint64_t sub_22C605514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 5;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if (v8)
  {
    return *(*(a3 + 56) + v7);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_22C605778(uint64_t a1, uint64_t a2)
{
  sub_22C634534(a1, a2);
  if (v3 && (v4 = v2, sub_22C633A64(), sub_22C628BA8(v5, v6, sub_22C6293AC), (v7 & 1) != 0))
  {
    v8 = *(v4 + 56);
    v9 = type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C36985C(v9);
    v11 = *(v10 + 72);
    sub_22C62E98C();
    v12 = sub_22C37049C();
    v15 = v9;
  }

  else
  {
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v12 = sub_22C37582C();
  }

  return sub_22C36C640(v12, v13, v14, v15);
}

uint64_t sub_22C605834(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_22C628AA0();
    if (v4)
    {
      v5 = (*(a2 + 56) + 24 * v3);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
    }
  }

  return sub_22C36BA00();
}

uint64_t sub_22C6058B0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_22C628620(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_22C605904(uint64_t a1, double a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_22C628B5C(a2);
  if (v4)
  {
    return *(*(a1 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22C60595C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0xF000000000000007;
  }

  sub_22C628164();
  if ((v4 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  sub_22C634780(v3);

  return v2;
}

double sub_22C6059A4(uint64_t a1, uint64_t a2)
{
  sub_22C634534(a1, a2);
  if (v4 && (v5 = v3, sub_22C38AA00(), v8 = sub_22C628BA8(v6, v7, sub_22C62AA14), (v9 & 1) != 0))
  {
    v10 = *(v5 + 56) + 40 * v8;

    sub_22C6337B8(v10, v2);
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = -1;
  }

  return result;
}

void *sub_22C605A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_22C634780(v7);
  v9 = v3;
  return v3;
}

uint64_t sub_22C605AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(a3 + 16) && (sub_22C3736B4(), sub_22C36E5AC(v6, v7, v8, sub_22C36EF04), (v9 & 1) != 0))
  {
    v10 = *(a3 + 56);
    v11 = a4(0);
    sub_22C36985C(v11);
    v13 = *(v12 + 72);
    sub_22C37275C();
    sub_22C62E98C();
    v14 = sub_22C37049C();
    v17 = v11;
  }

  else
  {
    a4(0);
    v14 = sub_22C37582C();
  }

  return sub_22C36C640(v14, v15, v16, v17);
}

uint64_t sub_22C605BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 6;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if (v8)
  {
    return *(*(a3 + 56) + v7);
  }

  else
  {
    return 6;
  }
}

double sub_22C605C48(uint64_t a1, uint64_t a2)
{
  sub_22C634534(a1, a2);
  if (v5 && (v6 = v4, v7 = sub_22C628DD0(v3), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 32 * v7;

    sub_22C36F998(v9, v2);
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  return result;
}

uint64_t sub_22C605CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22C634534(a1, a2);
  if (v6 && (v7 = v4, v5(), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56);
    v10 = a3(0);
    sub_22C36985C(v10);
    v12 = *(v11 + 16);
    v13 = *(v11 + 72);
    v14 = sub_22C634304();
    v15(v14);
    v16 = sub_22C37049C();
    v19 = v10;
  }

  else
  {
    a3(0);
    v16 = sub_22C37582C();
  }

  return sub_22C36C640(v16, v17, v18, v19);
}

uint64_t sub_22C605DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16))
  {
    v3 = a3();
    if (v4)
    {
      sub_22C634960(v3);
    }
  }

  return sub_22C36BA00();
}

double sub_22C605DE8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_22C3736B4(), v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04), (v8 & 1) != 0))
  {
    v9 = *(a1 + 56) + 32 * v7;

    sub_22C36F998(v9, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22C605EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22C3736B4();
  v7 = sub_22C36E5AC(v4, v5, v6, sub_22C36EF04);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a3 + 56) + 8 * v7);
}

uint64_t sub_22C605F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22C634534(a1, a2);
  if (v6 && (v7 = v4, v5(), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56);
    v10 = a3(0);
    sub_22C36985C(v10);
    v12 = *(v11 + 72);
    sub_22C37275C();
    sub_22C62E98C();
    v13 = sub_22C37049C();
    v16 = v10;
  }

  else
  {
    a3(0);
    v13 = sub_22C37582C();
  }

  return sub_22C36C640(v13, v14, v15, v16);
}

uint64_t sub_22C605FF8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C632604(a1, sub_22C6AC6A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

unint64_t sub_22C6061B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_22C369914(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_22C60625C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t ActionResolverRequestEvaluator.init<A, B>(toolbox:actionRequirements:toolExecutionSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C634340();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_22C908AEC();
  sub_22C369824(v28);
  v49 = v29;
  (*(v30 + 16))(v27, v25, v28);
  v31 = type metadata accessor for ActionResolverRequestEvaluator(0);
  v32 = (v27 + *(v31 + 20));
  v32[3] = v21;
  v32[4] = v17;
  v33 = sub_22C36D548(v32);
  v34 = *(v21 - 8);
  (*(v34 + 16))(v33, v23, v21);
  v35 = (v27 + *(v31 + 24));
  v35[3] = v19;
  v35[4] = v15;
  sub_22C36D548(v35);
  sub_22C36BBA8(v19);
  v37 = *(v36 + 32);
  sub_22C634004();
  v38();
  (*(v34 + 8))(v23, v21);
  v39 = *(v49 + 8);
  sub_22C37BD98();
  sub_22C634220();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, a11, a12, a13, a14);
}

uint64_t ActionResolverRequestEvaluator.resolve(actionResolverRequest:sessionState:isJointResolverEnabled:contextId:originTaskStatementIdIndex:)()
{
  sub_22C369980();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 140) = v3;
  *(v1 + 137) = v4;
  *(v1 + 184) = v5;
  *(v1 + 192) = v6;
  *(v1 + 176) = v7;
  v8 = sub_22C902A4C();
  *(v1 + 216) = v8;
  sub_22C3699B8(v8);
  *(v1 + 224) = v9;
  v11 = *(v10 + 64);
  *(v1 + 232) = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  *(v1 + 240) = sub_22C3699D4();
  v15 = type metadata accessor for ActionResolver.Parameter(0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  *(v1 + 248) = sub_22C36D0D4();
  *(v1 + 256) = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  *(v1 + 264) = sub_22C36D0D4();
  *(v1 + 272) = swift_task_alloc();
  v21 = sub_22C908BBC();
  *(v1 + 280) = v21;
  sub_22C3699B8(v21);
  *(v1 + 288) = v22;
  v24 = *(v23 + 64);
  *(v1 + 296) = sub_22C36D0D4();
  *(v1 + 304) = swift_task_alloc();
  v25 = sub_22C90221C();
  *(v1 + 312) = v25;
  sub_22C3699B8(v25);
  *(v1 + 320) = v26;
  v28 = *(v27 + 64);
  *(v1 + 328) = sub_22C36D0D4();
  *(v1 + 336) = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BF310, &qword_22C922578);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  *(v1 + 344) = sub_22C36D0D4();
  *(v1 + 352) = swift_task_alloc();
  v32 = type metadata accessor for ActionParameterValue(0);
  *(v1 + 360) = v32;
  sub_22C3699B8(v32);
  *(v1 + 368) = v33;
  v35 = *(v34 + 64);
  *(v1 + 376) = sub_22C3699D4();
  v36 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  *(v1 + 384) = v36;
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  *(v1 + 392) = sub_22C36D0D4();
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  v39 = sub_22C90292C();
  *(v1 + 416) = v39;
  sub_22C3699B8(v39);
  *(v1 + 424) = v40;
  v42 = *(v41 + 64);
  *(v1 + 432) = sub_22C3699D4();
  v43 = sub_22C90069C();
  *(v1 + 440) = v43;
  sub_22C3699B8(v43);
  *(v1 + 448) = v44;
  v46 = *(v45 + 64);
  *(v1 + 456) = sub_22C3699D4();
  v47 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  *(v1 + 464) = sub_22C3699D4();
  v50 = type metadata accessor for ActionResolver.Decision(0);
  *(v1 + 472) = v50;
  sub_22C369914(v50);
  v52 = *(v51 + 64);
  *(v1 + 480) = sub_22C36D0D4();
  *(v1 + 488) = swift_task_alloc();
  *(v1 + 496) = swift_task_alloc();
  v53 = sub_22C908D6C();
  *(v1 + 504) = v53;
  sub_22C3699B8(v53);
  *(v1 + 512) = v54;
  v56 = *(v55 + 64);
  *(v1 + 520) = sub_22C36D0D4();
  *(v1 + 528) = swift_task_alloc();
  v57 = sub_22C9099FC();
  *(v1 + 536) = v57;
  sub_22C3699B8(v57);
  *(v1 + 544) = v58;
  v60 = *(v59 + 64);
  *(v1 + 552) = sub_22C36D0D4();
  *(v1 + 560) = swift_task_alloc();
  v61 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v61);
  v63 = *(v62 + 64);
  *(v1 + 568) = sub_22C36D0D4();
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  v64 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  *(v1 + 608) = sub_22C3699D4();
  v67 = sub_22C903B1C();
  *(v1 + 616) = v67;
  sub_22C3699B8(v67);
  *(v1 + 624) = v68;
  v70 = *(v69 + 64);
  *(v1 + 632) = sub_22C3699D4();
  v71 = _s5TupleVMa(0);
  *(v1 + 640) = v71;
  sub_22C3699B8(v71);
  *(v1 + 648) = v72;
  v74 = *(v73 + 64);
  *(v1 + 656) = sub_22C36D0D4();
  *(v1 + 664) = swift_task_alloc();
  v75 = sub_22C9027EC();
  *(v1 + 672) = v75;
  sub_22C3699B8(v75);
  *(v1 + 680) = v76;
  v78 = *(v77 + 64);
  *(v1 + 688) = sub_22C36D0D4();
  *(v1 + 696) = swift_task_alloc();
  v79 = sub_22C9089DC();
  *(v1 + 704) = v79;
  sub_22C3699B8(v79);
  *(v1 + 712) = v80;
  v82 = *(v81 + 64);
  *(v1 + 720) = sub_22C3699D4();
  v83 = sub_22C906ECC();
  *(v1 + 728) = v83;
  sub_22C3699B8(v83);
  *(v1 + 736) = v84;
  v86 = *(v85 + 64);
  *(v1 + 744) = sub_22C3699D4();
  v87 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v87);
  v89 = *(v88 + 64);
  *(v1 + 752) = sub_22C3699D4();
  v90 = sub_22C908A0C();
  *(v1 + 760) = v90;
  sub_22C3699B8(v90);
  *(v1 + 768) = v91;
  v93 = *(v92 + 64);
  *(v1 + 776) = sub_22C3699D4();
  v94 = sub_22C9025EC();
  *(v1 + 784) = v94;
  sub_22C3699B8(v94);
  *(v1 + 792) = v95;
  v97 = *(v96 + 64);
  *(v1 + 800) = sub_22C36D0D4();
  *(v1 + 808) = swift_task_alloc();
  v98 = sub_22C9029AC();
  *(v1 + 816) = v98;
  sub_22C3699B8(v98);
  *(v1 + 824) = v99;
  v101 = *(v100 + 64);
  *(v1 + 832) = sub_22C3699D4();
  v102 = sub_22C90827C();
  *(v1 + 840) = v102;
  sub_22C3699B8(v102);
  *(v1 + 848) = v103;
  v105 = *(v104 + 64);
  *(v1 + 856) = sub_22C3699D4();
  v106 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v106);
  v108 = *(v107 + 64);
  *(v1 + 864) = sub_22C36D0D4();
  *(v1 + 872) = swift_task_alloc();
  v109 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  sub_22C369914(v109);
  v111 = *(v110 + 64);
  *(v1 + 880) = sub_22C3699D4();
  v112 = sub_22C90832C();
  *(v1 + 888) = v112;
  sub_22C3699B8(v112);
  *(v1 + 896) = v113;
  v115 = *(v114 + 64);
  *(v1 + 904) = sub_22C3699D4();
  v116 = sub_22C90952C();
  *(v1 + 912) = v116;
  sub_22C3699B8(v116);
  *(v1 + 920) = v117;
  v119 = *(v118 + 64);
  *(v1 + 928) = sub_22C3699D4();
  v120 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v120);
  v122 = *(v121 + 64);
  *(v1 + 936) = sub_22C36D0D4();
  *(v1 + 944) = swift_task_alloc();
  v123 = sub_22C9093BC();
  *(v1 + 952) = v123;
  sub_22C3699B8(v123);
  *(v1 + 960) = v124;
  v126 = *(v125 + 64);
  *(v1 + 968) = sub_22C36D0D4();
  *(v1 + 976) = swift_task_alloc();
  *(v1 + 984) = swift_task_alloc();
  v127 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v127);
  v129 = *(v128 + 64);
  *(v1 + 992) = sub_22C36D0D4();
  *(v1 + 1000) = swift_task_alloc();
  v130 = sub_22C901ECC();
  *(v1 + 1008) = v130;
  sub_22C3699B8(v130);
  *(v1 + 1016) = v131;
  v133 = *(v132 + 64);
  *(v1 + 1024) = sub_22C3699D4();
  v134 = sub_22C908C5C();
  *(v1 + 1032) = v134;
  sub_22C3699B8(v134);
  *(v1 + 1040) = v135;
  v137 = *(v136 + 64);
  *(v1 + 1048) = sub_22C36D0D4();
  *(v1 + 1056) = swift_task_alloc();
  *(v1 + 1064) = swift_task_alloc();
  *(v1 + 1072) = swift_task_alloc();
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  v138 = sub_22C9069BC();
  *(v1 + 1104) = v138;
  sub_22C3699B8(v138);
  *(v1 + 1112) = v139;
  v141 = *(v140 + 64);
  *(v1 + 1120) = sub_22C36D0D4();
  *(v1 + 1128) = swift_task_alloc();
  *(v1 + 1136) = swift_task_alloc();
  v142 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  sub_22C369914(v142);
  v144 = *(v143 + 64);
  *(v1 + 1144) = sub_22C36D0D4();
  *(v1 + 1152) = swift_task_alloc();
  *(v1 + 1160) = swift_task_alloc();
  *(v1 + 1168) = swift_task_alloc();
  v145 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  sub_22C369914(v145);
  v147 = *(v146 + 64);
  *(v1 + 1176) = sub_22C3699D4();
  v148 = sub_22C3A5908(&qword_27D9BEEB0, &unk_22C9214D8);
  *(v1 + 1184) = v148;
  sub_22C369914(v148);
  v150 = *(v149 + 64);
  *(v1 + 1192) = sub_22C3699D4();
  v151 = sub_22C90363C();
  *(v1 + 1200) = v151;
  sub_22C3699B8(v151);
  *(v1 + 1208) = v152;
  v154 = *(v153 + 64);
  *(v1 + 1216) = sub_22C3699D4();
  v155 = sub_22C3A5908(&qword_27D9BF320, &qword_22C9225B0);
  sub_22C369914(v155);
  v157 = *(v156 + 64);
  *(v1 + 1224) = sub_22C3699D4();
  v158 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v158);
  v160 = *(v159 + 64);
  *(v1 + 1232) = sub_22C3699D4();
  v161 = sub_22C90654C();
  *(v1 + 1240) = v161;
  sub_22C3699B8(v161);
  *(v1 + 1248) = v162;
  v164 = *(v163 + 64);
  *(v1 + 1256) = sub_22C3699D4();
  v165 = sub_22C906ACC();
  *(v1 + 1264) = v165;
  sub_22C3699B8(v165);
  *(v1 + 1272) = v166;
  v168 = *(v167 + 64);
  *(v1 + 1280) = sub_22C3699D4();
  v169 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v169);
  v171 = *(v170 + 64);
  *(v1 + 1288) = sub_22C3699D4();
  v172 = sub_22C9026BC();
  *(v1 + 1296) = v172;
  sub_22C3699B8(v172);
  *(v1 + 1304) = v173;
  v175 = *(v174 + 64);
  *(v1 + 1312) = sub_22C36D0D4();
  *(v1 + 1320) = swift_task_alloc();
  *(v1 + 1328) = swift_task_alloc();
  v176 = sub_22C907DEC();
  *(v1 + 1336) = v176;
  sub_22C3699B8(v176);
  *(v1 + 1344) = v177;
  v179 = *(v178 + 64);
  *(v1 + 1352) = sub_22C36D0D4();
  *(v1 + 1360) = swift_task_alloc();
  v180 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v180);
  v182 = *(v181 + 64);
  *(v1 + 1368) = sub_22C3699D4();
  v183 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v183);
  v185 = *(v184 + 64);
  *(v1 + 1376) = sub_22C3699D4();
  v186 = sub_22C9026DC();
  *(v1 + 1384) = v186;
  sub_22C3699B8(v186);
  *(v1 + 1392) = v187;
  v189 = *(v188 + 64);
  *(v1 + 1400) = sub_22C3699D4();
  v190 = sub_22C90880C();
  *(v1 + 1408) = v190;
  sub_22C3699B8(v190);
  *(v1 + 1416) = v191;
  v193 = *(v192 + 64);
  *(v1 + 1424) = sub_22C36D0D4();
  *(v1 + 1432) = swift_task_alloc();
  *(v1 + 1440) = swift_task_alloc();
  *(v1 + 1448) = swift_task_alloc();
  *(v1 + 1456) = swift_task_alloc();
  v194 = sub_22C908EAC();
  *(v1 + 1464) = v194;
  sub_22C3699B8(v194);
  *(v1 + 1472) = v195;
  v197 = *(v196 + 64);
  *(v1 + 1480) = sub_22C36D0D4();
  *(v1 + 1488) = swift_task_alloc();
  *(v1 + 1496) = swift_task_alloc();
  *(v1 + 1504) = swift_task_alloc();
  v198 = sub_22C90077C();
  *(v1 + 1512) = v198;
  sub_22C3699B8(v198);
  *(v1 + 1520) = v199;
  v201 = *(v200 + 64);
  *(v1 + 1528) = sub_22C36D0D4();
  *(v1 + 1536) = swift_task_alloc();
  *(v1 + 1544) = swift_task_alloc();
  *(v1 + 1552) = swift_task_alloc();
  v202 = type metadata accessor for RequirementStatus();
  *(v1 + 1560) = v202;
  sub_22C369914(v202);
  v204 = *(v203 + 64);
  *(v1 + 1568) = sub_22C36D0D4();
  *(v1 + 1576) = swift_task_alloc();
  v205 = sub_22C90769C();
  *(v1 + 1584) = v205;
  sub_22C3699B8(v205);
  *(v1 + 1592) = v206;
  v208 = *(v207 + 64);
  *(v1 + 1600) = sub_22C36D0D4();
  *(v1 + 1608) = swift_task_alloc();
  *(v1 + 1616) = swift_task_alloc();
  *(v1 + 1624) = swift_task_alloc();
  *(v1 + 1632) = swift_task_alloc();
  *(v1 + 1640) = swift_task_alloc();
  v209 = sub_22C9078FC();
  *(v1 + 1648) = v209;
  sub_22C3699B8(v209);
  *(v1 + 1656) = v210;
  v212 = *(v211 + 64);
  *(v1 + 1664) = sub_22C36D0D4();
  *(v1 + 1672) = swift_task_alloc();
  *(v1 + 1680) = swift_task_alloc();
  v213 = sub_22C9063DC();
  *(v1 + 1688) = v213;
  sub_22C3699B8(v213);
  *(v1 + 1696) = v214;
  v216 = *(v215 + 64);
  *(v1 + 1704) = sub_22C36D0D4();
  *(v1 + 1712) = swift_task_alloc();
  *(v1 + 1720) = swift_task_alloc();
  *(v1 + 1728) = swift_task_alloc();
  *(v1 + 1736) = swift_task_alloc();
  *(v1 + 1744) = swift_task_alloc();
  *(v1 + 1752) = swift_task_alloc();
  *(v1 + 1760) = swift_task_alloc();
  *(v1 + 1768) = swift_task_alloc();
  *(v1 + 1776) = swift_task_alloc();
  *(v1 + 1784) = swift_task_alloc();
  *(v1 + 1792) = swift_task_alloc();
  v217 = sub_22C901FAC();
  *(v1 + 1800) = v217;
  sub_22C3699B8(v217);
  *(v1 + 1808) = v218;
  v220 = *(v219 + 64);
  *(v1 + 1816) = sub_22C36D0D4();
  *(v1 + 1824) = swift_task_alloc();
  *(v1 + 1832) = swift_task_alloc();
  *(v1 + 1840) = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v221, v222, v223);
}

uint64_t sub_22C6076A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 1840);
  v14 = *(v12 + 1792);
  v15 = *(v12 + 1680);
  v16 = *(v12 + 1672);
  v17 = *(v12 + 1656);
  v18 = *(v12 + 1648);
  v19 = *(v12 + 140);
  v20 = *(v12 + 184);
  sub_22C36BB08();
  sub_22C901F8C();
  sub_22C903F8C();
  v21 = *(v17 + 16);
  *(v12 + 1848) = v21;
  *(v12 + 1856) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_22C634004();
  v21();
  v22 = sub_22C36D29C();
  (v21)(v22);
  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v12 + 1832);
    v26 = *(v12 + 1808);
    v27 = *(v12 + 1800);
    v98 = *(v12 + 1696);
    v99 = *(v12 + 1688);
    v100 = *(v12 + 1792);
    v28 = *(v12 + 1680);
    v29 = *(v12 + 1656);
    v93 = *(v12 + 1648);
    v94 = *(v12 + 1640);
    v95 = *(v12 + 1672);
    v96 = *(v12 + 1584);
    v30 = swift_slowAlloc();
    swift_slowAlloc();
    *v30 = 136315394;
    v97 = v24;
    sub_22C9068FC();
    sub_22C37ACB8();
    sub_22C6339B0(v31, v32);
    sub_22C90B47C();
    sub_22C385D88();
    v33 = *(v26 + 8);
    v34 = sub_22C36CC9C();
    v35(v34);
    v36 = *(v29 + 8);
    v36(v28, v93);
    v37 = sub_22C37170C();
    v40 = sub_22C36F9F4(v37, v38, v39);

    *(v30 + 4) = v40;
    *(v30 + 12) = 2080;
    sub_22C9078EC();
    sub_22C90A1AC();
    sub_22C385D88();
    v41 = sub_22C36ECB4();
    (v36)(v41);
    v42 = sub_22C37170C();
    v45 = sub_22C36F9F4(v42, v43, v44);

    *(v30 + 14) = v45;
    _os_log_impl(&dword_22C366000, v23, v97, "Processing actionResolverRequest for request: statementId=%s and toolId=%s", v30, 0x16u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C370510();

    v46 = *(v98 + 8);
    v46(v100, v99);
  }

  else
  {
    v47 = *(v12 + 1792);
    v48 = *(v12 + 1696);
    v49 = *(v12 + 1688);
    v50 = *(v12 + 1680);
    v51 = *(v12 + 1672);
    v52 = *(v12 + 1656);
    v53 = *(v12 + 1648);

    v36 = *(v52 + 8);
    v54 = sub_22C36CA88();
    (v36)(v54);
    v55 = sub_22C50B478();
    (v36)(v55);
    v46 = *(v48 + 8);
    v56 = sub_22C37170C();
    (v46)(v56);
  }

  *(v12 + 1872) = v46;
  *(v12 + 1864) = v36;
  v57 = *(v12 + 1632);
  v58 = *(v12 + 1552);
  v59 = *(v12 + 1504);
  v60 = *(v12 + 208);
  v61 = *(v12 + 184);
  v62 = type metadata accessor for ActionResolverRequestEvaluator(0);
  sub_22C378AB0(v60 + *(v62 + 20), v12 + 16);
  v63 = *(v12 + 48);
  sub_22C374168((v12 + 16), *(v12 + 40));
  v64 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v64);
  sub_22C5CAA58();
  sub_22C908AFC();
  v65 = *(v12 + 1632);
  v66 = *(v12 + 1592);
  v67 = *(v12 + 1584);
  v68 = *(v12 + 1552);
  v69 = *(v12 + 1520);
  v70 = *(v12 + 1512);
  v71 = *(v12 + 1456);
  v72 = *(v12 + 192);
  v73 = *(v69 + 8);
  *(v12 + 1880) = v73;
  *(v12 + 1888) = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v68, v70);
  v74 = *(v66 + 8);
  *(v12 + 1896) = v74;
  *(v12 + 1904) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v65, v67);
  sub_22C90878C();
  v75 = *(v63 + 8);
  sub_22C369B5C();
  v101 = v76 + *v76;
  v78 = *(v77 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v12 + 1912) = v79;
  *v79 = v80;
  v79[1] = sub_22C608050;
  v81 = *(v12 + 1576);
  v82 = *(v12 + 1504);
  v83 = *(v12 + 1456);
  sub_22C372034();

  return v89(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12);
}

uint64_t sub_22C608050()
{
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[239];
  *v4 = *v1;
  v3[240] = v0;

  v6 = v2[188];
  v7 = v2[184];
  v8 = v2[183];
  v9 = v2[182];
  v10 = v2[177];
  v11 = v2[176];
  v14 = *(v10 + 8);
  v12 = v10 + 8;
  v13 = v14;
  if (v0)
  {
    v13(v9, v11);
    v15 = *(v7 + 8);
  }

  else
  {
    v3[241] = v13;
    v3[242] = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v3[243] = *(v7 + 8);
    v3[244] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v16 = sub_22C36ECB4();
  v17(v16);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C60824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[197];
  v14 = v12[196];
  v15 = v12[195];
  sub_22C36FF94(v12 + 2);
  sub_22C36BBCC();
  sub_22C62E98C();
  sub_22C36BAFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[226];
  v137 = v12[225];
  if (EnumCaseMultiPayload == 1)
  {
    v132 = v12[229];
    v133 = v12[228];
    v134 = v12[197];
    v135 = v12[230];
    v18 = v12[175];
    v19 = v12[174];
    v20 = v12[173];
    v136 = v12[171];
    v21 = v12[166];
    v22 = v12[163];
    v124 = v12[198];
    v125 = v12[162];
    v126 = v12[161];
    v23 = v12[55];
    v129 = v12[24];
    v130 = v12[172];
    v127 = v12[23];
    v128 = v12[170];
    v131 = v12[22];
    (*(v19 + 32))(v18, v12[196], v20);
    v24 = sub_22C381B6C();
    sub_22C36C640(v24, v25, v26, v23);
    sub_22C9078EC();
    v27 = sub_22C37049C();
    sub_22C36C640(v27, v28, v29, v124);
    v30 = *(v19 + 16);
    v31 = sub_22C36FC74();
    v32(v31);
    (*(v22 + 104))(v21, *MEMORY[0x277D1CBA0], v125);
    sub_22C9026AC();
    v33 = sub_22C3702F4();
    sub_22C36C640(v33, v34, v35, v36);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    sub_22C9068FC();
    sub_22C906E7C();
    (*(v19 + 8))(v18, v20);
    sub_22C36A140();
    sub_22C62E9E0(v134, v37);
    (*(v17 + 8))(v135, v137);
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
    sub_22C374E7C();
    sub_22C37A264();
    sub_22C37E340();
    sub_22C633A7C(v38);

    sub_22C369C50();
    sub_22C372034();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  v48 = v12[242];
  v49 = v12[241];
  v50 = v12[229];
  v51 = v12[196];
  v52 = v12[181];
  v53 = v12[176];
  v54 = v12[154];
  v56 = v12[23];
  v55 = v12[24];
  sub_22C36A140();
  sub_22C62E9E0(v57, v58);
  sub_22C90878C();
  sub_22C6341E4();
  sub_22C9068FC();
  v59 = sub_22C633FA8();
  sub_22C646D68(v59, v60, v61, v62, v63, v64, v65, v66, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  v67 = *(v17 + 8);
  v12[245] = v67;
  v12[246] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v50, v137);
  v68 = sub_22C36D264();
  v49(v68);
  v69 = sub_22C9070DC();
  sub_22C381514();
  sub_22C36D0A8(v70, v71, v72);
  if (v73)
  {
    sub_22C3AC228(v12[154], &qword_27D9BAA18, &qword_22C911C40);
LABEL_11:
    v95 = 0;
    goto LABEL_12;
  }

  v74 = v12[157];
  v75 = v12[156];
  v76 = v12[155];
  v77 = v12[154];
  sub_22C90702C();
  sub_22C36BBA8(v69);
  v79 = *(v78 + 8);
  v80 = sub_22C36BBCC();
  v81(v80);
  v82 = *(v75 + 88);
  v83 = sub_22C36D264();
  if (v84(v83) != *MEMORY[0x277D1DA78])
  {
    (*(v12[156] + 8))(v12[157], v12[155]);
    goto LABEL_11;
  }

  v85 = v12[160];
  v86 = v12[159];
  v87 = v12[158];
  v88 = v12[157];
  v89 = v12[155];
  v90 = sub_22C634528(v12[156]);
  v91(v90);
  v92 = *(v86 + 32);
  v93 = sub_22C36BBCC();
  v94(v93);
  v95 = sub_22C906A8C();
  v96 = *(v86 + 8);
  v97 = sub_22C37170C();
  v98(v97);

LABEL_12:
  v12[247] = v95;
  v99 = v12[180];
  v100 = v12[24];
  sub_22C90878C();
  swift_task_alloc();
  sub_22C36CC90();
  v12[248] = v101;
  *v101 = v102;
  v101[1] = sub_22C608AE4;
  v103 = v12[180];
  v104 = v12[153];
  v105 = v12[26];
  v106 = v12[23];
  sub_22C372034();

  return sub_22C61323C(v107, v108, v109, v110);
}

uint64_t sub_22C608AE4()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v2 + 1984);
  *v4 = *v1;
  *(v3 + 1992) = v0;

  v6 = *(v2 + 1976);
  v7 = *(v2 + 1936);
  (*(v2 + 1928))(*(v2 + 1440), *(v2 + 1408));

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C60C0F4()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 2008);
  *v4 = *v2;
  *(v3 + 2016) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 2000);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C60C210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C634068();
  v36 = v15;
  sub_22C36CD54();
  v16 = sub_22C633FCC();
  v17(v16);
  v18 = *(v14 + 8);
  v19 = sub_22C36FC2C();
  v20(v19);
  v21 = *(v13 + 8);
  v22 = sub_22C36ECB4();
  v23(v22);
  sub_22C36A140();
  sub_22C62E9E0(v12, v24);
  v25 = sub_22C36BBCC();
  v36(v25);
  sub_22C378064();
  sub_22C633A7C(v26);

  sub_22C369C50();
  sub_22C372034();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_22C60C6CC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 2056);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 2064) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C60C7C8()
{
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[266];
  *v4 = *v1;
  v3[267] = v0;

  v6 = v2[265];
  v7 = v2[264];
  v8 = v2[263];
  v9 = v2[261];
  v10 = v2[260];
  v11 = v2[259];
  if (v0)
  {
    v12 = v3[255];
    v13 = v3[254];
    v14 = v3[247];
    v29 = v3[237];
    v31 = v3[238];
    v27 = v3[198];
    v28 = v3[200];
    v15 = v3[53];
    v26 = v3[54];
    v16 = v3[52];

    (*(v15 + 8))(v26, v16);
    v29(v28, v27);
  }

  else
  {
    v30 = v3[237];
    v32 = v3[238];
    v17 = v3[200];
    v18 = v3[198];
    v19 = v3[53];
    v20 = v3[54];
    v21 = v3[52];

    (*(v19 + 8))(v20, v21);
    v30(v17, v18);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

void sub_22C60CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12;
  v14 = v12[61];
  v15 = v12[62];
  v17 = v12[59];
  v16 = v12[60];
  sub_22C630194();
  sub_22C36BBCC();
  sub_22C62E98C();
  sub_22C36BAFC();
  v700 = v12;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v153 = v12[256];
      v154 = v13[255];
      v155 = v13[254];
      v156 = v13[139];
      v157 = v13[130];
      v158 = v13[82];
      v159 = v13[80];
      v675 = v13[48];
      v160 = v154 + ((*(v13 + 2224) + 32) & ~*(v13 + 2224));
      v161 = *v13[60];
      v162 = sub_22C383C3C();
      sub_22C62AE4C(v162, v163, v154);
      sub_22C633F90();
      sub_22C62E98C();

      v164 = *(v158 + *(v159 + 24));

      sub_22C633F78();
      sub_22C62E9E0(v158, v165);
      v166 = 0;
      v167 = v164 + 64;
      v168 = -1;
      v597 = v164;
      v169 = -1 << *(v164 + 32);
      if (-v169 < 64)
      {
        v168 = ~(-1 << -v169);
      }

      v170 = v168 & *(v164 + 64);
      v171 = (63 - v169) >> 6;
      v666 = (v156 + 32);
      v685 = v157;
      v694 = (v157 + 32);
      v643 = v156;
      v172 = MEMORY[0x277D84F98];
      v605 = v171;
      v613 = v167;
      if (v170)
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_31:
        v173 = v166 + 1;
        if (__OFADD__(v166, 1))
        {
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v173 >= v171)
        {
          break;
        }

        v170 = *(v167 + 8 * v173);
        ++v166;
        if (v170)
        {
          v661 = v172;
          v166 = v173;
          goto LABEL_35;
        }
      }

      v170 = 0;
      for (i = 1; ; i = 0)
      {
        v183 = v13[144];
        v184 = v13[48];
        sub_22C36C640(v13[143], i, 1, v184);
        sub_22C3D3310();
        sub_22C36D0A8(v183, 1, v184);
        if (v66)
        {
          break;
        }

        v185 = v13[144];
        v186 = v13[140];
        v187 = v13[138];
        v188 = v13[134];
        v189 = v13[129];
        v190 = *(v675 + 48);
        v191 = *v666;
        v192 = sub_22C50B578();
        v193(v192);
        v194 = *v694;
        (*v694)(v188, (v185 + v190), v189);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C628D18();
        sub_22C369DA4();
        if (__OFADD__(v197, v198))
        {
          goto LABEL_122;
        }

        v199 = v195;
        v200 = v196;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          v201 = v700[140];
          sub_22C628D18();
          if ((v200 & 1) != (v203 & 1))
          {
            v459 = v700[138];
            goto LABEL_115;
          }

          v199 = v202;
        }

        v204 = v700[140];
        v205 = v700[138];
        v206 = v700[134];
        v207 = v700[129];
        if (v200)
        {
          (*(v685 + 40))(v172[7] + *(v685 + 72) * v199, v700[134], v700[129]);
          v208 = sub_22C6341CC();
          v209(v208, v205);
        }

        else
        {
          sub_22C36ED48(&v172[v199 >> 6]);
          (*(v643 + 16))(v172[6] + *(v643 + 72) * v199, v204, v205);
          v194(v172[7] + *(v685 + 72) * v199, v206, v207);
          (*(v643 + 8))(v204, v205);
          v210 = v172[2];
          v75 = __OFADD__(v210, 1);
          v211 = v210 + 1;
          if (v75)
          {
            goto LABEL_124;
          }

          v172[2] = v211;
        }

        v13 = v700;
        v171 = v605;
        v167 = v613;
        if (!v170)
        {
          goto LABEL_31;
        }

LABEL_30:
        v661 = v172;
        v173 = v166;
LABEL_35:
        v651 = v13[143];
        v174 = v13[137];
        v175 = v13[129];
        v176 = __clz(__rbit64(v170));
        v170 &= v170 - 1;
        v177 = v176 | (v173 << 6);
        (*(v643 + 16))(v13[142], *(v597 + 48) + *(v643 + 72) * v177, v13[138]);
        (*(v685 + 16))(v174, *(v597 + 56) + *(v685 + 72) * v177, v175);
        v178 = *(v675 + 48);
        v179 = *(v643 + 32);
        v180 = sub_22C372164();
        v181(v180);
        (*(v685 + 32))(v651 + v178, v174, v175);
        v172 = v661;
      }

      v268 = v13[130];
      v653 = v13[44];
      v566 = v13[43];
      v269 = v172;
      v270 = v13[40];
      v271 = v13[36];

      ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)(v269, v272, v273, v274, v275, v276, v277, v278, v511, v513, v515, v517, v519, v521, v523, v525, v527, v529, v531, v533);
      v279 = 0;
      v281 = *(v280 + 64);
      v572 = v280;
      v282 = *(v280 + 32);
      sub_22C37454C();
      v285 = v284 & v283;
      sub_22C634720();
      v545 = v287 >> 6;
      v636 = (v271 + 88);
      v623 = *MEMORY[0x277D1E908];
      v561 = *MEMORY[0x277D1E900];
      v542 = *MEMORY[0x277D1E910];
      v606 = (v271 + 8);
      v540 = *MEMORY[0x277D1CB00];
      v557 = (v271 + 96);
      v615 = (v270 + 16);
      v553 = *MEMORY[0x277D1CAF0];
      v667 = MEMORY[0x277D84F98];
      v598 = v270;
      v579 = v286;
      if (!v285)
      {
        goto LABEL_66;
      }

LABEL_65:
      v288 = v279;
LABEL_70:
      v289 = v13[43];
      v290 = __clz(__rbit64(v285));
      v285 &= v285 - 1;
      v291 = v290 | (v288 << 6);
      v292 = (*(v572 + 48) + 16 * v291);
      v294 = *v292;
      v293 = v292[1];
      (*(v685 + 16))(v13[137], *(v572 + 56) + *(v685 + 72) * v291, v13[129]);
      v295 = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
      v296 = *(v295 + 48);
      *v289 = v294;
      *(v566 + 8) = v293;
      v297 = *(v685 + 32);
      sub_22C38399C();
      v298();
      sub_22C36BECC();
      sub_22C36C640(v299, v300, v301, v295);

      while (1)
      {
        v302 = v13[43];
        v303 = v13[44];
        sub_22C3D3310();
        v304 = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
        v305 = sub_22C383C3C();
        sub_22C36D0A8(v305, v306, v304);
        if (v66)
        {
          break;
        }

        v307 = v13[133];
        v308 = v13[121];
        v309 = v13[44];
        v311 = v13[37];
        v310 = v13[38];
        v312 = v13[35];
        v676 = *v309;
        v313 = *(v653 + 8);
        (*v694)(v307, v309 + *(v304 + 48), v13[129]);
        sub_22C90774C();
        sub_22C908BCC();
        sub_22C38A894();
        v314 = sub_22C370114();
        v315(v314);
        v316 = *v636;
        v317 = sub_22C3726C4();
        v319 = v318(v317);
        if (v319 == v623)
        {
          v320 = v13[37];
          v321 = v13[33];
          (*v606)(v13[38], v13[35]);
          v322 = *v557;
          v323 = sub_22C37170C();
          v324(v323);
          *v321 = *v320;
          v325 = sub_22C90260C();
          sub_22C36985C(v325);
          (*(v326 + 104))(v321, v553, v325);
          sub_22C633C54();
        }

        else if (v319 == v561)
        {
          v331 = sub_22C6345B8();
          v332(v331);
          sub_22C90260C();
          v327 = sub_22C3702F4();
        }

        else
        {
          if (v319 != v542)
          {
            v507 = v13[35];
            sub_22C372034();

            sub_22C90B4EC();
            return;
          }

          v333 = sub_22C6345B8();
          v334(v333);
          v335 = sub_22C90260C();
          sub_22C36985C(v335);
          (*(v336 + 104))(v307, v540, v335);
          v327 = sub_22C3726A4();
          v330 = v335;
        }

        sub_22C36C640(v327, v328, v329, v330);
        v337 = v13[121];
        v339 = v13[41];
        v338 = v13[42];
        v340 = v13[39];
        v341 = v13[33];
        v342 = v13[34];
        sub_22C3D3310();
        sub_22C379FC8();
        sub_22C9021FC();
        v343 = *v615;
        v344 = sub_22C372FCC();
        v345(v344);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C3736B4();
        sub_22C36E5AC(v676, v313, v346, sub_22C36EF04);
        sub_22C369DA4();
        if (__OFADD__(v349, v350))
        {
          goto LABEL_123;
        }

        v351 = v347;
        v352 = v348;
        sub_22C3A5908(&qword_27D9BF340, &unk_22C922600);
        if (sub_22C90B15C())
        {
          sub_22C3736B4();
          sub_22C36E5AC(v676, v313, v353, sub_22C36EF04);
          sub_22C385F54();
          if (!v66)
          {
            goto LABEL_115;
          }

          v351 = v354;
        }

        v355 = v700[133];
        v356 = v700[129];
        v358 = v700[41];
        v357 = v700[42];
        v359 = v700[39];
        if (v352)
        {

          (*(v598 + 40))(v667[7] + *(v598 + 72) * v351, v358, v359);
          v360 = *(v598 + 8);
          v361 = sub_22C634750();
          v362(v361);
          v363 = sub_22C38C41C();
          v364(v363, v356);
        }

        else
        {
          sub_22C36ED48(&v667[v351 >> 6]);
          v365 = (v667[6] + 16 * v351);
          *v365 = v676;
          v365[1] = v313;
          (*(v598 + 32))(v667[7] + *(v598 + 72) * v351, v358, v359);
          v366 = *(v598 + 8);
          v367 = sub_22C634750();
          v368(v367);
          v369 = sub_22C38C41C();
          v370(v369, v356);
          sub_22C6341D8();
          if (v75)
          {
            goto LABEL_125;
          }

          v667[2] = v371;
        }

        v13 = v700;
        v286 = v579;
        if (v285)
        {
          goto LABEL_65;
        }

        while (1)
        {
LABEL_66:
          v288 = v279 + 1;
          if (__OFADD__(v279, 1))
          {
            goto LABEL_119;
          }

          if (v288 >= v545)
          {
            break;
          }

          v285 = *(v286 + 8 * v288);
          ++v279;
          if (v285)
          {
            v279 = v288;
            goto LABEL_70;
          }
        }

        v372 = v13[43];
        sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
        v373 = sub_22C3702F4();
        sub_22C36C640(v373, v374, v375, v376);
        v285 = 0;
      }

      v435 = v13[86];
      v436 = v13[23];

      sub_22C9027CC();
      if ((sub_22C90776C() & 1) == 0)
      {
        v678 = v13[262];
        v551 = v13[247];
        v702 = v13[246];
        v697 = v13[245];
        v608 = v13[229];
        v638 = v13[227];
        v625 = v13[228];
        v631 = v13[226];
        v646 = v13[225];
        v655 = v13[230];
        v555 = v13[198];
        v688 = v13[197];
        v600 = v13[172];
        v460 = v13[171];
        v574 = v13[170];
        v99 = v13;
        v461 = v13[166];
        v462 = v99[163];
        v559 = v99[162];
        v563 = v99[161];
        v463 = v99[85];
        v586 = v99[84];
        v592 = v99[86];
        v668 = v99[62];
        v464 = v99[55];
        v465 = v99[23];
        v568 = v99[24];
        v617 = v99[22];

        sub_22C36A748();
        sub_22C36C640(v466, v467, v468, v464);
        sub_22C9078EC();
        sub_22C36BECC();
        sub_22C36C640(v469, v470, v471, v555);
        sub_22C63489C();
        sub_22C37275C();
        v472();
        (*(v462 + 104))(v461, *MEMORY[0x277D1CBA8], v559);
        sub_22C9026AC();
        v473 = sub_22C3702F4();
        sub_22C36C640(v473, v474, v475, v476);
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        v477 = *(v631 + 16);
        sub_22C38399C();
        v478();
        sub_22C906E6C();

        (*(v463 + 8))(v592, v586);
        sub_22C38BC50();
        sub_22C62E9E0(v668, v479);
        sub_22C36A140();
        sub_22C62E9E0(v688, v480);
        v481 = sub_22C37170C();
        v697(v481);
        type metadata accessor for StepResolution();
        goto LABEL_105;
      }

      v437 = v13[216];
      sub_22C903F8C();
      v438 = sub_22C9063CC();
      v439 = sub_22C90AADC();
      if (os_log_type_enabled(v438, v439))
      {
        v440 = sub_22C36D240();
        *v440 = 0;
        _os_log_impl(&dword_22C366000, v438, v439, "Skipping requested confirmation since this action has been previously confirmed", v440, 2u);
        sub_22C3699EC();
      }

      v441 = v13[267];
      v442 = v13[247];
      v443 = v13[234];
      v444 = v13[216];
      v445 = v13[212];
      v446 = v13[211];
      v447 = v13[86];
      v448 = v13[23];

      v449 = sub_22C36CA88();
      v450 = v443(v449);
      MEMORY[0x2318AFCB0](v450);
      v451 = sub_22C4E78D0();
      *(v451 + 16) = v442;
      *(v451 + 24) = v448;
      sub_22C604EA0(MEMORY[0x277D84F98], sub_22C633A34, v451, v447, &qword_27D9BF480, &qword_22C922740, MEMORY[0x277D1C8D0], v452, v512, v514, v516, v518, v520, v522, v524, v526, v528, v530, v532, v534);
      v13[271] = v453;

      v454 = swift_task_alloc();
      v13[272] = v454;
      *v454 = v13;
      v454[1] = sub_22C60F9E4;
      v455 = v13[26];
      v456 = v13[23];
      v457 = v13[24];
      v458 = v13[22];
      goto LABEL_61;
    case 2u:
      v81 = v12[256];
      v82 = *(v13 + 2224);
      v83 = v13[255];
      v84 = v13[254];
      v85 = v13[247];
      v86 = v13[129];
      v87 = v13[80];
      v88 = v13[60];
      v89 = v13[32];
      v90 = v13[30];
      sub_22C36BA94();
      v92 = v83 + v91;

      v93 = *v88;
      v94 = sub_22C3A5908(&qword_27D9BF2E8, &unk_22C9225E0);
      sub_22C380710(v94);
      sub_22C630194();
      sub_22C381514();
      sub_22C62AE4C(v95, v96, v97);
      v98 = v92 + v93 * v81;
      v99 = v700;
      v100 = *(v98 + *(v87 + 24));

      v101 = sub_22C36CA88();
      sub_22C605CD4(v101, v102, v103);

      v104 = sub_22C383C3C();
      v106 = sub_22C370B74(v104, v105, v86);
      v673 = v700[245];
      v682 = v700[246];
      v659 = v700[262];
      v664 = v700[230];
      if (v106 == 1)
      {
        v107 = v700[225];
        v108 = v700[197];
        v109 = v700[62];
        v110 = v700[32];
        sub_22C3AC228(v700[30], &qword_27D9BB628, &unk_22C920580);
        type metadata accessor for InterpreterError();
        sub_22C372ACC();
        sub_22C6339B0(v111, v112);
        sub_22C36D148();
        v114 = v113;
        v705 = sub_22C9069AC();
        v706 = v115;
        MEMORY[0x2318B7850](14906, 0xE200000000000000);
        v700[16] = sub_22C90697C();
        *(v700 + 136) = v116 & 1;
        sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
        v117 = sub_22C90A1AC();
        MEMORY[0x2318B7850](v117);

        *v114 = v705;
        v114[1] = v706;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_22C382818();
        sub_22C62E9E0(v110, v118);
        sub_22C38BC50();
        sub_22C62E9E0(v109, v119);
        sub_22C36A140();
        sub_22C62E9E0(v108, v120);
        v673(v664, v107);
        goto LABEL_26;
      }

      v573 = v700[229];
      v585 = v700[228];
      v607 = v700[226];
      v616 = v700[227];
      v624 = v700[225];
      v541 = v700[198];
      v637 = v700[197];
      v696 = v700[172];
      v654 = v700[171];
      v558 = v700[170];
      v543 = v700[166];
      v546 = v700[163];
      v548 = v700[162];
      v554 = v700[161];
      v377 = v700[129];
      v591 = v377;
      v599 = v700[130];
      v378 = v700[124];
      v379 = v700[122];
      v535 = v700[119];
      v380 = v700[117];
      v645 = v700[104];
      v538 = v700[103];
      v539 = v700[102];
      v381 = v700[101];
      v630 = v700[62];
      v536 = v700[55];
      v580 = v700[32];
      v550 = v700[24];
      v537 = v700[23];
      v567 = v700[22];
      v562 = v700[132];
      (*(v599 + 32))(v562, v700[30]);
      sub_22C9069AC();
      sub_22C90697C();
      sub_22C6341E4();
      sub_22C90774C();
      sub_22C908B8C();
      sub_22C36BAFC();
      sub_22C9025CC();
      sub_22C36A748();
      sub_22C36C640(v382, v383, v384, v535);
      sub_22C634810();
      sub_22C90293C();
      sub_22C36A748();
      sub_22C36C640(v385, v386, v387, v536);
      sub_22C9078EC();
      sub_22C36BECC();
      sub_22C36C640(v388, v389, v390, v541);
      v391 = *(v538 + 16);
      v392 = sub_22C36BBCC();
      v393(v392);
      (*(v546 + 104))(v543, *MEMORY[0x277D1CBD0], v548);
      sub_22C9026AC();
      v394 = sub_22C381B6C();
      sub_22C36C640(v394, v395, v396, v397);
      sub_22C36BBCC();
      sub_22C907DCC();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      (*(v607 + 16))(v616, v664, v624);
      sub_22C906E6C();

      (*(v538 + 8))(v645, v539);
      (*(v599 + 8))(v562, v591);
      sub_22C382818();
      sub_22C62E9E0(v580, v398);
      sub_22C38BC50();
      sub_22C62E9E0(v630, v399);
      sub_22C36A140();
      sub_22C62E9E0(v637, v400);
      v401 = sub_22C36BBCC();
      (v673)(v401);
      type metadata accessor for StepResolution();
      sub_22C633E0C();
LABEL_105:
      swift_storeEnumTagMultiPayload();
      goto LABEL_108;
    case 3u:
      v121 = v12[267];
      v122 = v12[253];
      v123 = v13[247];
      v124 = v13[60];
      v125 = v13[31];
      v693 = *(v13 + 127);

      v126 = *v124;
      v127 = sub_22C3A5908(&qword_27D9BF2E0, &qword_22C922530);
      sub_22C380710(v127);
      sub_22C630194();
      v128 = swift_task_alloc();
      *(v128 + 18) = BYTE2(v122);
      *(v128 + 16) = v122;
      *(v128 + 21) = BYTE5(v122);
      *(v128 + 19) = v122 >> 24;
      *(v128 + 24) = v693;
      *(v128 + 40) = v125;
      sub_22C3B4604();
      if (v121)
      {
        v130 = v13[262];
        v131 = v13[255];
        v132 = v13[254];
        v683 = v13[246];
        v133 = v13[245];
        v134 = v13[230];
        v135 = v13[225];
        v136 = v13[197];
        v137 = v13[62];
        v138 = v700[31];

        sub_22C38BC50();
        sub_22C62E9E0(v137, v139);
        sub_22C36A140();
        sub_22C62E9E0(v136, v140);
        v141 = sub_22C36CA88();
        v133(v141);
        sub_22C382818();
        v99 = v700;
        sub_22C62E9E0(v138, v142);
LABEL_26:
        v143 = v99[230];
        v144 = v99[229];
        v145 = v99[228];
        v146 = v99[227];
        v147 = v99[224];
        v148 = v99[223];
        v149 = v99[222];
        v150 = v99[221];
        v151 = v99[220];
        v152 = v99[219];
        sub_22C36ADD0();
        sub_22C6343C8();
        v571 = v99[54];
        v578 = v99[51];
        v584 = v99[50];
        v590 = v99[49];
        v596 = v99[47];
        v604 = v99[44];
        v612 = v99[43];
        v621 = v99[42];
        v628 = v99[41];
        v634 = v99[38];
        v642 = v99[37];
        v650 = v99[34];
        v660 = v99[33];
        v665 = v99[32];
        v674 = v99[31];
        v684 = v99[30];
        v701 = v99[29];

        sub_22C369A24();
      }

      else
      {
        v402 = v129;
        v403 = v13[255];
        v404 = v13[254];

        v405 = *(v402 + 16);
        if (v405)
        {
          v406 = v13[130];
          v407 = v13[99];
          v408 = *(v406 + 16);
          v409 = *(v406 + 80);
          sub_22C36BA94();
          v411 = v402 + v410;
          v677 = *(v412 + 56);
          v687 = v413;
          v414 = v13;
          v415 = (v412 - 8);
          v416 = MEMORY[0x277D84F90];
          do
          {
            v417 = v414[131];
            v418 = v414[129];
            v419 = v414[124];
            v420 = v414[122];
            v421 = v414[100];
            v422 = sub_22C37170C();
            v687(v422);
            sub_22C90774C();
            sub_22C908B8C();
            v423 = *v415;
            v424 = sub_22C372FA4();
            v425(v424);
            sub_22C370114();
            sub_22C9025CC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v432 = *(v416 + 16);
              sub_22C36D270();
              sub_22C594FB4();
              v416 = v433;
            }

            v427 = *(v416 + 16);
            v426 = *(v416 + 24);
            if (v427 >= v426 >> 1)
            {
              sub_22C36A958(v426);
              sub_22C594FB4();
              v416 = v434;
            }

            v414 = v700;
            v428 = v700[100];
            v429 = v700[98];
            *(v416 + 16) = v427 + 1;
            v430 = *(v407 + 80);
            sub_22C633E18();
            (*(v407 + 32))(v431 + *(v407 + 72) * v427);
            v411 += v677;
            --v405;
          }

          while (v405);

          v13 = v700;
        }

        else
        {
        }

        v669 = v13[262];
        v689 = v13[245];
        v698 = v13[246];
        v656 = v13[230];
        v601 = v13[229];
        v618 = v13[228];
        v626 = v13[226];
        v632 = v13[227];
        v639 = v13[225];
        v556 = v13[198];
        v679 = v13[197];
        v581 = v13[172];
        v703 = v13[171];
        v593 = v13[170];
        v560 = v13[166];
        v482 = v13[163];
        v564 = v13[162];
        v575 = v13[161];
        v662 = v13[62];
        v547 = v13[55];
        v483 = v13[29];
        v549 = v13[28];
        v552 = v13[27];
        v587 = v13[24];
        v544 = v13[23];
        v609 = v13[22];
        v647 = v13[31];
        sub_22C9069AC();
        v99 = v13;
        sub_22C90697C();
        sub_22C5CAA58();
        sub_22C9029EC();
        sub_22C36A748();
        sub_22C36C640(v484, v485, v486, v547);
        sub_22C9078EC();
        v487 = sub_22C37049C();
        sub_22C36C640(v487, v488, v489, v556);
        sub_22C63489C();
        v490(v560, v483, v552);
        (*(v482 + 104))(v560, *MEMORY[0x277D1CBD8], v564);
        sub_22C9026AC();
        v491 = sub_22C381B6C();
        sub_22C36C640(v491, v492, v493, v494);
        sub_22C36BBCC();
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        (*(v626 + 16))(v632, v656, v639);
        sub_22C906E6C();

        (*(v549 + 8))(v483, v552);
        sub_22C38BC50();
        sub_22C62E9E0(v662, v495);
        sub_22C36A140();
        sub_22C62E9E0(v679, v496);
        v497 = sub_22C36BBCC();
        v689(v497);
        type metadata accessor for StepResolution();
        sub_22C633E0C();
        swift_storeEnumTagMultiPayload();
        sub_22C382818();
        sub_22C62E9E0(v647, v498);
LABEL_108:
        sub_22C378064();
        v565 = v99[60];
        v569 = v99[58];
        v576 = v99[57];
        v582 = v99[54];
        v588 = v99[51];
        v594 = v99[50];
        v602 = v99[49];
        v610 = v99[47];
        v619 = v99[44];
        v627 = v99[43];
        v633 = v99[42];
        v640 = v99[41];
        v648 = v99[38];
        v657 = v99[37];
        v663 = v99[34];
        v670 = v99[33];
        v680 = v99[32];
        v690 = v99[31];
        v699 = v99[30];
        v704 = v99[29];

        sub_22C369C50();
      }

      sub_22C372034();

      v500(v499, v500, v501, v502, v503, v504, v505, v506, a9, a10, a11, a12);
      return;
    default:
      v18 = v12[247];
      v19 = v12[217];
      v20 = v12[60];

      v21 = *v20;
      sub_22C903F8C();
      v22 = sub_22C9063CC();
      v23 = sub_22C90AACC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_22C36FB44();
        *v24 = 134217984;
        *(v24 + 4) = v21;
        _os_log_impl(&dword_22C366000, v22, v23, "Found a confident output of JointResolver (tuples[%ld])", v24, 0xCu);
        sub_22C3699EC();
      }

      v25 = v13[256];
      v26 = *(v13 + 2224);
      v27 = v13[255];
      v671 = v13[234];
      v28 = v13[217];
      v29 = v13[212];
      v30 = v13[211];
      v31 = v13[139];
      v32 = v13[130];
      v33 = v700[80];
      v681 = v700[48];
      v691 = v25;

      v34 = v27 + ((v26 + 32) & ~v26);
      v35 = sub_22C36ECB4();
      v671(v35);
      sub_22C62AE4C(v21, 1, v27);
      v36 = *(v33 + 24);
      v37 = v700;
      v38 = *(v34 + v691 * v21 + v36);
      v40 = *(v38 + 64);
      v39 = v38 + 64;
      v41 = *(*(v34 + v691 * v21 + v36) + 32);
      sub_22C37454C();
      v44 = v43 & v42;
      sub_22C634720();
      v46 = v45 >> 6;
      v672 = v32;
      v595 = v31;
      v603 = v47;
      v570 = (v32 + 40);
      v577 = (v31 + 8);
      v658 = (v32 + 8);
      swift_bridgeObjectRetain_n();
      v48 = 0;
      v49 = MEMORY[0x277D84F98];
      v583 = v46;
      v589 = v39;
      if (v44)
      {
        goto LABEL_5;
      }

      break;
  }

  while (1)
  {
LABEL_6:
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
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
      goto LABEL_127;
    }

    if (v50 >= v46)
    {
      break;
    }

    v44 = *(v39 + 8 * v50);
    ++v48;
    if (v44)
    {
      v692 = v49;
      v48 = v50;
      while (1)
      {
        v51 = v37[138];
        v649 = v37[135];
        v52 = v37[129];
        v53 = v37[50];
        v54 = v37[51];
        v55 = v37[49];
        v56 = __clz(__rbit64(v44)) | (v48 << 6);
        v611 = *(v595 + 72);
        v620 = *(v595 + 16);
        v620(v54, *(v603 + 48) + v611 * v56, v51);
        v641 = *(v672 + 72);
        (*(v672 + 16))(v54 + *(v681 + 48), *(v603 + 56) + v641 * v56, v52);
        sub_22C3D3364();
        sub_22C36CC9C();
        sub_22C3D3364();
        v57 = *(v672 + 32);
        (v57)(v649, v55 + *(v681 + 48), v52);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C628D18();
        sub_22C369DA4();
        if (__OFADD__(v60, v61))
        {
          goto LABEL_126;
        }

        v62 = v58;
        v63 = v59;
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        if (sub_22C90B15C())
        {
          v37 = v700;
          v64 = v700[50];
          sub_22C628D18();
          sub_22C633C04();
          if (!v66)
          {
            v509 = v700[138];
LABEL_115:
            sub_22C372034();

            sub_22C90B54C();
            return;
          }

          v62 = v65;
        }

        else
        {
          v37 = v700;
        }

        if (v63)
        {
          v67 = v37[51];
          (*v570)(v692[7] + v62 * v641, v37[135], v37[129]);
          sub_22C3AC228(v67, &qword_27D9BF110, &unk_22C922580);
        }

        else
        {
          v68 = v37[138];
          v69 = v37[135];
          v70 = v37[129];
          v71 = v37[50];
          v72 = v37[51];
          sub_22C36ED48(&v692[v62 >> 6]);
          (v620)(v692[6] + v62 * v611);
          v73 = v692[7];
          sub_22C3839D8();
          v57();
          sub_22C3AC228(v72, &qword_27D9BF110, &unk_22C922580);
          sub_22C634804();
          if (v75)
          {
            goto LABEL_128;
          }

          v692[2] = v74;
        }

        v44 &= v44 - 1;
        v76 = v37[129];
        v77 = v37[50];
        v78 = *(v681 + 48);
        v79 = *v577;
        (*v577)(v77, v37[138]);
        v80 = sub_22C36FC74();
        v79(v80);
        (*v658)(v77 + v78, v76);
        v46 = v583;
        v39 = v589;
        v49 = v692;
        if (!v44)
        {
          goto LABEL_6;
        }

LABEL_5:
        v692 = v49;
      }
    }
  }

  v212 = v37[255];
  v213 = v37[254];
  v629 = v37[45];
  v635 = v37[46];

  ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)(v49, v214, v215, v216, v217, v218, v219, v220, v511, v513, v515, v517, v519, v521, v523, v525, v527, v529, v531, v533);
  v222 = v221;

  sub_22C3A5908(&qword_27D9BF350, &qword_22C922610);
  v223 = sub_22C90B1CC();
  v224 = v37;
  v225 = 0;
  v224[268] = v223;
  v644 = v222;
  v226 = *(v222 + 32);
  sub_22C38A0A8();
  v229 = -1;
  if (v228 < 64)
  {
    v229 = ~(-1 << v228);
  }

  v230 = v222 + 64;
  v231 = v229 & *(v222 + 64);
  v232 = (v228 + 63) >> 6;
  v614 = v227 + 8;
  v622 = v227;
  if (!v231)
  {
LABEL_52:
    v235 = v225;
    while (1)
    {
      v225 = v235 + 1;
      if (__OFADD__(v235, 1))
      {
        goto LABEL_121;
      }

      if (v225 >= v232)
      {

        v258 = swift_task_alloc();
        v700[269] = v258;
        *v258 = v700;
        v258[1] = sub_22C60F438;
        v259 = v700[26];
        v260 = v700[23];
        v261 = v700[24];
        v262 = v700[22];
LABEL_61:
        sub_22C372034();

        sub_22C6157D4(v263, v264, v265, v266);
        return;
      }

      ++v235;
      if (*(v230 + 8 * v225))
      {
        sub_22C37FCE8();
        v652 = v236;
        goto LABEL_57;
      }
    }
  }

  while (1)
  {
    sub_22C36C050();
    v652 = v234;
LABEL_57:
    v237 = v233 | (v225 << 6);
    v238 = v700[137];
    v239 = v700[129];
    v240 = v700[47];
    v241 = (*(v644 + 48) + 16 * v237);
    v686 = v241[1];
    v695 = *v241;
    v242 = *(v644 + 56) + *(v672 + 72) * v237;
    v243 = *(v672 + 16);
    v244 = sub_22C634418();
    v245(v244);

    sub_22C90774C();
    v246 = *(v629 + 20);
    sub_22C90260C();
    sub_22C36A748();
    sub_22C36C640(v247, v248, v249, v250);
    v251 = v240 + *(v629 + 24);
    sub_22C908BAC();
    v252 = *(v672 + 8);
    v253 = sub_22C372FA4();
    v254(v253);
    *(v614 + ((v237 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v237;
    v255 = (v622[6] + 16 * v237);
    *v255 = v695;
    v255[1] = v686;
    v256 = v622[7] + *(v635 + 72) * v237;
    sub_22C633AE8();
    sub_22C630194();
    sub_22C633FF8();
    if (v75)
    {
      break;
    }

    v622[2] = v257;
    if (!v652)
    {
      goto LABEL_52;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_22C60F438()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 2152);
  *v4 = *v2;
  *(v3 + 2160) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 2144);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C60F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C6340C8();
  sub_22C36CD54();
  v15 = *(v13 + 496);

  sub_22C38BC50();
  sub_22C62E9E0(v15, v16);
  sub_22C36A140();
  sub_22C62E9E0(v12, v17);
  v18 = sub_22C36BBCC();
  v14(v18);
  sub_22C378064();
  sub_22C633A7C(v19);

  sub_22C369C50();
  sub_22C372034();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22C60F9E4()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 2176);
  *v4 = *v2;
  *(v3 + 2184) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 2168);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C60FB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v16 = v13[262];
  v17 = v13[246];
  v18 = v13[245];
  sub_22C36CD54();
  sub_22C634980();
  v19 = *(v15 + 8);
  v20 = sub_22C36ECB4();
  v21(v20);
  sub_22C38BC50();
  sub_22C62E9E0(v14, v22);
  sub_22C36A140();
  sub_22C62E9E0(v12, v23);
  v24 = sub_22C36BBCC();
  v18(v24);
  sub_22C378064();
  sub_22C633A7C(v25);

  sub_22C369C50();
  sub_22C372034();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22C60FFA8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 2192);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 2200) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C6100A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[246];
  v14 = v12[245];
  sub_22C633FB4();
  v15 = v12[197];
  sub_22C36A140();
  sub_22C62E9E0(v16, v17);
  v18 = sub_22C36BBCC();
  v14(v18);
  sub_22C378064();
  sub_22C633A7C(v19);

  sub_22C369C50();
  sub_22C372034();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

void sub_22C610524()
{
  sub_22C36BA18();
  sub_22C3749D8();
  (*(v0[226] + 8))(v0[230], v0[225]);
  sub_22C36FF94(v0 + 2);
  v8 = v0[240];
  sub_22C633E00();
  v1 = v0[228];
  sub_22C386D54();
  v2 = v0[222];
  v3 = v0[221];
  v4 = v0[220];
  v5 = v0[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6109C8()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[246];
  v2 = v0[245];
  sub_22C633FB4();
  v3 = v0[197];
  sub_22C36A140();
  sub_22C62E9E0(v4, v5);
  v6 = sub_22C36BBCC();
  v2(v6);
  v14 = v0[249];
  sub_22C633E00();
  v7 = v0[228];
  sub_22C386D54();
  v8 = v0[222];
  v9 = v0[221];
  v10 = v0[220];
  v11 = v0[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C610E68()
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C634068();
  v22 = v4;
  sub_22C36CD54();
  v5 = sub_22C633FCC();
  v6(v5);
  v7 = *(v3 + 8);
  v8 = sub_22C36FC2C();
  v9(v8);
  v10 = *(v2 + 8);
  v11 = sub_22C36ECB4();
  v12(v11);
  sub_22C36A140();
  sub_22C62E9E0(v0, v13);
  v14 = sub_22C36BBCC();
  v22(v14);
  v23 = v1[252];
  sub_22C633E00();
  v15 = v1[228];
  sub_22C386D54();
  v16 = v1[222];
  v17 = v1[221];
  v18 = v1[220];
  v19 = v1[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C611344()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[246];
  v2 = v0[245];
  sub_22C633FB4();
  v3 = v0[197];
  sub_22C36A140();
  sub_22C62E9E0(v4, v5);
  v6 = sub_22C36BBCC();
  v2(v6);
  v14 = v0[275];
  sub_22C633E00();
  v7 = v0[228];
  sub_22C386D54();
  v8 = v0[222];
  v9 = v0[221];
  v10 = v0[220];
  v11 = v0[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6117E4()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[246];
  v2 = v0[245];
  sub_22C633FB4();
  v3 = v0[197];
  sub_22C36A140();
  sub_22C62E9E0(v4, v5);
  v6 = sub_22C36BBCC();
  v2(v6);
  v14 = v0[258];
  sub_22C633E00();
  v7 = v0[228];
  sub_22C386D54();
  v8 = v0[222];
  v9 = v0[221];
  v10 = v0[220];
  v11 = v0[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C611C84()
{
  sub_22C36D5EC();
  v1 = v0[267];
  v2 = v0[214];
  sub_22C903F8C();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[267];
    v7 = sub_22C36FB44();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22C366000, v4, v5, "Error calling action resolver: %@", v7, 0xCu);
    sub_22C3AC228(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v11 = v0[234];
  v12 = v0[214];
  v13 = v0[213];
  v14 = v0[212];
  v15 = v0[211];

  v16 = sub_22C36D39C();
  v11(v16);
  sub_22C903F8C();
  v17 = sub_22C9063CC();
  sub_22C90AADC();
  sub_22C37E84C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_22C36D240();
    sub_22C36C890(v19);
    sub_22C36BB14(&dword_22C366000, v20, v21, "Resolving without action resolver");
    sub_22C372FB0();
  }

  v22 = v0[234];
  v23 = v0[213];
  v24 = v0[211];

  v25 = sub_22C36BAFC();
  v22(v25);
  swift_task_alloc();
  sub_22C36CC90();
  v0[276] = v26;
  *v26 = v27;
  v26[1] = sub_22C611E80;
  v28 = v0[230];
  v29 = sub_22C634074();

  return sub_22C616CD0(v29, v30, v31, v32);
}

uint64_t sub_22C611E80()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 2208);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 2216) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C611F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v14 = v12[267];
  sub_22C6340C8();
  v15 = v12[230];
  v16 = v12[225];
  v17 = v12[197];

  sub_22C36A140();
  sub_22C62E9E0(v17, v18);
  v19 = sub_22C36BAFC();
  v13(v19);
  sub_22C378064();
  sub_22C633A7C(v20);

  sub_22C369C50();
  sub_22C372034();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

void sub_22C612410()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v0[267];
  sub_22C6340C8();
  v3 = v0[230];
  v4 = v0[225];
  v5 = v0[197];

  sub_22C36A140();
  sub_22C62E9E0(v5, v6);
  v7 = sub_22C36BAFC();
  v1(v7);
  v15 = v0[277];
  sub_22C633E00();
  v8 = v0[228];
  sub_22C386D54();
  v9 = v0[222];
  v10 = v0[221];
  v11 = v0[220];
  v12 = v0[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C6128C4()
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C6340C8();
  sub_22C36CD54();
  v3 = v1[62];

  sub_22C38BC50();
  sub_22C62E9E0(v3, v4);
  sub_22C36A140();
  sub_22C62E9E0(v0, v5);
  v6 = sub_22C36BBCC();
  v2(v6);
  v14 = v1[270];
  sub_22C633E00();
  v7 = v1[228];
  sub_22C386D54();
  v8 = v1[222];
  v9 = v1[221];
  v10 = v1[220];
  v11 = v1[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

void sub_22C612D74()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v4 = v1[262];
  v5 = v1[246];
  v6 = v1[245];
  sub_22C36CD54();
  sub_22C634980();
  v7 = *(v3 + 8);
  v8 = sub_22C36ECB4();
  v9(v8);
  sub_22C38BC50();
  sub_22C62E9E0(v2, v10);
  sub_22C36A140();
  sub_22C62E9E0(v0, v11);
  v12 = sub_22C36BBCC();
  v6(v12);
  v20 = v1[273];
  sub_22C633E00();
  v13 = v1[228];
  sub_22C386D54();
  v14 = v1[222];
  v15 = v1[221];
  v16 = v1[220];
  v17 = v1[219];
  sub_22C36ADD0();
  sub_22C371B00();

  sub_22C633B48();
  sub_22C372034();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C61323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_22C9094EC();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v14 = sub_22C9093BC();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v16 = *(v15 + 64) + 15;
  v5[19] = swift_task_alloc();
  v17 = sub_22C9025EC();
  v5[20] = v17;
  v18 = *(v17 - 8);
  v5[21] = v18;
  v19 = *(v18 + 64) + 15;
  v5[22] = swift_task_alloc();
  v20 = type metadata accessor for ExpressionEvaluator(0);
  v5[23] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v22 = *(*(sub_22C3A5908(&qword_27D9BEC58, &qword_22C922F70) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v23 = sub_22C906F2C();
  v5[26] = v23;
  v24 = *(v23 - 8);
  v5[27] = v24;
  v25 = *(v24 + 64) + 15;
  v5[28] = swift_task_alloc();
  v26 = *(*(sub_22C3A5908(&qword_27D9BF468, &unk_22C923080) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v27 = *(*(sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v28 = *(*(sub_22C3A5908(&qword_27D9BB628, &unk_22C920580) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v29 = sub_22C9097AC();
  v5[33] = v29;
  v30 = *(v29 - 8);
  v5[34] = v30;
  v31 = *(v30 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v32 = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
  v5[37] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v34 = sub_22C908BBC();
  v5[39] = v34;
  v35 = *(v34 - 8);
  v5[40] = v35;
  v36 = *(v35 + 64) + 15;
  v5[41] = swift_task_alloc();
  v37 = sub_22C3A5908(&qword_27D9BF4E0, &qword_22C9227F8);
  v5[42] = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v39 = sub_22C908C5C();
  v5[44] = v39;
  v40 = *(v39 - 8);
  v5[45] = v40;
  v41 = *(v40 + 64) + 15;
  v5[46] = swift_task_alloc();
  v42 = *(*(sub_22C3A5908(&qword_27D9BF4E8, &unk_22C922800) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v43 = *(*(sub_22C3A5908(&qword_27D9BF320, &qword_22C9225B0) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v44 = sub_22C9026BC();
  v5[51] = v44;
  v45 = *(v44 - 8);
  v5[52] = v45;
  v46 = *(v45 + 64) + 15;
  v5[53] = swift_task_alloc();
  v47 = sub_22C901FAC();
  v5[54] = v47;
  v48 = *(v47 - 8);
  v5[55] = v48;
  v49 = *(v48 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v50 = sub_22C90941C();
  v5[60] = v50;
  v51 = *(v50 - 8);
  v5[61] = v51;
  v52 = *(v51 + 64) + 15;
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v53 = sub_22C90981C();
  v5[65] = v53;
  v54 = *(v53 - 8);
  v5[66] = v54;
  v55 = *(v54 + 64) + 15;
  v5[67] = swift_task_alloc();
  v56 = sub_22C90769C();
  v5[68] = v56;
  v57 = *(v56 - 8);
  v5[69] = v57;
  v58 = *(v57 + 64) + 15;
  v5[70] = swift_task_alloc();
  v59 = *(*(sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0) - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v60 = sub_22C908EAC();
  v5[72] = v60;
  v61 = *(v60 - 8);
  v5[73] = v61;
  v62 = *(v61 + 64) + 15;
  v5[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C613AC8, 0, 0);
}

void sub_22C613AC8()
{
  v628 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[7];
  v6 = v0[5];
  sub_22C9078EC();
  sub_22C63475C();
  sub_22C908ADC();
  v7 = *(v3 + 8);
  v8 = sub_22C36D264();
  v9(v8);
  v10 = sub_22C908ABC();
  v11 = sub_22C36CCF8();
  if (sub_22C370B74(v11, v12, v10) == 1)
  {
    sub_22C3AC228(v0[71], &qword_27D9BC0B0, &unk_22C912AD0);
LABEL_56:
    v231 = v0[51];
    v232 = v0[3];
    sub_22C36A748();
    goto LABEL_57;
  }

  sub_22C36A948();
  v14 = v13;
  if ((*(v15 + 88))() != *MEMORY[0x277D1E8E0])
  {
    (*(v14 + 8))(v0[71], v10);
    goto LABEL_56;
  }

  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[7];
  v21 = v0[5];
  v22 = *(v14 + 96);
  v23 = sub_22C36ECB4();
  v24(v23);
  v25 = *(v17 + 32);
  v26 = sub_22C36D39C();
  v27(v26);
  sub_22C625F7C();
  v28 = sub_22C4E78D0();
  *(v28 + 16) = v20;
  sub_22C3B4388(sub_22C633960, v28, v21);
  v30 = v29;

  v31 = sub_22C908DCC();
  v559 = *(v31 + 16);
  if (!v559)
  {
LABEL_61:

    v248 = v0[51];
    v249 = v0[3];
    (*(v0[73] + 8))(v0[74], v0[72]);
    v233 = sub_22C36CCF8();
    goto LABEL_62;
  }

  v32 = 0;
  v33 = *(v0[66] + 80);
  sub_22C36BA94();
  v571 = v31 + v34;
  v35 = v0[55];
  v505 = (v35 + 16);
  v520 = v35 + 32;
  v36 = v0[52];
  v499 = (v36 + 32);
  v37 = v0[45];
  v533 = (v37 + 2);
  v536 = v37;
  v530 = (v37 + 1);
  v38 = v0[40];
  v599 = (v38 + 104);
  v522 = (v38 + 32);
  v542 = (v38 + 8);
  v493 = (v36 + 8);
  v502 = v35;
  v516 = (v35 + 8);
  v39 = v0[61];
  v556 = (v39 + 16);
  v553 = v39 + 88;
  v40 = v39 + 8;
  v528 = (v0[34] + 8);
  v575 = v41;
  v566 = (v41 + 8);
  v595 = v0[42];
  v496 = (v0 + 32);
  v524 = v0[37];
  v526 = (v39 + 96);
  v42 = v0[6];
  v591 = *MEMORY[0x277D1E910];
  LODWORD(v550) = *MEMORY[0x277D72AE8];
  v545 = (v0 + 31);
  v512 = 0;
  v579 = v42;
  v583 = (v39 + 8);
  v615 = v30;
  v562 = v31;
  while (1)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

    v43 = v0[64];
    v44 = (*(v575 + 16))(v0[67], v571 + *(v575 + 72) * v32, v0[65]);
    MEMORY[0x2318B6CE0](v44);
    v45 = sub_22C9097DC();
    v47 = v46;
    v612 = v46;
    v623 = v45;
    v548 = v40 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v605 = v32;
    if (v42)
    {
      if (*(v42 + 16))
      {
        sub_22C3736B4();
        v50 = sub_22C36E5AC(v48, v47, v49, sub_22C36EF04);
        if (v51)
        {
          v52 = v0[64];
          v53 = v0[59];
          v54 = v0[50];
          v55 = v0[7];
          v56 = v0[4];
          (*(v502 + 16))(v0[58], *(v42 + 56) + *(v502 + 72) * v50, v0[54]);
          v57 = *(v502 + 32);
          v58 = sub_22C36CA88();
          v59(v58);
          sub_22C626088(v623, v47, v53, v52, v56, v54);
          v512 = 0;
          v60 = v0[50];
          sub_22C376738(v60);
          v67 = v615;
          if (!v68)
          {
            v70 = v0[53];
            v71 = *v499;
            sub_22C38399C();
            v508 = v72;
            v72();
            v73 = 0;
            v586 = *(v615 + 16);
            while (1)
            {
              if (v586 == v73)
              {
                v265 = v0[73];
                v617 = v0[72];
                v625 = v0[74];
                v266 = v0[67];
                v267 = v0[65];
                v268 = v0[64];
                v270 = v0[59];
                v269 = v0[60];
                v271 = v0[54];
                v607 = v0[53];
                v272 = v0[51];
                v273 = v0[3];

                sub_22C634258(v274, v275, v276, v277, v278, v279, v280, v281, v490, v493, v496, v499, v502, v505, v508, 0, v516);
                v282 = sub_22C36CC9C();
                v283(v282);
                sub_22C634398();
                v284 = sub_22C36CA88();
                v286 = v285(v284);
                sub_22C6341C0(v286, v287, v288, v289, v290, v291, v292, v293, v491, v494, v497, v500, v503, v506, v509, v513, v517, v520, v522, v524, v526, v528, v530, v533, v536, v539, v542, v545, v548, v550, v553, v556, v559, v562, v566);
                v294 = sub_22C36D264();
                v295(v294);
                (*(v265 + 8))(v625, v617);
                v510(v273, v607, v272);
                v233 = sub_22C3726A4();
                v236 = v272;
                goto LABEL_57;
              }

              if (v73 >= *(v67 + 16))
              {
                __break(1u);
LABEL_93:
                v459 = v0[73];
                v604 = v0[72];
                v611 = v0[74];
                v594 = v0[65];
                v598 = v0[67];
                v590 = v0[64];
                v578 = v0[56];
                v582 = v0[60];
                v460 = v0[52];
                v622 = v0[51];
                v461 = v0[27];
                v570 = v0[28];
                v574 = v0[54];
                v565 = v0[26];
                v462 = v0[24];
                v464 = v0[21];
                v463 = v0[22];
                v466 = v0[19];
                v465 = v0[20];
                v467 = v0[3];
                sub_22C90207C();
                sub_22C634624();
                sub_22C902B8C();
                v468 = *(v464 + 8);
                v469 = sub_22C372164();
                v470(v469);
                sub_22C37EF48();
                sub_22C62E9E0(v462, v471);
                v472 = (*(v461 + 8))(v570, v565);
                sub_22C634258(v472, v473, v474, v475, v476, v477, v478, v479, v490, v493, v496, v499, v502, v505, v508, v512, v516);
                v480(v578, v574);
                v481 = v511(v590, v582);
                sub_22C6341C0(v481, v482, v483, v484, v485, v486, v487, v488, v492, v495, v498, v501, v504, v507, v511, v515, v519, v520, v522, v524, v526, v528, v530, v533, v536, v539, v542, v545, v548, v550, v553, v556, v559, v565, v566);
                v489(v598, v594);
                (*(v459 + 8))(v611, v604);
                v248 = v622;
                (*(v460 + 104))(v467, *MEMORY[0x277D1CBE0], v622);
                v233 = v467;
                goto LABEL_89;
              }

              v74 = *(v67 + 8 * v73 + 32);
              v75 = *(v74 + 16);

              if (v75 && (sub_22C3736B4(), v76 = sub_22C634624(), v80 = sub_22C36E5AC(v76, v77, v78, v79), (v81 & 1) != 0))
              {
                v82 = v0[49];
                v83 = v0[46];
                v84 = v0[44];
                v85 = *(v74 + 56) + v536[9] * v80;
                v86 = v536[2];
                v87 = sub_22C634600();
                v88(v87);
                sub_22C908BCC();
                v89 = v536[1];
                v90 = sub_22C36D39C();
                v91(v90);
                v92 = 0;
              }

              else
              {
                v92 = 1;
              }

              v93 = v0[48];
              v94 = v0[43];
              v95 = v0[39];
              sub_22C36C640(v0[49], v92, 1, v95);
              (*v599)(v93, v591, v95);
              sub_22C36BECC();
              sub_22C36C640(v96, v97, v98, v95);
              v99 = *(v595 + 48);
              sub_22C36BA00();
              sub_22C3D3364();
              sub_22C3D3364();
              v100 = sub_22C3707B4();
              v102 = sub_22C370B74(v100, v101, v95);
              v103 = v0[39];
              if (v102 == 1)
              {
                break;
              }

              v111 = v0[47];
              v112 = v0[43];
              sub_22C3D3364();
              v113 = sub_22C370B74(v94 + v99, 1, v103);
              v115 = v0[48];
              v114 = v0[49];
              v116 = v0[47];
              if (v113 == 1)
              {
                v117 = v0[39];

                sub_22C63413C();
                sub_22C3AC228(v118, v119, v120);
                sub_22C63413C();
                sub_22C3AC228(v121, v122, v123);
                v124 = *v542;
                v125 = sub_22C37A004();
                v126(v125);
                v67 = v615;
LABEL_25:
                sub_22C3AC228(v0[43], &qword_27D9BF4E0, &qword_22C9227F8);
                goto LABEL_27;
              }

              v539 = v0[43];
              v127 = v0[41];
              v128 = v0[39];
              v129 = *v522;
              v130 = sub_22C634600();
              v131(v130);
              sub_22C6339B0(&qword_27D9BF4F0, MEMORY[0x277D1E918]);
              sub_22C372280();
              v132 = sub_22C90A0BC();

              v133 = *v542;
              v134 = sub_22C36D39C();
              v133(v134);
              sub_22C3AC228(v115, &qword_27D9BF4E8, &unk_22C922800);
              sub_22C3AC228(v114, &qword_27D9BF4E8, &unk_22C922800);
              v135 = sub_22C3806B8();
              v133(v135);
              sub_22C3AC228(v539, &qword_27D9BF4E8, &unk_22C922800);
              v47 = v612;
              v67 = v615;
              if (v132)
              {
                goto LABEL_28;
              }

LABEL_27:
              ++v73;
            }

            v105 = v0[48];
            v104 = v0[49];

            sub_22C38AA18();
            sub_22C3AC228(v106, v107, v108);
            v109 = sub_22C36BAFC();
            sub_22C3AC228(v109, v110, &unk_22C922800);
            sub_22C36D0A8(v94 + v99, 1, v103);
            if (v68)
            {
              v136 = v0[43];
              sub_22C38AA18();
              sub_22C3AC228(v137, v138, v139);
              v47 = v612;
LABEL_28:
              v140 = v0[59];
              v141 = v0[54];
              (*v493)(v0[53], v0[51]);
              v142 = sub_22C37453C();
              v143(v142);
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          sub_22C634258(v0[59], v0[54], v61, v62, v63, v64, v65, v66, v490, v493, v496, v499, v502, v505, v508, 0, v516);
          v69();
          sub_22C3AC228(v60, &qword_27D9BF320, &qword_22C9225B0);
LABEL_29:
          v40 = v583;
        }
      }
    }

    v144 = *v556;
    (*v556)(v0[63], v0[64], v0[60]);
    v145 = sub_22C37453C();
    v147 = v146(v145);
    v148 = v0[67];
    if (v147 != v550)
    {
      break;
    }

    v149 = v0[65];
    v151 = v0[63];
    v150 = v0[64];
    v152 = v0[60];
    v153 = v0[38];

    v154 = *v583;
    v155 = sub_22C50B478();
    v154(v155);
    v156 = sub_22C37453C();
    v157(v156);
    v158 = *v526;
    v159 = sub_22C36CA88();
    v160(v159);
    v161 = *v151;
    swift_projectBox();
    sub_22C3D3364();
    sub_22C3AC228(v153 + *(v524 + 48), &qword_27D9BB908, &qword_22C910960);
    v162 = v153;
    v40 = v583;
    (v154)(v162, v152);

LABEL_46:
    v42 = v579;
    v32 = v605 + 1;
    v31 = v562;
    if (v605 + 1 == v559)
    {
      goto LABEL_61;
    }
  }

  v539 = v144;
  v164 = v0[35];
  v163 = v0[36];
  v165 = v0[33];
  v166 = *v40;
  (*v40)(v0[63], v0[60]);
  sub_22C9097FC();
  sub_22C908EDC();
  sub_22C6339B0(&qword_27D9BD8C8, MEMORY[0x277D73128]);
  v167 = sub_22C90AE0C();
  v168 = *v528;
  v169 = sub_22C36ECB4();
  v168(v169);
  (v168)(v163, v165);
  if (v167)
  {
    sub_22C634088();
    v170 = sub_22C36ECB4();
    (v166)(v170);
LABEL_34:
    v171 = sub_22C37453C();
    v172(v171);
    goto LABEL_46;
  }

  v508 = v166;
  v173 = 0;
  v174 = *(v615 + 16);
  while (v174 != v173)
  {
    if (v173 >= *(v615 + 16))
    {
      __break(1u);
LABEL_91:
      v621 = v0[64];
      v432 = v0[60];
      v433 = v0[54];
      v434 = v0[44];
      v435 = v0[23];
      v436 = v0[24];
      v437 = v0[22];
      v438 = v0[7];
      v439 = v0[4];
      (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
      v440 = sub_22C90880C();
      sub_22C369A9C(v440);
      v442 = *(v441 + 16);
      v443 = sub_22C374C34();
      v444(v443);
      sub_22C37ACB8();
      sub_22C6339B0(v445, v446);
      sub_22C63413C();
      v447 = sub_22C909F0C();
      v448 = v435[6];
      v449 = sub_22C908AEC();
      sub_22C369A9C(v449);
      (*(v450 + 16))(v436 + v448, v438);
      v451 = type metadata accessor for ActionResolverRequestEvaluator(0);
      sub_22C378AB0(v438 + *(v451 + 24), v436 + v435[7]);
      v539(v436 + v435[8], v621, v432);
      sub_22C36BECC();
      sub_22C36C640(v452, v453, v454, v432);
      *(v436 + v435[5]) = v447;
      v455 = sub_22C63475C();
      sub_22C63A848(v455, v456);
      goto LABEL_93;
    }

    v175 = *(v615 + 8 * v173 + 32);
    if (*(v175 + 16))
    {
      v176 = *(v615 + 8 * v173 + 32);

      sub_22C3736B4();
      v177 = sub_22C3863FC();
      v181 = sub_22C36E5AC(v177, v178, v179, v180);
      if (v182)
      {
        v217 = v536[9];
        v218 = v536[2];
        v218(v0[32], *(v175 + 56) + v217 * v181, v0[44]);
        v219 = 0;
        for (i = v496; ; i = v0 + 31)
        {
          v221 = *i;
          v222 = v0[44];

          v223 = sub_22C37049C();
          sub_22C36C640(v223, v224, v225, v222);
          sub_22C3AC228(v221, &qword_27D9BB628, &unk_22C920580);
          if (v174 == v219)
          {
            sub_22C634088();
            v230 = sub_22C36ECB4();
            v40 = v583;
            (v508)(v230);
            goto LABEL_34;
          }

          if (v219 >= *(v615 + 16))
          {
            goto LABEL_95;
          }

          v226 = *(v615 + 8 * v219 + 32);
          sub_22C634714();

          if (!v221)
          {
            break;
          }

          sub_22C3736B4();
          v228 = sub_22C36E5AC(v623, v47, v227, sub_22C36EF04);
          if ((v229 & 1) == 0)
          {
            break;
          }

          v218(v0[31], *(v226 + 56) + v228 * v217, v0[44]);
          ++v219;
        }

        v250 = v0[44];
        v251 = v0[31];
        v252 = v0[15];

        sub_22C36A748();
        sub_22C36C640(v253, v254, v255, v250);
        sub_22C3AC228(v251, &qword_27D9BB628, &unk_22C920580);
        sub_22C903F8C();

        v256 = sub_22C9063CC();
        v257 = sub_22C90AADC();

        v258 = os_log_type_enabled(v256, v257);
        v260 = v0[14];
        v259 = v0[15];
        v261 = v0[13];
        if (v258)
        {
          v262 = sub_22C36FB44();
          v263 = swift_slowAlloc();
          v627 = v263;
          *v262 = 136315138;
          v264 = sub_22C36F9F4(v623, v47, &v627);

          *(v262 + 4) = v264;
          _os_log_impl(&dword_22C366000, v256, v257, "invalid parameter set found for key '%s'. Execution cannot proceed.", v262, 0xCu);
          sub_22C36FF94(v263);
          sub_22C3699EC();
          sub_22C3699EC();
        }

        else
        {
        }

        v296 = *(v260 + 8);
        v297 = sub_22C36D29C();
        v298(v297);
        type metadata accessor for InterpreterError();
        sub_22C372ACC();
        sub_22C6339B0(v299, v300);
        sub_22C37FDE8();
        v301 = sub_22C36FBE4();
        swift_storeEnumTagMultiPayload();
        v514 = v301;
        swift_willThrow();
        goto LABEL_68;
      }
    }

    v183 = v0[44];
    v184 = v0[32];
    v185 = sub_22C3702F4();
    sub_22C36C640(v185, v186, v187, v188);
    v189 = sub_22C38644C();
    sub_22C3AC228(v189, v190, &unk_22C920580);
    ++v173;
  }

  v191 = v0[54];
  v192 = v0[30];
  if (v579)
  {
    sub_22C633F60();
    sub_22C3863FC();
    sub_22C38B324(v579, v193, v194);
    sub_22C36D0A8(v192, 1, v191);
    if (!v68)
    {
      v195 = v0[57];
      v196 = v0[54];
      v197 = v0[30];
      v198 = v0[4];
      v199 = sub_22C6341CC();
      v200(v199);
      v0[2] = sub_22C9087DC();
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C369E24();
      sub_22C38399C();
      sub_22C50B118(v201, v202, v203);
      LOBYTE(v198) = sub_22C907E1C();

      sub_22C634258(v204, v205, v206, v207, v208, v209, v210, v211, v490, v493, v496, v499, v502, v505, v166, v512, v516);
      v212 = sub_22C36D39C();
      v213(v212);
      if (v198)
      {
        sub_22C634088();
        v214 = sub_22C36ECB4();
        (v508)(v214);
        v215 = sub_22C37453C();
        v216(v215);
        goto LABEL_46;
      }

      goto LABEL_73;
    }
  }

  else
  {

    sub_22C36A748();
    sub_22C36C640(v319, v320, v321, v191);
  }

  sub_22C3AC228(v0[30], &qword_27D9BC030, &unk_22C911CC0);
LABEL_73:
  v322 = v0[29];
  v323 = v0[5];
  v324 = sub_22C9078CC();
  sub_22C3863FC();
  sub_22C38B324(v324, v325, v326);

  v327 = sub_22C902D4C();
  v328 = sub_22C36CCF8();
  if (sub_22C370B74(v328, v329, v327) == 1)
  {
    sub_22C3AC228(v0[29], &qword_27D9BF468, &unk_22C923080);
  }

  else
  {
    sub_22C36A948();
    v331 = v330;
    if ((*(v332 + 88))() == *MEMORY[0x277D1D830])
    {
      v333 = v0[56];
      v334 = v0[54];
      v336 = v0[25];
      v335 = v0[26];
      v337 = v0[4];
      (*(v331 + 96))(v0[29], v327);
      sub_22C6341CC();
      sub_22C634004();
      v338();
      sub_22C649070();
      sub_22C376738(v336);
      if (v68)
      {
        v339 = v0[25];
        v340 = v0[16];

        sub_22C3AC228(v339, &qword_27D9BEC58, &qword_22C922F70);
        sub_22C903F8C();
        v341 = sub_22C9063CC();
        v342 = sub_22C90AADC();
        if (os_log_type_enabled(v341, v342))
        {
          *sub_22C36D240() = 0;
          sub_22C6349C0(&dword_22C366000, v343, v344, "Unable to resolve variable name to expression in plan.");
          sub_22C3699EC();
        }

        v345 = v0[56];
        v346 = v0[54];
        v347 = v0[16];
        v348 = v0[13];
        v349 = v0[14];

        v350 = *(v349 + 8);
        v351 = sub_22C36ECB4();
        v352(v351);
        type metadata accessor for InterpreterError();
        sub_22C372ACC();
        sub_22C6339B0(v353, v354);
        v355 = sub_22C36D148();
        (*v505)(v356, v345, v346);
        swift_storeEnumTagMultiPayload();
        v514 = v355;
        swift_willThrow();
        v457 = sub_22C37453C();
        v458(v457);
LABEL_68:
        v302 = v0[74];
        v303 = v0[73];
        v304 = v0[72];
        v305 = v0[71];
        v306 = v0[70];
        v307 = v0[67];
        v308 = v0[65];
        v309 = v0[63];
        v518 = v0[62];
        v521 = v0[59];
        v523 = v0[58];
        v525 = v0[57];
        v527 = v0[56];
        v529 = v0[53];
        v532 = v0[50];
        v535 = v0[49];
        v538 = v0[48];
        v541 = v0[47];
        v544 = v0[46];
        v547 = v0[43];
        v552 = v0[41];
        v555 = v0[38];
        v558 = v0[36];
        v561 = v0[35];
        v564 = v0[32];
        v569 = v0[31];
        v573 = v0[30];
        v577 = v0[29];
        v581 = v0[28];
        v585 = v0[25];
        v588 = v0[24];
        v592 = v0[22];
        v596 = v0[19];
        v601 = v0[16];
        v608 = v0[15];
        v614 = v0[12];
        v618 = v0[11];
        v626 = v0[8];
        v310 = (v508)(v0[64], v0[60]);
        sub_22C6341C0(v310, v311, v312, v313, v314, v315, v316, v317, v490, v493, v496, v499, v502, v505, v508, v514, v518, v521, v523, v525, v527, v529, v532, v535, v538, v541, v544, v547, v548, v552, v555, v558, v561, v564, v566);
        v318(v307, v308);
        (*(v303 + 8))(v302, v304);

        sub_22C369A24();
        goto LABEL_58;
      }

      goto LABEL_91;
    }

    (*(v331 + 8))(v0[29], v327);
  }

  v357 = v0[64];
  v358 = v0[12];
  v359 = sub_22C9093DC();
  sub_22C58B0F8(v359);

  v360 = sub_22C90952C();
  v361 = sub_22C36CCF8();
  if (sub_22C370B74(v361, v362, v360) == 1)
  {
    sub_22C3AC228(v0[12], &qword_27D9BB0C0, &qword_22C90D960);
  }

  else
  {
    sub_22C36A948();
    v364 = v363;
    v366 = (*(v365 + 88))();
    v367 = v0[12];
    if (v366 == *MEMORY[0x277D72D50])
    {
      v369 = v0[10];
      v368 = v0[11];
      v370 = v0[9];
      v371 = *(v364 + 96);
      v372 = sub_22C36A10C();
      v373(v372);
      v374 = *v367;
      swift_projectBox();
      v375 = v369[2];
      v376 = sub_22C634600();
      v377(v376);
      v378 = v369[11];
      v379 = sub_22C36D39C();
      v381 = v380(v379);
      v382 = *MEMORY[0x277D72CB0];
      v383 = v369[1];
      v384 = sub_22C36D39C();
      v385(v384);

      if (v381 == v382)
      {
        v619 = v0[74];
        v386 = v0[73];
        v602 = v0[67];
        v609 = v0[72];
        v593 = v0[64];
        v597 = v0[65];
        v589 = v0[60];
        v248 = v0[51];
        v387 = v0[52];
        v388 = v0[18];
        v389 = v0[19];
        v390 = v0[17];
        v391 = v0[3];
        v392 = sub_22C90931C();
        v393 = swift_allocBox();
        *v394 = 1;
        v395 = *MEMORY[0x277D72988];
        sub_22C36BBA8(v392);
        (*(v396 + 104))();
        *v389 = v393;
        (*(v388 + 104))(v389, *MEMORY[0x277D72A58], v390);
        sub_22C634624();
        sub_22C90294C();
        v397 = (v508)(v593, v589);
        sub_22C6341C0(v397, v398, v399, v400, v401, v402, v403, v404, v490, v493, v496, v499, v502, v505, v508, v512, v516, v520, v522, v524, v526, v528, v530, v533, v536, v539, v542, v545, v548, v550, v553, v556, v559, v562, v566);
        v405(v602, v597);
        (*(v386 + 8))(v619, v609);
        (*(v387 + 104))(v391, *MEMORY[0x277D1CBD0], v248);
        v233 = v391;
        goto LABEL_89;
      }
    }

    else
    {
      v406 = *(v364 + 8);
      v407 = sub_22C36A10C();
      v408(v407);
    }
  }

  v409 = v0[74];
  v410 = v0[73];
  v620 = v0[72];
  v603 = v0[65];
  v610 = v0[67];
  v411 = v0[64];
  v412 = v0[62];
  v413 = v0[60];
  v248 = v0[51];
  v414 = v0[52];
  v415 = v0[8];
  v416 = v0[3];
  v417 = sub_22C370114();
  (v539)(v417);
  sub_22C90285C();
  sub_22C36A748();
  sub_22C36C640(v418, v419, v420, v421);
  sub_22C634624();
  sub_22C90282C();
  v422 = sub_22C50B578();
  v423 = (v508)(v422);
  sub_22C6341C0(v423, v424, v425, v426, v427, v428, v429, v430, v490, v493, v496, v499, v502, v505, v508, v512, v516, v520, v522, v524, v526, v528, v530, v533, v536, v539, v542, v545, v548, v550, v553, v556, v559, v562, v566);
  v431(v610, v603);
  (*(v410 + 8))(v409, v620);
  (*(v414 + 104))(v416, *MEMORY[0x277D1CBB8], v248);
  v233 = v416;
LABEL_89:
  v234 = 0;
LABEL_62:
  v235 = 1;
  v236 = v248;
LABEL_57:
  sub_22C36C640(v233, v234, v235, v236);
  v237 = v0[74];
  v238 = v0[71];
  v239 = v0[70];
  v240 = v0[67];
  v242 = v0[63];
  v241 = v0[64];
  v243 = v0[62];
  v244 = v0[58];
  v245 = v0[59];
  v246 = v0[57];
  v531 = v0[56];
  v534 = v0[53];
  v537 = v0[50];
  v540 = v0[49];
  v543 = v0[48];
  v546 = v0[47];
  v549 = v0[46];
  v551 = v0[43];
  v554 = v0[41];
  v557 = v0[38];
  v560 = v0[36];
  v563 = v0[35];
  v567 = v0[32];
  v568 = v0[31];
  v572 = v0[30];
  v576 = v0[29];
  v580 = v0[28];
  v584 = v0[25];
  v587 = v0[24];
  sub_22C6346F4();
  v600 = v0[16];
  v606 = v0[15];
  v613 = v0[12];
  v616 = v0[11];
  v624 = v0[8];

  sub_22C369C50();
LABEL_58:

  v247();
}

uint64_t sub_22C6157D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(sub_22C3A5908(&qword_27D9BF308, &qword_22C922570) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_22C9074CC();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_22C9086BC();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = type metadata accessor for ActionParameterValue(0);
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = sub_22C90855C();
  v5[22] = v16;
  v17 = *(v16 - 8);
  v5[23] = v17;
  v18 = *(v17 + 64) + 15;
  v5[24] = swift_task_alloc();
  v19 = *(*(sub_22C3A5908(&qword_27D9BF498, &unk_22C922750) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v20 = sub_22C90077C();
  v5[27] = v20;
  v21 = *(v20 - 8);
  v5[28] = v21;
  v22 = *(v21 + 64) + 15;
  v5[29] = swift_task_alloc();
  v23 = sub_22C90944C();
  v5[30] = v23;
  v24 = *(v23 - 8);
  v5[31] = v24;
  v25 = *(v24 + 64) + 15;
  v5[32] = swift_task_alloc();
  v26 = sub_22C901FAC();
  v5[33] = v26;
  v27 = *(v26 - 8);
  v5[34] = v27;
  v28 = *(v27 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v29 = sub_22C90880C();
  v5[38] = v29;
  v30 = *(v29 - 8);
  v5[39] = v30;
  v31 = *(v30 + 64) + 15;
  v5[40] = swift_task_alloc();
  v32 = *(*(sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v33 = sub_22C90654C();
  v5[42] = v33;
  v34 = *(v33 - 8);
  v5[43] = v34;
  v35 = *(v34 + 64) + 15;
  v5[44] = swift_task_alloc();
  v36 = sub_22C906ACC();
  v5[45] = v36;
  v37 = *(v36 - 8);
  v5[46] = v37;
  v38 = *(v37 + 64) + 15;
  v5[47] = swift_task_alloc();
  v39 = sub_22C90769C();
  v5[48] = v39;
  v40 = *(v39 - 8);
  v5[49] = v40;
  v41 = *(v40 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v42 = *(*(sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v43 = sub_22C908EAC();
  v5[54] = v43;
  v44 = *(v43 - 8);
  v5[55] = v44;
  v45 = *(v44 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C615DB8, 0, 0);
}

void sub_22C615DB8()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[11];
  v6 = v0[8];
  sub_22C9078EC();
  sub_22C63475C();
  sub_22C908ADC();
  v7 = *(v4 + 8);
  v8 = sub_22C36D264();
  v7(v8);
  v9 = sub_22C908ABC();
  v10 = sub_22C36CCF8();
  if (sub_22C370B74(v10, v11, v9) == 1)
  {
    v205 = v7;
    sub_22C3AC228(v0[53], &qword_27D9BC0B0, &unk_22C912AD0);
  }

  else
  {
    sub_22C36A948();
    v13 = v12;
    if ((*(v14 + 88))() == *MEMORY[0x277D1E8C8])
    {
      v15 = v0[55];
      v188 = v0[54];
      v192 = v0[57];
      v16 = v0[53];
      v17 = v0[40];
      v18 = v0[39];
      v206 = v0[38];
      v19 = v0[37];
      v20 = v0[34];
      v196 = v0[41];
      v200 = v0[33];
      v21 = v0[9];
      v185 = v0[8];
      v22 = *(v13 + 96);
      v23 = sub_22C37A004();
      v24(v23);
      (*(v15 + 32))(v192, v16, v188);
      sub_22C90878C();
      sub_22C9068FC();
      sub_22C646D68(v19, v25, v26, v27, v28, v29, v30, v31, v166, v167, v168, v169, v171, v172, v174, v175, v177, v179, v181, v183);
      v32 = *(v20 + 8);
      v0[58] = v32;
      v0[59] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(v19, v200);
      (*(v18 + 8))(v17, v206);
      v33 = sub_22C9070DC();
      sub_22C376738(v196);
      if (v34)
      {
        sub_22C3AC228(v0[41], &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v119 = v0[43];
        v118 = v0[44];
        v120 = v0[41];
        v121 = v0[42];
        sub_22C90702C();
        sub_22C36BBA8(v33);
        v123 = *(v122 + 8);
        v124 = sub_22C37170C();
        v125(v124);
        v126 = *(v119 + 88);
        v127 = sub_22C36D39C();
        v129 = v128(v127);
        if (v129 == *MEMORY[0x277D1DA78])
        {
          v131 = v0[46];
          v130 = v0[47];
          v132 = v0[45];
          v133 = v0[36];
          v134 = v0[8];
          (*(v0[43] + 96))(v0[44], v0[42]);
          v135 = *(v131 + 32);
          v136 = sub_22C36BAFC();
          v137(v136);
          sub_22C9068FC();
          v0[60] = sub_22C906A8C();
          swift_task_alloc();
          sub_22C36CC90();
          v0[61] = v138;
          *v138 = v139;
          v138[1] = sub_22C616848;
          v140 = v0[57];
          v141 = v0[36];
          v142 = v0[10];
          v143 = v0[11];
          v144 = v0[8];
          v145 = v0[9];
          v146 = v0[7];
          sub_22C5CAD40();

          sub_22C61DE68(v147, v148, v149, v150, v151, v152, v153);
          return;
        }

        (*(v0[43] + 8))(v0[44], v0[42]);
      }

      v155 = v0[57];
      v156 = v0[54];
      v157 = v0[55];
      v158 = v0[8];
      type metadata accessor for InterpreterError();
      sub_22C372ACC();
      sub_22C6339B0(v159, v160);
      sub_22C36D148();
      sub_22C9068FC();
      sub_22C372FCC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v161 = *(v157 + 8);
      v162 = sub_22C36D39C();
      v163(v162);
      goto LABEL_28;
    }

    v205 = v7;
    (*(v13 + 8))(v0[53], v9);
  }

  v35 = v0[56];
  v36 = v0[51];
  v37 = v0[48];
  v39 = v0[28];
  v38 = v0[29];
  v40 = v0[27];
  v41 = v0[11];
  v42 = v0[8];
  v43 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v43);
  sub_22C50B478();
  sub_22C908AFC();
  v44 = *(v39 + 8);
  v45 = sub_22C36FC2C();
  v46(v45);
  v47 = sub_22C36ECB4();
  v205(v47);
  v49 = v0[55];
  v48 = v0[56];
  v50 = v0[54];
  v51 = v0[30];
  v53 = v0[25];
  v52 = v0[26];
  sub_22C908E1C();
  v54 = *(v49 + 8);
  v55 = sub_22C36BBCC();
  v56(v55);
  sub_22C36ECB4();
  sub_22C3D3364();
  sub_22C376738(v53);
  if (v34)
  {
    v57 = v0[25];
    v58 = v0[26];
    sub_22C63413C();
    sub_22C3AC228(v59, v60, v61);
    sub_22C90735C();
    sub_22C3A5F00();
    v62 = sub_22C36FBE4();
    sub_22C6348A8(v62, v63);
    swift_willThrow();
    v64 = sub_22C36BBCC();
    sub_22C3AC228(v64, v65, &unk_22C922750);
LABEL_28:
    sub_22C6342C4();
    sub_22C634890();
    sub_22C634884();
    v187 = v0[24];
    v191 = v0[21];
    v195 = v0[18];
    v199 = v0[15];
    v204 = v0[12];

    sub_22C369A24();
LABEL_29:
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v66 = v0[50];
  v67 = v0[35];
  v69 = v0[31];
  v68 = v0[32];
  v70 = v0[30];
  v71 = v0[25];
  v184 = v0[19];
  v186 = v0[20];
  v72 = v0[17];
  v201 = v0[14];
  v73 = v0[10];
  v74 = v0[8];
  sub_22C3AC228(v0[26], &qword_27D9BF498, &unk_22C922750);
  v75 = sub_22C36CB30(v69);
  v76(v75, v71, v70);
  sub_22C90943C();
  v77 = *(v69 + 8);
  v78 = sub_22C372164();
  v79(v78);
  sub_22C9068FC();
  sub_22C9078EC();
  sub_22C3A5908(&qword_27D9BF4A0, &qword_22C922760);
  sub_22C90B1CC();
  v80 = 0;
  v81 = *(v73 + 64);
  v170 = v73 + 64;
  v180 = v73;
  v82 = *(v73 + 32);
  sub_22C36D280();
  v87 = (v85 + 63) >> 6;
  v176 = *MEMORY[0x277D1E040];
  v173 = v83 + 8;
  v182 = v72;
  v178 = v83;
  if ((v86 & v84) != 0)
  {
    goto LABEL_12;
  }

  while (2)
  {
    v90 = v80;
    do
    {
      v80 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v80 >= v87)
      {
        v110 = v0[50];
        v111 = v0[35];
        v113 = v0[23];
        v112 = v0[24];
        v114 = v0[22];
        v115 = v0[10];
        v117 = v0[7];
        v116 = v0[8];
        sub_22C90776C();
        sub_22C36A724();
        sub_22C90867C();
        (*(v113 + 104))(v112, *MEMORY[0x277D1E560], v114);
        sub_22C630248();
        sub_22C9085BC();
        type metadata accessor for StepResolution();
        swift_storeEnumTagMultiPayload();
        sub_22C6342E4();
        sub_22C634890();
        sub_22C634884();
        v190 = v0[24];
        v194 = v0[21];
        v198 = v0[18];
        v203 = v0[15];
        v207 = v0[12];

        sub_22C369C50();
        goto LABEL_29;
      }

      ++v90;
    }

    while (!*(v170 + 8 * v80));
    sub_22C37FCE8();
    v189 = v91;
LABEL_18:
    v92 = v88 | (v80 << 6);
    v93 = v0[21];
    v193 = v0[18];
    v94 = v0[15];
    v202 = v0[16];
    v96 = v0[12];
    v95 = v0[13];
    v97 = *(v180 + 56);
    v98 = (*(v180 + 48) + 16 * v92);
    v99 = v98[1];
    v197 = *v98;
    v100 = *(v186 + 72);
    sub_22C633B00();
    sub_22C62E98C();
    v101 = sub_22C9093BC();
    sub_22C369A9C(v101);
    (*(v102 + 16))(v94, v93);
    v103 = sub_22C6341CC();
    v104(v103, v176, v95);
    v105 = *(v184 + 20);
    sub_22C3D3364();

    sub_22C90869C();
    sub_22C633A4C();
    sub_22C62E9E0(v93, v106);
    *(v173 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
    v107 = (v178[6] + 16 * v92);
    *v107 = v197;
    v107[1] = v99;
    (*(v182 + 32))(v178[7] + *(v182 + 72) * v92, v193, v202);
    sub_22C634804();
    if (!v109)
    {
      v178[2] = v108;
      if (!v189)
      {
        continue;
      }

LABEL_12:
      sub_22C36C050();
      v189 = v89;
      goto LABEL_18;
    }

    break;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_22C616848()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = v4[61];
  v6 = v4[60];
  v7 = v4[59];
  v8 = v4[58];
  v9 = v4[36];
  v10 = v4[33];
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  *(v13 + 496) = v0;

  v14 = sub_22C36D264();
  v8(v14);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C6169C8()
{
  v2 = sub_22C6345A0();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = sub_22C36BBCC();
  v6(v5);
  sub_22C6342E4();
  sub_22C634890();
  sub_22C634884();
  v9 = v1[24];
  v10 = v1[21];
  v11 = v1[18];
  v12 = v1[15];
  v13 = v1[12];

  sub_22C369C50();

  return v7();
}

uint64_t sub_22C616B48()
{
  v2 = sub_22C6345A0();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = sub_22C36BBCC();
  v6(v5);
  v14 = v1[62];
  sub_22C6342C4();
  sub_22C634890();
  sub_22C634884();
  v9 = v1[24];
  v10 = v1[21];
  v11 = v1[18];
  v12 = v1[15];
  v13 = v1[12];

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C616CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_22C9078FC();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_22C9063DC();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = sub_22C9074CC();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v15 = sub_22C9086BC();
  v5[23] = v15;
  v16 = *(v15 - 8);
  v5[24] = v16;
  v17 = *(v16 + 64) + 15;
  v5[25] = swift_task_alloc();
  v18 = sub_22C90855C();
  v5[26] = v18;
  v19 = *(v18 - 8);
  v5[27] = v19;
  v20 = *(v19 + 64) + 15;
  v5[28] = swift_task_alloc();
  v21 = *(*(sub_22C3A5908(&qword_27D9BF498, &unk_22C922750) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v22 = sub_22C90944C();
  v5[31] = v22;
  v23 = *(v22 - 8);
  v5[32] = v23;
  v24 = *(v23 + 64) + 15;
  v5[33] = swift_task_alloc();
  v25 = sub_22C90880C();
  v5[34] = v25;
  v26 = *(v25 - 8);
  v5[35] = v26;
  v27 = *(v26 + 64) + 15;
  v5[36] = swift_task_alloc();
  v28 = *(*(sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40) - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v29 = sub_22C90654C();
  v5[38] = v29;
  v30 = *(v29 - 8);
  v5[39] = v30;
  v31 = *(v30 + 64) + 15;
  v5[40] = swift_task_alloc();
  v32 = sub_22C906ACC();
  v5[41] = v32;
  v33 = *(v32 - 8);
  v5[42] = v33;
  v34 = *(v33 + 64) + 15;
  v5[43] = swift_task_alloc();
  v35 = *(*(sub_22C3A5908(&qword_27D9BF308, &qword_22C922570) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v36 = sub_22C908BBC();
  v5[47] = v36;
  v37 = *(v36 - 8);
  v5[48] = v37;
  v38 = *(v37 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v39 = type metadata accessor for ActionParameterValue(0);
  v5[51] = v39;
  v40 = *(v39 - 8);
  v5[52] = v40;
  v41 = *(v40 + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v42 = *(*(sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0) - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v43 = sub_22C3A5908(&qword_27D9BF338, &qword_22C9225F0);
  v5[57] = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v45 = sub_22C90077C();
  v5[63] = v45;
  v46 = *(v45 - 8);
  v5[64] = v46;
  v47 = *(v46 + 64) + 15;
  v5[65] = swift_task_alloc();
  v48 = sub_22C90769C();
  v5[66] = v48;
  v49 = *(v48 - 8);
  v5[67] = v49;
  v50 = *(v49 + 64) + 15;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v51 = *(*(sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0) - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v52 = sub_22C908EAC();
  v5[72] = v52;
  v53 = *(v52 - 8);
  v5[73] = v53;
  v54 = *(v53 + 64) + 15;
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v55 = sub_22C901FAC();
  v5[76] = v55;
  v56 = *(v55 - 8);
  v5[77] = v56;
  v57 = *(v56 + 64) + 15;
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v58 = *(*(sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0) - 8) + 64) + 15;
  v5[83] = swift_task_alloc();
  v59 = sub_22C9026BC();
  v5[84] = v59;
  v60 = *(v59 - 8);
  v5[85] = v60;
  v61 = *(v60 + 64) + 15;
  v5[86] = swift_task_alloc();
  v62 = *(*(sub_22C907DEC() - 8) + 64) + 15;
  v5[87] = swift_task_alloc();
  v63 = *(*(sub_22C3A5908(&qword_27D9BF330, &unk_22C923250) - 8) + 64) + 15;
  v5[88] = swift_task_alloc();
  v64 = *(*(sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90) - 8) + 64) + 15;
  v5[89] = swift_task_alloc();
  v65 = sub_22C902A4C();
  v5[90] = v65;
  v66 = *(v65 - 8);
  v5[91] = v66;
  v67 = *(v66 + 64) + 15;
  v5[92] = swift_task_alloc();
  v68 = *(*(sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0) - 8) + 64) + 15;
  v5[93] = swift_task_alloc();
  v69 = sub_22C9093BC();
  v5[94] = v69;
  v70 = *(v69 - 8);
  v5[95] = v70;
  v71 = *(v70 + 64) + 15;
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v72 = sub_22C9025EC();
  v5[98] = v72;
  v73 = *(v72 - 8);
  v5[99] = v73;
  v74 = *(v73 + 64) + 15;
  v5[100] = swift_task_alloc();
  v75 = sub_22C908C5C();
  v5[101] = v75;
  v76 = *(v75 - 8);
  v5[102] = v76;
  v77 = *(v76 + 64) + 15;
  v5[103] = swift_task_alloc();
  v78 = sub_22C9069BC();
  v5[104] = v78;
  v79 = *(v78 - 8);
  v5[105] = v79;
  v80 = *(v79 + 64) + 15;
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C61780C, 0, 0);
}

void sub_22C61780C()
{
  v528 = v0;
  v1 = v0[10];
  v2 = *(sub_22C90789C() + 16);

  if (v2 >= 2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v0[10];
    v5 = sub_22C90789C();
    swift_getKeyPath();
    v6 = *(v5 + 56);
    v527[0] = v3;
    v7 = *(v5 + 32);
    sub_22C37454C();
    v10 = v9 & v8;
    sub_22C634720();
    v12 = v11 >> 6;

    v13 = 0;
    if (!v10)
    {
      goto LABEL_4;
    }

    do
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v0[8] = *(*(v5 + 48) + ((v14 << 9) | (8 * v15)));

      swift_getAtKeyPath();

      v16 = v0[7];
      sub_22C3CE540();
    }

    while (v10);
    while (1)
    {
LABEL_4:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v14 >= v12)
      {
        break;
      }

      v10 = *(v5 + 56 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_8;
      }
    }

    v17 = v0[105];

    sub_22C3AE31C();
    v19 = 0;
    v21 = v18 + 56;
    v20 = *(v18 + 56);
    v520 = v18;
    v22 = -1;
    v23 = -1 << *(v18 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & v20;
    v25 = (63 - v23) >> 6;
    v480 = v18 + 56;
    v487 = (v17 + 8);
    v26 = v17;
    if ((v22 & v20) != 0)
    {
      while (1)
      {
        v27 = v19;
LABEL_18:
        v28 = v0[106];
        v29 = v0[10];
        (*(v26 + 16))(v0[107], *(v520 + 48) + *(v26 + 72) * (__clz(__rbit64(v24)) | (v27 << 6)), v0[104]);
        v30 = *(v26 + 32);
        v31 = sub_22C50B478();
        v32(v31);
        sub_22C90789C();
        v33 = sub_22C4E78D0();
        *(v33 + 16) = v28;
        sub_22C793D6C(sub_22C633944, v33, v29, v34, v35, v36, v37, v38, v374, v376, v378, v380, v382, v384, v387, v390, v393, v396, v399, v402);

        sub_22C3AE444();
        if (*(v39 + 16) >= 2uLL)
        {
          break;
        }

        v40 = v0[106];
        v41 = v0[104];

        v24 &= v24 - 1;
        v42 = *v487;
        v43 = sub_22C36ECB4();
        v44(v43);
        v19 = v27;
        v21 = v480;
        if (!v24)
        {
          goto LABEL_15;
        }
      }

      v527[0] = sub_22C4702AC(v39);
      sub_22C6304DC(v527);

      v325 = *(v527[0] + 16);
      if (v325)
      {
        v326 = v0[102];
        v327 = v0[99];
        v328 = *(v326 + 16);
        v329 = *(v326 + 80);
        sub_22C36BA94();
        v332 = v330 + v331;
        v500 = *(v333 + 56);
        v505 = v334;
        v335 = MEMORY[0x277D84F90];
        do
        {
          v336 = v0[103];
          v337 = v0[101];
          v338 = v0[100];
          v339 = v0[97];
          v340 = v0[93];
          v341 = sub_22C372164();
          v505(v341);
          sub_22C90774C();
          sub_22C908B8C();
          v342 = sub_22C38C41C();
          v343(v342, v337);
          sub_22C36CC9C();
          sub_22C9025CC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v350 = *(v335 + 16);
            sub_22C36D270();
            sub_22C594FB4();
            v335 = v351;
          }

          v345 = *(v335 + 16);
          v344 = *(v335 + 24);
          if (v345 >= v344 >> 1)
          {
            sub_22C36A958(v344);
            sub_22C594FB4();
            v335 = v352;
          }

          v346 = v0[100];
          v347 = v0[98];
          *(v335 + 16) = v345 + 1;
          v348 = *(v327 + 80);
          sub_22C36BA94();
          (*(v327 + 32))(v335 + v349 + *(v327 + 72) * v345);
          v332 += v500;
          --v325;
        }

        while (v325);
      }

      v513 = v0[104];
      v356 = v0[92];
      v435 = v0[91];
      v438 = v0[90];
      v429 = v0[89];
      v519 = v0[88];
      v456 = v0[87];
      v357 = v0[86];
      v358 = v0[85];
      v442 = v0[84];
      v447 = v0[83];
      v460 = v0[82];
      v465 = v0[81];
      v486 = v0[80];
      v469 = v0[77];
      v501 = v0[76];
      v432 = v0[66];
      v452 = v0[11];
      v359 = v0[10];
      v474 = v0[12];
      v479 = v0[9];
      v506 = v0[106];
      sub_22C9069AC();
      sub_22C90697C();
      sub_22C36FC2C();
      sub_22C9029EC();
      sub_22C90069C();
      sub_22C36A748();
      sub_22C36C640(v360, v361, v362, v363);
      sub_22C9078EC();
      v364 = sub_22C37049C();
      sub_22C36C640(v364, v365, v366, v432);
      (*(v435 + 16))(v357, v356, v438);
      (*(v358 + 104))(v357, *MEMORY[0x277D1CBD8], v442);
      sub_22C9026AC();
      v367 = sub_22C3702F4();
      sub_22C36C640(v367, v368, v369, v370);
      sub_22C907DCC();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      (*(v469 + 16))(v486, v474, v501);
      sub_22C906E6C();

      v371 = *(v435 + 8);
      v372 = sub_22C36D29C();
      v373(v372);
      type metadata accessor for StepResolution();
      sub_22C37FDE8();
      swift_storeEnumTagMultiPayload();
      (*v487)(v506, v513);
      goto LABEL_70;
    }

    while (1)
    {
LABEL_15:
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_94;
      }

      if (v27 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v27);
      ++v19;
      if (v24)
      {
        goto LABEL_18;
      }
    }
  }

  v45 = v0[10];
  v46 = sub_22C90786C();
  v47 = sub_22C90789C();
  v48 = sub_22C58B5C4(v47);

  if (v48)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v527[0] = v46;
    sub_22C63210C(v48, sub_22C6AC6A0, 0, isUniquelyReferenced_nonNull_native, v527);
    v46 = v527[0];
  }

  v57 = v0[71];
  v58 = v0[70];
  v59 = v0[65];
  v60 = v0[13];
  v61 = v0[10];
  ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)(v46, v49, v50, v51, v52, v53, v54, v55, v374, v376, v378, v380, v382, v384, v387, v390, v393, v396, v399, v402);
  v63 = v62;
  v64 = sub_22C9078EC();
  MEMORY[0x2318B5FE0](v64);
  sub_22C36ECB4();
  sub_22C908AFC();
  v394 = v46;
  v443 = v0[102];
  v507 = v0[95];
  v514 = v0[75];
  v65 = v0[73];
  v66 = v0[72];
  v67 = v0[71];
  v68 = v0[70];
  v69 = v0[67];
  v70 = v0[66];
  v436 = v0[61];
  v439 = v0[62];
  v430 = v0[59];
  v433 = v0[60];
  v421 = v0[58];
  v521 = v0[57];
  v71 = v0[51];
  v453 = v0[52];
  v72 = v0[48];
  (*(v0[64] + 8))(v0[65], v0[63]);
  v73 = *(v69 + 8);
  v74 = sub_22C36ECB4();
  v397 = v75;
  v400 = v69 + 8;
  v75(v74);
  sub_22C36BECC();
  sub_22C36C640(v76, v77, v78, v66);
  v79 = *(v65 + 32);
  sub_22C63472C();
  v388 = v80;
  v391 = v65 + 32;
  v80();
  v457 = v71;
  sub_22C909F0C();
  v82 = v63 + 64;
  v81 = *(v63 + 64);
  v83 = *(v63 + 32);
  sub_22C37454C();
  v86 = v85 & v84;
  sub_22C634720();
  v88 = v87 >> 6;
  v426 = (v72 + 16);
  v423 = *MEMORY[0x277D1E908];
  LODWORD(v411) = *MEMORY[0x277D1E900];
  LODWORD(v405) = *MEMORY[0x277D1E910];
  v417 = (v72 + 8);
  LODWORD(v403) = *MEMORY[0x277D1CB00];
  v409 = v72 + 96;
  v90 = v89;
  LODWORD(v407) = *MEMORY[0x277D1CAF0];
  v419 = (v507 + 32);
  v448 = v91;

  v92 = 0;
  v413 = v88;
  v415 = v82;
LABEL_25:
  v0[108] = v90;
  v502 = v90;
  if (v86)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v93 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_95;
    }

    if (v93 >= v88)
    {
      break;
    }

    v86 = *(v82 + 8 * v93);
    ++v92;
    if (v86)
    {
      v92 = v93;
LABEL_30:
      v94 = v0[101];
      v470 = v94;
      v475 = v0[96];
      v95 = v0[61];
      v96 = v0[62];
      v97 = v0[60];
      v508 = v0[59];
      v481 = v0[50];
      v488 = v0[49];
      v494 = v0[47];
      v98 = __clz(__rbit64(v86)) | (v92 << 6);
      v99 = (*(v448 + 48) + 16 * v98);
      v100 = *v99;
      v101 = v99[1];
      (*(v443 + 16))(&v96[*(v521 + 48)], *(v448 + 56) + *(v443 + 72) * v98);
      *v96 = v100;
      *(v439 + 8) = v101;
      sub_22C36A10C();
      sub_22C3D3364();
      v461 = *v95;
      v466 = *(v436 + 8);
      sub_22C370114();
      sub_22C3D3364();
      v102 = *(v433 + 8);

      v103 = *(v521 + 48);
      sub_22C90774C();
      v104 = *(v443 + 8);
      v104(v97 + v103, v470);
      v105 = v508;
      sub_22C3D3364();
      v106 = *(v430 + 8);

      v107 = *(v521 + 48);
      sub_22C908BCC();
      v509 = v104;
      v104(v105 + v107, v470);
      v108 = *v426;
      v109 = sub_22C36BBCC();
      v110(v109);
      v111 = sub_22C37453C();
      v113 = v112(v111);
      if (v113 == v423)
      {
        v121 = v0[49];
        v122 = v0[45];
        (*v417)(v0[50], v0[47]);
        v123 = sub_22C37453C();
        v124(v123);
        *v122 = *v121;
        v125 = sub_22C90260C();
        sub_22C36985C(v125);
        (*(v126 + 104))(v122, v407, v125);
        sub_22C633C54();
      }

      else if (v113 == v411)
      {
        v131 = sub_22C634540(v113, v114, v115, v116, v117, v118, v119, v120, v375, v377, v379, v381, v383, v385, v388, v391, v394, v397, v400, v403, v405, v407, v409, v411, v413, v415, v417);
        v132(v131);
        sub_22C90260C();
        v127 = sub_22C3702F4();
      }

      else
      {
        if (v113 != v405)
        {
          v354 = v0[47];
          sub_22C379C40();

          sub_22C90B4EC();
          return;
        }

        v133 = sub_22C634540(v113, v114, v115, v116, v117, v118, v119, v120, v375, v377, v379, v381, v383, v385, v388, v391, v394, v397, v400, v403, v405, v407, v409, v411, v413, v415, v417);
        v134(v133);
        v135 = sub_22C90260C();
        sub_22C36985C(v135);
        (*(v136 + 104))(v488, v403, v135);
        v127 = sub_22C3726A4();
        v130 = v135;
      }

      sub_22C36C640(v127, v128, v129, v130);
      v137 = v0[101];
      v482 = v0[94];
      v489 = v0[96];
      v138 = v0[62];
      v139 = v0[58];
      v140 = v0[55];
      v495 = v0[54];
      v141 = v0[45];
      v142 = v0[46];
      sub_22C3D3310();
      sub_22C372FA4();
      sub_22C3D3364();
      v143 = *(v421 + 8);

      v144 = *(v521 + 48);
      v145 = v140 + *(v457 + 24);
      sub_22C908BAC();
      v509(v139 + v144, v137);
      (*v419)(v140, v489, v482);
      v146 = *(v457 + 20);
      sub_22C3D3310();
      sub_22C633AE8();
      sub_22C630194();
      swift_isUniquelyReferenced_nonNull_native();
      v527[0] = v502;
      sub_22C3736B4();
      v147 = sub_22C370114();
      sub_22C36E5AC(v147, v148, v149, v150);
      sub_22C369DA4();
      if (__OFADD__(v151, v152))
      {
        goto LABEL_97;
      }

      sub_22C50B5FC();
      sub_22C3A5908(&qword_27D9BF488, &qword_22C922748);
      if (sub_22C634424())
      {
        sub_22C3736B4();
        v153 = sub_22C370114();
        sub_22C36E5AC(v153, v154, v155, v156);
        sub_22C388D48();
        if (!v158)
        {
          sub_22C379C40();

          sub_22C90B54C();
          return;
        }

        v137 = v157;
      }

      v159 = v0[62];
      v160 = v0[54];
      if (v144)
      {

        v90 = v527[0];
        sub_22C6347C8();
        sub_22C633630();
        sub_22C3AC228(v159, &qword_27D9BF338, &qword_22C9225F0);
        goto LABEL_45;
      }

      v90 = v527[0];
      sub_22C36ED48(v527[0] + 8 * (v137 >> 6));
      v161 = (*(v90 + 48) + 16 * v137);
      *v161 = v162;
      v161[1] = v466;
      sub_22C6347C8();
      sub_22C633AE8();
      sub_22C630194();
      sub_22C3AC228(v159, &qword_27D9BF338, &qword_22C9225F0);
      v163 = *(v90 + 16);
      v164 = __OFADD__(v163, 1);
      v165 = v163 + 1;
      if (v164)
      {
        goto LABEL_98;
      }

      *(v90 + 16) = v165;
LABEL_45:
      v86 &= v86 - 1;
      v509(v0[61] + *(v521 + 48), v0[101]);
      v88 = v413;
      v82 = v415;
      goto LABEL_25;
    }
  }

  v166 = v0[69];
  v167 = v0[66];
  v168 = v0[56];
  v169 = v0[13];
  v170 = v0[10];

  sub_22C9078EC();
  sub_22C63417C();
  sub_22C908ADC();
  v171 = sub_22C36BAFC();
  v397(v171);
  v172 = sub_22C908ABC();
  v173 = sub_22C37EF1C();
  v175 = sub_22C370B74(v173, v174, v172);
  v176 = v0[56];
  if (v175 == 1)
  {

    sub_22C3AC228(v176, &qword_27D9BC0B0, &unk_22C912AD0);
  }

  else
  {
    sub_22C36A948();
    v187 = v186;
    v189 = *(v188 + 88);
    v190 = sub_22C36BA00();
    if (v191(v190) == *MEMORY[0x277D1E8C8])
    {
      v192 = v0[82];
      v193 = v0[77];
      v194 = v0[74];
      v195 = v0[56];
      v196 = v0[36];
      v511 = v0[37];
      v197 = v0[35];
      v516 = v0[34];
      v522 = v0[76];
      v198 = v0[11];
      v491 = v0[72];
      v497 = v0[10];

      v199 = *(v187 + 96);
      v200 = sub_22C36A10C();
      v201(v200);
      v202 = sub_22C374C34();
      (v388)(v202);
      sub_22C90878C();
      sub_22C9068FC();
      sub_22C646D68(v192, v203, v204, v205, v206, v207, v208, v209, v375, v377, v379, v381, v383, v385, v388, v391, v394, v397, v400, v403);
      v210 = *(v193 + 8);
      v0[109] = v210;
      v0[110] = (v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v210(v192, v522);
      (*(v197 + 8))(v196, v516);
      v211 = sub_22C9070DC();
      sub_22C376738(v511);
      if (v158)
      {
        sub_22C3AC228(v0[37], &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v284 = v0[39];
        v283 = v0[40];
        v285 = v0[37];
        v286 = v0[38];
        sub_22C90702C();
        sub_22C36BBA8(v211);
        v288 = *(v287 + 8);
        v289 = sub_22C37170C();
        v290(v289);
        v291 = *(v284 + 88);
        v292 = sub_22C36D39C();
        v294 = v293(v292);
        if (v294 == *MEMORY[0x277D1DA78])
        {
          v295 = v0[79];
          v297 = v0[42];
          v296 = v0[43];
          v299 = v0[40];
          v298 = v0[41];
          v300 = v0[38];
          v301 = v0[39];
          v302 = v0[10];

          v303 = *(v301 + 96);
          v304 = sub_22C36ECB4();
          v305(v304);
          v306 = *(v297 + 32);
          v307 = sub_22C36D39C();
          v308(v307);
          sub_22C9068FC();
          v0[111] = sub_22C906A8C();
          swift_task_alloc();
          sub_22C36CC90();
          v0[112] = v309;
          *v309 = v310;
          v309[1] = sub_22C619624;
          v311 = v0[79];
          v312 = v0[74];
          v313 = v0[13];
          v314 = v0[10];
          v315 = v0[11];
          v316 = v0[9];
          sub_22C379C40();

          sub_22C61DE68(v317, v318, v319, v320, v321, v322, v323);
          return;
        }

        (*(v0[39] + 8))(v0[40], v0[38]);
      }

      sub_22C90B1AC();
      sub_22C379C40();
      return;
    }

    v212 = v0[56];

    v213 = *(v187 + 8);
    v214 = sub_22C36BA00();
    v215(v214);
  }

  v216 = v0[75];
  v218 = v0[30];
  v217 = v0[31];
  v219 = v0[29];
  sub_22C908E1C();
  sub_22C36D264();
  sub_22C3D3364();
  v220 = sub_22C37EF1C();
  sub_22C36D0A8(v220, v221, v217);
  if (v158)
  {
    v222 = v0[75];
    v223 = v0[73];
    v224 = v0[72];
    v225 = v0[29];
    v226 = v0[30];

    v227 = sub_22C36D264();
    sub_22C3AC228(v227, v228, &unk_22C922750);
    sub_22C90735C();
    sub_22C3A5F00();
    v229 = sub_22C36FBE4();
    sub_22C6348A8(v229, v230);
    swift_willThrow();
    v231 = sub_22C3806B8();
    sub_22C3AC228(v231, v232, &unk_22C922750);
    v233 = *(v223 + 8);
    v234 = sub_22C36BBCC();
    v235(v234);

    v177 = v0[107];
    v178 = v0[106];
    v179 = v0[103];
    v180 = v0[100];
    v181 = v0[97];
    v182 = v0[96];
    v183 = v0[93];
    sub_22C633CF0();
    v440 = v0[46];
    v444 = v0[45];
    v449 = v0[44];
    v454 = v0[43];
    v458 = v0[40];
    v462 = v0[37];
    v467 = v0[36];
    v471 = v0[33];
    v476 = v0[30];
    v483 = v0[29];
    v490 = v0[28];
    v496 = v0[25];
    v503 = v0[22];
    v510 = v0[19];
    v515 = v0[16];

    sub_22C369A24();
    goto LABEL_48;
  }

  v523 = v0[95];
  v236 = v0[78];
  v237 = v0[68];
  v239 = v0[32];
  v238 = v0[33];
  v240 = v0[31];
  v241 = v0[29];
  v242 = v0[24];
  v243 = v0[21];
  v244 = v0[10];
  sub_22C3AC228(v0[30], &qword_27D9BF498, &unk_22C922750);
  sub_22C51E3FC();
  v245 = sub_22C372FA4();
  v246(v245);
  sub_22C90943C();
  v247 = *(v239 + 8);
  v248 = sub_22C372164();
  v249(v248);
  sub_22C6341E4();
  sub_22C9068FC();
  sub_22C9078EC();
  sub_22C3A5908(&qword_27D9BF4A0, &qword_22C922760);
  sub_22C90B1CC();
  v250 = 0;
  v251 = *(v502 + 64);
  v252 = *(v502 + 32);
  sub_22C36D280();
  v257 = (v255 + 63) >> 6;
  v463 = *MEMORY[0x277D1E040];
  v445 = v253 + 8;
  v450 = (v243 + 104);
  v477 = v242;
  v472 = v253;
  if ((v256 & v254) != 0)
  {
    goto LABEL_60;
  }

  while (2)
  {
    v260 = v250;
    do
    {
      v250 = v260 + 1;
      if (__OFADD__(v260, 1))
      {
        goto LABEL_96;
      }

      if (v250 >= v257)
      {
        v275 = v0[78];
        v276 = v0[73];
        v518 = v0[72];
        v525 = v0[75];
        v277 = v0[68];
        v279 = v0[27];
        v278 = v0[28];
        v280 = v0[26];
        v281 = v0[9];
        v282 = v0[10];
        sub_22C90776C();
        sub_22C36D264();
        sub_22C90867C();
        (*(v279 + 104))(v278, *MEMORY[0x277D1E560], v280);
        sub_22C630248();

        sub_22C37A004();
        sub_22C9085BC();
        (*(v276 + 8))(v525, v518);
        type metadata accessor for StepResolution();
        swift_storeEnumTagMultiPayload();
LABEL_70:
        sub_22C633EE4();
        v386 = v0[83];
        v389 = v0[82];
        v392 = v0[81];
        v395 = v0[80];
        v398 = v0[79];
        v401 = v0[78];
        v404 = v0[75];
        v406 = v0[74];
        v408 = v0[71];
        v410 = v0[70];
        v412 = v0[69];
        v414 = v0[68];
        v416 = v0[65];
        v418 = v0[62];
        v420 = v0[61];
        v422 = v0[60];
        v424 = v0[59];
        v425 = v0[58];
        v427 = v0[56];
        v428 = v0[55];
        v431 = v0[54];
        v434 = v0[53];
        v437 = v0[50];
        v441 = v0[49];
        v446 = v0[46];
        v451 = v0[45];
        v455 = v0[44];
        v459 = v0[43];
        v464 = v0[40];
        v468 = v0[37];
        v473 = v0[36];
        v478 = v0[33];
        v485 = v0[30];
        v493 = v0[29];
        v499 = v0[28];
        v504 = v0[25];
        sub_22C6346F4();
        v526 = v0[16];

        sub_22C369C50();
LABEL_48:
        sub_22C379C40();

        __asm { BRAA            X1, X16 }
      }

      ++v260;
    }

    while (!*(v502 + 64 + 8 * v250));
    sub_22C37FCE8();
    v484 = v261;
LABEL_66:
    v262 = v258 | (v250 << 6);
    v263 = v0[94];
    v264 = v0[53];
    v265 = v0[44];
    v266 = v0[22];
    v524 = v0[23];
    v498 = v0[20];
    v267 = *(v502 + 56);
    v268 = (*(v502 + 48) + 16 * v262);
    v512 = v0[25];
    v517 = *v268;
    v492 = v268[1];
    v269 = *(v453 + 72);
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C38A894();
    v270(v266, v264, v263);
    (*v450)(v266, v463, v498);
    v271 = *(v457 + 20);
    sub_22C3D3364();

    sub_22C90869C();
    sub_22C633A4C();
    sub_22C62E9E0(v264, v272);
    *(v445 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v262;
    v273 = (v472[6] + 16 * v262);
    *v273 = v517;
    v273[1] = v492;
    (*(v477 + 32))(v472[7] + *(v477 + 72) * v262, v512, v524);
    sub_22C634804();
    if (!v164)
    {
      v472[2] = v274;
      if (!v484)
      {
        continue;
      }

LABEL_60:
      sub_22C36C050();
      v484 = v259;
      goto LABEL_66;
    }

    break;
  }

LABEL_99:
  __break(1u);
}

uint64_t sub_22C619624()
{
  sub_22C36D5EC();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 896);
  *v4 = *v2;
  *(v3 + 904) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 888);
  v8 = *(v1 + 880);
  v9 = *(v1 + 864);
  (*(v1 + 872))(*(v1 + 632), *(v1 + 608));

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C6197BC()
{
  v2 = sub_22C634264();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = sub_22C36BAFC();
  v4(v5);
  v6 = sub_22C37170C();
  v4(v6);
  sub_22C633EE4();
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[65];
  v22 = v0[62];
  v23 = v0[61];
  v24 = v0[60];
  v25 = v0[59];
  v26 = v0[58];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[54];
  v30 = v0[53];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[44];
  v36 = v0[43];
  v37 = v0[40];
  v38 = v0[37];
  v39 = v0[36];
  v40 = v0[33];
  v41 = v0[30];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  sub_22C6346F4();
  v45 = v0[16];

  sub_22C369C50();

  return v7();
}

uint64_t sub_22C619AC4()
{
  v2 = sub_22C634264();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = sub_22C36BAFC();
  v4(v5);
  v6 = sub_22C37170C();
  v4(v6);
  v29 = v0[113];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[103];
  v10 = v0[100];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  sub_22C633CF0();
  v16 = v0[46];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[28];
  v27 = v0[25];
  sub_22C6346F4();
  v28 = v0[16];

  sub_22C369A24();

  return v14();
}

uint64_t sub_22C619D74(uint64_t a1, uint64_t a2)
{
  v315 = a1;
  v310 = _s5TupleVMa(0);
  v308 = *(v310 - 8);
  v3 = *(v308 + 64);
  MEMORY[0x28223BE20](v310);
  v313 = &v302 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_22C9063DC();
  v312 = *(v309 - 8);
  v5 = *(v312 + 64);
  v6 = MEMORY[0x28223BE20](v309);
  v306 = &v302 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v303 = &v302 - v9;
  MEMORY[0x28223BE20](v8);
  v307 = &v302 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v323 = &v302 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v343 = &v302 - v15;
  v360 = sub_22C908BBC();
  v16 = *(v360 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v360);
  v325 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v349 = &v302 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v340 = &v302 - v23;
  MEMORY[0x28223BE20](v22);
  v339 = &v302 - v24;
  v359 = sub_22C90931C();
  v25 = *(v359 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v359);
  v324 = &v302 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v338 = &v302 - v29;
  v30 = sub_22C9093BC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v345 = &v302 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v337 = &v302 - v35;
  v36 = sub_22C908C5C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v348 = &v302 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v305 = &v302 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v304 = &v302 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v311 = &v302 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v364 = &v302 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v336 = &v302 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v375 = &v302 - v52;
  MEMORY[0x28223BE20](v51);
  v347 = &v302 - v53;
  v54 = sub_22C9069BC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v377 = &v302 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v381 = &v302 - v60;
  MEMORY[0x28223BE20](v59);
  v346 = &v302 - v61;
  v62 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v366 = &v302 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v344 = &v302 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v342 = &v302 - v69;
  MEMORY[0x28223BE20](v68);
  v341 = &v302 - v70;
  v72 = a2 + 64;
  v71 = *(a2 + 64);
  v73 = 1 << *(a2 + 32);
  v357 = *MEMORY[0x277D72A58];
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v363 = v74 & v71;
  v334 = *MEMORY[0x277D729E8];
  v319 = (v73 + 63) >> 6;
  v368 = v55 + 16;
  v372 = (v37 + 16);
  v322 = *MEMORY[0x277D72A38];
  v373 = (v55 + 32);
  v378 = (v37 + 32);
  v318 = *MEMORY[0x277D729F8];
  v356 = (v31 + 88);
  v333 = (v31 + 8);
  v332 = (v31 + 96);
  v331 = (v25 + 16);
  v330 = (v25 + 88);
  v329 = *MEMORY[0x277D72990];
  v328 = *MEMORY[0x277D72958];
  v321 = *MEMORY[0x277D729D0];
  v317 = *MEMORY[0x277D729B0];
  v316 = *MEMORY[0x277D72998];
  v314 = *MEMORY[0x277D72970];
  v327 = (v25 + 8);
  v355 = (v16 + 16);
  v354 = (v16 + 88);
  v353 = *MEMORY[0x277D1E908];
  v326 = *MEMORY[0x277D1E900];
  v352 = (v16 + 8);
  v371 = v37;
  v350 = (v37 + 8);
  v320 = *MEMORY[0x277D1E910];
  v369 = v55;
  v75 = (v55 + 8);
  v76 = v54;
  v351 = v75;
  v365 = a2;

  v77 = 0;
  v78 = MEMORY[0x277D84F98];
  v367 = MEMORY[0x277D84F98];
  v370 = v76;
  v376 = v36;
  v358 = v30;
  for (i = v72; ; v72 = i)
  {
    v79 = v363;
    v374 = v78;
    if (v363)
    {
      v80 = v76;
      v81 = v77;
LABEL_12:
      v363 = (v79 - 1) & v79;
      v83 = __clz(__rbit64(v79)) | (v81 << 6);
      v84 = v365;
      v85 = v369;
      v86 = v346;
      (*(v369 + 16))(v346, *(v365 + 48) + *(v369 + 72) * v83, v80);
      v87 = v371;
      v88 = v347;
      v36 = v376;
      (*(v371 + 16))(v347, *(v84 + 56) + *(v371 + 72) * v83, v376);
      v89 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      v90 = *(v89 + 48);
      v91 = *(v85 + 32);
      v76 = v80;
      v92 = v342;
      v91(v342, v86, v76);
      (*(v87 + 32))(v92 + v90, v88, v36);
      sub_22C36C640(v92, 0, 1, v89);
      v82 = v366;
    }

    else
    {
      v82 = v366;
      while (1)
      {
        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
          goto LABEL_160;
        }

        if (v81 >= v319)
        {
          break;
        }

        v79 = *(v72 + 8 * v81);
        ++v77;
        if (v79)
        {
          v80 = v76;
          v77 = v81;
          goto LABEL_12;
        }
      }

      v115 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
      sub_22C36C640(v342, 1, 1, v115);
      v363 = 0;
    }

    v93 = v341;
    sub_22C3D3310();
    v94 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
    v95 = sub_22C370B74(v93, 1, v94);
    v96 = v343;
    if (v95 == 1)
    {
      break;
    }

    v97 = *(v94 + 48);
    (*v373)(v381, v93, v76);
    v98 = *v378;
    (*v378)(v375, v93 + v97, v36);
    v99 = v337;
    sub_22C90774C();
    v100 = v358;
    v101 = (*v356)(v99, v358);
    v102 = v374;
    if (v101 == v357)
    {
      (*v332)(v99, v100);
      v103 = *v99;
      v104 = swift_projectBox();
      v105 = v338;
      v106 = v359;
      (*v331)(v338, v104, v359);
      v107 = (*v330)(v105, v106);
      v108 = v107 == v329 || v107 == v328;
      v109 = v367;
      v110 = v339;
      if (v108)
      {
        v362 = 6;
        v111 = v360;
      }

      else
      {
        v111 = v360;
        if (v107 == v321)
        {
          v114 = 9;
        }

        else if (v107 == v317)
        {
          v114 = 8;
        }

        else if (v107 == v316)
        {
          v114 = 7;
        }

        else if (v107 == v314)
        {
          v114 = 5;
        }

        else
        {
          v114 = 4;
        }

        v362 = v114;
      }

      (*v327)(v338, v359);
    }

    else
    {
      v112 = v101;
      v109 = v367;
      v110 = v339;
      if (v101 == v334)
      {
        (*v333)(v99, v100);
        v113 = 10;
      }

      else if (v101 == v322)
      {
        (*v333)(v99, v100);
        v113 = 11;
      }

      else
      {
        (*v333)(v99, v100);
        if (v112 == v318)
        {
          v113 = 11;
        }

        else
        {
          v113 = 12;
        }
      }

      v362 = v113;
      v111 = v360;
    }

    sub_22C908BCC();
    v116 = v340;
    (*v355)(v340, v110, v111);
    v117 = (*v354)(v116, v111);
    v361 = v98;
    if (v117 != v353)
    {
      if (v117 == v326)
      {
        v118 = 0;
        goto LABEL_46;
      }

      if (v117 != v320)
      {
LABEL_171:
        sub_22C90B4EC();
        __break(1u);
        goto LABEL_172;
      }
    }

    v118 = 1;
LABEL_46:
    (*v352)(v110, v111);
    swift_isUniquelyReferenced_nonNull_native();
    v379 = v109;
    sub_22C628D18();
    if (__OFADD__(*(v109 + 16), (v120 & 1) == 0))
    {
      goto LABEL_161;
    }

    v121 = v119;
    v122 = v120;
    sub_22C3A5908(&qword_27D9BF4C0, &unk_22C9227A0);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v125 = v376;
      if ((v122 & 1) != (v124 & 1))
      {
        goto LABEL_172;
      }

      v121 = v123;
    }

    else
    {
      v125 = v376;
    }

    v126 = v379;
    v127 = 3 * v121;
    v367 = v379;
    if (v122)
    {
      v128 = v379[7].isa + v127;
      *v128 = 1;
      v128[1] = v362;
      v128[2] = v118;
    }

    else
    {
      v379[(v121 >> 6) + 8].isa = (v379[(v121 >> 6) + 8].isa | (1 << v121));
      (*(v369 + 16))(v126[6].isa + *(v369 + 72) * v121, v381, v370);
      v129 = v126[7].isa + v127;
      *v129 = 1;
      v129[1] = v362;
      v129[2] = v118;
      isa = v126[2].isa;
      v131 = __OFADD__(isa, 1);
      v132 = (isa + 1);
      if (v131)
      {
        goto LABEL_164;
      }

      v126[2].isa = v132;
    }

    v133 = v336;
    (*v372)(v336, v375, v125);
    swift_isUniquelyReferenced_nonNull_native();
    v379 = v102;
    sub_22C628D18();
    if (__OFADD__(v102[2].isa, (v135 & 1) == 0))
    {
      goto LABEL_162;
    }

    v136 = v134;
    v137 = v135;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v36 = v376;
      if ((v137 & 1) != (v139 & 1))
      {
        goto LABEL_172;
      }

      v136 = v138;
    }

    else
    {
      v36 = v376;
    }

    v78 = v379;
    if (v137)
    {
      v140 = *(v371 + 72) * v136;
      v141 = v361;
      (v361)(v96, v379[7].isa + v140, v36);
      (v141)(v78[7].isa + v140, v133, v36);
      v142 = 0;
      v76 = v370;
    }

    else
    {
      v379[(v136 >> 6) + 8].isa = (v379[(v136 >> 6) + 8].isa | (1 << v136));
      v76 = v370;
      (*(v369 + 16))(v78[6].isa + *(v369 + 72) * v136, v381, v370);
      (v361)(v78[7].isa + *(v371 + 72) * v136, v133, v36);
      v143 = v78[2].isa;
      v131 = __OFADD__(v143, 1);
      v144 = (v143 + 1);
      if (v131)
      {
        goto LABEL_165;
      }

      v78[2].isa = v144;
      v142 = 1;
    }

    sub_22C36C640(v96, v142, 1, v36);
    sub_22C3AC228(v96, &qword_27D9BB628, &unk_22C920580);
    (*v350)(v375, v36);
    (*v351)(v381, v76);
  }

  v145 = v315 + 56;
  v146 = 1 << *(v315 + 32);
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  else
  {
    v147 = -1;
  }

  v148 = v147 & *(v315 + 56);
  v338 = ((v146 + 63) >> 6);

  LODWORD(v342) = 0;
  v149 = 0;
  v150 = MEMORY[0x277D84F90];
  v151 = v364;
  v152 = v374;
  v363 = v94;
  i = v145;
  while (2)
  {
    v339 = v150;
    if (!v148)
    {
      do
      {
        v153 = v149 + 1;
        if (__OFADD__(v149, 1))
        {
          goto LABEL_168;
        }

        if (v153 >= v338)
        {

          v269 = v303;
          sub_22C903F8C();
          v270 = sub_22C9063CC();
          v271 = sub_22C90AABC();
          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            v273 = swift_slowAlloc();
            v379 = v273;
            *v272 = 136315138;

            v275 = MEMORY[0x2318B7AD0](v274, v310);
            v277 = v276;

            v278 = sub_22C36F9F4(v275, v277, &v379);

            *(v272 + 4) = v278;
            _os_log_impl(&dword_22C366000, v270, v271, "TupleSet candidates: %s", v272, 0xCu);
            sub_22C36FF94(v273);
            MEMORY[0x2318B9880](v273, -1, -1);
            MEMORY[0x2318B9880](v272, -1, -1);
          }

          v279 = *(v312 + 8);
          v280 = v269;
          v281 = v309;
          v279(v280, v309);
          v282 = v306;
          sub_22C903F8C();
          v283 = sub_22C9063CC();
          v284 = sub_22C90AABC();
          if (os_log_type_enabled(v283, v284))
          {
            v285 = swift_slowAlloc();
            v286 = swift_slowAlloc();
            v379 = v286;
            *v285 = 136315138;
            sub_22C6339B0(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);

            v287 = sub_22C909EDC();
            v289 = v288;

            v290 = sub_22C36F9F4(v287, v289, &v379);

            *(v285 + 4) = v290;
            _os_log_impl(&dword_22C366000, v283, v284, "TupleSet parameterMetadataDict: %s", v285, 0xCu);
            sub_22C36FF94(v286);
            MEMORY[0x2318B9880](v286, -1, -1);
            MEMORY[0x2318B9880](v285, -1, -1);

            v291 = v306;
          }

          else
          {

            v291 = v282;
          }

          v279(v291, v281);
          return 33554434;
        }

        v148 = *(v145 + 8 * v153);
        ++v149;
      }

      while (!v148);
      v149 = v153;
    }

    v154 = *(v315 + 48);
    v337 = v149;
    v155 = *(v154 + ((v149 << 9) | (8 * __clz(__rbit64(v148)))));
    v336 = ((v148 - 1) & v148);
    v156 = *(v155 + 8);
    v343 = v155 + 64;
    v157 = 1 << v155[32];
    if (v157 < 64)
    {
      v158 = ~(-1 << v157);
    }

    else
    {
      v158 = -1;
    }

    v159 = v158 & v156;
    v340 = ((v157 + 63) >> 6);
    v341 = v155;
    swift_bridgeObjectRetain_n();
    v160 = 0;
    v161 = v344;
LABEL_78:
    v374 = v152;
    if (v159)
    {
      v162 = v160;
LABEL_84:
      v381 = ((v159 - 1) & v159);
      v163 = __clz(__rbit64(v159)) | (v162 << 6);
      v164 = v341;
      v165 = v369;
      v166 = v346;
      (*(v369 + 16))(v346, *(v341 + 6) + *(v369 + 72) * v163, v76);
      v167 = *(v164 + 7);
      v168 = v371;
      v169 = v347;
      (*(v371 + 16))(v347, v167 + *(v371 + 72) * v163, v36);
      v94 = v363;
      v170 = *(v363 + 48);
      v171 = *(v165 + 32);
      v82 = v366;
      v172 = v166;
      v173 = v76;
      v171(v366, v172, v76);
      (*(v168 + 32))(v82 + v170, v169, v36);
      v174 = 0;
      v161 = v344;
      v151 = v364;
LABEL_85:
      sub_22C36C640(v82, v174, 1, v94);
      sub_22C3D3310();
      if (sub_22C370B74(v161, 1, v94) == 1)
      {
        v231 = v82;
        v232 = v36;

        v233 = sub_22C90769C();
        v234 = v313;
        sub_22C36C640(v313, 1, 1, v233);
        v235 = v310;
        v236 = *(v310 + 20);
        v237 = sub_22C9099FC();
        sub_22C36C640(v234 + v236, 1, 1, v237);
        v238 = v374;
        *(v234 + *(v235 + 24)) = v374;
        v239 = v238;

        v150 = v339;
        v76 = v173;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v242 = *(v150 + 2);
          sub_22C5952D4();
          v150 = v243;
        }

        v145 = i;
        v240 = *(v150 + 2);
        v152 = v239;
        if (v240 >= *(v150 + 3) >> 1)
        {
          sub_22C5952D4();
          v150 = v244;
        }

        v36 = v232;
        *(v150 + 2) = v240 + 1;
        v241 = &v150[((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v240];
        sub_22C630194();
        LODWORD(v342) = 1;
        v82 = v231;
        v94 = v363;
        v151 = v364;
        v149 = v337;
        v148 = v336;
        continue;
      }

      v175 = *(v94 + 48);
      (*v373)(v377, v161, v173);
      v375 = *v378;
      (v375)(v151, v161 + v175, v36);
      v176 = v345;
      sub_22C90774C();
      v177 = v358;
      v178 = (*v356)(v176, v358);
      if (v178 == v357)
      {
        (*v332)(v176, v177);
        v179 = *v176;
        v180 = swift_projectBox();
        v181 = v324;
        v182 = v359;
        (*v331)(v324, v180, v359);
        v183 = (*v330)(v181, v182);
        if (v183 == v329 || v183 == v328)
        {
          v362 = 6;
          v185 = v360;
        }

        else
        {
          v185 = v360;
          if (v183 == v321)
          {
            v188 = 9;
          }

          else if (v183 == v317)
          {
            v188 = 8;
          }

          else if (v183 == v316)
          {
            v188 = 7;
          }

          else if (v183 == v314)
          {
            v188 = 5;
          }

          else
          {
            v188 = 4;
          }

          v362 = v188;
        }

        (*v327)(v324, v359);
      }

      else
      {
        v186 = v178;
        if (v178 == v334)
        {
          (*v333)(v345, v177);
          v187 = 10;
        }

        else if (v178 == v322)
        {
          (*v333)(v345, v177);
          v187 = 11;
        }

        else
        {
          (*v333)(v345, v177);
          if (v186 == v318)
          {
            v187 = 11;
          }

          else
          {
            v187 = 12;
          }
        }

        v362 = v187;
        v185 = v360;
      }

      v189 = v349;
      sub_22C908BCC();
      v190 = v325;
      (*v355)(v325, v189, v185);
      v191 = (*v354)(v190, v185);
      if (v191 == v353)
      {
        LODWORD(v361) = 1;
        v192 = v173;
        goto LABEL_118;
      }

      v192 = v173;
      if (v191 == v326)
      {
        LODWORD(v361) = 0;
LABEL_118:
        v193 = v374;
      }

      else
      {
        v193 = v374;
        if (v191 != v320)
        {
          goto LABEL_171;
        }

        LODWORD(v361) = 1;
      }

      (*v352)(v349, v185);
      if (*(v365 + 16))
      {
        sub_22C628D18();
        if (v195)
        {
          v245 = v194;
          v246 = v365;

          v247 = *(v246 + 56) + *(v371 + 72) * v245;
          v248 = *(v371 + 16);
          v249 = v311;
          v248(v311, v247, v36);

          v250 = v307;
          sub_22C903F8C();
          v251 = v304;
          v248(v304, v249, v36);
          v252 = v305;
          v248(v305, v151, v36);
          v253 = sub_22C9063CC();
          v254 = sub_22C90AADC();
          if (os_log_type_enabled(v253, v254))
          {
            v255 = v36;
            v256 = swift_slowAlloc();
            v257 = v251;
            v375 = swift_slowAlloc();
            v379 = v375;
            *v256 = 136315394;
            sub_22C6339B0(&qword_27D9BF4C8, MEMORY[0x277D1E968]);
            v374 = v253;
            v258 = sub_22C90B47C();
            v260 = v259;
            LODWORD(v373) = v254;
            v261 = *v350;
            v378 = (v350 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v261(v257, v255);
            v262 = sub_22C36F9F4(v258, v260, &v379);
            v192 = v370;

            *(v256 + 4) = v262;
            *(v256 + 12) = 2080;
            v263 = sub_22C90B47C();
            v265 = v264;
            v381 = v261;
            v261(v252, v255);
            v266 = sub_22C36F9F4(v263, v265, &v379);

            *(v256 + 14) = v266;
            v267 = v374;
            _os_log_impl(&dword_22C366000, v374, v373, "a parameter may not be both resolved and unresolved: %s vs %s", v256, 0x16u);
            v268 = v375;
            swift_arrayDestroy();
            MEMORY[0x2318B9880](v268, -1, -1);
            MEMORY[0x2318B9880](v256, -1, -1);

            (*(v312 + 8))(v307, v309);
          }

          else
          {

            v292 = *v350;
            v378 = (v350 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v292(v252, v36);
            v381 = v292;
            v292(v251, v36);
            (*(v312 + 8))(v250, v309);
            v255 = v36;
          }

          type metadata accessor for InterpreterError();
          sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
          swift_allocError();
          v294 = v293;
          v379 = 0;
          v380 = 0xE000000000000000;
          sub_22C90AF5C();
          MEMORY[0x2318B7850](0xD000000000000035, 0x800000022C933400);
          sub_22C6339B0(&qword_27D9BF4C8, MEMORY[0x277D1E968]);
          v295 = v311;
          v296 = sub_22C90B47C();
          MEMORY[0x2318B7850](v296);

          MEMORY[0x2318B7850](544437792, 0xE400000000000000);
          v297 = v364;
          v298 = sub_22C90B47C();
          MEMORY[0x2318B7850](v298);

          v299 = v380;
          *v294 = v379;
          v294[1] = v299;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v300 = v381;
          (v381)(v295, v255);
          (v300)(v297, v255);
          (*v351)(v377, v192);
        }
      }

      if ((v342 & 1) == 0)
      {
        v196 = v367;
        swift_isUniquelyReferenced_nonNull_native();
        v379 = v196;
        sub_22C628D18();
        if (__OFADD__(*(v196 + 16), (v198 & 1) == 0))
        {
          goto LABEL_166;
        }

        v199 = v197;
        v200 = v198;
        sub_22C3A5908(&qword_27D9BF4C0, &unk_22C9227A0);
        if (sub_22C90B15C())
        {
          sub_22C628D18();
          v203 = v370;
          if ((v200 & 1) != (v202 & 1))
          {
            goto LABEL_172;
          }

          v199 = v201;
        }

        else
        {
          v203 = v370;
        }

        v204 = v379;
        v205 = 3 * v199;
        v367 = v379;
        if (v200)
        {
          v206 = v379[7].isa + v205;
          *v206 = 0;
          v206[1] = v362;
          v206[2] = v361;
        }

        else
        {
          v379[(v199 >> 6) + 8].isa = (v379[(v199 >> 6) + 8].isa | (1 << v199));
          (*(v369 + 16))(v204[6].isa + *(v369 + 72) * v199, v377, v203);
          v207 = v204[7].isa + v205;
          *v207 = 0;
          v207[1] = v362;
          v207[2] = v361;
          v208 = v204[2].isa;
          v131 = __OFADD__(v208, 1);
          v209 = (v208 + 1);
          if (v131)
          {
            goto LABEL_169;
          }

          v204[2].isa = v209;
        }

        v36 = v376;
        v151 = v364;
      }

      (*v372)(v348, v151, v36);
      swift_isUniquelyReferenced_nonNull_native();
      v379 = v193;
      sub_22C628D18();
      if (__OFADD__(v193[2].isa, (v211 & 1) == 0))
      {
        goto LABEL_163;
      }

      v212 = v210;
      v213 = v211;
      sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
      if (sub_22C90B15C())
      {
        sub_22C628D18();
        v76 = v370;
        if ((v213 & 1) != (v215 & 1))
        {
          goto LABEL_172;
        }

        v212 = v214;
      }

      else
      {
        v76 = v370;
      }

      v216 = v323;
      v152 = v379;
      if (v213)
      {
        v217 = v371;
        v218 = *(v371 + 72) * v212;
        v36 = v376;
        v219 = v323;
        v220 = v161;
        v221 = v375;
        (v375)(v323, v379[7].isa + v218, v376);
        (v221)(v152[7].isa + v218, v348, v36);
        v161 = v220;
        v216 = v219;
        v76 = v370;
        v222 = *(v217 + 8);
        v151 = v364;
        v222(v364, v36);
        (*v351)(v377, v76);
        v223 = 0;
      }

      else
      {
        v379[(v212 >> 6) + 8].isa = (v379[(v212 >> 6) + 8].isa | (1 << v212));
        v224 = v369;
        v225 = v377;
        (*(v369 + 16))(v152[6].isa + *(v369 + 72) * v212, v377, v76);
        v226 = v371;
        v227 = v152[7].isa + *(v371 + 72) * v212;
        v36 = v376;
        (v375)(v227, v348, v376);
        v228 = *(v226 + 8);
        v151 = v364;
        v228(v364, v36);
        (*(v224 + 8))(v225, v76);
        v229 = v152[2].isa;
        v131 = __OFADD__(v229, 1);
        v230 = (v229 + 1);
        if (v131)
        {
          goto LABEL_167;
        }

        v152[2].isa = v230;
        v223 = 1;
        v161 = v344;
      }

      sub_22C36C640(v216, v223, 1, v36);
      sub_22C3AC228(v216, &qword_27D9BB628, &unk_22C920580);
      v82 = v366;
      v94 = v363;
      v159 = v381;
      goto LABEL_78;
    }

    break;
  }

  while (1)
  {
    v162 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      break;
    }

    if (v162 >= v340)
    {
      v173 = v76;
      v381 = 0;
      v174 = 1;
      goto LABEL_85;
    }

    v159 = *&v343[8 * v162];
    ++v160;
    if (v159)
    {
      v160 = v162;
      goto LABEL_84;
    }
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
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
  __break(1u);
LABEL_172:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void ActionResolverRequestEvaluator.coalesceCollectionParameters(parameterizedTuple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v252 = sub_22C9093BC();
  v24 = sub_22C369824(v252);
  v256 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  sub_22C3698F8(v29);
  v241 = sub_22C90952C();
  v30 = sub_22C369824(v241);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  sub_22C3698F8(v36);
  v240 = sub_22C901FAC();
  v37 = sub_22C369824(v240);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v239 = sub_22C908BBC();
  v42 = sub_22C369824(v239);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  sub_22C3698F8(v46);
  v238 = sub_22C908C3C();
  v47 = sub_22C369824(v238);
  v254 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C36D234(v52);
  v53 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v53);
  v55 = *(v54 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v56);
  sub_22C36D5B4();
  sub_22C3698F8(v57);
  v277 = sub_22C9069BC();
  v58 = sub_22C369824(v277);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA64();
  sub_22C36D234(v64);
  v259 = 0;
  v274 = sub_22C908C5C();
  v65 = sub_22C369824(v274);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA64();
  sub_22C36D234(v75);
  v273 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v76 = sub_22C36985C(v273);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  v269 = v80;
  sub_22C369930();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  v268 = v82;
  sub_22C369930();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  v267 = v84;
  sub_22C369930();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA64();
  v272 = v86;
  v87 = *(v23 + 16);
  v88 = MEMORY[0x277D84F90];
  v275 = v23;
  v270 = v60;
  v271 = v67;
  if (!v87)
  {
LABEL_21:
    v116 = sub_22C3AD928(v88);
    v117 = v116;
    v118 = 0;
    v119 = v116 + 56;
    v120 = 1 << *(v116 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v122 = v121 & *(v116 + 56);
    v123 = (v120 + 63) >> 6;
    v284 = v270 + 1;
    v270 += 4;
    v280 = v67 + 32;
    v267 = v67 + 16;
    v268 = v67 + 8;
    v265 = v67 + 40;
    v264 = (v256 + 8);
    v266 = (v256 + 32);
    v263 = v32 + 16;
    LODWORD(v262) = *MEMORY[0x277D729E0];
    v261 = v256 + 104;
    v260 = v254 + 16;
    v230 = v32 + 8;
    v281 = MEMORY[0x277D84F98];
    sub_22C6348BC();
    v276 = v124;
    v279 = v123;
    v269 = v119;
    while (1)
    {
      while (1)
      {
        if (!v122)
        {
          while (1)
          {
            v125 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              break;
            }

            if (v125 >= v123)
            {

              sub_22C36CC48();
              return;
            }

            v122 = *(v119 + 8 * v125);
            ++v118;
            if (v122)
            {
              v118 = v125;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_29:
        v126 = __clz(__rbit64(v122));
        v122 &= v122 - 1;
        v127 = (*(v117 + 48) + ((v118 << 10) | (16 * v126)));
        v128 = *v127;
        v129 = v127[1];
        swift_bridgeObjectRetain_n();
        sub_22C634768();
        sub_22C90699C();
        v130 = v275;
        v131 = *(v275 + 16);
        v282 = v128;
        if (v131)
        {
          sub_22C628D18();
          if (v133)
          {
            break;
          }
        }

        v283 = *v284;
        (v283)(v67, v277);

        v134 = sub_22C37170C();
        v135 = v259;
        v137 = sub_22C632B20(v134, v136, v129);
        sub_22C6347DC(v137);
        v141 = v140 >> 6;
        v142 = 64;
        v259 = v135;
        if (!v141)
        {
          goto LABEL_36;
        }

        while (1)
        {
          v143 = *(v137 + v142);
          if (v143)
          {
            break;
          }

          v138 -= 64;
          --v141;
          v142 += 8;
          if (!v141)
          {
            goto LABEL_36;
          }
        }

        v144 = __clz(__rbit64(v143));
        if (v144 - v139 == v138)
        {
LABEL_36:

          v67 = v257;
          v145 = sub_22C381B6C();
          sub_22C36C640(v145, v146, v147, v274);
          goto LABEL_40;
        }

        v278 = v129;
        v149 = v272;
        v148 = v273;
        v150 = *(v273 + 48);
        sub_22C633328(v272, v272 + v150, v144 - v138, *(v137 + 36), 0, v137);
        v151 = *v270;
        v152 = sub_22C37F8AC();
        v153 = v277;
        v154(v152);
        v155 = *(v148 + 48);
        v156 = *v280;
        v157 = v149 + v150;
        v158 = v274;
        (*v280)(v255 + v155, v157, v274);
        v156(v257, v255 + v155, v158);
        v159 = sub_22C3726A4();
        sub_22C36C640(v159, v160, v161, v158);
        (v283)(v255, v153);
        v162 = sub_22C3707B4();
        sub_22C36D0A8(v162, v163, v158);
        if (v164)
        {

          v67 = v257;
          v117 = v276;
          v123 = v279;
          v119 = v269;
LABEL_40:
          sub_22C3AC228(v67, &qword_27D9BB628, &unk_22C920580);
          sub_22C6348BC();
        }

        else
        {
          v228 = v156;
          v156(v242, v257, v274);
          sub_22C908C4C();
          sub_22C908BCC();
          sub_22C908BAC();
          sub_22C90774C();
          sub_22C90935C();
          sub_22C36BA4C(&a17);
          v195(v243, v252);
          v196 = *(v137 + 16);

          v117 = v276;
          v119 = v269;
          v197 = v278;
          if (!v196)
          {
            goto LABEL_72;
          }

          v198 = v196;
          v199 = 0;
          v229 = MEMORY[0x277D84F90];
          v200 = v251;
          do
          {

            sub_22C90699C();
            v201 = v275;
            if (*(v275 + 16) && (sub_22C628D18(), (v203 & 1) != 0))
            {
              (*(v271 + 16))(v237, *(v201 + 56) + *(v271 + 72) * v202, v274);
              (v283)(v200, v277);
              sub_22C90774C();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = *(v229 + 16);
                sub_22C36D270();
                sub_22C5903C0();
                v229 = v212;
              }

              v205 = *(v229 + 16);
              v204 = *(v229 + 24);
              v201 = v205 + 1;
              if (v205 >= v204 >> 1)
              {
                sub_22C36A958(v204);
                sub_22C5903C0();
                v229 = v213;
              }

              sub_22C6343E4();
              v206(v237, v274);
              *(v229 + 16) = v201;
              v207 = *(v256 + 80);
              sub_22C36BA94();
              (*(v210 + 32))(v209 + v208 + *(v210 + 72) * v205, v253, v252);
              v200 = v251;
            }

            else
            {
              (v283)(v200, v277);
            }

            ++v199;
          }

          while (v198 != v199);
          sub_22C90906C();
          swift_allocBox();
          sub_22C385D88();
          sub_22C36BA4C(&a16);
          v214(v236, v247, v241);
          sub_22C6348E8();
          sub_22C90903C();
          *v243 = v201;
          sub_22C36BA4C(&a14);
          v215(v243, v262, v252);
          sub_22C36BA4C(&a13);
          v216(v233, v244, v238);
          sub_22C36BA4C(&a11);
          v217(v234, v245, v239);
          sub_22C36BA4C(&v279);
          v218(v235, v246, v240);
          sub_22C37BD98();
          sub_22C908C1C();
          v219 = sub_22C634750();
          v67 = v274;
          v228(v219);
          v220 = v281;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v286 = v220;
          sub_22C62D35C(v232, v282, v197, isUniquelyReferenced_nonNull_native, &qword_27D9BF358, &qword_22C922618, MEMORY[0x277D1E968], MEMORY[0x277D1E968], v227, v228, v229, v230, v231, v232);

          v281 = v286;
          sub_22C36BA4C(&v259);
          v222(v247, v241);
          sub_22C36BA4C(&v285);
          v223(v246, v240);
          sub_22C36BA4C(&v284);
          v224(v245, v239);
          sub_22C36BA4C(&v283);
          v225(v244, v238);
          sub_22C6343E4();
          v226(v242, v67);
          sub_22C6348BC();
          v123 = v279;
        }
      }

      v165 = *(v130 + 56);
      v283 = *(v271 + 72);
      v166 = *(v271 + 16);
      v167 = v274;
      v166(v248, v165 + v283 * v132, v274);
      v168 = sub_22C38C41C();
      v169(v168, v277);
      v166(v249, v248, v167);
      v170 = v281;
      swift_isUniquelyReferenced_nonNull_native();
      v286 = v170;
      sub_22C3736B4();
      sub_22C36E5AC(v282, v129, v171, sub_22C36EF04);
      sub_22C369DA4();
      if (__OFADD__(v174, v175))
      {
        goto LABEL_70;
      }

      v67 = v172;
      v176 = v173;
      sub_22C3A5908(&qword_27D9BF358, &qword_22C922618);
      if (sub_22C90B15C())
      {
        sub_22C3736B4();
        v177 = v282;
        v178 = sub_22C634768();
        v182 = sub_22C36E5AC(v178, v179, v180, v181);
        if ((v176 & 1) != (v183 & 1))
        {
          goto LABEL_73;
        }

        v67 = v182;
        if (v176)
        {
LABEL_48:

          v281 = v286;
          v192 = v286[7] + v67 * v283;
          sub_22C36BA4C(&a18);
          sub_22C634700();
          v193();
          sub_22C6343E4();
          v194(v248, v67);
          goto LABEL_49;
        }
      }

      else
      {
        v177 = v282;
        if (v176)
        {
          goto LABEL_48;
        }
      }

      v184 = v286;
      sub_22C36ED48(&v286[v67 >> 6]);
      v185 = (v184[6] + 16 * v67);
      *v185 = v177;
      v185[1] = v129;
      v186 = v184[7] + v67 * v283;
      v187 = *v280;
      sub_22C634700();
      v188();
      sub_22C6343E4();
      v189(v248, v67);
      sub_22C634804();
      if (v191)
      {
        goto LABEL_71;
      }

      v281 = v184;
      v184[2] = v190;
LABEL_49:
      sub_22C6348BC();
      v123 = v279;
    }
  }

  v250 = v32;
  v286 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v88 = v286;
  v91 = sub_22C4AAD90(v23);
  v92 = 0;
  v93 = v23 + 64;
  v266 = v60 + 2;
  v265 = v67 + 16;
  v264 = v60 + 4;
  v263 = v67 + 32;
  v260 = v89;
  v258 = v23 + 72;
  v261 = v87;
  v262 = v23 + 64;
  v94 = v273;
  while (1)
  {
    if (v91 < 0 || v91 >= 1 << *(v23 + 32))
    {
      goto LABEL_64;
    }

    if ((*(v93 + 8 * (v91 >> 6)) & (1 << v91)) == 0)
    {
      break;
    }

    if (*(v23 + 36) != v89)
    {
      goto LABEL_66;
    }

    v280 = 1 << v91;
    v281 = v91 >> 6;
    v278 = v92;
    v279 = v89;
    LODWORD(v276) = v90;
    v95 = *(v94 + 48);
    (v60[2])(v272, *(v23 + 48) + v60[9] * v91, v277);
    v96 = *(v23 + 56);
    v283 = v91;
    v284 = v88;
    (*(v271 + 16))(v272 + v95, v96 + *(v271 + 72) * v91, v274);
    v282 = v60[4];
    v97 = sub_22C372FCC();
    v98(v97);
    v99 = *(v271 + 32);
    v99(v267 + *(v94 + 48), v272 + v95, v274);
    sub_22C3D3364();
    v100 = *(v94 + 48);
    v101 = sub_22C37335C();
    v282(v101);
    v99(v269 + v100, v268 + v100, v274);
    v102 = sub_22C9069AC();
    v104 = v103;
    sub_22C3AC228(v269, &qword_27D9BF110, &unk_22C922580);
    v105 = sub_22C372280();
    sub_22C3AC228(v105, v106, &unk_22C922580);
    v286 = v88;
    v107 = *(v88 + 16);
    if (v107 >= *(v88 + 24) >> 1)
    {
      sub_22C3B5E2C();
      v88 = v286;
    }

    *(v88 + 16) = v107 + 1;
    v108 = v88 + 16 * v107;
    *(v108 + 32) = v102;
    *(v108 + 40) = v104;
    v23 = v275;
    v91 = 1 << *(v275 + 32);
    if (v283 >= v91)
    {
      goto LABEL_67;
    }

    v93 = v262;
    v109 = *(v262 + 8 * v281);
    if ((v109 & v280) == 0)
    {
      goto LABEL_68;
    }

    if (*(v275 + 36) != v279)
    {
      goto LABEL_69;
    }

    v110 = v109 & (-2 << (v283 & 0x3F));
    if (v110)
    {
      v91 = __clz(__rbit64(v110)) | v283 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v111 = v281 << 6;
      v112 = v281 + 1;
      v113 = (v258 + 8 * v281);
      while (v112 < (v91 + 63) >> 6)
      {
        v115 = *v113++;
        v114 = v115;
        v111 += 64;
        ++v112;
        if (v115)
        {
          sub_22C3A5038(v283, v279, v276 & 1);
          v91 = __clz(__rbit64(v114)) + v111;
          goto LABEL_19;
        }
      }

      sub_22C3A5038(v283, v279, v276 & 1);
    }

LABEL_19:
    v90 = 0;
    v92 = v278 + 1;
    v89 = v260;
    v60 = v270;
    if (v278 + 1 == v261)
    {
      v67 = v271;
      v32 = v250;
      goto LABEL_21;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C61D6B4()
{
  sub_22C370030();
  v93 = v1;
  v80[1] = v2;
  v84 = v3;
  v4 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v90 = v8;
  sub_22C36BA0C();
  v89 = sub_22C901FAC();
  v9 = sub_22C369824(v89);
  v92 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v91 = v14 - v13;
  v15 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  sub_22C36BA0C();
  v19 = sub_22C9093BC();
  v20 = sub_22C369824(v19);
  v87 = v21;
  v88 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C3A5908(&qword_27D9BF478, &qword_22C922738);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C36D5B4();
  v81 = v31;
  v32 = sub_22C3A5908(&qword_27D9BF480, &qword_22C922740);
  v33 = sub_22C36985C(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  v80[0] = v36;
  sub_22C369930();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v80 - v39;
  MEMORY[0x28223BE20](v38);
  sub_22C385F64();
  MEMORY[0x28223BE20](v41);
  v43 = (v80 - v42);
  sub_22C36E644();
  sub_22C3D3364();
  v44 = *v43;
  v82 = v43[1];
  v83 = v44;
  v85 = v43;
  sub_22C50B478();
  sub_22C3D3364();
  v45 = *(v0 + 8);

  v46 = *(v32 + 48);
  v86 = v26;
  sub_22C90207C();
  v47 = sub_22C90221C();
  sub_22C36985C(v47);
  v49 = *(v48 + 8);
  v50 = v48 + 8;
  v51 = v0 + v46;
  v52 = v84;
  v49(v51, v47);
  sub_22C3D3364();
  v53 = *(v40 + 1);

  v54 = *(v32 + 48);
  sub_22C9021EC();
  v94 = v49;
  v49(&v40[v54], v47);
  v80[2] = v50;
  if (v52)
  {
    v55 = v80[0];
    sub_22C3D3364();
    v56 = *v55;
    v57 = v55[1];
    v58 = *(v32 + 48);
    sub_22C633F60();
    v59 = v90;
    sub_22C38B324(v52, v60, v90);

    v94(v55 + v58, v47);
    v61 = sub_22C37EF1C();
    v62 = v89;
    if (sub_22C370B74(v61, v63, v89) != 1)
    {
      v65 = v91;
      v64 = v92;
      sub_22C51E3FC();
      v66(v65, v59, v62);
      goto LABEL_7;
    }
  }

  else
  {
    v62 = v89;
    v59 = v90;
    sub_22C36A748();
    sub_22C36C640(v67, v68, v69, v62);
  }

  v65 = v91;
  sub_22C9068FC();
  v70 = sub_22C37EF1C();
  v72 = sub_22C370B74(v70, v71, v62);
  v64 = v92;
  if (v72 != 1)
  {
    sub_22C3AC228(v59, &qword_27D9BC030, &unk_22C911CC0);
  }

LABEL_7:
  v73 = *(v32 + 48);
  v74 = v81;
  (*(v87 + 32))(v81, v86, v88);
  v75 = type metadata accessor for ActionParameterValue(0);
  v76 = *(v75 + 20);
  sub_22C3D3310();
  (*(v64 + 32))(v74 + *(v75 + 24), v65, v62);
  v77 = sub_22C37049C();
  sub_22C36C640(v77, v78, v79, v75);
  sub_22C603848(v74, v83, v82);
  v94(v85 + v73, v47);
  sub_22C36FB20();
}

uint64_t sub_22C61DBA0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - v13;
  v15 = *a1;
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = _s5TupleVMa(0);
  v17 = *(a2 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v15 + *(v16 + 24));

  sub_22C605CD4(a3, v17, MEMORY[0x277D1E968]);

  v18 = sub_22C908C5C();
  if (sub_22C370B74(v14, 1, v18) != 1)
  {
    return (*(*(v18 - 8) + 32))(a5, v14, v18);
  }

  sub_22C3AC228(v14, &qword_27D9BB628, &unk_22C920580);
  type metadata accessor for InterpreterError();
  sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  v19 = swift_allocError();
  v21 = v20;
  v28 = sub_22C9069AC();
  v29 = v22;
  MEMORY[0x2318B7850](14906, 0xE200000000000000);
  v26 = sub_22C90697C();
  v27 = v23 & 1;
  sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
  v24 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v24);

  v25 = v29;
  *v21 = v28;
  v21[1] = v25;
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
  *a4 = v19;
  return result;
}

uint64_t sub_22C61DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a2;
  v8[7] = a4;
  v8[5] = a1;
  v9 = sub_22C90855C();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_22C90654C();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v15 = sub_22C90880C();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();
  v18 = *(*(sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v19 = sub_22C9070DC();
  v8[22] = v19;
  v20 = *(v19 - 8);
  v8[23] = v20;
  v21 = *(v20 + 64) + 15;
  v8[24] = swift_task_alloc();
  v22 = *(*(sub_22C3A5908(&qword_27D9BF4A8, &unk_22C922770) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v23 = sub_22C90672C();
  v8[27] = v23;
  v24 = *(v23 - 8);
  v8[28] = v24;
  v25 = *(v24 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v26 = sub_22C9093BC();
  v8[31] = v26;
  v27 = *(v26 - 8);
  v8[32] = v27;
  v28 = *(v27 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v29 = sub_22C90906C();
  v8[36] = v29;
  v30 = *(v29 - 8);
  v8[37] = v30;
  v31 = *(v30 + 64) + 15;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v32 = *(type metadata accessor for ActionParameterValue(0) - 8);
  v8[40] = v32;
  v33 = *(v32 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v34 = sub_22C901FAC();
  v8[43] = v34;
  v35 = *(v34 - 8);
  v8[44] = v35;
  v36 = *(v35 + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v37 = *(*(sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60) - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v38 = sub_22C908EAC();
  v8[49] = v38;
  v39 = *(v38 - 8);
  v8[50] = v39;
  v40 = *(v39 + 64) + 15;
  v8[51] = swift_task_alloc();
  v41 = sub_22C9063DC();
  v8[52] = v41;
  v42 = *(v41 - 8);
  v8[53] = v42;
  v43 = *(v42 + 64) + 15;
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C61E3DC, 0, 0);
}

void sub_22C61E3DC()
{
  v441 = v0;
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  v5 = v0[7];
  sub_22C903F8C();
  v6 = *(v3 + 16);
  v7 = sub_22C36D39C();
  v8(v7);
  v9 = sub_22C9063CC();
  v10 = sub_22C90AABC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[55];
  v14 = v0[52];
  v13 = v0[53];
  v16 = v0[50];
  v15 = v0[51];
  v17 = &unk_22C90D000;
  v438 = v0;
  v18 = v0[49];
  if (v11)
  {
    sub_22C36FB44();
    v431 = v14;
    v19 = sub_22C388D58();
    v440[0] = v19;
    *v12 = 136315138;
    v20 = v10;
    v21 = sub_22C908E7C();
    v23 = v22;
    v24 = *(v16 + 8);
    v25 = sub_22C379FC8();
    v26(v25);
    v27 = sub_22C36F9F4(v21, v23, v440);
    v17 = &unk_22C90D000;

    *(v12 + 4) = v27;
    sub_22C5CD33C(&dword_22C366000, v9, v20, "Resolving client action %s");
    sub_22C36FF94(v19);
    sub_22C3699EC();
    sub_22C370510();

    v30 = *(v13 + 8);
    v29 = v13 + 8;
    v28 = v30;
    v30(v12, v431);
  }

  else
  {

    v31 = *(v16 + 8);
    v32 = sub_22C379FC8();
    v33(v32);
    v34 = *(v13 + 8);
    v29 = v13 + 8;
    v28 = v34;
    v35 = sub_22C50B578();
    v34(v35, v36);
  }

  v37 = v438;
  v438[56] = v29;
  v438[57] = v28;
  v38 = v438[8];
  v39 = *(v38 + 32);
  *(v438 + 588) = v39;
  v40 = 1 << v39;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v38 + 64);
  *(v438 + 142) = *MEMORY[0x277D729E0];
  *(v438 + 143) = *MEMORY[0x277D1DAA8];
  *(v438 + 144) = *MEMORY[0x277D1DEE8];
  *(v438 + 145) = *MEMORY[0x277D1DBA0];
  *(v438 + 146) = *MEMORY[0x277D1DBA8];

  v43 = v42;
  v44 = 0;
  v45 = MEMORY[0x277D84F98];
  *(&v46 + 1) = 2;
  v408 = xmmword_22C90F800;
  *&v46 = v17[4];
  v406 = v46;
LABEL_8:
  v37[58] = v45;
  if (!v43)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v47 = v37[8];
LABEL_14:
    v416 = v44;
    v49 = v37[46];
    v50 = v37[47];
    v51 = v37[43];
    v52 = v37[44];
    v53 = (v43 - 1) & v43;
    v54 = (*(v47 + 48) + 16 * (__clz(__rbit64(v43)) | (v44 << 6)));
    v56 = *v54;
    v55 = v54[1];
    v57 = sub_22C633D88(*(v47 + 56));
    v58(v57);
    v59 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v60 = *(v59 + 48);
    *v50 = v56;
    v50[1] = v55;
    v61 = *(v52 + 32);
    sub_22C37275C();
    v62();
    v63 = sub_22C3726A4();
    v64 = v59;
    v37 = v438;
    sub_22C36C640(v63, v65, v66, v64);
    v44 = v416;

LABEL_15:
    v37[59] = v53;
    v37[60] = v44;
    v410 = v53;
    v67 = v37[47];
    v68 = v37[48];
    sub_22C3D3310();
    v69 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v70 = sub_22C36CCF8();
    sub_22C36D0A8(v70, v71, v69);
    if (v72)
    {
      v395 = v37[58];
      v397 = v37[55];
      v399 = v37[54];
      v401 = v37[51];
      v403 = v37[48];
      v405 = v37[47];
      v308 = v37;
      v309 = v37[46];
      v310 = v308[44];
      v407 = v308[45];
      v311 = v308[43];
      v409 = v308[42];
      v411 = v308[41];
      v413 = v308[39];
      v415 = v308[38];
      v418 = v308[35];
      v419 = v308[34];
      v421 = v308[33];
      v422 = v308[30];
      v423 = v308[29];
      v426 = v308[26];
      v428 = v308[25];
      v430 = v308[24];
      v433 = v308[21];
      v437 = v308[20];
      v439 = v308[17];
      v312 = v308[13];
      v313 = v308[14];
      v393 = v308[12];
      v314 = v308[7];
      v315 = v308[8];
      v316 = v308[5];
      v317 = v308[6];

      v318 = *(v310 + 16);
      v319 = sub_22C6344C4();
      v320(v319);
      sub_22C908E7C();
      sub_22C634100();
      (*(v312 + 104))(v313, *MEMORY[0x277D1E558], v393);

      sub_22C36FC2C();
      sub_22C9085BC();
      type metadata accessor for StepResolution();
      sub_22C633E0C();
      swift_storeEnumTagMultiPayload();

      sub_22C369C50();
      sub_22C37BEB8();

      __asm { BRAA            X1, X16 }
    }

    v73 = v37[48];
    v75 = v37[44];
    v74 = v37[45];
    v76 = v37[43];
    v77 = v37[9];
    v78 = *v73;
    v37[61] = *v73;
    v79 = v73[1];
    v37[62] = v79;
    sub_22C634484(v73);
    v80();
    v412 = v79;
    v414 = v78;
    if (!*(v77 + 16))
    {
      break;
    }

    v81 = v37[9];
    sub_22C3736B4();
    v82 = sub_22C36A724();
    sub_22C36E5AC(v82, v83, v84, v85);
    if ((v86 & 1) == 0)
    {
      break;
    }

    v417 = v44;
    v87 = *(v37 + 142);
    v88 = v37[41];
    v89 = v37[42];
    v90 = v37[35];
    v91 = v37[31];
    v92 = v37[32];
    v93 = *(v37[9] + 56);
    v94 = *(v37[40] + 72);
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C633AE8();
    sub_22C36BA00();
    sub_22C630194();
    v95 = *(v92 + 16);
    sub_22C44178C();
    v432 = v97;
    v434 = v96;
    v97();
    v98 = *(v92 + 88);
    v99 = sub_22C36D264();
    v424 = v100;
    if (v100(v99) != v87)
    {
      (*(v37[32] + 8))(v37[35], v37[31]);
LABEL_34:
      v181 = v37[58];
      v182 = *(v37 + 146);
      v183 = v37[42];
      v184 = v37[31];
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v185 = v37;
      v186 = sub_22C63464C();
      sub_22C369824(v186);
      v188 = *(v187 + 72);
      sub_22C6341F0();
      v189 = sub_22C6349A0();
      *(v189 + 16) = v408;
      sub_22C38AA18();
      v432();
      v190 = sub_22C634830();
      v191(v190);
      swift_isUniquelyReferenced_nonNull_native();
      v37[3] = v181;
      sub_22C3736B4();
      v192 = v414;
      sub_22C634A00(v193, v194, v195, sub_22C36EF04);
      sub_22C369DA4();
      v198 = (v196 + v197);
      if (!__OFADD__(v196, v197))
      {
        sub_22C50B5FC();
        sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C634424())
        {
          v199 = v185[3];
          sub_22C3736B4();
          sub_22C634A00(v200, v201, v202, sub_22C36EF04);
          sub_22C388D48();
          if (!v72)
          {
            goto LABEL_70;
          }

          v182 = v203;
        }

        v205 = v185[44];
        v204 = v185[45];
        v207 = v185[42];
        v206 = v185[43];
        if (v183)
        {

          v45 = v185[3];
          sub_22C63423C();
          sub_22C633A4C();
          sub_22C62E9E0(v207, v208);
          v209 = *(v205 + 8);
          v210 = sub_22C372164();
          v211(v210);
          v37 = v185;
          goto LABEL_66;
        }

        v45 = v185[3];
        sub_22C6343BC();
        sub_22C380584(v212);
        *v213 = v414;
        v213[1] = v214;
        *(*(v45 + 56) + 8 * v182) = v189;
        sub_22C633A4C();
        sub_22C62E9E0(v207, v215);
        v216 = *(v205 + 8);
        v217 = sub_22C372164();
        v218(v217);
        sub_22C6341D8();
        if (!v220)
        {
          *(v45 + 16) = v219;
          v37 = v438;
          goto LABEL_66;
        }

        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_83;
    }

    v101 = v37[45];
    v102 = v37[39];
    v103 = v37[36];
    v104 = v37[37];
    v105 = v37[35];
    v106 = v37[31];
    v107 = v37[32];
    v108 = v37[26];
    v109 = v37[27];
    v110 = v37;
    v111 = v37[11];
    v112 = v110[10];
    v420 = *(v107 + 96);
    v420(v105, v106);
    v113 = *v105;
    swift_projectBox();
    v114 = sub_22C6343FC();
    v115(v114);

    sub_22C621FD0();
    sub_22C63472C();
    sub_22C62242C(v116, v117, v118, v119);

    sub_22C36D0A8(v108, 1, v109);
    if (!v72)
    {
      v264 = v110[58];
      v436 = *(v110 + 145);
      v265 = v110[30];
      v267 = v110[27];
      v266 = v110[28];
      v268 = v110[26];
      v269 = sub_22C633DEC();
      v270(v269);
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v271 = sub_22C63464C();
      sub_22C369824(v271);
      v273 = *(v272 + 72);
      v274 = sub_22C633CC8();
      v282 = sub_22C633C24(v274, v275, v276, v277, v278, v279, v280, v281, v391, v392, v394, v396, v398, v400, v402, v404, v406, *(&v406 + 1), *&v408);
      v283(v282);
      v284 = sub_22C6346D4();
      v285(v284);
      swift_isUniquelyReferenced_nonNull_native();
      v110[4] = v264;
      sub_22C3736B4();
      sub_22C36E5AC(v414, v412, v286, sub_22C36EF04);
      sub_22C369DA4();
      if (!__OFADD__(v287, v288))
      {
        sub_22C50B5FC();
        sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C634424())
        {
          v289 = v110[4];
          sub_22C3736B4();
          sub_22C36E5AC(v414, v412, v290, sub_22C36EF04);
          sub_22C388D48();
          if (!v72)
          {
LABEL_70:
            sub_22C37BEB8();

            sub_22C90B54C();
            return;
          }

          v291 = v110;
        }

        else
        {
          v291 = v110;
        }

        v45 = v291[4];
        if (v265)
        {
          sub_22C63423C();

          goto LABEL_64;
        }

        sub_22C6343BC();
        sub_22C380584(v292);
        sub_22C633E58(v293);
        if (!v220)
        {
          *(v45 + 16) = v294;
LABEL_64:
          v296 = v291[44];
          v295 = v291[45];
          v298 = v291[42];
          v297 = v291[43];
          v299 = v291[39];
          v300 = v291[37];
          v301 = v438[36];
          (*(v438[28] + 8))(v438[30], v438[27]);
          v302 = *(v300 + 8);
          v303 = sub_22C36ECB4();
          v37 = v438;
          v304(v303);
          sub_22C633A4C();
          sub_22C62E9E0(v298, v305);
LABEL_65:
          v306 = sub_22C381704();
          v307(v306);
LABEL_66:
          v43 = v37[59];
          v44 = v37[60];
          goto LABEL_8;
        }

LABEL_93:
        __break(1u);
        return;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v120 = v110[39];
    sub_22C3AC228(v110[26], &qword_27D9BF4A8, &unk_22C922770);
    v121 = sub_22C90905C();
    v122 = 0;
    v429 = *(v121 + 16);
    while (v429 != v122)
    {
      v37 = v438;
      if (v122 >= *(v121 + 16))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v123 = *(v438 + 142);
      v124 = v438[33];
      v125 = v438[34];
      v126 = v438[31];
      sub_22C47278C(v438[32]);
      (v432)(v125, v121 + v127 + *(v128 + 72) * v122, v126);
      v129 = sub_22C36BA00();
      (v432)(v129);
      v130 = sub_22C36BAFC();
      v131 = v424(v130);
      v132 = v438[36];
      v133 = v438[37];
      v134 = v438[33];
      v135 = v438[34];
      v136 = v438[31];
      v137 = v438[32];
      if (v131 != v123)
      {
        v176 = v438[39];

        v177 = *(v137 + 8);
        v178 = sub_22C377B94();
        v177(v178);
        v179 = v176;
        v37 = v438;
        (*(v133 + 8))(v179, v132);
        v180 = sub_22C36BBCC();
        v177(v180);
        goto LABEL_34;
      }

      v138 = v438[38];
      v139 = sub_22C36BBCC();
      (v420)(v139);
      v140 = *v134;
      swift_projectBox();
      v141 = sub_22C6345E8();
      v142(v141);

      sub_22C90905C();
      v143 = *(v133 + 8);
      ++v122;
      v144 = sub_22C372FCC();
      v143(v144);
      v145 = *(v137 + 8);
      v110 = (v137 + 8);
      v146 = sub_22C377B94();
      v147(v146);
      sub_22C634714();

      if (v136)
      {
        v37 = v438;
        (v143)(v438[39], v438[36]);

        goto LABEL_34;
      }
    }

    v37 = v438;
    v148 = v438[54];

    sub_22C903F8C();

    v149 = sub_22C9063CC();
    v150 = sub_22C90AABC();

    os_log_type_enabled(v149, v150);
    sub_22C634284();
    v151 = v438[36];
    v152 = v438[37];
    v425 = v151;
    v427 = v438[39];
    if (v153)
    {
      sub_22C36FB44();
      v154 = sub_22C388D58();
      *v110 = sub_22C6344B4(v154, v155, v156, v157, v158, v159, v160, v161, v391, v392, v394, v396, v398, v400, v402, v404, v406).n128_u32[0];
      v162 = sub_22C36F9F4(v414, v412, v440);

      *(v110 + 4) = v162;
      v37 = v438;
      sub_22C5CD33C(&dword_22C366000, v149, v150, "Ignoring empty collections when resolving client action parameters for: %s");
      sub_22C36FF94(v148);
      sub_22C37E124();
      sub_22C370510();

      v163 = sub_22C36BAFC();
      (v432)(v163);
      (*(v152 + 8))(v427, v425);
      sub_22C633A4C();
      sub_22C62E9E0(v434, v164);
      (*(v122 + 8))(v148, v110);
    }

    else
    {

      v170 = sub_22C36BAFC();
      (v432)(v170);
      (*(v152 + 8))(v427, v425);
      sub_22C633A4C();
      sub_22C62E9E0(v434, v171);
      v172 = *(v122 + 8);
      v173 = sub_22C38644C();
      v175(v173, v174);
    }

    v44 = v417;
    v43 = v410;
    if (!v410)
    {
LABEL_10:
      while (1)
      {
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_74;
        }

        if (v48 >= (((1 << *(v37 + 588)) + 63) >> 6))
        {
          v165 = v37[47];
          sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
          v166 = sub_22C3702F4();
          sub_22C36C640(v166, v167, v168, v169);
          v53 = 0;
          goto LABEL_15;
        }

        v47 = v37[8];
        v43 = *(v47 + 8 * v48 + 64);
        ++v44;
        if (v43)
        {
          v44 = v48;
          goto LABEL_14;
        }
      }
    }
  }

  v221 = v37[27];
  v222 = v37[11];
  sub_22C62242C(v37[45], MEMORY[0x277D84F90], v37[10], v37[25]);
  v223 = sub_22C383C3C();
  sub_22C36D0A8(v223, v224, v221);
  if (!v72)
  {
    v225 = v37[58];
    v435 = *(v37 + 145);
    v227 = v37[28];
    v226 = v37[29];
    v228 = v37[27];
    v229 = v37[25];
    v230 = sub_22C633DEC();
    v231(v230);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v232 = sub_22C63464C();
    sub_22C369824(v232);
    v234 = v233;
    v236 = *(v235 + 72);
    v237 = sub_22C633CC8();
    v245 = sub_22C633C24(v237, v238, v239, v240, v241, v242, v243, v244, v391, v392, v394, v396, v398, v400, v402, v404, v406, *(&v406 + 1), *&v408);
    v246(v245);
    (*(v234 + 104))(v237 + v53, v435, v232);
    swift_isUniquelyReferenced_nonNull_native();
    v37[2] = v225;
    sub_22C3736B4();
    v247 = sub_22C37F8AC();
    sub_22C36E5AC(v247, v248, v249, v250);
    sub_22C369DA4();
    if (__OFADD__(v251, v252))
    {
      goto LABEL_90;
    }

    sub_22C50B5FC();
    sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C634424())
    {
      v253 = v37[2];
      sub_22C3736B4();
      v254 = sub_22C37F8AC();
      sub_22C36E5AC(v254, v255, v256, v257);
      sub_22C388D48();
      if (!v72)
      {
        goto LABEL_70;
      }
    }

    v45 = v37[2];
    if (v226)
    {
      sub_22C63423C();
    }

    else
    {
      sub_22C6343BC();
      sub_22C380584(v258);
      sub_22C633E58(v259);
      if (v220)
      {
        goto LABEL_91;
      }

      *(v45 + 16) = v260;
    }

    v262 = v37[44];
    v261 = v37[45];
    v263 = v37[43];
    (*(v37[28] + 8))(v37[29], v37[27]);
    goto LABEL_65;
  }

LABEL_75:
  v324 = v37[45];
  v325 = v37[25];
  v327 = v37[21];
  v326 = v37[22];
  v328 = v37;
  v329 = v37[20];
  v331 = v328[18];
  v330 = v328[19];
  v332 = v328[10];
  sub_22C3AC228(v325, &qword_27D9BF4A8, &unk_22C922770);
  sub_22C90878C();
  v333 = sub_22C63417C();
  sub_22C646D68(v333, v334, v335, v336, v337, v338, v339, v340, v391, v392, v394, v396, v398, v400, v402, v404, v406, *(&v406 + 1), v408.n128_i64[0], v408.n128_i64[1]);
  v341 = *(v330 + 8);
  v342 = sub_22C36CA88();
  v343(v342);
  sub_22C376738(v327);
  if (v72)
  {
    sub_22C3AC228(v328[21], &qword_27D9BAA18, &qword_22C911C40);
    v198 = v328;
    goto LABEL_85;
  }

  v344 = *(v328 + 143);
  v345 = v328[24];
  v346 = v328[21];
  v347 = v328[22];
  v349 = v328[16];
  v348 = v328[17];
  v350 = v328[15];
  v351 = sub_22C36CB30(v328[23]);
  v352(v351);
  sub_22C90702C();
  v353 = *(v349 + 88);
  v354 = sub_22C36BAFC();
  v356 = v355(v354);
  v198 = v328;
  if (v356 != v344)
  {
    v374 = v328[16];
    v373 = v328[17];
    v375 = v328[15];
    (*(v328[23] + 8))(v328[24], v328[22]);
    v376 = sub_22C381704();
    goto LABEL_84;
  }

  v357 = *(v328 + 144);
  v358 = v328[17];
  v359 = v328[15];
  v360 = sub_22C634528(v328[16]);
  v361(v360);
  v362 = sub_22C906F2C();
  sub_22C3699C8(v362);
  v192 = v363;
  v364 = *(v363 + 88);
  v365 = sub_22C36BA00();
  if (v366(v365) == v357)
  {
    v367 = v328[17];
    v368 = *(v192 + 96);
    v369 = sub_22C36BA00();
    v370(v369);
    v328[63] = *v367;
    v371 = swift_task_alloc();
    v328[64] = v371;
    *v371 = v328;
    sub_22C36EDAC(v371);
    v372 = v328[11];
    sub_22C633FC0(v328[10]);
    goto LABEL_86;
  }

LABEL_83:
  v378 = v198[17];
  (*(v198[23] + 8))(v198[24], v198[22]);
  v379 = *(v192 + 8);
  v376 = sub_22C36BA00();
LABEL_84:
  v377(v376);
LABEL_85:
  v381 = v198[44];
  v380 = v198[45];
  v382 = v198[43];
  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
  v383 = sub_22C633EBC();
  v198[67] = v383;
  v384 = sub_22C380174(v383, v408);
  v385(v384);
  v386 = swift_task_alloc();
  v198[68] = v386;
  *v386 = v198;
  sub_22C375F64(v386);
  v387 = v198[11];
  sub_22C6344D4(v198[10]);
LABEL_86:
  sub_22C37BEB8();

  sub_22C6230EC(v388, v389);
}