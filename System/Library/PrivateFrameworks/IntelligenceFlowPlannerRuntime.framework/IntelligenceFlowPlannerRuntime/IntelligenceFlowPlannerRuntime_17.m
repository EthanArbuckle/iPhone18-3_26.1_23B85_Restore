void *sub_22C4CF120()
{
  sub_22C3727F4();
  v1 = _s14EchoComponentsVMa();
  v2 = *(v1 + 88);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CF1B8(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4CF1B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14EchoComponentsVMa();
  v49 = *(v9 + 24);
  v10 = *(a1 + v49);
  v11 = type metadata accessor for SpanEventPromptGenerator_v4_0();
  *(a2 + 24) = v11;
  *(a2 + 32) = &off_283FBA3F0;
  v12 = sub_22C36D548(a2);

  sub_22C90718C();

  v13 = v12 + *(v11 + 20);
  sub_22C4CCDE0();
  v14 = *(v9 + 44);
  sub_22C4D0C60(a1 + v14, v8, type metadata accessor for FullPlannerPreferences);
  v15 = *(v5 + 64);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v48 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D0CC0(v8, type metadata accessor for FullPlannerPreferences);
  *(v12 + *(v11 + 24)) = v50[0];
  v16 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  *(a2 + 64) = v16;
  *(a2 + 72) = &off_283FBA978;
  v17 = sub_22C36D548((a2 + 40));
  sub_22C4CCDE0();
  sub_22C4D0C60(a1 + v14, v8, type metadata accessor for FullPlannerPreferences);
  v18 = *(v5 + 80);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D0CC0(v8, v48);
  v19 = v50[0];
  v17[37] = &type metadata for ContextReferenceReducer_v5;
  v17[38] = sub_22C4D0C0C();
  v17[34] = v19;
  sub_22C4D0C60(a1 + v14, v17 + *(v16 + 28), type metadata accessor for FullPlannerPreferences);
  *(v17 + 312) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v20 = swift_allocObject();
  *(a2 + 80) = v20;
  *(v20 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v20 + 48) = &off_283FB8638;
  v21 = v49;
  v22 = *(a1 + v49);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v23 = swift_allocObject();
  *(a2 + 120) = v23;
  v23[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v23[6] = &off_283FB84F8;
  sub_22C36D548(v23 + 2);

  sub_22C90718C();

  v24 = *(a1 + v21);
  v25 = type metadata accessor for ExpressionParser_v1_0();
  v23[10] = v25;
  v23[11] = &off_283FB8460;
  v26 = sub_22C36D548(v23 + 7);
  v27 = v25[5];

  sub_22C90718C();

  sub_22C4CCDE0();
  sub_22C378A4C(&v51, v26 + v25[6]);
  sub_22C3DF2E8(v50);
  v28 = v26 + v25[7];
  sub_22C4CC86C();
  v29 = v26 + v25[8];
  *(v29 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v29 + 4) = &off_283FB8298;
  v30 = v26 + v25[9];
  *(v30 + 3) = &type metadata for RenderingArbiter_v5_0;
  *(v30 + 4) = &off_283FBA498;
  v31 = v26 + v25[10];
  sub_22C4CCC7C();
  v32 = v26 + v25[11];
  sub_22C4CCB94();
  *v26 = 1;
  v23[15] = &type metadata for RenderingArbiter_v5_0;
  v23[16] = &off_283FBA498;
  v33 = *(a1 + v21);
  v34 = type metadata accessor for StatementResultParser_v2_0();
  *(a2 + 184) = v34;
  *(a2 + 192) = &off_283FB97F8;
  v35 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v36 = v35 + *(v34 + 20);
  sub_22C4CCDE0();
  v37 = *(a1 + v21);
  v38 = (v35 + *(v34 + 24));
  v39 = type metadata accessor for StatementResultParser_v1_0();
  v38[3] = v39;
  v38[4] = &off_283FB86D8;
  v40 = sub_22C36D548(v38);

  sub_22C90718C();

  v41 = v40 + *(v39 + 20);
  sub_22C4CCDE0();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v42 = *(a1 + v21);
  v43 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v43;
  *(a2 + 312) = &off_283FB4130;
  v44 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v45 = v44 + *(v43 + 20);
  sub_22C4CCDE0();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

uint64_t sub_22C4CF730@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v47 = a2;
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v44 - v9;
  v10 = sub_22C90077C();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v13;
  v14 = sub_22C908AEC();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s14EchoComponentsVMa();
  v19 = v18[6];
  v20 = *(a1 + v19);

  v53 = v17;
  sub_22C90718C();

  sub_22C4CF120();
  sub_22C4CCDE0();
  v21 = type metadata accessor for ToolFetcher(0);
  v64 = v21;
  v65 = &off_283FB6BE0;
  v22 = sub_22C36D548(&v63);
  sub_22C4CC964(v22);
  v23 = *(a1 + v19);
  v24 = *(v21 + 20);

  sub_22C90718C();

  sub_22C4CCC7C();
  sub_22C4CCDE0();
  v25 = *(a1 + v19);
  v26 = *(v68 + 16);
  v27 = a1 + v18[5];
  v52 = v10;
  v26(v13, v27, v10);
  v28 = v18[13];
  v29 = (a1 + v18[12]);
  v31 = v29[1];
  v33 = v29[2];
  v32 = v29[3];
  v56 = *v29;
  v30 = v56;
  v57 = v31;
  v58 = v33;
  v59 = v32;
  v34 = v49;
  sub_22C3E8FB4(a1 + v28, v49, &qword_27D9BB738, &unk_22C9185A0);
  v35 = v18[11];
  v36 = v34;
  v45 = v35;
  v37 = v50;
  sub_22C4D0C60(a1 + v35, v50, type metadata accessor for FullPlannerPreferences);

  v38 = v48;
  sub_22C4C7C38(v30, v31, v33);
  v39 = v51;
  sub_22C53A7F4(v60, v25, v38, &v56, v36, v37, v61);

  sub_22C4D0CC0(v37, type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v36, &qword_27D9BB738, &unk_22C9185A0);
  sub_22C4CBAA8(v56, v57, v58);
  (*(v68 + 8))(v38, v52);
  sub_22C3DF2E8(v60);
  if (v39)
  {
    sub_22C36FF94(v62);
    sub_22C3DF2E8(v66);
    sub_22C4D0BB8(v67);
    (*(v54 + 8))(v53, v55);
    result = sub_22C36FF94(&v63);
    *v47 = v39;
  }

  else
  {
    v41 = type metadata accessor for ConversationParser_v1_0();
    v42 = v46;
    v46[3] = v41;
    v42[4] = &off_283FB83D0;
    v43 = sub_22C36D548(v42);
    sub_22C4D0C60(a1 + v45, v43 + v41[12], type metadata accessor for FullPlannerPreferences);
    (*(v54 + 32))(v43, v53, v55);
    memcpy(v43 + v41[5], v67, 0x190uLL);
    memcpy(v43 + v41[6], v66, 0x110uLL);
    sub_22C36C730(&v63, v43 + v41[7]);
    sub_22C36C730(v62, v43 + v41[8]);
    result = sub_22C36C730(v61, v43 + v41[9]);
    *(v43 + v41[10]) = 0;
    *(v43 + v41[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4CFC84()
{
  sub_22C3727F4();
  v2 = v1 + *(_s14EchoComponentsVMa() + 96);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v5 = *v2;
    v6 = v3;
    v7 = *(v2 + 32);
  }

  if (*(&v6 + 1))
  {
    return sub_22C36C730(&v5, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  return sub_22C378A4C(v0, v2);
}

void sub_22C4CFD28()
{
  sub_22C3727F4();
  v2 = v1 + *(_s14EchoComponentsVMa() + 100);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4CBB7C(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4CFE10()
{
  sub_22C3727F4();
  v2 = *(_s14EchoComponentsVMa() + 104);
  sub_22C3E8FB4(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_22C4CFFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_22C4CCDE0();
  v10 = _s14EchoComponentsVMa();
  v11 = a1 + *(v10 + 32);
  v12 = *v11;
  if (*(v11 + 32))
  {
    v35[0] = *v11;
    v13 = v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v36);
    *a2 = v12;
  }

  else
  {
    v15 = v10;
    v17 = *(v11 + 8);
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v32 = v16;
    sub_22C42B564(v12);
    sub_22C4CC86C();
    v34 = *(a1 + v15[6]);
    v18 = v15[11];
    v19 = (a1 + v15[10]);
    v21 = *v19;
    v20 = v19[1];
    v37 = v21;
    v33 = v20;
    v22 = type metadata accessor for PromptMapperResolver();
    a3[3] = v22;
    a3[4] = &off_283FB3CE0;
    v23 = sub_22C36D548(a3);
    sub_22C4D0C60(a1 + v18, v23 + *(v22 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v36, v23);
    v23[34] = v12;
    v23[35] = v17;
    v24 = v31;
    v23[36] = v32;
    v23[37] = v24;
    sub_22C378A4C(v35, (v23 + 38));
    v25 = sub_22C90A75C();
    sub_22C36C640(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v34;

    sub_22C580C40();
    v29 = v28;
    sub_22C36FF94(v35);
    result = sub_22C3DF2E8(v36);
    v30 = v37;
    v23[43] = v29;
    v23[44] = v30;
    v23[45] = v27;
  }

  return result;
}

uint64_t sub_22C4D02CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4CFE10();
  if (v13)
  {
    v6 = *&v12[0];
    *&v11[0] = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  v8 = sub_22C36C730(v12, v14);
  sub_22C4CFF1C(v12, v8);
  if (v13)
  {
    v6 = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v14);
    goto LABEL_5;
  }

  sub_22C36C730(v12, v11);
  v9 = *(a1 + *(_s14EchoComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v10 = swift_allocObject();
  *a3 = v10;
  sub_22C36C730(v14, v10 + 16);
  sub_22C36C730(v11, v10 + 56);
  *(v10 + 96) = v9;
}

uint64_t sub_22C4D0420()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = _s14EchoComponentsVMa();
  v7 = *(v6 + 116);
  result = sub_22C3E8FB4(v1 + v7, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    v10 = *(v6 + 44);
    sub_22C36AA34();
    sub_22C4D0C60(v1 + v11, v5, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v5, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v7, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v7, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v9 = *v15;
    *v0 = v14;
    *(v0 + 16) = v9;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

uint64_t sub_22C4D0630@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4CFD28();
  if (v32)
  {
    v4 = v29;
    v28[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v29, v33);
  sub_22C4CCE78();
  if (v32)
  {
    v4 = v29;
    v26[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = v33;
LABEL_8:
    result = sub_22C36FF94(v7);
    goto LABEL_9;
  }

  v6 = sub_22C36C730(&v29, v28);
  sub_22C4D0224(&v29, v6);
  if (v32)
  {
    v4 = v29;
    *&v25[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v28);
    goto LABEL_7;
  }

  sub_22C36C730(&v29, v26);
  sub_22C4D0420();
  if (v32)
  {
    v4 = v29;
    v22[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v28);
    sub_22C36FF94(v33);
    v7 = v26;
    goto LABEL_8;
  }

  sub_22C36C730(&v29, v25);
  v8 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v27;
  v13 = sub_22C36D1E4(v26, v27);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v30 = &type metadata for PostInferenceHandler;
  v31 = &off_283FB3BA0;
  *&v29 = swift_allocObject();
  memcpy((v29 + 16), v16, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v18 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v11 + v18) = sub_22C36E65C(1);
  sub_22C378A4C(v33, v11 + 16);
  sub_22C378A4C(v28, v11 + 56);
  sub_22C378A4C(v11 + 56, v22);
  v19 = v23;
  v20 = v24;
  sub_22C374168(v22, v23);
  (*(v20 + 16))(v19, v20);
  sub_22C36FF94(v28);
  sub_22C36FF94(v33);
  sub_22C36FF94(v22);
  sub_22C36C730(&v29, v11 + 96);
  sub_22C36C730(v25, v11 + qword_27D9BDFC8);
  result = sub_22C36FF94(v26);
  a2[3] = v8;
  a2[4] = &off_283FBBC08;
  *a2 = v11;
  return result;
}

uint64_t sub_22C4D0AD0()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_22C4D0C0C()
{
  result = qword_27D9BD660;
  if (!qword_27D9BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD660);
  }

  return result;
}

uint64_t sub_22C4D0C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4D0CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4D0D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = *(sub_22C3A5908(a3, a4) + 36);
  sub_22C901ADC();
  v20 = sub_22C901AEC();
  sub_22C36C640(v18, 0, 1, v20);
  sub_22C379DF8(v18, v16, &qword_27D9BD638, &unk_22C92C240);
  sub_22C901B2C();
  sub_22C901B1C();
  sub_22C901AFC();
  sub_22C901B0C();
  sub_22C36DD28(v18, &qword_27D9BD638, &unk_22C92C240);
  v21 = v27;
  sub_22C3EECF8(a1, 1, a2, v26);
  sub_22C4D6B50(a2, type metadata accessor for FullPlannerPreferences);
  sub_22C36BD64();
  if (!v21)
  {
    return sub_22C36C730(v26, a5);
  }

  v22 = sub_22C901B3C();
  sub_22C36985C(v22);
  return (*(v23 + 8))(a5 + v19);
}

uint64_t sub_22C4D0FAC(uint64_t a1)
{
  v31 = *v1;
  swift_beginAccess();
  v28 = a1;
  v3 = *(a1 + 16);
  sub_22C3A5908(&qword_27D9BD690, &unk_22C918700);
  v4 = sub_22C90B1CC();
  v5 = v4;
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = v4 + 64;
  v32 = v3;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v16 = v13 | (v12 << 6);
      v17 = (*(v32 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v32 + 56) + 8 * v16);
      swift_allocObject();

      result = sub_22C4D0FAC(v21);
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v5[6] + 16 * v16);
      *v22 = v18;
      v22[1] = v19;
      *(v5[7] + 8 * v16) = result;
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v5[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        v29[2] = v5;
        v26 = *(v28 + 24);
        v27 = *(v28 + 32);

        v29[3] = v26;
        v29[4] = v27;
        return v29;
      }

      v15 = *(v6 + 8 * v12);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4D11B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  while (1)
  {
    v6 = sub_22C90A3AC();
    if (!v7)
    {
      break;
    }

    v8 = sub_22C4D1280(v6, v7);

    v3 = v8;
  }

  v9 = v3[4];
  v3[3] = a1;
  v3[4] = a2;
}

void *sub_22C4D1280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = sub_22C628790(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
    swift_allocObject();
    v9 = sub_22C4D1388();
    swift_beginAccess();

    v10 = *(v3 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 16);
    sub_22C62C8E0();
    *(v3 + 16) = v12;
    swift_endAccess();
  }

  return v9;
}

void *sub_22C4D1388()
{
  sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
  v1 = sub_22C909F0C();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_22C4D13DC@<X0>(uint64_t a1@<X8>)
{
  sub_22C4D4DAC(v6);
  if (v7)
  {
    v2 = *&v6[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760);
    v2 = swift_allocObject();
    sub_22C4D5478();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4D14FC@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4D1570@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v80 - v8;
  v9 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = (&v80 - v15);
  v16 = sub_22C90077C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v82 = v20 - v19;
  *a2 = 0x746F7274786F46;
  *(a2 + 1) = 0xE700000000000000;
  v21 = _s17FoxtrotComponentsVMa();
  v22.n128_f64[0] = sub_22C38711C(&a2[v21[14]]);
  sub_22C369DE4(*(v23 + 60), v22);
  sub_22C369DE4(*(v24 + 64), v25);
  sub_22C369DE4(*(v26 + 68), v27);
  sub_22C369DE4(*(v28 + 72), v29);
  sub_22C369DE4(*(v30 + 76), v31);
  sub_22C369DE4(*(v32 + 80), v33);
  *(v34 + 40) = -1;
  bzero(&a2[*(v35 + 84)], 0x110uLL);
  bzero(&a2[v21[22]], 0x190uLL);
  v36.n128_f64[0] = sub_22C38711C(&a2[v21[23]]);
  *(v37 + 40) = -1;
  sub_22C369DE4(v21[24], v36);
  sub_22C369DE4(v21[25], v38);
  *(v39 + 40) = -1;
  sub_22C369DE4(v21[26], v40);
  *(v41 + 40) = -1;
  sub_22C369DE4(v21[27], v42);
  *(v43 + 40) = -1;
  sub_22C369DE4(v21[28], v44);
  *(v45 + 40) = -1;
  sub_22C369DE4(v21[29], v46);
  *(v47 + 40) = -1;
  sub_22C369DE4(v21[30], v48);
  *(v49 + 40) = -1;
  v50 = *(v17 + 16);
  v50(&a2[v21[5]], a1, v16);
  v51 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v21[6]] = *(a1 + v51[5]);
  sub_22C379DF8(a1 + v51[6], &a2[v21[7]], &qword_27D9BB730, &unk_22C90FE30);
  v52 = a1 + v51[10];
  v53 = *(type metadata accessor for FullPlannerPreferences() + 44);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v81 = v52;
  sub_22C901EDC();
  if (v87 == 1)
  {
    v86 = 0;
    v54 = v82;
    v50(v82, a1, v16);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v86, v54, &v87);
    v77 = v87;
    v78 = v88;
    v79 = v89;
  }

  else
  {
    v77 = 0;
    v79 = 0;
    v78 = 0uLL;
  }

  v55 = &a2[v21[8]];
  *v55 = v77;
  *(v55 + 8) = v78;
  *(v55 + 3) = v79;
  v55[32] = 0;
  sub_22C379DF8(a1 + v51[7], &a2[v21[9]], &qword_27D9BB728, &qword_22C911230);
  v56 = (a1 + v51[8]);
  v57 = *v56;
  v58 = v56[1];
  v59 = &a2[v21[10]];
  *v59 = v57;
  *(v59 + 1) = v58;
  v60 = v51[9];
  v82 = a1;
  v61 = v83;
  sub_22C379DF8(a1 + v60, v83, &qword_27D9BB720, &unk_22C90FE20);
  v62 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v61, 1, v62) == 1)
  {

    sub_22C36DD28(v61, &qword_27D9BB720, &unk_22C90FE20);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0x3000000000000007;
  }

  else
  {
    v63 = *v61;
    v64 = v61[1];
    v66 = v61[2];
    v65 = v61[3];

    sub_22C4C7C38(v63, v64, v66);
    sub_22C38B994();
  }

  v67 = &a2[v21[12]];
  *v67 = v63;
  v67[1] = v64;
  v67[2] = v66;
  v67[3] = v65;
  v68 = v82;
  v69 = v84;
  sub_22C379DF8(v82 + v60, v84, &qword_27D9BB720, &unk_22C90FE20);
  if (sub_22C370B74(v69, 1, v62) == 1)
  {
    sub_22C36DD28(v69, &qword_27D9BB720, &unk_22C90FE20);
    v70 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v71 = v85;
    sub_22C36C640(v85, 1, 1, v70);
  }

  else
  {
    v72 = v69 + *(v62 + 20);
    v71 = v85;
    sub_22C379DF8(v72, v85, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C38B994();
  }

  sub_22C4CC2D0(v71, &a2[v21[13]]);
  v73 = v21[11];
  sub_22C36AA4C();
  sub_22C4D6AF4(v81, &a2[v74], v75);
  return sub_22C4D6B50(v68, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s17FoxtrotComponentsVMa()
{
  result = qword_27D9BD668;
  if (!qword_27D9BD668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4D1B50()
{
  sub_22C3727F4();
  v2 = _s17FoxtrotComponentsVMa();
  v3 = *(v2 + 56);
  v4 = sub_22C379DF8(v1 + v3, &v20, &qword_27D9BD3D0, &unk_22C918320);
  if (v21)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20);
  }

  sub_22C36D798(&v20);
  v13 = *(v2 + 44);
  v14 = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[3] = v14;
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  v16 = *(v14 + 20);
  sub_22C36AA4C();
  sub_22C4D6AF4(v1 + v13, v15 + v17, v18);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4D1C48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s17FoxtrotComponentsVMa() + 60);
  sub_22C379DF8(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v5_0;
  a1[4] = &off_283FBAD00;
  *a1 = swift_allocObject();
  sub_22C4D1B50();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4D1E78()
{
  sub_22C3727F4();
  v2 = _s17FoxtrotComponentsVMa();
  v3 = *(v2 + 72);
  v4 = sub_22C379DF8(v1 + v3, &v21, &qword_27D9BD3E0, &unk_22C918720);
  if (v22)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  sub_22C36D798(&v21);
  v13 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[3] = v13;
  v0[4] = &off_283FB9A30;
  v14 = sub_22C36D548(v0);
  sub_22C4D1DD4(v14);
  v15 = *(v2 + 44);
  v16 = *(v13 + 20);
  sub_22C36AA4C();
  sub_22C4D6AF4(v1 + v17, v14 + v18, v19);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4D1F60()
{
  v2 = v1;
  sub_22C3727F4();
  v3 = _s17FoxtrotComponentsVMa();
  v4 = *(v3 + 76);
  v5 = sub_22C379DF8(v2 + v4, &v26, &qword_27D9BD3F8, &unk_22C918340);
  if (v27)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v25, v26);
  }

  sub_22C36D798(&v26);
  v14 = *(v3 + 24);
  v15 = *(v2 + v14);
  v16 = type metadata accessor for ToolRenderer_v6_0();
  v0[3] = v16;
  v0[4] = &off_283FBAF20;
  v17 = sub_22C36D548(v0);
  sub_22C90718C();
  v18 = v17 + v16[5];
  sub_22C4D20C4();
  v19 = *(v2 + v14);
  v20 = (v17 + v16[6]);
  v21 = type metadata accessor for ToolRenderer_v1_0();
  v20[3] = v21;
  v20[4] = &off_283FB9200;
  v22 = sub_22C36D548(v20);
  sub_22C90718C();
  v23 = v22 + *(v21 + 20);
  sub_22C4D20C4();
  v24 = v17 + v16[7];
  *(v24 + 3) = &unk_283FB9BD0;
  *(v24 + 4) = &off_283FB9DA0;
  sub_22C38711C(v17 + v16[8]);
  sub_22C36D798(v2 + v4);
  return sub_22C378A4C(v0, v2 + v4);
}

void *sub_22C4D20C4()
{
  sub_22C3727F4();
  v1 = _s17FoxtrotComponentsVMa();
  v2 = *(v1 + 84);
  v8 = sub_22C37068C(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4D2C9C(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4D215C()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17FoxtrotComponentsVMa() + 80);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4D14FC(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4D2258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a3;
  v97 = a2;
  v4 = sub_22C9063DC();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v81 - v9;
  v10 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v14;
  v87 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  v15 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v81 - v22;
  MEMORY[0x28223BE20](v21);
  v98 = &v81 - v23;
  v24 = type metadata accessor for FullPlannerPreferences();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v88 = &v81 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v81 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v35 = _s17FoxtrotComponentsVMa();
  v36 = v35[11];
  sub_22C4D6AF4(a1 + v36, v34, type metadata accessor for FullPlannerPreferences);
  v94 = v24;
  v37 = *(v24 + 36);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4D6B50(v34, type metadata accessor for FullPlannerPreferences);
  v38 = v99[0];
  if (*&v99[0] != 0x6E65476E656B6F74 || *(&v99[0] + 1) != 0xEE00726F74617265)
  {
    v82 = v4;
    v40 = v97;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v38 == 0x65696C4370747468 && *(&v38 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v73 = sub_22C90B4FC();

        if ((v73 & 1) == 0)
        {
          sub_22C903F7C();
          v74 = sub_22C9063CC();
          v75 = sub_22C90AADC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = v40;
            v77 = swift_slowAlloc();
            *v77 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v74, v75, v78, v77, 2u);
            v79 = v77;
            v40 = v76;
            MEMORY[0x2318B9880](v79, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v8 = v83;
      sub_22C903F7C();
      v74 = sub_22C9063CC();
      v75 = sub_22C90AADC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = v40;
        v77 = swift_slowAlloc();
        *v77 = 0;
        v78 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v84 + 8))(v8, v82);
      sub_22C3DD0D8();
      v61 = swift_allocError();
      *v80 = 0;
      v80[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v41 = a1 + v35[9];
  v42 = a1;
  v43 = v98;
  sub_22C379DF8(v41, v98, &qword_27D9BB728, &qword_22C911230);
  v44 = v35[5];
  v93 = v17;
  v45 = *(v17 + 5);
  v46 = sub_22C90077C();
  (*(*(v46 - 8) + 16))(v43 + v45, v42 + v44, v46);
  sub_22C4D6AF4(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v47 = v94;
  v48 = *(v94 + 104);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4D6B50(v32, type metadata accessor for FullPlannerPreferences);
  *(v43 + *(v93 + 6)) = v99[0];
  v49 = v42;
  sub_22C4D6AF4(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v50 = &v32[*(v47 + 48)];
  sub_22C901EDC();
  sub_22C4D6B50(v32, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v99[0]) == 1)
  {
    v51 = v91;
    sub_22C4D6AF4(v98, v91, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D6AF4(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v100);
    sub_22C4D6B50(v32, type metadata accessor for FullPlannerPreferences);
    LODWORD(v94) = v100;
    v52 = v42 + v36;
    v53 = v88;
    sub_22C4D6AF4(v52, v88, type metadata accessor for FullPlannerPreferences);
    v54 = v96;
    v55 = v87;
    v96[3] = v87;
    v54[4] = &off_2818B22E0;
    v93 = sub_22C36D548(v54);
    v56 = *(v55 + 24);
    v57 = v90;
    sub_22C901ADC();
    v58 = sub_22C901AEC();
    sub_22C36C640(v57, 0, 1, v58);
    sub_22C379DF8(v57, v89, &qword_27D9BD638, &unk_22C92C240);
    v59 = v92;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v57, &qword_27D9BD638, &unk_22C92C240);
    v60 = v95;
    sub_22C3EECF8(v51, 2, v53, v99);
    v61 = v60;
    v62 = v98;
    if (!v60)
    {
      sub_22C4D6B50(v53, type metadata accessor for FullPlannerPreferences);
      sub_22C4D6B50(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v99, v59);
      *(v59 + 40) = v94;
      sub_22C4D6BA8(v59, v93, type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface);
      return sub_22C4D6B50(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4D6B50(v53, type metadata accessor for FullPlannerPreferences);
    sub_22C4D6B50(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D6B50(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    v63 = sub_22C901B3C();
    (*(*(v63 - 8) + 8))(v59 + v56, v63);
    result = sub_22C4BF5D8(v54);
    v40 = v97;
  }

  else
  {
    v65 = v98;
    v66 = v86;
    sub_22C4D6AF4(v98, v86, type metadata accessor for FullPlannerGMSClientConfiguration);
    v67 = v85;
    sub_22C4D6AF4(v49 + v36, v85, type metadata accessor for FullPlannerPreferences);
    v68 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v69 = v96;
    v96[3] = v68;
    v69[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560);
    v70 = sub_22C36D548(v69);
    v71 = v95;
    sub_22C4D0D68(v66, v67, &qword_27D9BD640, &qword_22C918560, v70);
    v61 = v71;
    result = sub_22C4D6B50(v65, type metadata accessor for FullPlannerGMSClientConfiguration);
    v40 = v97;
    if (!v71)
    {
      return result;
    }

    result = sub_22C4BF5D8(v69);
  }

LABEL_24:
  *v40 = v61;
  return result;
}

uint64_t sub_22C4D2C9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v272 = a2;
  v254 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0);
  v3 = *(*(v254 - 8) + 64);
  MEMORY[0x28223BE20](v254);
  v253 = (&v238 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22C908AEC();
  v6 = *(v5 - 8);
  v275 = v5;
  v276 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v273 = &v238 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
  v9 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274);
  v279 = &v238 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  v11 = *(*(v247 - 8) + 64);
  MEMORY[0x28223BE20](v247);
  v278 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v13 = *(*(v271 - 8) + 64);
  MEMORY[0x28223BE20](v271);
  v269 = (&v238 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v15 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v277 = &v238 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for ParameterDefinitionRenderer_v6_0(0);
  v17 = *(*(v282 - 8) + 64);
  MEMORY[0x28223BE20](v282);
  v281 = (&v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v19 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v264 = &v238 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  v21 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v259 = (&v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v23 = *(*(v255 - 8) + 64);
  MEMORY[0x28223BE20](v255);
  v266 = &v238 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v26 = *(v25 - 8);
  v244 = (v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8);
  v252 = &v238 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v263 = (&v238 - v30);
  v31 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v32 = *(v31 - 8);
  v241 = v31 - 8;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8);
  v251 = &v238 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v265 = (&v238 - v36);
  v37 = type metadata accessor for FullPlannerPreferences();
  v38 = *(v37 - 8);
  v239 = v37 - 8;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8);
  v240 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v258 = &v238 - v42;
  v268 = type metadata accessor for PrimitiveValueRenderer_v2_0(0);
  v43 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268);
  v267 = (&v238 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v46 = *(v45 - 8);
  v262 = (v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v49 = (&v238 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v257 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v50 = *(*(v257 - 1) + 64);
  MEMORY[0x28223BE20](v257);
  v52 = (&v238 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v238 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = &unk_283FB9D88;
  v313 = &off_283FB9E30;
  v311[0] = 1;
  sub_22C4D1D30(v55);
  v58 = _s17FoxtrotComponentsVMa();
  v59 = *(v58 + 44);
  v60 = v58;
  v61 = *(v53 + 20);
  v250 = v57;
  v284 = type metadata accessor for FullPlannerPreferences;
  v285 = v59;
  sub_22C4D6AF4(a1 + v59, &v57[v61], type metadata accessor for FullPlannerPreferences);
  v52[3] = v53;
  v52[4] = &off_283FB9A58;
  v62 = sub_22C36D548(v52);
  sub_22C4D6AF4(v57, v62, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v63 = *(v60 + 24);
  v64 = v60;
  v242 = v60;
  v65 = *(a1 + v63);
  v66 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
  v67 = v52;
  v52[8] = v66;
  v52[9] = &off_283FBAC08;
  v68 = sub_22C36D548(v52 + 5);

  sub_22C90718C();

  v69 = v68 + *(v66 + 20);
  v70 = sub_22C4D1B50();
  sub_22C4D1D30(v70);
  v71 = *(a1 + v63);
  v72 = v257;
  v73 = *(v257 + 7);

  sub_22C90718C();

  v74 = *(v64 + 20);
  v75 = *(v72 + 8);
  v76 = sub_22C90077C();
  (*(*(v76 - 8) + 16))(v67 + v75, a1 + v74, v76);
  sub_22C4D6AF4(a1 + v285, v67 + *(v72 + 9), type metadata accessor for FullPlannerPreferences);
  v49[3] = v72;
  v49[4] = &off_283FB9A40;
  v77 = sub_22C36D548(v49);
  v248 = v67;
  sub_22C4D6AF4(v67, v77, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v49[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v49[9] = &off_283FB8FE0;
  v78 = swift_allocObject();
  v49[5] = v78;
  sub_22C4BECC0(v311, v78 + 16);
  v49[13] = &type metadata for UTTypeRenderer_v1_0;
  v49[14] = &off_283FB8FD0;
  sub_22C4D1B50();
  v49[23] = &unk_283FB9D10;
  v49[24] = &off_283FB9E20;
  v79 = v63;
  v280 = v63;
  v80 = *(a1 + v63);
  v81 = v262[11];

  v249 = v49;
  sub_22C90718C();

  v82 = *(a1 + v79);
  v283 = a1;
  v83 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v84 = v272;
  v272[32] = v83;
  v84[33] = &off_283FBABE8;
  v85 = sub_22C36D548(v84 + 29);

  sub_22C90718C();

  sub_22C4D6AF4(v49, v85 + v83[5], type metadata accessor for TypeIdentifierRenderer_v2_0);
  v86 = (v85 + v83[6]);
  v86[3] = v257;
  v86[4] = &off_283FB9A40;
  v87 = sub_22C36D548(v86);
  sub_22C4D6AF4(v67, v87, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v88 = (v85 + v83[7]);
  v88[3] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v88[4] = &off_283FB8FE0;
  v89 = swift_allocObject();
  *v88 = v89;
  sub_22C4BECC0(v311, v89 + 16);
  v90 = v83;
  v91 = v85 + v83[8];
  *(v91 + 3) = &type metadata for UTTypeRenderer_v1_0;
  *(v91 + 4) = &off_283FB8FD0;
  v92 = v85 + v83[9];
  sub_22C4D1B50();
  v93 = v85 + v83[10];
  *(v93 + 3) = &unk_283FB9D10;
  *(v93 + 4) = &off_283FB9E20;
  v310[3] = v83;
  v310[4] = &off_283FBABD0;
  v94 = sub_22C36D548(v310);
  sub_22C4D6AF4(v85, v94, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v310[8] = &unk_283FB9CF0;
  v310[9] = &off_283FB9E10;
  v309[3] = v83;
  v309[4] = &off_283FBABE8;
  v95 = sub_22C36D548(v309);
  v96 = v85;
  sub_22C4D6AF4(v85, v95, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v309[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v309[9] = &off_283FB8FC0;
  v309[13] = &type metadata for INPersonRenderer_v1_0;
  v309[14] = &off_283FB8FB0;
  v97 = v267;
  v267[3] = v83;
  v97[4] = &off_283FBABE8;
  v262 = v83;
  v98 = sub_22C36D548(v97);
  v261 = v96;
  sub_22C4D6AF4(v96, v98, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v97[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v97[9] = &off_283FB8FC0;
  v97[13] = &type metadata for INPersonRenderer_v1_0;
  v97[14] = &off_283FB8FB0;
  sub_22C4BEF30(v309, (v97 + 15));
  v99 = v268;
  v101 = v284;
  v100 = v285;
  v102 = v283;
  sub_22C4D6AF4(v283 + v285, v97 + *(v268 + 32), v284);
  v307[3] = v90;
  v307[4] = &off_283FBABE8;
  v103 = sub_22C36D548(v307);
  sub_22C4D6AF4(v96, v103, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v308[3] = v99;
  v308[4] = &off_283FB9748;
  v104 = sub_22C36D548(v308);
  v246 = type metadata accessor for PrimitiveValueRenderer_v2_0;
  sub_22C4D6AF4(v97, v104, type metadata accessor for PrimitiveValueRenderer_v2_0);
  v105 = v100;
  v106 = v258;
  sub_22C4D6AF4(v102 + v100, v258, v101);
  v107 = v239;
  v108 = *(v239 + 104);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v243 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D6B50(v106, type metadata accessor for FullPlannerPreferences);
  v109 = v300[0];
  v110 = v102 + v105;
  v111 = v240;
  sub_22C4D6AF4(v110, v240, v101);
  v112 = v111 + *(v107 + 104);
  sub_22C901EDC();
  sub_22C4D6B50(v111, type metadata accessor for FullPlannerPreferences);
  v113 = v300[0];
  v305 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v306 = &off_283FB9738;
  v304 = swift_allocObject();
  sub_22C4C32E8(v307, v304 + 16);
  v300[1] = 0;
  v300[0] = 0;
  v300[2] = v109;
  v301 = 0;
  v302 = v113;
  v303 = 0;
  v114 = v265;
  v115 = v262;
  v265[3] = v262;
  v114[4] = &off_283FBABD0;
  v116 = v114;
  v117 = sub_22C36D548(v114);
  v118 = v261;
  v245 = type metadata accessor for TypeIdentifierRenderer_v5_0;
  sub_22C4D6AF4(v261, v117, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v116[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v116[9] = &off_283FB9728;
  v119 = swift_allocObject();
  v116[5] = v119;
  sub_22C4C3344(v300, v119 + 16);
  v120 = v280;
  v121 = v283;
  v122 = *(v283 + v280);
  v123 = *(v241 + 32);

  sub_22C90718C();

  v124 = v263;
  v263[3] = v115;
  v124[4] = &off_283FBABD0;
  v125 = v124;
  v126 = sub_22C36D548(v124);
  sub_22C4D6AF4(v118, v126, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v125[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v125[9] = &off_283FB9718;
  v127 = v121;
  v128 = *(v121 + v120);
  v129 = *(v244 + 8);

  sub_22C90718C();

  v131 = v266;
  v132 = v127;
  sub_22C4D1DD4(v130);
  v133 = v255;
  v134 = v285;
  sub_22C4D6AF4(v132 + v285, v131 + *(v255 + 20), v284);
  v135 = v259;
  v259[3] = v133;
  v135[4] = &off_283FB9A30;
  v136 = v135;
  v137 = sub_22C36D548(v135);
  sub_22C4D6AF4(v131, v137, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  v136[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v136[9] = &off_283FBABB0;
  v138 = swift_allocObject();
  v136[5] = v138;
  sub_22C4D0A18(v310, v138 + 16);
  v139 = v260;
  v140 = (v136 + *(v260 + 24));
  v140[3] = v133;
  v140[4] = &off_283FB9A30;
  v141 = sub_22C36D548(v140);
  sub_22C4D6AF4(v131, v141, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  v140[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v140[9] = &off_283FBABB0;
  v142 = swift_allocObject();
  v140[5] = v142;
  sub_22C4D0A18(v310, v142 + 16);
  v143 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v144 = v283;
  v145 = v284;
  v146 = sub_22C4D6AF4(v283 + v134, v140 + *(v143 + 24), v284);
  v147 = v136 + *(v139 + 28);
  v148 = v144;
  sub_22C4D1DD4(v146);
  sub_22C4D6AF4(v144 + v134, v136 + *(v139 + 32), v145);
  v149 = v280;
  v150 = *(v144 + v280);

  v151 = v264;
  sub_22C90718C();

  v152 = v256;
  v153 = (v151 + *(v256 + 20));
  v153[3] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v153[4] = &off_283FBABB0;
  v154 = swift_allocObject();
  *v153 = v154;
  sub_22C4D0A18(v310, v154 + 16);
  v155 = (v151 + *(v152 + 24));
  v155[3] = v139;
  v155[4] = &off_283FB9A18;
  v156 = sub_22C36D548(v155);
  v244 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4D6AF4(v136, v156, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v157 = v281;
  v281[3] = v152;
  v157[4] = &off_283FB8F90;
  v158 = v157;
  v159 = sub_22C36D548(v157);
  sub_22C4D6AF4(v151, v159, type metadata accessor for TypeInstanceRenderer_v1_0);
  v158[8] = &unk_283FB9CD0;
  v158[9] = &off_283FB9E00;
  v160 = *(v148 + v149);
  v161 = *(v282 + 24);

  sub_22C90718C();

  v162 = v148;
  v163 = v277;
  sub_22C379DF8(v148 + *(v242 + 7), v277, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4D1B50();
  v164 = v269;
  v269[3] = &type metadata for ToolNameRenderer_v5_0;
  v164[4] = &off_283FBAD00;
  v165 = swift_allocObject();
  *v164 = v165;
  sub_22C4D0A74(v299, v165 + 16);
  v164[8] = &unk_283FB9CB0;
  v164[9] = &off_283FB9DF0;
  v166 = v270;
  v164[13] = v270;
  v164[14] = &off_283FB8F70;
  v167 = sub_22C36D548(v164 + 10);
  v242 = type metadata accessor for ToolDescriptionProvider_v1_0;
  sub_22C4D6AF4(v163, v167, type metadata accessor for ToolDescriptionProvider_v1_0);
  v168 = *(v162 + v149);
  v169 = v149;
  v170 = v271;
  v171 = *(v271 + 28);

  sub_22C90718C();

  sub_22C4D6AF4(v162 + v285, v164 + *(v170 + 32), v284);
  v172 = v247;
  v173 = (v278 + *(v247 + 40));
  v173[3] = v166;
  v173[4] = &off_283FB8F70;
  v174 = sub_22C36D548(v173);
  sub_22C4D6AF4(v163, v174, type metadata accessor for ToolDescriptionProvider_v1_0);
  v175 = *(v162 + v169);
  v176 = v162;
  v177 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
  v241 = v177[5];

  sub_22C90718C();

  v178 = (v173 + v177[6]);
  v178[3] = v282;
  v178[4] = &off_283FBAEA0;
  v179 = sub_22C36D548(v178);
  v257 = type metadata accessor for ParameterDefinitionRenderer_v6_0;
  sub_22C4D6AF4(v281, v179, type metadata accessor for ParameterDefinitionRenderer_v6_0);
  v180 = (v173 + v177[7]);
  v180[3] = &type metadata for ToolNameRenderer_v5_0;
  v180[4] = &off_283FBAD00;
  v181 = swift_allocObject();
  *v180 = v181;
  sub_22C4D0A74(v299, v181 + 16);
  v182 = v173 + v177[8];
  *(v182 + 24) = &unk_283FB9C88;
  *(v182 + 32) = &off_283FB9DE0;
  *v182 = 1;
  v183 = v172;
  v184 = v172[9];
  v185 = v284;
  v186 = v176 + v285;
  v187 = v278;
  v188 = v184;
  sub_22C4D6AF4(v186, v278 + v184, v284);
  sub_22C378A4C(v173, v187);
  v189 = v183[5];
  v255 = *(v276 + 16);
  v256 = v276 + 16;
  (v255)(v187 + v189, v173 + v241, v275);
  sub_22C378A4C(v178, v187 + v183[6]);
  sub_22C378A4C(v180, v187 + v183[7]);
  sub_22C379DF8(v182, v187 + v183[8], &qword_27D9BD658, &qword_22C9186E0);
  sub_22C4D6AF4(v187 + v188, v173 + v177[9], v185);
  v286[3] = v282;
  v286[4] = &off_283FBAEA0;
  v190 = sub_22C36D548(v286);
  sub_22C4D6AF4(v281, v190, v257);
  v294 = &type metadata for ToolNameRenderer_v5_0;
  v295 = &off_283FBAD00;
  v293[0] = swift_allocObject();
  sub_22C4D0A74(v299, v293[0] + 16);
  v289 = &unk_283FB9C88;
  v290 = &off_283FB9DE0;
  LOBYTE(v288[0]) = 1;
  v287[3] = v270;
  v287[4] = &off_283FB8F70;
  v191 = sub_22C36D548(v287);
  sub_22C4D6AF4(v277, v191, v242);
  v297 = v183;
  v298 = &off_283FBAE80;
  v192 = sub_22C36D548(v296);
  sub_22C4D6AF4(v187, v192, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0);
  v193 = v283;
  v194 = *(v283 + v280);

  v195 = v273;
  sub_22C90718C();

  v196 = v258;
  sub_22C4D6AF4(v193 + v285, v258, v185);
  v197 = v279;
  sub_22C378A4C(v286, v279);
  sub_22C378A4C(v293, v197 + 40);
  sub_22C379DF8(v288, v197 + 80, &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C(v287, v197 + 120);
  sub_22C378A4C(v296, v197 + 160);
  v198 = v274;
  v199 = v275;
  (v255)(v197 + *(v274 + 36), v195, v275);
  sub_22C4D6AF4(v196, v197 + *(v198 + 40), v185);
  v200 = (v197 + *(v198 + 44));
  v201 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  v200[3] = v201;
  v200[4] = &off_283FBAB80;
  v202 = sub_22C36D548(v200);
  v203 = (v202 + *(v201 + 40));
  v204 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v203[3] = v204;
  v203[4] = &off_283FB8F40;
  v205 = sub_22C36D548(v203);
  sub_22C378A4C(v286, v205);
  sub_22C378A4C(v293, (v205 + 5));
  sub_22C379DF8(v288, (v205 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C(v287, (v205 + 15));
  sub_22C378A4C(v296, (v202 + 20));
  v206 = v273;
  (v255)(v202 + *(v201 + 36), v273, v199);
  sub_22C4D6AF4(v196, v205 + *(v204 + 32), v284);
  sub_22C378A4C(v205, v202);
  sub_22C378A4C((v205 + 5), (v202 + 5));
  sub_22C379DF8((v205 + 10), (v202 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C((v205 + 15), (v202 + 15));
  sub_22C4D6B50(v196, v243);
  (*(v276 + 8))(v206, v199);
  sub_22C36FF94(v296);
  sub_22C36FF94(v287);
  sub_22C36DD28(v288, &qword_27D9BD658, &qword_22C9186E0);
  sub_22C36FF94(v293);
  sub_22C36FF94(v286);
  v207 = v274;
  v294 = v274;
  v295 = &off_283FBAE50;
  v208 = sub_22C36D548(v293);
  v209 = v279;
  sub_22C4D6AF4(v279, v208, type metadata accessor for ToolDefinitionRenderer_v6_0);
  v210 = v283;
  sub_22C4D1B50();
  v297 = &type metadata for ToolNameRenderer_v5_0;
  v298 = &off_283FBAD00;
  v296[0] = swift_allocObject();
  sub_22C4D0A74(v299, v296[0] + 16);
  v292[3] = &type metadata for ToolNameRenderer_v5_0;
  v292[4] = &off_283FBAD00;
  v292[0] = swift_allocObject();
  sub_22C4D0A74(v299, v292[0] + 16);
  v211 = v253;
  v253[3] = v207;
  v211[4] = &off_283FBAE50;
  v212 = sub_22C36D548(v211);
  sub_22C4D6AF4(v209, v212, type metadata accessor for ToolDefinitionRenderer_v6_0);
  v211[8] = v271;
  v211[9] = &off_283FBAB60;
  v213 = sub_22C36D548(v211 + 5);
  v214 = v269;
  sub_22C4D6AF4(v269, v213, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  v211[13] = &type metadata for EntitySetterRenderer_v1_0;
  v211[14] = &off_283FB8F18;
  v215 = swift_allocObject();
  v211[10] = v215;
  sub_22C4BEE78(v293, v215 + 16);
  v211[18] = &type metadata for UIControlRenderer_v2_0;
  v211[19] = &off_283FB9700;
  v216 = swift_allocObject();
  v211[15] = v216;
  sub_22C4BEED4(v296, v216 + 16);
  v211[23] = &type metadata for SystemToolProtocolRenderer_v6_0;
  v211[24] = &off_283FBAE30;
  v217 = swift_allocObject();
  v211[20] = v217;
  sub_22C4D62B0(v292, v217 + 16);
  v218 = *(v210 + v280);
  v219 = v254;
  v220 = *(v254 + 36);

  sub_22C90718C();

  v289 = v262;
  v290 = &off_283FBABE8;
  v221 = sub_22C36D548(v288);
  sub_22C4D6AF4(v261, v221, v245);
  v291[3] = v268;
  v291[4] = &off_283FB9748;
  v222 = sub_22C36D548(v291);
  v223 = v267;
  sub_22C4D6AF4(v267, v222, v246);
  sub_22C4BEF8C(v288, v286);
  v224 = v265;
  v225 = v251;
  sub_22C4D6AF4(v265, v251, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v226 = v263;
  v227 = v252;
  sub_22C4D6AF4(v263, v252, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v285 = sub_22C4D6614(v286, v225, v227);
  type metadata accessor for StrippedDirectionalTypedValuePromptRenderer_v5_0();
  v228 = swift_allocObject();
  sub_22C4C32E8(v307, v287);
  sub_22C4C3344(v300, v286);
  v284 = sub_22C4D69B4(v287, v286, v228);
  v229 = v272;
  sub_22C4D1B50();
  v229[8] = v219;
  v229[9] = &off_283FBAB38;
  v230 = sub_22C36D548(v229 + 5);
  sub_22C4D6AF4(v211, v230, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  v229[13] = v282;
  v229[14] = &off_283FBAEA0;
  v231 = sub_22C36D548(v229 + 10);
  v232 = v281;
  sub_22C4D6AF4(v281, v231, v257);
  v229[18] = &type metadata for ToolNameRenderer_v5_0;
  v229[19] = &off_283FBAD00;
  v233 = swift_allocObject();
  v229[15] = v233;
  sub_22C4D0A74(v299, v233 + 16);
  v229[27] = v260;
  v229[28] = &off_283FB9A18;
  v234 = sub_22C36D548(v229 + 24);
  v235 = v259;
  sub_22C4D6AF4(v259, v234, v244);
  sub_22C4D0B10(v299);
  sub_22C4D6B50(v277, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4D6B50(v266, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  sub_22C4D6B50(v250, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  sub_22C4BF0A0(v288);
  sub_22C4D6B50(v211, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  sub_22C4D6AA0(v292);
  sub_22C4BF19C(v296);
  sub_22C4BF1F0(v293);
  sub_22C4D6B50(v278, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0);
  sub_22C4D6B50(v214, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  sub_22C4D6B50(v232, type metadata accessor for ParameterDefinitionRenderer_v6_0);
  sub_22C4D6B50(v264, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4D6B50(v235, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4D6B50(v226, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D6B50(v224, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v300);
  sub_22C4C3534(v307);
  sub_22C4D6B50(v223, type metadata accessor for PrimitiveValueRenderer_v2_0);
  sub_22C4BF0F4(v309);
  sub_22C4D0B64(v310);
  sub_22C4D6B50(v249, type metadata accessor for TypeIdentifierRenderer_v2_0);
  sub_22C4D6B50(v248, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4BF394(v311);
  result = sub_22C4D6B50(v279, type metadata accessor for ToolDefinitionRenderer_v6_0);
  v237 = v284;
  v229[20] = v285;
  v229[21] = &off_283FB87B0;
  v229[22] = v237;
  v229[23] = &off_283FBAAE0;
  return result;
}

void *sub_22C4D4844()
{
  sub_22C3727F4();
  v1 = _s17FoxtrotComponentsVMa();
  v2 = *(v1 + 88);
  v8 = sub_22C37068C(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4D48DC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4D48DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17FoxtrotComponentsVMa();
  v49 = *(v9 + 24);
  v10 = *(a1 + v49);
  v11 = type metadata accessor for SpanEventPromptGenerator_v4_0();
  *(a2 + 24) = v11;
  *(a2 + 32) = &off_283FBA3F0;
  v12 = sub_22C36D548(a2);

  sub_22C90718C();

  v13 = v12 + *(v11 + 20);
  sub_22C4D20C4();
  v14 = *(v9 + 44);
  sub_22C4D6AF4(a1 + v14, v8, type metadata accessor for FullPlannerPreferences);
  v15 = *(v5 + 64);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v48 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D6B50(v8, type metadata accessor for FullPlannerPreferences);
  *(v12 + *(v11 + 24)) = v50[0];
  v16 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  *(a2 + 64) = v16;
  *(a2 + 72) = &off_283FBA978;
  v17 = sub_22C36D548((a2 + 40));
  sub_22C4D20C4();
  sub_22C4D6AF4(a1 + v14, v8, type metadata accessor for FullPlannerPreferences);
  v18 = *(v5 + 80);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D6B50(v8, v48);
  v19 = v50[0];
  v17[37] = &type metadata for ContextReferenceReducer_v5;
  v17[38] = sub_22C4D0C0C();
  v17[34] = v19;
  sub_22C4D6AF4(a1 + v14, v17 + *(v16 + 28), type metadata accessor for FullPlannerPreferences);
  *(v17 + 312) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v20 = swift_allocObject();
  *(a2 + 80) = v20;
  *(v20 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v20 + 48) = &off_283FB8638;
  v21 = v49;
  v22 = *(a1 + v49);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v23 = swift_allocObject();
  *(a2 + 120) = v23;
  v23[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v23[6] = &off_283FB84F8;
  sub_22C36D548(v23 + 2);

  sub_22C90718C();

  v24 = *(a1 + v21);
  v25 = type metadata accessor for ExpressionParser_v1_0();
  v23[10] = v25;
  v23[11] = &off_283FB8460;
  v26 = sub_22C36D548(v23 + 7);
  v27 = v25[5];

  sub_22C90718C();

  sub_22C4D20C4();
  sub_22C378A4C(&v51, v26 + v25[6]);
  sub_22C3DF2E8(v50);
  v28 = v26 + v25[7];
  sub_22C4D1B50();
  v29 = v26 + v25[8];
  *(v29 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v29 + 4) = &off_283FB8298;
  v30 = v26 + v25[9];
  *(v30 + 3) = &type metadata for RenderingArbiter_v5_0;
  *(v30 + 4) = &off_283FBA498;
  v31 = v26 + v25[10];
  sub_22C4D1F60();
  v32 = v26 + v25[11];
  sub_22C4D1E78();
  *v26 = 1;
  v23[15] = &type metadata for RenderingArbiter_v5_0;
  v23[16] = &off_283FBA498;
  v33 = *(a1 + v21);
  v34 = type metadata accessor for StatementResultParser_v2_0();
  *(a2 + 184) = v34;
  *(a2 + 192) = &off_283FB97F8;
  v35 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v36 = v35 + *(v34 + 20);
  sub_22C4D20C4();
  v37 = *(a1 + v21);
  v38 = (v35 + *(v34 + 24));
  v39 = type metadata accessor for StatementResultParser_v1_0();
  v38[3] = v39;
  v38[4] = &off_283FB86D8;
  v40 = sub_22C36D548(v38);

  sub_22C90718C();

  v41 = v40 + *(v39 + 20);
  sub_22C4D20C4();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v42 = *(a1 + v21);
  v43 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v43;
  *(a2 + 312) = &off_283FB4130;
  v44 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v45 = v44 + *(v43 + 20);
  sub_22C4D20C4();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

uint64_t sub_22C4D4E54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v53 = a2;
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v51 - v9;
  v77 = sub_22C90077C();
  v62 = *(v77 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v77);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C908AEC();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s17FoxtrotComponentsVMa();
  v17 = v16[6];
  v18 = *(a1 + v17);

  v59 = v15;
  sub_22C90718C();

  sub_22C4D4844();
  sub_22C4D20C4();
  v19 = type metadata accessor for ToolFetcher(0);
  v73 = v19;
  v74 = &off_283FB6BE0;
  v20 = sub_22C36D548(&v72);
  sub_22C4D1C48(v20);
  v21 = *(a1 + v17);
  v22 = *(v19 + 20);

  sub_22C90718C();

  v23 = *(a1 + v17);
  v24 = type metadata accessor for ToolRenderer_v6_0();
  v70 = v24;
  v71 = &off_283FBAF20;
  v25 = sub_22C36D548(&v69);

  sub_22C90718C();

  v26 = v25 + v24[5];
  sub_22C4D20C4();
  v27 = *(a1 + v17);
  v28 = (v25 + v24[6]);
  v29 = type metadata accessor for ToolRenderer_v1_0();
  v28[3] = v29;
  v28[4] = &off_283FB9200;
  v30 = sub_22C36D548(v28);

  sub_22C90718C();

  v31 = v30 + *(v29 + 20);
  sub_22C4D20C4();
  v32 = v25 + v24[7];
  *(v32 + 3) = &unk_283FB9BD0;
  *(v32 + 4) = &off_283FB9DA0;
  v33 = v25 + v24[8];
  *(v33 + 4) = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  sub_22C4D20C4();
  v54 = *(a1 + v17);
  v34 = v55;
  (*(v62 + 16))(v55, a1 + v16[5], v77);
  v35 = v16[13];
  v36 = (a1 + v16[12]);
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v63 = *v36;
  v37 = v63;
  v64 = v38;
  v65 = v39;
  v66 = v40;
  v41 = v56;
  sub_22C379DF8(a1 + v35, v56, &qword_27D9BB738, &unk_22C9185A0);
  v42 = v16[11];
  v43 = v57;
  v51 = v42;
  sub_22C4D6AF4(a1 + v42, v57, type metadata accessor for FullPlannerPreferences);
  v44 = v54;

  sub_22C4C7C38(v37, v38, v39);
  v45 = v44;
  v46 = v58;
  sub_22C53A7F4(v67, v45, v34, &v63, v41, v43, v68);

  sub_22C4D6B50(v43, type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v41, &qword_27D9BB738, &unk_22C9185A0);
  sub_22C4CBAA8(v63, v64, v65);
  (*(v62 + 8))(v34, v77);
  sub_22C3DF2E8(v67);
  if (v46)
  {
    sub_22C3DF2E8(v75);
    sub_22C4D0BB8(v76);
    (*(v60 + 8))(v59, v61);
    sub_22C36FF94(&v69);
    result = sub_22C36FF94(&v72);
    *v53 = v46;
  }

  else
  {
    v48 = type metadata accessor for ConversationParser_v1_0();
    v49 = v52;
    v52[3] = v48;
    v49[4] = &off_283FB83D0;
    v50 = sub_22C36D548(v49);
    sub_22C4D6AF4(a1 + v51, v50 + v48[12], type metadata accessor for FullPlannerPreferences);
    (*(v60 + 32))(v50, v59, v61);
    memcpy(v50 + v48[5], v76, 0x190uLL);
    memcpy(v50 + v48[6], v75, 0x110uLL);
    sub_22C36C730(&v72, v50 + v48[7]);
    sub_22C36C730(&v69, v50 + v48[8]);
    result = sub_22C36C730(v68, v50 + v48[9]);
    *(v50 + v48[10]) = 0;
    *(v50 + v48[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4D5478()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17FoxtrotComponentsVMa() + 96);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v7);
  }

  else
  {
    v3 = *(v2 + 16);
    v7 = *v2;
    v8 = v3;
    v9 = *(v2 + 32);
  }

  if (*(&v8 + 1))
  {
    return sub_22C36C730(&v7, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  v5 = sub_22C36BA00();
  return sub_22C378A4C(v5, v6);
}

void sub_22C4D5518()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17FoxtrotComponentsVMa() + 100);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4D13DC(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4D5600()
{
  sub_22C3727F4();
  v2 = *(_s17FoxtrotComponentsVMa() + 104);
  sub_22C379DF8(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C379DF8(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_22C4D57B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_22C4D20C4();
  v10 = _s17FoxtrotComponentsVMa();
  v11 = a1 + *(v10 + 32);
  v12 = *v11;
  if (*(v11 + 32))
  {
    v35[0] = *v11;
    v13 = v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v36);
    *a2 = v12;
  }

  else
  {
    v15 = v10;
    v17 = *(v11 + 8);
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v32 = v16;
    sub_22C42B564(v12);
    sub_22C4D1B50();
    v34 = *(a1 + v15[6]);
    v18 = v15[11];
    v19 = (a1 + v15[10]);
    v21 = *v19;
    v20 = v19[1];
    v37 = v21;
    v33 = v20;
    v22 = type metadata accessor for PromptMapperResolver();
    a3[3] = v22;
    a3[4] = &off_283FB3CE0;
    v23 = sub_22C36D548(a3);
    sub_22C4D6AF4(a1 + v18, v23 + *(v22 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v36, v23);
    v23[34] = v12;
    v23[35] = v17;
    v24 = v31;
    v23[36] = v32;
    v23[37] = v24;
    sub_22C378A4C(v35, (v23 + 38));
    v25 = sub_22C90A75C();
    sub_22C36C640(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v34;

    sub_22C580C40();
    v29 = v28;
    sub_22C36FF94(v35);
    result = sub_22C3DF2E8(v36);
    v30 = v37;
    v23[43] = v29;
    v23[44] = v30;
    v23[45] = v27;
  }

  return result;
}

uint64_t sub_22C4D5ABC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4D5600();
  if (v13)
  {
    v6 = *&v12[0];
    *&v11[0] = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  v8 = sub_22C36C730(v12, v14);
  sub_22C4D570C(v12, v8);
  if (v13)
  {
    v6 = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v14);
    goto LABEL_5;
  }

  sub_22C36C730(v12, v11);
  v9 = *(a1 + *(_s17FoxtrotComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v10 = swift_allocObject();
  *a3 = v10;
  sub_22C36C730(v14, v10 + 16);
  sub_22C36C730(v11, v10 + 56);
  *(v10 + 96) = v9;
}

uint64_t sub_22C4D5C10()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = _s17FoxtrotComponentsVMa();
  v10 = *(v9 + 116);
  result = sub_22C379DF8(v1 + v10, &v17, &qword_27D9BD420, &unk_22C918740);
  if (v18[24] == 255)
  {
    sub_22C36DD28(&v17, &qword_27D9BD420, &unk_22C918740);
    v13 = *(v9 + 44);
    sub_22C36AA4C();
    sub_22C4D6AF4(v1 + v14, v8, v15);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v16 = swift_allocObject();
    *v0 = v16;
    sub_22C50B704(v8, v16 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v10, &qword_27D9BD420, &unk_22C918740);
    return sub_22C379DF8(v0, v1 + v10, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v12 = *v18;
    *v0 = v17;
    *(v0 + 16) = v12;
    *(v0 + 25) = *&v18[9];
  }

  return result;
}

uint64_t sub_22C4D5E14@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4D5518();
  if (v32)
  {
    v4 = v29;
    v28[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v29, v33);
  sub_22C4D215C();
  if (v32)
  {
    v4 = v29;
    v26[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = v33;
LABEL_8:
    result = sub_22C36FF94(v7);
    goto LABEL_9;
  }

  v6 = sub_22C36C730(&v29, v28);
  sub_22C4D5A14(&v29, v6);
  if (v32)
  {
    v4 = v29;
    *&v25[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v28);
    goto LABEL_7;
  }

  sub_22C36C730(&v29, v26);
  sub_22C4D5C10();
  if (v32)
  {
    v4 = v29;
    v22[0] = v29;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v28);
    sub_22C36FF94(v33);
    v7 = v26;
    goto LABEL_8;
  }

  sub_22C36C730(&v29, v25);
  v8 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v27;
  v13 = sub_22C36D1E4(v26, v27);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v30 = &type metadata for PostInferenceHandler;
  v31 = &off_283FB3BA0;
  *&v29 = swift_allocObject();
  memcpy((v29 + 16), v16, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v18 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v11 + v18) = sub_22C36E65C(1);
  sub_22C378A4C(v33, v11 + 16);
  sub_22C378A4C(v28, v11 + 56);
  sub_22C378A4C(v11 + 56, v22);
  v19 = v23;
  v20 = v24;
  sub_22C374168(v22, v23);
  (*(v20 + 16))(v19, v20);
  sub_22C36FF94(v28);
  sub_22C36FF94(v33);
  sub_22C36FF94(v22);
  sub_22C36C730(&v29, v11 + 96);
  sub_22C36C730(v25, v11 + qword_27D9BDFC8);
  result = sub_22C36FF94(v26);
  a2[3] = v8;
  a2[4] = &off_283FBBC08;
  *a2 = v11;
  return result;
}

uint64_t sub_22C4D61FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22C3B00E8;

  return sub_22C424A04();
}

uint64_t sub_22C4D630C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD678, &qword_22C9186E8);
  v23[3] = v2;
  v23[4] = sub_22C3D32C8(&qword_28142FA38, &qword_27D9BD678, &qword_22C9186E8);
  v23[0] = a1;
  sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
  swift_initStackObject();
  v3 = sub_22C4D1388();
  v4 = sub_22C374168(v23, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  (*(v8 + 16))(v18 - v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_22C36D548(v20);
  v10 = -1 << *(*v7 + 32);
  v11 = ~v10;
  v12 = (*v7 + 64);
  v13 = *v12;
  v14 = -v10;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  *v9 = *v7;
  v9[1] = v12;
  v9[2] = v11;
  v9[3] = 0;
  v9[4] = v15 & v13;
  while (1)
  {
    sub_22C36D1E4(v20, AssociatedTypeWitness);
    sub_22C90ACEC();
    if (!v19)
    {
      break;
    }

    sub_22C4D11B0(v18[1], v19);
  }

  sub_22C36FF94(v20);
  sub_22C3A5908(&qword_27D9BD688, &qword_22C9186F8);
  swift_allocObject();
  v16 = sub_22C4D0FAC(v3);
  sub_22C36FF94(v23);
  return v16;
}

uint64_t sub_22C4D656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DirectionalTypedValuePromptRenderer_v1_0();
  v6 = swift_allocObject();
  sub_22C4BEF8C(a1, v11);
  sub_22C4BEFE8(a2, v10);
  sub_22C4BF044(a3, v9);
  v7 = sub_22C4D6784(v11, v10, v9, v6);
  sub_22C4BF148(a3);
  sub_22C4BF2EC(a2);
  sub_22C4BF0A0(a1);
  return v7;
}

uint64_t sub_22C4D6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v19 = v18 - v17;
  type metadata accessor for DirectionalTypedValuePromptRenderer_v1_0();
  v20 = swift_allocObject();
  sub_22C4BEF8C(a1, v23);
  sub_22C4D6AF4(a2, v19, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4D6AF4(a3, v12, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v21 = sub_22C4D689C(v23, v19, v12, v20);
  sub_22C4D6B50(a3, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D6B50(a2, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4BF0A0(a1);
  return v21;
}

uint64_t sub_22C4D6784(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = &type metadata for TypedValueRenderer_v1_0;
  v21 = &off_283FB8F08;
  *&v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x50uLL);
  v17 = &type metadata for EntityValuePromptRenderer_v1_0;
  v18 = &off_283FB8DC8;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a2 + 32);
  v14 = &type metadata for EntityIdentifierValuePromptRenderer_v1_0;
  v15 = &off_283FB8DB8;
  v10 = swift_allocObject();
  *&v13 = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  sub_22C36C730(&v19, a4 + 16);
  sub_22C36C730(&v16, a4 + 56);
  sub_22C36C730(&v13, a4 + 96);
  return a4;
}

uint64_t sub_22C4D689C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = &type metadata for TypedValueRenderer_v1_0;
  v19 = &off_283FB8F08;
  *&v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x50uLL);
  v15 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v16 = &off_283FB96F0;
  v8 = sub_22C36D548(&v14);
  sub_22C4D6BA8(a2, v8, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v12 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v13 = &off_283FB96E0;
  v9 = sub_22C36D548(&v11);
  sub_22C4D6BA8(a3, v9, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C36C730(&v17, a4 + 16);
  sub_22C36C730(&v14, a4 + 56);
  sub_22C36C730(&v11, a4 + 96);
  return a4;
}

uint64_t sub_22C4D69B4(const void *a1, const void *a2, uint64_t a3)
{
  v14 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v15 = &off_283FB9738;
  *&v13 = swift_allocObject();
  memcpy((v13 + 16), a1, 0x50uLL);
  v11 = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v12 = &off_283FB9728;
  *&v10 = swift_allocObject();
  memcpy((v10 + 16), a2, 0x58uLL);
  v8 = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v9 = &off_283FB9718;
  sub_22C36C730(&v13, a3 + 16);
  sub_22C36C730(&v10, a3 + 56);
  sub_22C36C730(&v7, a3 + 96);
  return a3;
}

uint64_t sub_22C4D6AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C4D6B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4D6BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t FullPlannerPreferences.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22C4BF48C();
  sub_22C90271C();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = v2[5];
  sub_22C38712C();
  v4 = v2[6];
  sub_22C377CF4();
  v5 = v2[7];
  sub_22C4DDC80();
  sub_22C377CF4();
  v6 = v2[8];
  sub_22C4DDC80();
  sub_22C377CF4();
  v7 = v2[9];
  sub_22C4DDC80();
  sub_22C377CF4();
  v8 = v2[10];
  sub_22C4DDC80();
  sub_22C377CF4();
  v9 = v2[11];
  sub_22C37A034();
  sub_22C377CF4();
  v10 = v2[12];
  sub_22C37A034();
  sub_22C377CF4();
  v11 = v2[13];
  sub_22C4DDC80();
  sub_22C377CF4();
  v12 = v2[14];
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C();
  v13 = v2[15];
  sub_22C377CF4();
  v14 = v2[16];
  sub_22C377CF4();
  v15 = v2[17];
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C();
  v16 = v2[18];
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C();
  v17 = v2[19];
  sub_22C4DDC80();
  sub_22C36BD8C();
  sub_22C38712C();
  v18 = v2[20];
  sub_22C377CF4();
  v19 = v2[21];
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C();
  v20 = v2[22];
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C();
  v21 = v2[23];
  sub_22C38712C();
  v22 = v2[24];
  sub_22C38712C();
  v23 = v2[25];
  sub_22C377CF4();
  v24 = v2[26];
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C();
  v25 = v2[27];
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C();
  v26 = v2[28];
  sub_22C36BD8C();
  sub_22C38712C();
  v27 = v2[29];
  sub_22C36BD8C();
  sub_22C38712C();
  v28 = v2[30];
  sub_22C4DDC58();
  v29 = v2[31];
  sub_22C37A034();
  sub_22C4DDC58();
  v30 = v2[32];
  sub_22C37A034();
  sub_22C36BD8C();
  result = sub_22C38712C();
  *(a1 + v2[33]) = 0;
  return result;
}

uint64_t type metadata accessor for FullPlannerPreferences()
{
  result = qword_2814354F8;
  if (!qword_2814354F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FullPlannerPreferences.fullPlannerPrompt.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 32);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerModelBundleIdentifier.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 40);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerGMSTemplateKey.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 76);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerSkipInference.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 108);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferencesDomain.GMSTemplateKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22C90B21C();

  *a1 = v2 != 0;
  return result;
}

uint64_t FullPlannerPreferences.fullPlannerMaxPromptTokenCount.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 84);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerServerBasePath.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 24);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerModelInterface.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 36);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerUseLLMDraftCache.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 104);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerModelName.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 28);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerEnforcePlannerStringsAreQuotes.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 44);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerEntityDisplayRepresentationTruncationCharacterLength.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 96);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerHideUnseenSpanTypes.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 56);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerEnforceConstrainedDecoding.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 48);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.fullPlannerMaxEntityCountPerType.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 72);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t sub_22C4D794C()
{
  sub_22C4DDC04();
  result = sub_22C90AB0C();
  qword_281434F70 = result;
  return result;
}

uint64_t *sub_22C4D7980()
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818();
  }

  return &qword_281434F70;
}

uint64_t static FullPlannerPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818();
  }

  swift_beginAccess();
  v0 = qword_281434F70;
  v1 = qword_281434F70;
  return v0;
}

void static FullPlannerPreferencesDomain.userDefaultsContainer.setter(uint64_t a1)
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818();
  }

  swift_beginAccess();
  v2 = qword_281434F70;
  qword_281434F70 = a1;
}

uint64_t (*static FullPlannerPreferencesDomain.userDefaultsContainer.modify())()
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22C4D7B18@<X0>(void *a1@<X8>)
{
  sub_22C4D7980();
  swift_beginAccess();
  v2 = qword_281434F70;
  *a1 = qword_281434F70;

  return v2;
}

void sub_22C4D7B78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_22C4D7980();
  swift_beginAccess();
  v3 = qword_281434F70;
  qword_281434F70 = v1;
}

uint64_t sub_22C4D7BE8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return FullPlannerPreferencesDomain.GMSTemplateKeys.init(rawValue:)(a1);
}

unint64_t sub_22C4D7BF4@<X0>(void *a1@<X8>)
{
  result = FullPlannerPreferencesDomain.GMSTemplateKeys.rawValue.getter();
  *a1 = 0xD000000000000039;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C4D7C24(uint64_t a1)
{
  v2 = sub_22C90046C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v58 = sub_22C9063DC();
  v11 = sub_22C369824(v58);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = sub_22C9004AC();
  v56 = v5;
  v57 = v18;
  v20 = v19;
  v22 = v21;
  v23 = sub_22C90029C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_22C90028C();
  sub_22C4DDBBC(&qword_2814350B8, v27, type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel);
  sub_22C90027C();
  v53 = v26;
  v54 = v20;
  v55 = v22;
  v29 = v60[0];
  v30 = v57;
  sub_22C903F7C();
  v31 = v56;
  (*(v56 + 16))(v10, a1, v2);

  v32 = sub_22C9063CC();
  v33 = sub_22C90AACC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60[0] = v52;
    *v34 = 136316418;
    v35 = sub_22C4D8BAC();
    v51 = v32;
    v37 = sub_22C36F9F4(v35, v36, v60);
    HIDWORD(v50) = v33;
    v38 = v37;

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    sub_22C4DDBBC(&qword_281435848, 255, MEMORY[0x277CC9260]);
    v39 = sub_22C90B47C();
    (*(v31 + 8))(v10, v2);
    sub_22C382688();
    sub_22C3798CC();
    *(v34 + 14) = v39;
    *(v34 + 22) = 2080;
    v59 = *(v29 + 16);
    v40 = sub_22C90A1AC();
    v42 = sub_22C36F9F4(v40, v41, v60);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2080;
    v43 = *(v29 + 56);
    v44 = *(v29 + 64);

    sub_22C382688();
    sub_22C3798CC();
    *(v34 + 34) = v43;
    *(v34 + 42) = 2080;
    v45 = *(v29 + 88);
    v46 = *(v29 + 96);

    sub_22C382688();
    sub_22C3798CC();
    *(v34 + 44) = v45;
    *(v34 + 52) = 2080;
    v47 = *(v29 + 72);
    v48 = *(v29 + 80);

    sub_22C382688();
    sub_22C3798CC();
    *(v34 + 54) = v47;
    v49 = v51;
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    sub_22C38B120(v54, v55);
  }

  else
  {

    sub_22C38B120(v54, v55);

    (*(v31 + 8))(v10, v2);
  }

  (*(v13 + 8))(v30, v58);
  return v29;
}

uint64_t static FullPlannerPreferencesDomain.FullPlannerResourceModel.loadFromOta()()
{
  v1 = v0;
  v2 = sub_22C90035C();
  v3 = sub_22C369824(v2);
  v124 = v4;
  v125 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v123 = v8 - v7;
  v9 = *(*(sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v131 = &v115 - v11;
  v132 = sub_22C90046C();
  v12 = sub_22C369824(v132);
  v122 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v119 = v16 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v121 = &v115 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v120 = &v115 - v21;
  v130 = sub_22C901DDC();
  v22 = sub_22C369824(v130);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C90210C();
  v31 = sub_22C369824(v30);
  v128 = v32;
  v129 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v37 = v36 - v35;
  v38 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  sub_22C369ABC();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v133 = &v115 - v44;
  v45 = sub_22C9063DC();
  v46 = sub_22C369824(v45);
  v134 = v47;
  v135 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369ABC();
  v127 = v50 - v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  v126 = &v115 - v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  v56 = &v115 - v55;
  v57 = sub_22C903BEC();
  v58 = sub_22C369824(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v65 = v64 - v63;
  (*(v60 + 104))(v64 - v63, *MEMORY[0x277D1F0B8], v57);
  v66 = sub_22C903BDC();
  (*(v60 + 8))(v65, v57);
  if (v66)
  {
    v118 = v1;
    sub_22C903F7C();
    v67 = sub_22C9063CC();
    v68 = sub_22C90AACC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22C366000, v67, v68, "SiriNL/siriNLRouterAllowRoutingToPlannerGlobal feature flag is enabled. Using user Siri locale for Full Planner.", v69, 2u);
      sub_22C3699EC();
    }

    v70 = *(v134 + 8);
    v70(v56, v135);
    v71 = [objc_opt_self() sharedPreferences];
    v72 = sub_22C4DD2F4(v71);
    if (v73)
    {
      v136 = v72;
      v137 = v73;
      sub_22C3858B4();
      v74 = sub_22C90AD9C();

      if (v74[2])
      {
        v117 = v70;
        v75 = v74[4];
        v76 = v74[5];
        v78 = v74[6];
        v77 = v74[7];
        swift_bridgeObjectRetain_n();

        v79 = MEMORY[0x2318B76D0](v75, v76, v78, v77);
        v81 = v80;
        swift_bridgeObjectRelease_n();
        v82 = v126;
        sub_22C903F7C();

        v83 = sub_22C9063CC();
        v84 = sub_22C90AACC();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v116 = v83;
          v87 = v86;
          v136 = v86;
          *v85 = 136315138;
          *(v85 + 4) = sub_22C36F9F4(v79, v81, &v136);
          v88 = v84;
          v89 = v116;
          _os_log_impl(&dword_22C366000, v116, v88, "User Siri locale for Full Planner set to %s.", v85, 0xCu);
          sub_22C36FF94(v87);
          sub_22C3699EC();
          sub_22C3699EC();

          v90 = v126;
        }

        else
        {

          v90 = v82;
        }

        v117(v90, v135);
      }

      else
      {
      }
    }
  }

  sub_22C9020FC();
  v91 = v130;
  (*(v24 + 104))(v29, *MEMORY[0x277D1C240], v130);
  v92 = v133;
  sub_22C9020EC();

  (*(v24 + 8))(v29, v91);
  (*(v128 + 8))(v37, v129);
  sub_22C4DD3C4(v92, v42);
  v93 = sub_22C902D7C();
  if (sub_22C370B74(v42, 1, v93) == 1)
  {
    sub_22C3770B0(v42, &qword_27D9BD698, &qword_22C9187B0);
    v94 = v131;
    sub_22C36C640(v131, 1, 1, v132);
  }

  else
  {
    v94 = v131;
    sub_22C902D5C();
    (*(*(v93 - 8) + 8))(v42, v93);
    v95 = v132;
    if (sub_22C370B74(v94, 1, v132) != 1)
    {
      v105 = v122;
      v106 = v120;
      (*(v122 + 32))(v120, v94, v95);
      v136 = 0xD000000000000015;
      v137 = 0x800000022C9313D0;
      v108 = v123;
      v107 = v124;
      v109 = v125;
      (*(v124 + 104))(v123, *MEMORY[0x277CC91D8], v125);
      sub_22C3858B4();
      v110 = v119;
      sub_22C90044C();
      (*(v107 + 8))(v108, v109);
      v111 = v121;
      sub_22C9003CC();
      v112 = *(v105 + 8);
      v112(v110, v95);
      v104 = sub_22C4D7C24(v111);
      v113 = sub_22C36EBF0();
      (v112)(v113);
      v112(v106, v95);
      sub_22C3770B0(v92, &qword_27D9BD698, &qword_22C9187B0);
      return v104;
    }
  }

  sub_22C3770B0(v94, &qword_27D9BB138, &qword_22C90DB70);
  v96 = v127;
  sub_22C903F7C();
  v97 = sub_22C9063CC();
  v98 = sub_22C90AADC();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v136 = v100;
    *v99 = 136315138;
    v101 = sub_22C4D8BAC();
    v103 = sub_22C36F9F4(v101, v102, &v136);

    *(v99 + 4) = v103;
    _os_log_impl(&dword_22C366000, v97, v98, "%s MobileAssets not available", v99, 0xCu);
    sub_22C36FF94(v100);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v134 + 8))(v96, v135);
  sub_22C3770B0(v92, &qword_27D9BD698, &qword_22C9187B0);
  return 0;
}

BOOL sub_22C4D8C08@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C3946C4();
  *a2 = result;
  return result;
}

uint64_t sub_22C4D8C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C4D8BDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22C4D8C68@<W0>(_BYTE *a1@<X8>)
{
  result = sub_22C3946C4();
  *a1 = result;
  return result;
}

uint64_t sub_22C4D8C94(uint64_t a1)
{
  v2 = sub_22C4DD434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4D8CD0(uint64_t a1)
{
  v2 = sub_22C4DD434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerPreferencesDomain.FullPlannerResourceModel.__allocating_init(from:)(uint64_t *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BD6A0, &qword_22C9187B8);
  sub_22C369824(v3);
  v23 = v4;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  v9 = sub_22C374168(a1, a1[3]);
  v10 = sub_22C4DD434();
  sub_22C90B6BC();
  if (v1)
  {
    goto LABEL_5;
  }

  v11 = sub_22C90B31C();
  v12 = v11 - 1;
  if ((v11 - 1) >= 0xE)
  {
    v9 = sub_22C90AFBC();
    swift_allocError();
    v17 = v16;
    sub_22C3A5908(&qword_27D9BD6A8, &unk_22C9187C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22C90F800;
    *(v18 + 56) = &type metadata for FullPlannerPreferencesDomain.FullPlannerResourceModel.CodingKeys;
    *(v18 + 64) = v10;
    sub_22C90AFAC();
    (*(*(v9 - 8) + 104))(v17, *MEMORY[0x277D84168], v9);
    swift_willThrow();
    v19 = *(v23 + 8);
    v20 = sub_22C36EBF0();
    v21(v20);
LABEL_5:
    sub_22C36FF94(a1);
    return v9;
  }

  swift_allocObject();
  v9 = sub_22C4D8F6C(v12);
  v13 = *(v23 + 8);
  v14 = sub_22C36EBF0();
  v15(v14);
  sub_22C36FF94(a1);
  return v9;
}

uint64_t sub_22C4D8F6C(char a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 45;
  *(v1 + 32) = 0xE100000000000000;
  switch(a1)
  {
    case 1:
      *(v1 + 40) = 0x2D72656E6E616C70;
      *(v1 + 48) = 0xEA00000000003376;
      *(v1 + 56) = 0x6F76617262;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000033;
      *(v1 + 96) = 0x800000022C931960;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 0;
      goto LABEL_9;
    case 2:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x65696C72616863;
      *(v1 + 64) = 0xE700000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000030;
      *(v1 + 96) = 0x800000022C931920;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
LABEL_9:
      *(v1 + 152) = xmmword_22C9187A0;
      *(v1 + 168) = 0;
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0;
      goto LABEL_20;
    case 3:
    case 10:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD00000000000002CLL;
      *(v1 + 96) = 0x800000022C9317B0;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      goto LABEL_18;
    case 4:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000033;
      *(v1 + 96) = 0x800000022C9318E0;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
      *(v1 + 152) = vdupq_n_s64(0x14uLL);
      *(v1 + 168) = 0;
      goto LABEL_19;
    case 5:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      v5 = 1869112165;
      v6 = 0xE400000000000000;
      goto LABEL_13;
    case 6:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      v5 = 0x746F7274786F66;
      v6 = 0xE700000000000000;
LABEL_13:
      *(v1 + 56) = v5;
      *(v1 + 64) = v6;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v7";
      goto LABEL_16;
    case 7:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x746F7274786F66;
      *(v1 + 64) = 0xE700000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v8";
      goto LABEL_16;
    case 8:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v9";
LABEL_16:
      v7 = (v4 - 32) | 0x8000000000000000;
      v8 = 0xD000000000000033;
      goto LABEL_17;
    case 9:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v7 = 0x800000022C9317E0;
      v8 = 0xD000000000000034;
LABEL_17:
      *(v1 + 88) = v8;
      *(v1 + 96) = v7;
      *(v1 + 120) = 256;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
LABEL_18:
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
LABEL_19:
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
      goto LABEL_20;
    case 11:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1718382439;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0;
      *(v1 + 96) = 0xE000000000000000;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0xE000000000000000;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
LABEL_20:
      v2 = vdupq_n_s64(0x32uLL);
      *(v1 + 224) = 40;
      v3 = xmmword_22C918790;
      goto LABEL_21;
    case 12:
    case 13:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x6C65746F68;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0;
      *(v1 + 96) = 0xE000000000000000;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0xE000000000000000;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
      v2 = vdupq_n_s64(0x32uLL);
      *(v1 + 224) = 40;
      v3 = xmmword_22C918780;
LABEL_21:
      *(v1 + 192) = v2;
      *(v1 + 208) = v3;
      break;
    default:
      *(v1 + 40) = 0;
      *(v1 + 48) = 0xE000000000000000;
      *(v1 + 56) = 0x6168706C61;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000030;
      *(v1 + 96) = 0x800000022C931920;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C9187A0;
      *(v1 + 168) = 0;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0;
      *(v1 + 224) = 40;
      *(v1 + 192) = vdupq_n_s64(0x32uLL);
      *(v1 + 208) = xmmword_22C918790;
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      break;
  }

  return v1;
}

void *FullPlannerPreferencesDomain.FullPlannerResourceModel.deinit()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[17];

  return v0;
}

uint64_t FullPlannerPreferencesDomain.FullPlannerResourceModel.__deallocating_deinit()
{
  FullPlannerPreferencesDomain.FullPlannerResourceModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C4D96AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FullPlannerPreferencesDomain.FullPlannerResourceModel.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C4D96D8@<X0>(uint64_t *a1@<X8>)
{
  result = static FullPlannerPreferencesDomain.FullPlannerResourceModel.loadFromOta()();
  *a1 = result;
  return result;
}

uint64_t FullPlannerPreferences.isOTAAssetPresent.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 20);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.getter()
{
  v0 = *(sub_22C37740C() + 20);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 20);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 20));
  return sub_22C36D7C8();
}

uint64_t sub_22C4D993C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D994C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  v2 = *(*a1 + 48);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D995C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D996C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D997C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 88);
  v2 = *(*a1 + 96);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D998C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 128);
  v2 = *(*a1 + 136);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D999C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 104);
  v2 = *(*a1 + 112);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.getter()
{
  v0 = *(sub_22C37740C() + 24);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 24);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 24));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.getter()
{
  v0 = *(sub_22C37740C() + 28);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 28);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 28));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.getter()
{
  v0 = *(sub_22C37740C() + 32);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 32);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 32));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.getter()
{
  v0 = *(sub_22C37740C() + 36);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 36);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 36));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.getter()
{
  v0 = *(sub_22C37740C() + 40);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 40);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 40));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.getter()
{
  v0 = *(sub_22C37740C() + 44);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 44);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 44));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.getter()
{
  v0 = *(sub_22C37740C() + 48);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 48);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 48));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingMode.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 52);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.getter()
{
  v0 = *(sub_22C37740C() + 52);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 52);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 52));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.getter()
{
  v0 = *(sub_22C37740C() + 56);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 56);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 56));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnumCaseLimit.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 60);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t sub_22C4DAB1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 152);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 160);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 176);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 216);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 192);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 224);
  *(a2 + 8) = 0;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.getter()
{
  v0 = *(sub_22C37740C() + 60);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 60);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 60));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerDynamicEnumCaseLimit.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 64);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.getter()
{
  v0 = *(sub_22C37740C() + 64);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 64);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 64));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnforceConstrainedDecodingCopyStrings.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 68);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.getter()
{
  v0 = *(sub_22C37740C() + 68);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 68);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 68));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.getter()
{
  v0 = *(sub_22C37740C() + 72);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 72);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 72));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.getter()
{
  v0 = *(sub_22C37740C() + 76);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 76);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 76));
  return sub_22C36D7C8();
}

double FullPlannerPreferences.fullPlannerContextualEntityVisbilityPercentage.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 80);
  sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C3798B4();
  return v2;
}

uint64_t sub_22C4DB5B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 184);
  *(a2 + 8) = 0;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.getter()
{
  v0 = *(sub_22C37740C() + 80);
  sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 80);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 80));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.getter()
{
  v0 = *(sub_22C37740C() + 84);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 84);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 84));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerURLTruncationLength.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 88);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.getter()
{
  v0 = *(sub_22C37740C() + 88);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 88);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 88));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnumerationCaseTruncationCharacterLength.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 92);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.getter()
{
  v0 = *(sub_22C37740C() + 92);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 92);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 92));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.getter()
{
  v0 = *(sub_22C37740C() + 96);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 96);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 96));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerAppNameTruncationCharacterLength.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 100);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.getter()
{
  v0 = *(sub_22C37740C() + 100);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 100);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 100));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.getter()
{
  v0 = *(sub_22C37740C() + 104);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 104);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 104));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.getter()
{
  v0 = *(sub_22C37740C() + 108);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 108);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 108));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerOverrideToolDescriptions.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 112);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.getter()
{
  v0 = *(sub_22C37740C() + 112);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 112);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 112));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerMinifyGrammar.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 116);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.getter()
{
  v0 = *(sub_22C37740C() + 116);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 116);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 116));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 120);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.getter()
{
  v0 = *(sub_22C37740C() + 120);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 120);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 120));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 124);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.getter()
{
  v0 = *(sub_22C37740C() + 124);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 124);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 124));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerShouldAlwaysSearch.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 128);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v2;
}

uint64_t sub_22C4DCE48@<X0>(void *a1@<X8>)
{
  sub_22C4BF48C();
  result = sub_22C90270C();
  *a1 = v3;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.getter()
{
  v0 = *(sub_22C37740C() + 128);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4();
}

uint64_t sub_22C4DCED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = sub_22C3A5908(a5, a6);
  sub_22C369824(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a7(v14);
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.setter()
{
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958(v0);
  v2 = *(v1 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C36AA64(v4, v11);
  v6(v5);
  v7 = *(type metadata accessor for FullPlannerPreferences() + 128);
  sub_22C374BAC();
  v8 = sub_22C371810();
  return v9(v8);
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 128));
  return sub_22C36D7C8();
}

void sub_22C4DD12C(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 2) + 16);
  (v4)(*(*a1 + 4), *(v3 + 5), *(v3 + 1));
  v5 = v3[12];
  v6 = *(v3 + 4);
  v15 = *(v3 + 5);
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *v3;
  v10 = *(v3 + 1);
  if (a2)
  {
    v11 = sub_22C36EBF0();
    v4(v11);
    sub_22C901EFC();
    v12 = *(v8 + 8);
    v12(v6, v10);
    v13 = v15;
    v12(v15, v10);
  }

  else
  {
    v14 = *(v3 + 1);
    sub_22C901EFC();
    v13 = v15;
    (*(v8 + 8))(v15, v10);
  }

  free(v13);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t FullPlannerPreferences.fullPlannerMultipleRequestCandidates.setter(char a1)
{
  result = type metadata accessor for FullPlannerPreferences();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t sub_22C4DD2F4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C4DD364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C3C4E48();
  *a2 = result;
  return result;
}

void *sub_22C4DD390(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22C4DD3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C4DD434()
{
  result = qword_2814350D8[0];
  if (!qword_2814350D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814350D8);
  }

  return result;
}

unint64_t sub_22C4DD48C()
{
  result = qword_27D9BD6B0;
  if (!qword_27D9BD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6B0);
  }

  return result;
}

uint64_t sub_22C4DD5AC()
{
  sub_22C4DD758();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C4DD7E8(319, &qword_281435808);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22C4DD7E8(319, &qword_281435810);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22C4DD7E8(319, &qword_2814357F8);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_22C4DD7E8(319, &qword_281435800);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_22C4DD758()
{
  if (!qword_2814357A8)
  {
    type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel();
    sub_22C4DDBBC(&qword_2814350C0, v0, type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel);
    v1 = sub_22C9025FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2814357A8);
    }
  }
}

void sub_22C4DD7E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_22C4BF48C();
    v3 = sub_22C901F2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FullPlannerPreferencesDomain.FullPlannerResourceModel.TargetModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FullPlannerPreferencesDomain.FullPlannerResourceModel.TargetModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C4DD9B0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4DDA60()
{
  result = qword_27D9BD6B8;
  if (!qword_27D9BD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6B8);
  }

  return result;
}

unint64_t sub_22C4DDAB8()
{
  result = qword_27D9BD6C0;
  if (!qword_27D9BD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6C0);
  }

  return result;
}

unint64_t sub_22C4DDB10()
{
  result = qword_2814350C8;
  if (!qword_2814350C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814350C8);
  }

  return result;
}

unint64_t sub_22C4DDB68()
{
  result = qword_2814350D0;
  if (!qword_2814350D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814350D0);
  }

  return result;
}

uint64_t sub_22C4DDBBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22C4DDC04()
{
  result = qword_28142F9C0;
  if (!qword_28142F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9C0);
  }

  return result;
}

uint64_t sub_22C4DDC58()
{

  return sub_22C901F0C();
}

uint64_t sub_22C4DDC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C4DDCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22C4DDD30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22C4DDDB0()
{
  sub_22C430E9C(319, &qword_27D9BD5F0);
  if (v0 <= 0x3F)
  {
    sub_22C4DE008(319, &qword_27D9BD650, type metadata accessor for GrammarToolDefinitionBundle);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C4DDEA8()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C9071BC();
    if (v1 <= 0x3F)
    {
      sub_22C4DE008(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v2 <= 0x3F)
      {
        sub_22C4DE008(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
        if (v3 <= 0x3F)
        {
          sub_22C430E9C(319, &qword_28142FA20);
          if (v4 <= 0x3F)
          {
            sub_22C4DE008(319, &qword_27D9BD6D8, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
            if (v5 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences();
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

void sub_22C4DE008(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C4DE060@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1;
  v7 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v8 = sub_22C369914(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = type metadata accessor for FullPlannerPreferences();
  v15 = sub_22C369914(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v20 = v19 - v18;
  if (v6 != 6 || (FullPlannerPreferences.init()(v19 - v18), sub_22C4DE310(), result = sub_22C3FEA64(v20), !v3))
  {
    sub_22C4DE954(a2, v13);
    switch(v6)
    {
      case 1:
        a3[3] = _s15BravoComponentsVMa();
        a3[4] = &off_2818B3978;
        sub_22C36D548(a3);
        v30 = sub_22C4DEA00();
        result = sub_22C4BF7BC(v30, v31);
        break;
      case 2:
        a3[3] = _s17CharlieComponentsVMa();
        a3[4] = &off_2818B39E8;
        sub_22C36D548(a3);
        v26 = sub_22C4DEA00();
        result = sub_22C4C3890(v26, v27);
        break;
      case 3:
        a3[3] = _s15DeltaComponentsVMa();
        a3[4] = sub_22C4DE9B8(&qword_27D9BD6F0, _s15DeltaComponentsVMa);
        sub_22C36D548(a3);
        v28 = sub_22C4DEA00();
        result = sub_22C4C77A4(v28, v29);
        break;
      case 4:
        a3[3] = _s14EchoComponentsVMa();
        a3[4] = sub_22C4DE9B8(qword_281435400, _s14EchoComponentsVMa);
        sub_22C36D548(a3);
        v24 = sub_22C4DEA00();
        result = sub_22C4CBD10(v24, v25);
        break;
      case 5:
        a3[3] = _s17FoxtrotComponentsVMa();
        a3[4] = sub_22C4DE9B8(&qword_27D9BD6E8, _s17FoxtrotComponentsVMa);
        sub_22C36D548(a3);
        v32 = sub_22C4DEA00();
        result = sub_22C4D1570(v32, v33);
        break;
      default:
        a3[3] = _s15AlphaComponentsVMa();
        a3[4] = &off_2818B3830;
        sub_22C36D548(a3);
        v22 = sub_22C4DEA00();
        result = sub_22C4BB6C4(v22, v23);
        break;
    }
  }

  return result;
}

uint64_t sub_22C4DE310()
{
  sub_22C369A48();
  v0 = *(type metadata accessor for FullPlannerPreferences() + 32);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v1 = sub_22C4DE908();
  if (v1 == 6)
  {
    sub_22C3DD0D8();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_22C4DE3B8(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-1] - v7;
  v9 = type metadata accessor for FullPlannerPreferences();
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v15 = v14 - v13;
  FullPlannerPreferences.init()(v14 - v13);
  v16 = sub_22C4DE310();
  if (v1)
  {
    return sub_22C3FEA64(v15);
  }

  if (v16 - 1 >= 3)
  {
    if (v16 - 4 >= 2)
    {
      v32 = &type metadata for ToolNameRenderer_v1_0;
      v33 = &off_283FB8840;
    }

    else
    {
      v32 = &type metadata for ToolNameRenderer_v5_0;
      v33 = &off_283FBACE8;
    }
  }

  else
  {
    v32 = &type metadata for ToolNameRenderer_v2_0;
    v33 = &off_283FB9950;
  }

  v18 = swift_allocObject();
  v31[0] = v18;
  v19 = type metadata accessor for AppNameRenderer_v1_0(0);
  v18[5] = v19;
  v18[6] = &off_283FB8878;
  v20 = sub_22C36D548(v18 + 2);
  sub_22C9006AC();
  v21 = *(v19 + 20);
  sub_22C36AA88();
  sub_22C4DE954(v15, v20 + v22);
  v23 = v32;
  v24 = v33;
  sub_22C374168(v31, v32);
  v25 = sub_22C906D3C();
  sub_22C36C640(v8, 1, 1, v25);
  v26 = type metadata accessor for RenderingState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_22C480800(v8);
  (v24[1])(a1, 0, v29, v23, v24);

  sub_22C3FEA64(v15);
  return sub_22C36FF94(v31);
}

uint64_t sub_22C4DE634(uint64_t a1)
{
  v3 = type metadata accessor for FullPlannerPreferences();
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = v8 - v7;
  FullPlannerPreferences.init()(v8 - v7);
  v10 = sub_22C4DE310();
  if (v1)
  {
    return sub_22C3FEA64(v9);
  }

  if (v10 - 1 >= 3)
  {
    if (v10 - 4 >= 2)
    {
      v20 = &type metadata for ToolNameRenderer_v1_0;
      v21 = &off_283FB8840;
    }

    else
    {
      v20 = &type metadata for ToolNameRenderer_v5_0;
      v21 = &off_283FBACE8;
    }
  }

  else
  {
    v20 = &type metadata for ToolNameRenderer_v2_0;
    v21 = &off_283FB9950;
  }

  v12 = swift_allocObject();
  v19[0] = v12;
  v13 = type metadata accessor for AppNameRenderer_v1_0(0);
  v12[5] = v13;
  v12[6] = &off_283FB8878;
  v14 = sub_22C36D548(v12 + 2);
  sub_22C9006AC();
  v15 = *(v13 + 20);
  sub_22C36AA88();
  sub_22C4DE954(v9, v14 + v16);
  v17 = v20;
  v18 = v21;
  sub_22C374168(v19, v20);
  (v18[2])(a1, v17, v18);
  sub_22C3FEA64(v9);
  return sub_22C36FF94(v19);
}

uint64_t sub_22C4DE818(uint64_t a1)
{
  v2 = sub_22C4DE8B4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4DE854(uint64_t a1)
{
  v2 = sub_22C4DE8B4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C4DE8B4()
{
  result = qword_27D9BD6E0;
  if (!qword_27D9BD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6E0);
  }

  return result;
}

uint64_t sub_22C4DE908()
{
  v0 = sub_22C90B21C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C4DE954(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return a2;
}

uint64_t sub_22C4DE9B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C4DEA1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22C4DEA4C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22C4DEAB4()
{
  sub_22C369980();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = sub_22C90880C();
  v1[35] = v4;
  sub_22C3699B8(v4);
  v1[36] = v5;
  v7 = *(v6 + 64);
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v8 = type metadata accessor for FetchedTools(0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[39] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[40] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C4DEBB8()
{
  v71 = v0;
  v1 = v0[40];
  v68 = v0[39];
  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = sub_22C906D3C();
  sub_22C36C640(v1, 1, 1, v5);
  v6 = type metadata accessor for RenderingState();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_22C480800(v1);
  v0[41] = v9;
  v10 = type metadata accessor for ConversationParser_v1_0();
  v0[42] = v10;
  v11 = (v3 + v10[7]);
  v12 = v11[3];
  v13 = v11[4];
  sub_22C374168(v11, v12);
  sub_22C90878C();
  (*(v13 + 8))(v2, v12, v13);
  v69 = v9;
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[33];
  v17 = *(v0[36] + 8);
  (v17)(v0[38], v0[35]);
  v18 = (v15 + v10[8]);
  v19 = v18[3];
  v20 = v18[4];
  v67 = v18;
  sub_22C374168(v18, v19);
  sub_22C90878C();
  (*(v20 + 8))(v14, v19, v20);
  v21 = sub_22C36FC2C();
  v17(v21);
  if ((*(v15 + v10[10]) & 1) == 0)
  {
    sub_22C4E76D8();
    sub_22C3A8E40();
    v22 = sub_22C36FC2C();
    v17(v22);
    sub_22C900F8C();
    v0[31] = sub_22C4AF4A0();
    sub_22C4E6ECC();
    sub_22C4E6F20();
    sub_22C36FC2C();
    sub_22C900F7C();

    v23 = v0[31];
  }

  v24 = v0[39];
  v25 = *(sub_22C4AF4A0() + 16);

  if (v25)
  {
    sub_22C4E76D8();
    v26 = v69;
    sub_22C4DF694();
    v27 = sub_22C36FC2C();
    v17(v27);
    v28 = v67[4];
    sub_22C374168(v67, v67[3]);
    v29 = *(v28 + 16);
    v30 = sub_22C3806B8();
    v31(v30);

    memcpy(v0 + 12, __src, 0x48uLL);
    v40 = v0[12];
    v41 = v0[17];
    if (v41)
    {
      v43 = v0[18];
      v42 = v0[19];
      v44 = v0[16];
      sub_22C3A5908(&qword_27D9BAF50, &qword_22C90D7F8);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_22C90F800;
      v46 = v0[14];
      sub_22C387B54();
      sub_22C456C94(v47, v48);
      sub_22C387B54();
      sub_22C456C94(v49, v50);

      v52 = sub_22C807C70(v51);
      *(v45 + 32) = v44;
      *(v45 + 40) = v41;
      *(v45 + 48) = v43;
      *(v45 + 56) = v42;
      *(v45 + 64) = v52;
      v26 = v69;
      sub_22C387B54();
      sub_22C456D48(v53, v54);
    }

    else
    {
      v46 = v0[14];

      v45 = MEMORY[0x277D84F90];
    }

    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0xE000000000000000;
    v56 = v0[15];

    sub_22C3AD9E8();
    v58 = v57;
    v0[10] = &type metadata for AFMTokenProvider_v1_0;
    v0[11] = &off_283FB8258;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0xE000000000000000;
    sub_22C371820();
    v62 = sub_22C375CAC(v60, v61);
    v0[2] = v55;
    v0[3] = v46;
    v0[4] = v45;
    v0[5] = v58;
    v0[6] = v26;
    v0[7] = v62;

    sub_22C45A8C4(3, v40 | 2);

    sub_22C4E6E78((v0 + 12));
  }

  else
  {

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;
    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    type metadata accessor for _PromptMapper._ToolPromptMap(0);
    sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0);
    v33 = MEMORY[0x277D84F90];
    sub_22C36D29C();
    v34 = sub_22C909F0C();
    v0[10] = &type metadata for AFMTokenProvider_v1_0;
    v0[11] = &off_283FB8258;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0xE000000000000000;
    sub_22C371820();
    v38 = sub_22C375CAC(v36, v37);
    v0[2] = v32;
    v0[3] = v34;
    v39 = MEMORY[0x277D84FA0];
    v0[4] = v33;
    v0[5] = v39;
    v0[7] = v38;
    v0[6] = v69;
  }

  v63 = swift_task_alloc();
  v0[43] = v63;
  *v63 = v0;
  v63[1] = sub_22C4DF1C0;
  v64 = v0[33];
  v65 = v0[34];

  return sub_22C4DFF58();
}

uint64_t sub_22C4DF1C0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 352) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C4DF2BC()
{
  sub_22C36FB38();
  v1 = *(v0 + 336);
  v2 = *(v0 + 272);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 168) = 0u;
  sub_22C378A4C(v2 + *(v1 + 36), v0 + 208);
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_22C4DF394;
  v5 = *(v0 + 256);

  return sub_22C459410(v5, v0 + 168, v0 + 208, v2 + v3);
}

uint64_t sub_22C4DF394()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 368) = v0;

  sub_22C36DD28(v3 + 208, &qword_27D9BB758, &qword_22C90FE60);
  sub_22C36DD28(v3 + 168, &qword_27D9BC498, &unk_22C919020);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C4DF4C0()
{
  sub_22C36FB38();
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];

  sub_22C3DBB34((v0 + 2));
  sub_22C4E6E1C(v3);

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C4DF55C()
{
  sub_22C36FB38();
  v1 = v0[41];
  v2 = v0[39];

  sub_22C3DBB34((v0 + 2));
  sub_22C4E6E1C(v2);
  v3 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C4DF5F8()
{
  sub_22C36FB38();
  v1 = v0[41];
  v2 = v0[39];

  sub_22C3DBB34((v0 + 2));
  sub_22C4E6E1C(v2);
  v3 = v0[46];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];

  sub_22C369A24();

  return v8();
}

void sub_22C4DF694()
{
  sub_22C36BA7C();
  v134 = v0;
  v1 = sub_22C3A5908(&qword_27D9BD790, &unk_22C919060);
  v2 = sub_22C369914(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v136 = v5 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v150 = &v130 - v8;
  sub_22C36BA0C();
  v151 = sub_22C9090BC();
  v9 = sub_22C369824(v151);
  v135 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v149 = v14 - v13;
  v15 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v146 = (v19 - v20);
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  v145 = &v130 - v22;
  sub_22C36BA0C();
  v23 = sub_22C9093BC();
  v24 = sub_22C369824(v23);
  v152 = v25;
  v153 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v144 = &v130 - v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  v148 = &v130 - v34;
  sub_22C36BA0C();
  v143 = sub_22C9039FC();
  v35 = sub_22C369824(v143);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v142 = (v41 - v40);
  v42 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v43 = sub_22C369914(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v130 - v46;
  v48 = sub_22C9079FC();
  v49 = sub_22C369824(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369838();
  v56 = v55 - v54;
  v154 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  sub_22C3D32C8(v57, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907EEC();

  if (sub_22C370B74(v47, 1, v48) == 1)
  {
    sub_22C36DD28(v47, &qword_27D9BD798, &unk_22C919070);
  }

  else
  {
    v58 = *(v51 + 32);
    v59 = sub_22C370018();
    v133 = v48;
    v61 = v60(v59);
    v147 = v56;
    v62 = *(MEMORY[0x2318B4EB0](v61) + 16);
    v141 = v30;
    v132 = v51;
    v63 = v136;
    if (v62)
    {
      v66 = *(v37 + 16);
      v65 = v37 + 16;
      v64 = v66;
      v67 = *(v65 + 64);
      sub_22C36BA94();
      v131 = v68;
      v70 = v68 + v69;
      v139 = *(v65 + 56);
      v140 = v65;
      v137 = (v65 - 8);
      v138 = (v152 + 32);
      v71 = MEMORY[0x277D84F90];
      do
      {
        v72 = v142;
        v73 = v143;
        v64(v142, v70, v143);
        v74 = v146;
        sub_22C9039CC();
        v75 = v145;
        sub_22C4E7208(v74, v145, &qword_27D9BB908, &qword_22C910960);
        (*v137)(v72, v73);
        v76 = v153;
        if (sub_22C370B74(v75, 1, v153) == 1)
        {
          sub_22C36DD28(v75, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v77 = v64;
          v78 = *v138;
          (*v138)(v144, v75, v76);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v79 = v71;
          }

          else
          {
            v86 = *(v71 + 16);
            sub_22C36D270();
            sub_22C5903C0();
            v79 = v87;
          }

          v81 = *(v79 + 16);
          v80 = *(v79 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_22C369AB0(v80);
            sub_22C5903C0();
            v79 = v88;
          }

          *(v79 + 16) = v81 + 1;
          v82 = *(v152 + 80);
          sub_22C36BA94();
          v71 = v83;
          (v78)(v83 + v84 + *(v85 + 72) * v81, v144);
          v64 = v77;
        }

        v70 += v139;
        --v62;
      }

      while (v62);

      v63 = v136;
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    v89 = *(v71 + 16);
    v90 = v150;
    v91 = v147;
    if (v89)
    {
      v146 = *(v152 + 16);
      v92 = *(v152 + 80);
      sub_22C36BA94();
      v131 = v71;
      v94 = v71 + v93;
      v96 = *(v95 + 56);
      v144 = (v95 + 16);
      v145 = v96;
      LODWORD(v143) = *MEMORY[0x277D729E8];
      v139 = (v95 - 8);
      v140 = (v95 + 72);
      v152 = v95;
      v137 = (v135 + 16);
      v138 = (v95 + 80);
      v142 = (v135 + 32);
      v97 = MEMORY[0x277D84F90];
      v98 = &qword_27D9BD790;
      do
      {
        v99 = v97;
        v100 = v98;
        v101 = v63;
        v102 = v148;
        v103 = v153;
        v146(v148, v94, v153);
        v104 = v141;
        (*v144)(v141, v102, v103);
        v105 = *v140;
        v106 = sub_22C370018();
        v108 = v107(v106);
        if (v108 == v143)
        {
          v109 = *v138;
          v110 = sub_22C370018();
          v111(v110);
          v112 = *v104;
          v113 = swift_projectBox();
          v63 = v101;
          v114 = v151;
          (*v137)(v101, v113, v151);
          sub_22C36C640(v101, 0, 1, v114);
          v90 = v150;
        }

        else
        {
          v63 = v101;
          v115 = v101;
          v116 = v151;
          sub_22C36C640(v115, 1, 1, v151);
          v117 = v104;
          v114 = v116;
          (*v139)(v117, v103);
        }

        v98 = v100;
        sub_22C4E7208(v63, v90, v100, &unk_22C919060);
        v118 = sub_22C370B74(v90, 1, v114);
        v119 = v114;
        v91 = v147;
        v97 = v99;
        if (v118 == 1)
        {
          sub_22C36DD28(v90, v100, &unk_22C919060);
        }

        else
        {
          v120 = *v142;
          (*v142)(v149, v90, v119);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = *(v97 + 16);
            sub_22C36D270();
            sub_22C59193C();
            v97 = v127;
          }

          v122 = *(v97 + 16);
          v121 = *(v97 + 24);
          if (v122 >= v121 >> 1)
          {
            sub_22C369AB0(v121);
            sub_22C59193C();
            v97 = v128;
          }

          *(v97 + 16) = v122 + 1;
          v123 = *(v135 + 80);
          sub_22C36BA94();
          v120(v97 + v124 + *(v125 + 72) * v122, v149, v151);
          v63 = v136;
          v90 = v150;
        }

        v94 += v145;
        --v89;
      }

      while (v89);
    }

    else
    {

      v97 = MEMORY[0x277D84F90];
    }

    (*(v132 + 8))(v91, v133);
    v129 = *(v134 + 40);
    *(v134 + 40) = v97;
  }

  sub_22C36CC48();
}

uint64_t sub_22C4DFF58()
{
  sub_22C369980();
  v1[35] = v2;
  v1[36] = v0;
  v1[34] = v3;
  v4 = sub_22C9063DC();
  v1[37] = v4;
  sub_22C3699B8(v4);
  v1[38] = v5;
  v7 = *(v6 + 64);
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v8 = sub_22C90819C();
  v1[41] = v8;
  sub_22C3699B8(v8);
  v1[42] = v9;
  v11 = *(v10 + 64);
  v1[43] = sub_22C3699D4();
  v12 = sub_22C90762C();
  v1[44] = v12;
  sub_22C3699B8(v12);
  v1[45] = v13;
  v15 = *(v14 + 64);
  v1[46] = sub_22C3699D4();
  v16 = sub_22C90764C();
  v1[47] = v16;
  sub_22C3699B8(v16);
  v1[48] = v17;
  v19 = *(v18 + 64);
  v1[49] = sub_22C3699D4();
  v20 = sub_22C9025AC();
  v1[50] = v20;
  sub_22C3699B8(v20);
  v1[51] = v21;
  v23 = *(v22 + 64);
  v1[52] = sub_22C3699D4();
  v24 = sub_22C906ECC();
  v1[53] = v24;
  sub_22C3699B8(v24);
  v1[54] = v25;
  v27 = *(v26 + 64);
  v1[55] = sub_22C3699D4();
  v28 = sub_22C9088CC();
  v1[56] = v28;
  sub_22C3699B8(v28);
  v1[57] = v29;
  v31 = *(v30 + 64);
  v1[58] = sub_22C3699D4();
  v32 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  v1[59] = sub_22C3699D4();
  v35 = sub_22C9079FC();
  v1[60] = v35;
  sub_22C3699B8(v35);
  v1[61] = v36;
  v38 = *(v37 + 64);
  v1[62] = sub_22C3699D4();
  v39 = sub_22C906C4C();
  v1[63] = v39;
  sub_22C3699B8(v39);
  v1[64] = v40;
  v42 = *(v41 + 64);
  v1[65] = sub_22C3699D4();
  v43 = sub_22C90873C();
  v1[66] = v43;
  sub_22C3699B8(v43);
  v1[67] = v44;
  v46 = *(v45 + 64);
  v1[68] = sub_22C3699D4();
  v47 = sub_22C9089DC();
  v1[69] = v47;
  sub_22C3699B8(v47);
  v1[70] = v48;
  v50 = *(v49 + 64);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v51 = sub_22C908A0C();
  v1[73] = v51;
  sub_22C3699B8(v51);
  v1[74] = v52;
  v54 = *(v53 + 64);
  v1[75] = sub_22C36D0D4();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v55 = sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  v1[80] = v55;
  sub_22C369914(v55);
  v57 = *(v56 + 64);
  v1[81] = sub_22C3699D4();
  v58 = sub_22C3A5908(&qword_27D9BD770, &unk_22C919038);
  sub_22C369914(v58);
  v60 = *(v59 + 64);
  v1[82] = sub_22C36D0D4();
  v1[83] = swift_task_alloc();
  v61 = sub_22C90880C();
  v1[84] = v61;
  sub_22C3699B8(v61);
  v1[85] = v62;
  v64 = *(v63 + 64);
  v1[86] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v65, v66, v67);
}

uint64_t sub_22C4E1A30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[93];
  *v6 = *v2;
  v5[94] = v1;

  v8 = v4[92];
  if (v1)
  {
    v9 = v5[89];
  }

  else
  {

    v5[95] = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C4E2F30()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 768);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[97] = v0;

  if (v0)
  {
    v11 = v5[89];
  }

  else
  {
    v5[98] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C4E4214()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 792);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[100] = v0;

  if (v0)
  {
    v11 = v5[89];
  }

  else
  {
    v5[101] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C4E54F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[45] + 8))(v26[46], v26[44]);
  v28 = sub_22C4E73A4();
  v29(v28);
  v30 = *(v27 + 8);
  v31 = sub_22C36BBCC();
  v32(v31);
  sub_22C37F180(v26[100]);

  sub_22C369A24();
  sub_22C377448();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C4E5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[61] + 8))(v26[62], v26[60]);
  v28 = sub_22C4E73A4();
  v29(v28);
  v30 = *(v27 + 8);
  v31 = sub_22C36BBCC();
  v32(v31);
  sub_22C36FF94(v26 + 24);
  sub_22C37F180(v26[94]);

  sub_22C369A24();
  sub_22C377448();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C4E57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[54] + 8))(v26[55], v26[53]);
  v28 = sub_22C4E73A4();
  v29(v28);
  v30 = *(v27 + 8);
  v31 = sub_22C36BBCC();
  v32(v31);
  sub_22C37F180(v26[97]);

  sub_22C369A24();
  sub_22C377448();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_22C4E5908()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C4E7860();
  v9 = *(v8 + 16);
  if (v9)
  {
    v32 = *(v3 + 48);
    v10 = sub_22C908A0C();
    sub_22C4E77E4(v10);
    v12 = v11;
    v31 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = MEMORY[0x277D84F90];
    for (i = v8; ; v8 = i)
    {
      if (!v0)
      {
        v2 = *(v8 + 16);
      }

      if (__OFSUB__(v2--, 1))
      {
        break;
      }

      if (v9 > *(v8 + 16))
      {
        goto LABEL_15;
      }

      v15 = sub_22C37E284();
      v16(v15);
      *v1 = v2;
      v17 = *(v12 + 32);
      v18 = sub_22C38A17C();
      v19(v18);
      sub_22C4E6F74(v2);
      v21 = v20;
      sub_22C36DD28(v1, &qword_27D9BD768, &qword_22C919030);
      if ((v21 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v13 + 16);
          sub_22C36D270();
          sub_22C590E18();
          v13 = v29;
        }

        sub_22C4E77C4();
        if (v27)
        {
          sub_22C369AB0(v26);
          sub_22C590E18();
          v25 = v22;
        }

        sub_22C4E77B0(v22, v23, v24, v25);
      }

      ++v0;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  if (*(v13 + 16) >= 2uLL)
  {
    v30 = *(v13 + 40);
  }

  sub_22C36CC48();
}

void sub_22C4E5B38()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C4E7860();
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = *(v3 + 48);
    v10 = sub_22C908A0C();
    sub_22C4E77E4(v10);
    v12 = v11;
    v31 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = MEMORY[0x277D84F90];
    for (i = v8; ; v8 = i)
    {
      if (!v0)
      {
        v2 = *(v8 + 16);
      }

      if (__OFSUB__(v2--, 1))
      {
        break;
      }

      if (v9 > *(v8 + 16))
      {
        goto LABEL_15;
      }

      v15 = sub_22C37E284();
      v16(v15);
      *v1 = v2;
      v17 = *(v12 + 32);
      v18 = sub_22C38A17C();
      v19(v18);
      sub_22C4E6F74(v2);
      v21 = v20;
      sub_22C36DD28(v1, &qword_27D9BD768, &qword_22C919030);
      if ((v21 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v13 + 16);
          sub_22C36D270();
          sub_22C590E18();
          v13 = v29;
        }

        sub_22C4E77C4();
        if (v27)
        {
          sub_22C369AB0(v26);
          sub_22C590E18();
          v25 = v22;
        }

        sub_22C4E77B0(v22, v23, v24, v25);
      }

      ++v0;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  if (*(v13 + 16))
  {
    v30 = *(v13 + 32);
  }

  sub_22C36CC48();
}

void sub_22C4E5D5C()
{
  sub_22C36BA7C();
  v73 = sub_22C9026BC();
  v0 = sub_22C369824(v73);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v72 = v6 - v5;
  sub_22C36BA0C();
  v71 = sub_22C907DEC();
  v7 = sub_22C369824(v71);
  v63 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v70 = v12 - v11;
  sub_22C36BA0C();
  v69 = sub_22C906ECC();
  v13 = sub_22C369824(v69);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v68 = v19 - v18;
  sub_22C36BA0C();
  v20 = sub_22C9089DC();
  v21 = sub_22C369824(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C908A0C();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v35 = v34 - v33;
  v36 = sub_22C9087DC();
  sub_22C4E5908();
  if (v38)
  {
    sub_22C9087DC();

    v37 = 0;
    v39 = *(v36 + 16);
  }

  else
  {
    v39 = *(v36 + 16);
    if (v39 < v37)
    {
      goto LABEL_17;
    }
  }

  sub_22C6060C4(v37, v39, v36);
  v76 = v40;
  v42 = v41;
  v44 = v43;

  v45 = v44 >> 1;
  v74 = *MEMORY[0x277D1E798];
  v65 = *MEMORY[0x277D1E738];
  v75 = (v30 + 8);
  v64 = (v63 + 8);
  v62 = *MEMORY[0x277D1CBB0];
  v66 = v44 >> 1;
  v67 = v26;
  while (1)
  {
    if (v45 == v42)
    {
LABEL_13:
      swift_unknownObjectRelease();
LABEL_15:
      sub_22C36CC48();
      return;
    }

    if (v42 >= v45)
    {
      break;
    }

    (*(v30 + 16))(v35, v76 + *(v30 + 72) * v42, v27);
    sub_22C9089EC();
    v46 = sub_22C4E74FC();
    v48 = v47(v46);
    if (v48 == v74)
    {
      v49 = sub_22C4E74FC();
      v50(v49);
      (*(v15 + 32))(v68, v26, v69);
      sub_22C906EBC();
      sub_22C907DAC();
      (*v64)(v70, v71);
      (*(v15 + 8))(v68, v69);
      (*v75)(v35, v27);
      v51 = (*(v2 + 88))(v72, v73);
      v45 = v66;
      v26 = v67;
      (*(v2 + 8))(v72, v73);
      if (v51 == v62)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v48 == v65)
      {
        swift_unknownObjectRelease();
        v57 = *v75;
        v58 = sub_22C36BAFC();
        v59(v58);
        v60 = sub_22C4E74FC();
        v61(v60);
        goto LABEL_15;
      }

      v52 = *v75;
      v53 = sub_22C36BAFC();
      v54(v53);
      v55 = sub_22C4E74FC();
      v56(v55);
    }

    ++v42;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_22C4E629C(uint64_t a1)
{
  v2 = sub_22C9039FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C901FAC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C9087AC();
  sub_22C90882C();

  (*(v3 + 16))(v6, a1, v2);
  return sub_22C90820C();
}

uint64_t sub_22C4E63E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C4E6470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C4DEAB4();
}

uint64_t sub_22C4E653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4E63E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C4E6568(uint64_t a1)
{
  v2 = sub_22C4E677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4E65A4(uint64_t a1)
{
  v2 = sub_22C4E677C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerFeatureStoreTools.encode(to:)(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BD6F8, &qword_22C918E00);
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v17 - v9;
  v11 = *v1;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_22C36FC2C();
  sub_22C374168(v14, v15);
  sub_22C4E677C();

  sub_22C90B6CC();
  v17[1] = v11;
  sub_22C3A5908(&qword_27D9BD708, &qword_22C918E08);
  sub_22C4E6974(&qword_27D9BD710, &qword_27D9BD218);
  sub_22C90B41C();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_22C4E677C()
{
  result = qword_27D9BD700;
  if (!qword_27D9BD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD700);
  }

  return result;
}

uint64_t FullPlannerFeatureStoreTools.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BD718, &qword_22C918E10);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = a1[3];
  v12 = a1[4];
  v13 = sub_22C383CCC();
  sub_22C374168(v13, v14);
  sub_22C4E677C();
  sub_22C90B6BC();
  if (!v2)
  {
    sub_22C3A5908(&qword_27D9BD708, &qword_22C918E08);
    sub_22C4E6974(&qword_27D9BD720, &qword_27D9BD200);
    sub_22C90B32C();
    v15 = *(v8 + 8);
    v16 = sub_22C3806B8();
    v17(v16);
    *a2 = v19;
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C4E6974(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BD708, &qword_22C918E08);
    sub_22C4E7114(a2, MEMORY[0x277D1ED00]);
    sub_22C372164();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryDecorationFeatureControl(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for QueryDecorationFeatureControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerFeatureStoreTools.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4E6B78()
{
  result = qword_27D9BD728;
  if (!qword_27D9BD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD728);
  }

  return result;
}

unint64_t sub_22C4E6BD0()
{
  result = qword_27D9BD730;
  if (!qword_27D9BD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD730);
  }

  return result;
}

unint64_t sub_22C4E6C28()
{
  result = qword_27D9BD738;
  if (!qword_27D9BD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD738);
  }

  return result;
}

uint64_t type metadata accessor for ConversationParser_v1_0()
{
  result = qword_27D9BD740;
  if (!qword_27D9BD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4E6CF0()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281434B90);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, qword_281434978);
      if (v3 <= 0x3F)
      {
        result = sub_22C457168(319, qword_281432C20);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FullPlannerPreferences();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C4E6E1C(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C4E6ECC()
{
  result = qword_27D9BD750;
  if (!qword_27D9BD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD750);
  }

  return result;
}

unint64_t sub_22C4E6F20()
{
  result = qword_27D9BD758;
  if (!qword_27D9BD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD758);
  }

  return result;
}

uint64_t sub_22C4E6F74(uint64_t a1)
{
  v2 = sub_22C9089DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19[-1] - v12;
  sub_22C9089EC();
  v14 = sub_22C9087DC();
  v19[3] = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  v19[4] = sub_22C3D32C8(v15, &qword_27D9BA9F0, &qword_22C912420);
  v19[0] = v14;
  sub_22C9089CC();
  v16 = *(v5 + 8);
  v16(v10, v2);
  sub_22C36FF94(v19);
  if ((*(v5 + 88))(v13, v2) != *MEMORY[0x277D1E858])
  {
    a1 = 0;
  }

  v16(v13, v2);
  return a1;
}

uint64_t sub_22C4E7114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C4E719C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return v4;
}

uint64_t sub_22C4E7208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return v4;
}

uint64_t sub_22C4E7254(uint64_t a1)
{
  *(a1 + 8) = sub_22C4E4214;
  v2 = v1[79];
  v3 = v1[35];
  return v1[46];
}

uint64_t sub_22C4E72D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 288);
  v4 = *(a1 + 96);
  return v1;
}

uint64_t sub_22C4E72E4()
{
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[40];

  return sub_22C903F7C();
}

void sub_22C4E7310()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 688);
  v3 = *(v0 + 632);
  v4 = *(v0 + 472);
  v5 = *(v0 + 288);
}

uint64_t sub_22C4E7328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_22C36F9F4(0xD000000000000033, a21 | 0x8000000000000000, (v21 - 96));
}

void sub_22C4E735C()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[79];
  v5 = v0[74];
  v6 = v0[73];
}

uint64_t sub_22C4E7378()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  result = v0[58];
  v5 = v0[56];
  v6 = *(v0[57] + 8);
  return result;
}

void sub_22C4E73B4()
{
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[233];
}

uint64_t sub_22C4E73C8(uint64_t a1)
{
  *(a1 + 16) = 10;
  *(a1 + 24) = 0xE100000000000000;
  *(v1 + 48) = a1;

  return sub_22C3DB9B0(v1);
}

uint64_t sub_22C4E73EC()
{
  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[79];
  v7 = v0[74];
  v8 = v0[73];
}

uint64_t sub_22C4E7418()
{
  v3 = v0[38];
  *(v1 - 120) = v0[39];
  *(v1 - 128) = v0[37];

  return swift_slowAlloc();
}

void sub_22C4E7454(uint64_t a1@<X8>)
{
  v6 = v1[61];
  v5 = v1[62];
  v8 = v1[59];
  v7 = v1[60];
  *(v3 - 96) = a1;

  sub_22C3CD5B8(v2);
}

uint64_t sub_22C4E7488()
{

  return sub_22C90735C();
}

uint64_t sub_22C4E74EC()
{
  result = v0[43];
  v2 = v0[41];
  v3 = *(v0[42] + 8);
  return result;
}

uint64_t sub_22C4E7558()
{
  result = v0[89];
  *(v1 - 104) = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[79];
  v6 = v0[74];
  v7 = v0[73];
  return result;
}

void sub_22C4E7580()
{
  *(v2 - 104) = v0;
  v3 = *(v1 + 948);
  v4 = *(v1 + 944);
}

uint64_t sub_22C4E75A4()
{
  result = *(v0 + 576);
  v2 = *(v0 + 552);
  return result;
}

uint64_t sub_22C4E75D0()
{

  return sub_22C9087DC();
}

uint64_t sub_22C4E760C()
{

  return swift_slowAlloc();
}

uint64_t sub_22C4E7640()
{
  result = v0;
  v4 = *(v1 - 112);
  v3 = *(v1 - 104);
  return result;
}

uint64_t sub_22C4E7658()
{
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);

  return sub_22C9089EC();
}

uint64_t sub_22C4E7674()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C4E7698()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C4E76BC()
{

  return sub_22C909F0C();
}

uint64_t sub_22C4E76D8()
{
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[33];

  return sub_22C90878C();
}

uint64_t sub_22C4E7750()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t sub_22C4E7798()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void sub_22C4E77F8()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
}

void sub_22C4E780C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[74];
  v4 = v0[73];
}

uint64_t sub_22C4E7860()
{
  *(v1 - 88) = v0;

  return sub_22C9087DC();
}

uint64_t sub_22C4E7880()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C4E78A0()
{

  return swift_task_alloc();
}

uint64_t sub_22C4E78B8()
{
}

uint64_t sub_22C4E78D0()
{

  return swift_task_alloc();
}

uint64_t sub_22C4E78E8()
{
}

uint64_t sub_22C4E7900()
{

  return sub_22C3A59A8(v0);
}

uint64_t sub_22C4E7918()
{

  return sub_22C90763C();
}

uint64_t sub_22C4E7930()
{

  return swift_setDeallocating();
}

uint64_t sub_22C4E7948()
{

  return sub_22C90763C();
}

uint64_t type metadata accessor for ExpressionParser_v1_0()
{
  result = qword_2814335B0;
  if (!qword_2814335B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4E79D4()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    result = sub_22C457168(319, qword_28142FF48);
    if (v2 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281434518);
      if (v3 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_27D9BC400);
        if (v4 <= 0x3F)
        {
          result = sub_22C457168(319, qword_281433728);
          if (v5 <= 0x3F)
          {
            result = sub_22C457168(319, qword_281434978);
            if (v6 <= 0x3F)
            {
              result = sub_22C457168(319, &qword_27D9BD7A0);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C4E7B40(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22C9070DC();
  v6 = *(*(v51 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v37 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  v47 = v13;
  v48 = v12;
  v46 = v13 + 16;
  v49 = (v13 + 32);
  v40 = v3 + 32;
  v41 = v3;
  v39 = (v3 + 8);
  v38 = xmmword_22C90F800;
  v42 = v2;
  v43 = a1;
  while (1)
  {
    if (v48 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v15 = *(v47 + 72);
    (*(v47 + 16))(v50, a1 + v14 + v15 * v10, v51);
    sub_22C9068FC();
    sub_22C628274();
    v18 = v17;
    v19 = v11[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v11[3] < v19 + v20)
    {
      sub_22C88E1DC();
      v11 = v53;
      sub_22C628274();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v39)(v52, v2);
      v24 = v11[7];
      v25 = *v49;
      (*v49)(v45, v50, v51);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      v44 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v26 + 16);
        sub_22C5916E4();
        v26 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C5916E4();
        v26 = v35;
        *(v24 + 8 * v18) = v35;
      }

      v2 = v42;
      *(v26 + 16) = v28 + 1;
      v44((v26 + v14 + v28 * v15), v45, v51);
      a1 = v43;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v49)((v29 + v14), v50, v51);
      v11[(v18 >> 6) + 8] |= 1 << v18;
      (*(v41 + 32))(v11[6] + *(v41 + 72) * v18, v52, v2);
      *(v11[7] + 8 * v18) = v29;
      v30 = v11[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v11[2] = v32;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4E7F64(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v60 - v4;
  v74 = sub_22C9070DC();
  v5 = *(v74 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v60 - v9;
  v73 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v10 = *(*(v73 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v70 = &v60 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v67 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v62 = v5;
  v64 = (v5 + 32);
  v75 = a1;

  v23 = 0;
  v68 = v21;
  for (i = a1 + 64; ; v17 = i)
  {
    v24 = v23;
    if (!v20)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v23 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v23 << 6);
      v27 = v75;
      v28 = *(v75 + 48);
      v29 = sub_22C901FAC();
      v30 = *(v29 - 8);
      v31 = v30;
      v32 = *(v30 + 72);
      v33 = v70;
      (*(v30 + 16))(v70, v28 + v32 * v26, v29);
      v34 = v73;
      *&v33[*(v73 + 48)] = *(*(v27 + 56) + 8 * v26);
      v35 = v33;
      v36 = v71;
      sub_22C4E9CC4(v35, v71);
      v37 = *(v34 + 48);
      swift_getKeyPath();
      v76 = *(v36 + v37);

      v38 = v72;
      swift_getAtKeyPath();

      if (sub_22C370B74(v38, 1, v74) != 1)
      {
        break;
      }

      sub_22C36DD28(v36, &qword_27D9BC000, &qword_22C911C98);
      result = sub_22C36DD28(v38, &qword_27D9BAA18, &qword_22C911C40);
      v24 = v23;
      v21 = v68;
      v17 = i;
      if (!v20)
      {
LABEL_7:
        while (1)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v23 >= v21)
          {

            return v67;
          }

          v20 = *(v17 + 8 * v23);
          ++v24;
          if (v20)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v60 = v32;
    v61 = v31;
    v39 = v63;
    v40 = *v64;
    v41 = v38;
    v42 = v74;
    (*v64)(v63, v41, v74);
    sub_22C4E9CC4(v36, v66);
    v40(v65, v39, v42);
    if (v67[3] <= v67[2])
    {
      sub_22C88DF64();
    }

    v43 = v77;
    v44 = *(v77 + 40);
    sub_22C4E9D34(&qword_2814357B0);
    result = sub_22C909F7C();
    v45 = v43 + 64;
    v67 = v43;
    v46 = -1 << *(v43 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
    v51 = v60;
    v50 = v61;
LABEL_24:
    v56 = *(v73 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v57 = v67;
    v58 = v66;
    (*(v50 + 32))(v67[6] + v49 * v51, v66, v29);
    v40((v57[7] + *(v62 + 72) * v49), v65, v74);
    ++v57[2];
    v59 = *(v58 + v56);

    v21 = v68;
  }

  v52 = 0;
  v53 = (63 - v46) >> 6;
  v51 = v60;
  v50 = v61;
  while (++v48 != v53 || (v52 & 1) == 0)
  {
    v54 = v48 == v53;
    if (v48 == v53)
    {
      v48 = 0;
    }

    v52 |= v54;
    v55 = *(v45 + 8 * v48);
    if (v55 != -1)
    {
      v49 = __clz(__rbit64(~v55)) + (v48 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C4E8518(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9BD7C0, &unk_22C92B700);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C4E9DE8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22C4E85B0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C4EA134(a1, sub_22C4E9D78, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C4E8634(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v215 = a5;
  v237 = a3;
  v216 = a1;
  v203 = sub_22C9063DC();
  v7 = sub_22C369824(v203);
  v202 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v208 = v12 - v11;
  sub_22C36BA0C();
  v220 = sub_22C90769C();
  v13 = sub_22C369824(v220);
  v207 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v219 = v18 - v17;
  sub_22C36BA0C();
  v223 = sub_22C901FAC();
  v19 = sub_22C369824(v223);
  v218 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  v204 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v242 = &v201 - v25;
  sub_22C36BA0C();
  v224 = sub_22C90654C();
  v26 = sub_22C369824(v224);
  v206 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v32 = v31 - v30;
  v229 = sub_22C906ACC();
  v33 = sub_22C369824(v229);
  v205 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v228 = v38 - v37;
  v39 = sub_22C36BA0C();
  v213 = type metadata accessor for StatefulExpressionParser(v39);
  v40 = sub_22C36985C(v213);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  v217 = (v44 - v43);
  sub_22C36BA0C();
  v45 = sub_22C9070DC();
  v243 = sub_22C369824(v45);
  v244 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v243);
  sub_22C369838();
  v51 = (v50 - v49);
  v225 = sub_22C9089DC();
  v52 = sub_22C369824(v225);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C369838();
  v238 = v58 - v57;
  sub_22C36BA0C();
  v245 = sub_22C9088CC();
  v59 = sub_22C369824(v245);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  v240 = v64;
  sub_22C369930();
  MEMORY[0x28223BE20](v65);
  v230 = &v201 - v66;
  sub_22C36BA0C();
  v239 = sub_22C908A0C();
  v67 = sub_22C369824(v239);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C369838();
  v74 = v73 - v72;
  v212 = type metadata accessor for ExpressionParser_v1_0();
  v75 = *(v212 + 44);
  v214 = v5;
  v76 = sub_22C4E958C(v237, &v5[v75]);

  v77 = v76;
  v78 = v241;
  v211 = sub_22C4E85B0(v77, a4);

  v80 = sub_22C4E7B40(v79);
  v209 = sub_22C4E7F64(v80);
  v210 = v78;

  v81 = *(sub_22C9087DC() + 16);
  v226 = v32;
  v227 = v61;
  v241 = v51;
  if (v81)
  {
    v83 = *(v69 + 16);
    v82 = (v69 + 16);
    v236 = v83;
    v84 = v82[64];
    sub_22C36BA94();
    v201 = v85;
    v87 = v85 + v86;
    v88 = *(v82 + 7);
    v237 = v82;
    v234 = v82 - 8;
    v235 = v88;
    v233 = (v54 + 88);
    LODWORD(v232) = *MEMORY[0x277D1E6F8];
    v222 = v54 + 8;
    v221 = v54 + 96;
    v231 = (v61 + 32);
    v89 = MEMORY[0x277D84F90];
    do
    {
      v90 = v51;
      v91 = v239;
      v236(v74, v87, v239);
      v92 = v238;
      sub_22C9089EC();
      (*v234)(v74, v91);
      v93 = sub_22C36BDDC();
      v95 = v94(v93);
      if (v95 == v232)
      {
        v96 = sub_22C36BDDC();
        v97(v96);
        v98 = *v231;
        (*v231)(v240, v92, v245);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v99 = v89;
        }

        else
        {
          v108 = *(v89 + 16);
          sub_22C5925A4();
          v99 = v109;
        }

        v101 = *(v99 + 16);
        v100 = *(v99 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_22C36A958(v100);
          sub_22C5925A4();
          v99 = v110;
        }

        *(v99 + 16) = v101 + 1;
        v102 = *(v227 + 80);
        sub_22C36BA94();
        v89 = v103;
        (v98)(v103 + v104 + *(v105 + 72) * v101, v240, v245);
        v51 = v241;
      }

      else
      {
        v106 = sub_22C36BDDC();
        v107(v106);
        v51 = v90;
      }

      v87 += v235;
      --v81;
    }

    while (v81);

    v111 = v226;
    v112 = v89;
  }

  else
  {
    v111 = v32;

    v112 = MEMORY[0x277D84F90];
  }

  v113 = *(v112 + 16);
  isUniquelyReferenced_nonNull_native = v243;
  if (v113)
  {
    v115 = *(v227 + 16);
    v116 = *(v227 + 80);
    sub_22C36BA94();
    v238 = v118;
    v120 = v118 + v119;
    v239 = *(v117 + 56);
    v240 = v121;
    v122 = (v117 - 8);
    v123 = MEMORY[0x277D84F90];
    while (1)
    {
      v124 = v230;
      v125 = v245;
      v126 = v117;
      v240(v230, v120, v245);
      v127 = sub_22C90887C();
      (*v122)(v124, v125);
      v128 = *(v127 + 16);
      v129 = *(v123 + 16);
      if (__OFADD__(v129, v128))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v129 + v128 > *(v123 + 24) >> 1)
      {
        sub_22C5916E4();
        v123 = v130;
      }

      isUniquelyReferenced_nonNull_native = v243;
      if (*(v127 + 16))
      {
        v131 = *(v123 + 16);
        if ((*(v123 + 24) >> 1) - v131 < v128)
        {
          goto LABEL_56;
        }

        v132 = v123 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + v244[9] * v131;
        swift_arrayInitWithCopy();

        v117 = v126;
        if (v128)
        {
          v133 = *(v123 + 16);
          v134 = __OFADD__(v133, v128);
          v135 = v133 + v128;
          if (v134)
          {
            goto LABEL_58;
          }

          *(v123 + 16) = v135;
        }
      }

      else
      {

        v117 = v126;
        if (v128)
        {
          goto LABEL_54;
        }
      }

      v120 += v239;
      if (!--v113)
      {

        v136 = v226;
        v51 = v241;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

    v123 = MEMORY[0x277D84F90];
    v136 = v111;
LABEL_29:
    v137 = *(v123 + 16);
    if (!v137)
    {
      v143 = MEMORY[0x277D84F98];
LABEL_46:

      v170 = v214;
      v171 = *v214;
      v172 = v212;
      v173 = *(v212 + 20);
      v174 = v213;
      v175 = v213[6];
      v176 = sub_22C908AEC();
      sub_22C36985C(v176);
      v178 = v217;
      (*(v177 + 16))(&v217[v175], &v170[v173]);
      v179 = v174[7];
      sub_22C387168(v172[6]);
      v180 = v174[8];
      sub_22C387168(v172[7]);
      v181 = v174[9];
      sub_22C387168(v172[8]);
      v182 = v174[10];
      sub_22C387168(v172[9]);
      *v178 = v171;
      v178[1] = 0;
      *&v178[v174[11]] = v215;
      *&v178[v174[12]] = v211;
      *&v178[v174[13]] = v209;
      *&v178[v174[14]] = v143;
      v178[v174[15]] = 0;
      v178[v174[16]] = 0;

      v183 = v216;
      v184 = v210;
      sub_22C4429E4();
      v186 = v185;
      if (v184)
      {
        v187 = v208;
        sub_22C903F7C();
        v188 = v218;
        v189 = v204;
        v190 = v223;
        (*(v218 + 16))(v204, v183, v223);
        v191 = sub_22C9063CC();
        v192 = sub_22C90AADC();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v246 = v244;
          *v193 = 136315138;
          sub_22C4E9D34(&qword_27D9BAA48);
          v194 = sub_22C90B47C();
          v245 = v186;
          v196 = v195;
          (*(v188 + 8))(v189, v190);
          v197 = sub_22C36F9F4(v194, v196, &v246);
          v186 = v245;

          *(v193 + 4) = v197;
          _os_log_impl(&dword_22C366000, v191, v192, "Failed to render Expression in Plan with StatementID: %s", v193, 0xCu);
          v198 = v244;
          sub_22C36FF94(v244);
          MEMORY[0x2318B9880](v198, -1, -1);
          MEMORY[0x2318B9880](v193, -1, -1);

          (*(v202 + 8))(v208, v203);
        }

        else
        {

          (*(v188 + 8))(v189, v190);
          (*(v202 + 8))(v187, v203);
        }

        swift_willThrow();
        v199 = v217;
      }

      else
      {
        v199 = v178;
      }

      sub_22C4E9C68(v199);
      return v186;
    }

    v138 = 0;
    v139 = *(v244 + 80);
    sub_22C36BA94();
    v245 = v123 + v140;
    v240 = (v141 + 16);
    v239 = v206 + 88;
    LODWORD(v238) = *MEMORY[0x277D1DA78];
    v237 = (v141 + 8);
    v235 = v206 + 96;
    v236 = (v206 + 8);
    v234 = (v205 + 32);
    v227 = v142 + 16;
    v232 = (v142 + 8);
    v233 = (v207 + 8);
    v143 = MEMORY[0x277D84F98];
    v230 = v137;
    v231 = (v205 + 8);
    while (v138 < *(v123 + 16))
    {
      (v244[2])(v51, v245 + v244[9] * v138, isUniquelyReferenced_nonNull_native);
      sub_22C90702C();
      v144 = sub_22C369E80();
      v146 = v145(v144);
      if (v146 == v238)
      {
        v147 = sub_22C369E80();
        v148(v147);
        (*v234)(v228, v136, v229);
        sub_22C9068FC();
        v149 = v219;
        sub_22C906ABC();
        v150 = sub_22C90768C();
        v152 = v151;
        (*v233)(v149, v220);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v246 = v143;
        sub_22C628274();
        if (__OFADD__(v143[2], (v154 & 1) == 0))
        {
          goto LABEL_57;
        }

        v155 = v153;
        v51 = v154;
        sub_22C3A5908(&qword_27D9BD7A8, &qword_22C9190A8);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          if ((v51 & 1) != (v157 & 1))
          {
            goto LABEL_60;
          }

          v155 = v156;
        }

        v143 = v246;
        if (v51)
        {
          v158 = (v246[7] + 16 * v155);
          v159 = v158[1];
          *v158 = v150;
          v158[1] = v152;

          (*v232)(v242, v223);
          (*v231)(v228, v229);
          v160 = sub_22C371840();
          v161(v160);
        }

        else
        {
          v246[(v155 >> 6) + 8] |= 1 << v155;
          isUniquelyReferenced_nonNull_native = v218;
          v51 = v242;
          v164 = v223;
          (*(v218 + 16))(v143[6] + *(v218 + 72) * v155, v242, v223);
          v165 = (v143[7] + 16 * v155);
          *v165 = v150;
          v165[1] = v152;
          (*(isUniquelyReferenced_nonNull_native + 8))(v51, v164);
          (*v231)(v228, v229);
          v166 = sub_22C371840();
          v167(v166);
          v168 = v143[2];
          v134 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v134)
          {
            goto LABEL_59;
          }

          v143[2] = v169;
        }

        v136 = v226;
        v137 = v230;
      }

      else
      {
        (*v237)(v51, isUniquelyReferenced_nonNull_native);
        v162 = sub_22C369E80();
        v163(v162);
      }

      if (v137 == ++v138)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4E958C(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v2 = sub_22C9089DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C9079FC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v86 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v85 = &v79 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v95 = &v79 - v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v80 = &v79 - v23;
  sub_22C36BA0C();
  v94 = sub_22C908A0C();
  v24 = sub_22C369824(v94);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v31 = v30 - v29;
  v32 = *(sub_22C9087DC() + 16);
  v33 = MEMORY[0x277D84F90];
  v87 = v14;
  if (v32)
  {
    v35 = *(v26 + 16);
    v34 = v26 + 16;
    v36 = *(v34 + 64);
    sub_22C36BA94();
    v79 = v37;
    v39 = v37 + v38;
    v91 = *(v34 + 56);
    v92 = v40;
    v93 = v34;
    v89 = v5 + 88;
    v90 = (v34 - 8);
    v88 = *MEMORY[0x277D1E808];
    v82 = v5 + 96;
    v83 = v5 + 8;
    v41 = (v14 + 32);
    v42 = MEMORY[0x277D84F90];
    v84 = v2;
    do
    {
      v43 = v94;
      v92(v31, v39, v94);
      sub_22C9089EC();
      (*v90)(v31, v43);
      v44 = sub_22C37284C();
      v46 = v45(v44);
      if (v46 == v88)
      {
        v47 = sub_22C37284C();
        v48(v47);
        v49 = *v41;
        v50 = v86;
        (*v41)(v86, v10, v11);
        v51 = v85;
        v49(v85, v50, v11);
        v49(v95, v51, v11);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = v42;
        }

        else
        {
          v61 = *(v42 + 2);
          sub_22C593164();
          v52 = v62;
        }

        v54 = *(v52 + 2);
        v53 = *(v52 + 3);
        if (v54 >= v53 >> 1)
        {
          sub_22C36A958(v53);
          sub_22C593164();
          v52 = v63;
        }

        *(v52 + 2) = v54 + 1;
        v55 = *(v87 + 80);
        sub_22C36BA94();
        v42 = v56;
        v49(&v56[v57 + *(v58 + 72) * v54], v95, v11);
      }

      else
      {
        v59 = sub_22C37284C();
        v60(v59);
      }

      v39 += v91;
      --v32;
    }

    while (v32);

    v33 = MEMORY[0x277D84F90];
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v96 = v33;
  v64 = *(v42 + 2);
  v65 = v80;
  if (v64)
  {
    v67 = v87 + 16;
    v66 = *(v87 + 16);
    v68 = *(v87 + 80);
    sub_22C36BA94();
    v95 = v42;
    v70 = &v42[v69];
    v71 = *(v67 + 56);
    do
    {
      v66(v65, v70, v11);
      v72 = sub_22C90799C();
      v73 = sub_22C4B9B90(v72);
      v74 = sub_22C807C9C(v73);
      (*(v67 - 8))(v65, v11);
      sub_22C3CE354(v74);
      v70 += v71;
      --v64;
    }

    while (v64);
  }

  v76 = v96;
  MEMORY[0x28223BE20](v75);
  *(&v79 - 2) = v81;
  v77 = sub_22C8F4848(sub_22C4EA474, (&v79 - 4), v76);

  return sub_22C4E8518(v77);
}

void sub_22C4E9A90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for DynamicEnumeration(0) + 20));
  sub_22C7932C4();
  *a2 = v4;
}

uint64_t sub_22C4E9B04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_22C374168(a2, v5);
  (*(v6 + 8))(v20, a1, v5, v6);
  if (v21 == 1)
  {
    v7 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    v8 = a3;
    v9 = 1;
  }

  else
  {
    v10 = v20[3];
    v11 = v20[4];
    v13 = v20[1];
    v12 = v20[2];
    v14 = v20[0];

    sub_22C456CE4(v14, v13, v12, v10, v11, 0);
    v15 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    v16 = *(v15 + 48);
    v17 = *(type metadata accessor for DynamicEnumeration.Case(0) + 20);
    v18 = sub_22C901FAC();
    (*(*(v18 - 8) + 16))(a3, a1 + v17, v18);
    *(a3 + v16) = v14;
    v8 = a3;
    v9 = 0;
    v7 = v15;
  }

  return sub_22C36C640(v8, v9, 1, v7);
}

uint64_t sub_22C4E9C68(uint64_t a1)
{
  v2 = type metadata accessor for StatefulExpressionParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4E9CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4E9D34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C4E9D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BD7B0, &qword_22C9190F8) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100) + 48);
  result = sub_22C88FDC4(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22C4E9DE8(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = a3;
  v45 = sub_22C901FAC();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v37 - v12;
  v42 = *(a1 + 16);
  if (!v42)
  {
  }

  v13 = 0;
  v14 = *(v10 + 48);
  v40 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v41 = v14;
  v44 = (v5 + 32);
  v39 = v5;
  v38 = (v5 + 8);
  while (v13 < *(a1 + 16))
  {
    v15 = v11;
    v16 = v43;
    sub_22C4EA490(v40 + *(v11 + 72) * v13, v43);
    v17 = *v44;
    (*v44)(v46, v16, v45);
    v18 = *(v16 + v41);
    v19 = *v47;
    sub_22C628274();
    v22 = v21;
    v23 = *(v19 + 16);
    v24 = (v20 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = v20;
    if (*(v19 + 24) >= v23 + v24)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        sub_22C90B16C();
      }
    }

    else
    {
      v26 = v47;
      sub_22C88EC94();
      v27 = *v26;
      sub_22C628274();
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_20;
      }

      v22 = v28;
    }

    v30 = *v47;
    if (v25)
    {
      (*v38)(v46, v45);
      v31 = v30[7];
      v32 = *(v31 + 8 * v22);
      *(v31 + 8 * v22) = v18;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v17((v30[6] + *(v39 + 72) * v22), v46, v45);
      *(v30[7] + 8 * v22) = v18;
      v33 = v30[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_19;
      }

      v30[2] = v35;
    }

    ++v13;
    a2 = 1;
    v11 = v15;
    if (v42 == v13)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EA134(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v43 = sub_22C901FAC();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BD7B8, &qword_22C919108);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  sub_22C8920A0(v48, a1, a2, a3);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v17 = (v9 + 32);
  v41 = (v9 + 8);
  v42 = v9;
  v40[1] = a1;

  v40[0] = a3;

  while (1)
  {
    sub_22C89119C();
    v18 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    if (sub_22C370B74(v16, 1, v18) == 1)
    {
      sub_22C36A674();
    }

    v19 = *(v18 + 48);
    v20 = *v17;
    (*v17)(v12, v16, v43);
    v21 = *&v16[v19];
    v22 = *v50;
    sub_22C628274();
    v25 = v24;
    v26 = *(v22 + 16);
    v27 = (v23 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v28 = v23;
    if (*(v22 + 24) >= v26 + v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        sub_22C90B16C();
      }
    }

    else
    {
      v29 = v50;
      sub_22C88EC94();
      v30 = *v29;
      sub_22C628274();
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_16;
      }

      v25 = v31;
    }

    v33 = *v50;
    if (v28)
    {
      (*v41)(v12, v43);
      v34 = v33[7];
      v35 = *(v34 + 8 * v25);
      *(v34 + 8 * v25) = v21;

      a4 = 1;
    }

    else
    {
      v33[(v25 >> 6) + 8] |= 1 << v25;
      v20((v33[6] + *(v42 + 72) * v25), v12, v43);
      *(v33[7] + 8 * v25) = v21;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v33[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EA490(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProgramStatementParser_v1_0()
{
  result = qword_281431A80;
  if (!qword_281431A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4EA590()
{
  result = sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4EA604(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22C4EA644(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22C4EA6B0(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22C9070DC();
  v6 = *(*(v51 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v37 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  v47 = v13;
  v48 = v12;
  v46 = v13 + 16;
  v49 = (v13 + 32);
  v40 = v3 + 32;
  v41 = v3;
  v39 = (v3 + 8);
  v38 = xmmword_22C90F800;
  v42 = v2;
  v43 = a1;
  while (1)
  {
    if (v48 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v15 = *(v47 + 72);
    (*(v47 + 16))(v50, a1 + v14 + v15 * v10, v51);
    sub_22C9068FC();
    sub_22C628274();
    v18 = v17;
    v19 = v11[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v11[3] < v19 + v20)
    {
      sub_22C88E1DC();
      v11 = v53;
      sub_22C628274();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v39)(v52, v2);
      v24 = v11[7];
      v25 = *v49;
      (*v49)(v45, v50, v51);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      v44 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v26 + 16);
        sub_22C5916E4();
        v26 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C5916E4();
        v26 = v35;
        *(v24 + 8 * v18) = v35;
      }

      v2 = v42;
      *(v26 + 16) = v28 + 1;
      v44((v26 + v14 + v28 * v15), v45, v51);
      a1 = v43;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      (*v49)((v29 + v14), v50, v51);
      v11[(v18 >> 6) + 8] |= 1 << v18;
      (*(v41 + 32))(v11[6] + *(v41 + 72) * v18, v52, v2);
      *(v11[7] + 8 * v18) = v29;
      v30 = v11[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v11[2] = v32;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EAAD4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v60 - v4;
  v74 = sub_22C9070DC();
  v5 = *(v74 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v60 - v9;
  v73 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v10 = *(*(v73 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v70 = &v60 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v67 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v62 = v5;
  v64 = (v5 + 32);
  v75 = a1;

  v23 = 0;
  v68 = v21;
  for (i = a1 + 64; ; v17 = i)
  {
    v24 = v23;
    if (!v20)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v23 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v23 << 6);
      v27 = v75;
      v28 = *(v75 + 48);
      v29 = sub_22C901FAC();
      v30 = *(v29 - 8);
      v31 = v30;
      v32 = *(v30 + 72);
      v33 = v70;
      (*(v30 + 16))(v70, v28 + v32 * v26, v29);
      v34 = v73;
      *&v33[*(v73 + 48)] = *(*(v27 + 56) + 8 * v26);
      v35 = v33;
      v36 = v71;
      sub_22C4E9CC4(v35, v71);
      v37 = *(v34 + 48);
      swift_getKeyPath();
      v76 = *(v36 + v37);

      v38 = v72;
      swift_getAtKeyPath();

      if (sub_22C370B74(v38, 1, v74) != 1)
      {
        break;
      }

      sub_22C36DD28(v36, &qword_27D9BC000, &qword_22C911C98);
      result = sub_22C36DD28(v38, &qword_27D9BAA18, &qword_22C911C40);
      v24 = v23;
      v21 = v68;
      v17 = i;
      if (!v20)
      {
LABEL_7:
        while (1)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v23 >= v21)
          {

            return v67;
          }

          v20 = *(v17 + 8 * v23);
          ++v24;
          if (v20)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v60 = v32;
    v61 = v31;
    v39 = v63;
    v40 = *v64;
    v41 = v38;
    v42 = v74;
    (*v64)(v63, v41, v74);
    sub_22C4E9CC4(v36, v66);
    v40(v65, v39, v42);
    if (v67[3] <= v67[2])
    {
      sub_22C88DF64();
    }

    v43 = v77;
    v44 = *(v77 + 40);
    sub_22C4075B8();
    result = sub_22C909F7C();
    v45 = v43 + 64;
    v67 = v43;
    v46 = -1 << *(v43 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~*(v43 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
    v51 = v60;
    v50 = v61;
LABEL_24:
    v56 = *(v73 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v57 = v67;
    v58 = v66;
    (*(v50 + 32))(v67[6] + v49 * v51, v66, v29);
    v40((v57[7] + *(v62 + 72) * v49), v65, v74);
    ++v57[2];
    v59 = *(v58 + v56);

    v21 = v68;
  }

  v52 = 0;
  v53 = (63 - v46) >> 6;
  v51 = v60;
  v50 = v61;
  while (++v48 != v53 || (v52 & 1) == 0)
  {
    v54 = v48 == v53;
    if (v48 == v53)
    {
      v48 = 0;
    }

    v52 |= v54;
    v55 = *(v45 + 8 * v48);
    if (v55 != -1)
    {
      v49 = __clz(__rbit64(~v55)) + (v48 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}