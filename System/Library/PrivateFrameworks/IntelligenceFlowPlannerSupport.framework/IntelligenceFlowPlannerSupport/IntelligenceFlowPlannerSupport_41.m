uint64_t sub_22C1F6228()
{
  v2 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *v0;
  v10 = *(v0 + 16);
  sub_22BE22814();
  sub_22C107718(v10, v5);
  if (v1)
  {
    sub_22BE233E8(&v19, &qword_27D9072A0, &qword_22C288100);
  }

  else
  {
    v11 = *(v0 + 17);
    v18 = *(v0 + 24);
    v12 = v6[6];
    v13 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    sub_22BE19DC4(&v9[v12], 1, 1, v13);
    v14 = v6[7];
    v15 = v6[8];
    sub_22BE22814();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *(v9 + 8) = v19;
    sub_22BE2343C();
    *v9 = v11;
    *&v9[v14] = v18;
    sub_22C259290(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);
    v0 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v0;
}

uint64_t sub_22C1F6464(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C220C88(v9);
  if (v2)
  {
  }

  else
  {
    v11 = v10;
    v12 = v8 + *(v5 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v8[1] = a1;
    v8[2] = a2;
    *v8 = v11;
    sub_22C259290(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);
    v5 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v5;
}

uint64_t sub_22C1F65B4(char a1)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 3;
  v7 = &v5[*(v6 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = a1;
  sub_22C259290(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C1F66C8()
{
  Step = type metadata accessor for QueryStep(0);
  v3 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoQueryStep(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoQueryStep.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F6848(uint64_t a1)
{
  v2 = v1;
  v68 = sub_22C272594();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v49 - v8;
  v9 = sub_22C272874();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v50 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v16 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  result = sub_22C273D04();
  v19 = result;
  v20 = 0;
  v59 = v10;
  v60 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v52 = (v24 + 63) >> 6;
  v53 = v22;
  v56 = v10 + 16;
  v57 = (v10 + 8);
  v66 = v4 + 32;
  v54 = result + 64;
  v55 = v4;
  v58 = result;
  while (1)
  {
    v27 = v61;
    if (!v26)
    {
      v30 = v20;
      while (1)
      {
        v20 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v20 >= v52)
        {
          v45 = v51;
          v46 = &v51[*(v50 + 20)];
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v45 = v19;
          sub_22C259290(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          v47 = sub_22C270744();
          sub_22BE1AE58();
          return v47;
        }

        v31 = *(v53 + 8 * v20);
        ++v30;
        if (v31)
        {
          v28 = v2;
          v29 = __clz(__rbit64(v31));
          v63 = (v31 - 1) & v31;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v28 = v2;
    v29 = __clz(__rbit64(v26));
    v63 = (v26 - 1) & v26;
LABEL_11:
    v32 = v29 | (v20 << 6);
    v33 = *(v60 + 56);
    v34 = (*(v60 + 48) + 16 * v32);
    v35 = v34[1];
    v64 = *v34;
    v36 = *(v59 + 16);
    v36(v15, v33 + *(v59 + 72) * v32, v9);
    v36(v27, v15, v9);
    v65 = v35;

    sub_22C272854();
    if (v28)
    {
      break;
    }

    v62 = 0;
    v37 = *v57;
    (*v57)(v27, v9);
    v38 = v55;
    v39 = *(v55 + 32);
    v39(v67, v69, v68);
    v37(v15, v9);
    *(v54 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v19 = v58;
    v40 = (*(v58 + 48) + 16 * v32);
    v41 = v65;
    *v40 = v64;
    v40[1] = v41;
    result = (v39)(*(v19 + 56) + *(v38 + 72) * v32, v67, v68);
    v42 = *(v19 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_18;
    }

    *(v19 + 16) = v44;
    v2 = v62;
    v26 = v63;
  }

  v47 = v57;
  v48 = *v57;
  (*v57)(v27, v9);

  v48(v15, v9);
  return v47;
}

uint64_t sub_22C1F6D28()
{
  v1 = v0;
  v2 = sub_22C272984();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for QueryPayload.StringQuery(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v15);
  (*(v3 + 16))(v6, v15, v2);
  sub_22C272964();
  (*(v3 + 8))(v6, v2);
  v20 = sub_22C2725C4();
  sub_22BE19DC4(v10, 0, 1, v20);
  v21 = &v15[*(v12 + 28)];
  v23 = *v21;
  v22 = *(v21 + 1);
  sub_22BE19DC4(v19 + *(v16 + 20), 1, 1, v20);
  v24 = *(v16 + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v19 = v23;
  v19[1] = v22;
  sub_22C259290(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v25 = sub_22C270744();
  sub_22BE1AE58();
  return v25;
}

uint64_t sub_22C1F703C()
{
  v1 = sub_22C272984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for QueryPayload.IdentifierQuery(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v14);
  (*(v2 + 16))(v5, v14, v1);
  sub_22C272964();
  (*(v2 + 8))(v5, v1);
  v19 = sub_22C2725C4();
  sub_22BE19DC4(v9, 0, 1, v19);
  v20 = *&v14[*(v11 + 28)];
  sub_22BE19DC4(v18 + *(v15 + 20), 1, 1, v19);
  v21 = *(v15 + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v18 = v20;
  sub_22C259290(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C1F734C(uint64_t a1)
{
  v2 = v1;
  v68 = sub_22C272594();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v49 - v8;
  v9 = sub_22C272874();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v50 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  v16 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9155F0, &qword_22C2CC8C8);
  result = sub_22C273D04();
  v19 = result;
  v20 = 0;
  v59 = v10;
  v60 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v52 = (v24 + 63) >> 6;
  v53 = v22;
  v56 = v10 + 16;
  v57 = (v10 + 8);
  v66 = v4 + 32;
  v54 = result + 64;
  v55 = v4;
  v58 = result;
  while (1)
  {
    v27 = v61;
    if (!v26)
    {
      v30 = v20;
      while (1)
      {
        v20 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v20 >= v52)
        {
          v45 = v51;
          v46 = &v51[*(v50 + 20)];
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          *v45 = v19;
          sub_22C259290(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
          v47 = sub_22C270744();
          sub_22BE1AE58();
          return v47;
        }

        v31 = *(v53 + 8 * v20);
        ++v30;
        if (v31)
        {
          v28 = v2;
          v29 = __clz(__rbit64(v31));
          v63 = (v31 - 1) & v31;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v28 = v2;
    v29 = __clz(__rbit64(v26));
    v63 = (v26 - 1) & v26;
LABEL_11:
    v32 = v29 | (v20 << 6);
    v33 = *(v60 + 56);
    v34 = (*(v60 + 48) + 16 * v32);
    v35 = v34[1];
    v64 = *v34;
    v36 = *(v59 + 16);
    v36(v15, v33 + *(v59 + 72) * v32, v9);
    v36(v27, v15, v9);
    v65 = v35;

    sub_22C272854();
    if (v28)
    {
      break;
    }

    v62 = 0;
    v37 = *v57;
    (*v57)(v27, v9);
    v38 = v55;
    v39 = *(v55 + 32);
    v39(v67, v69, v68);
    v37(v15, v9);
    *(v54 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v19 = v58;
    v40 = (*(v58 + 48) + 16 * v32);
    v41 = v65;
    *v40 = v64;
    v40[1] = v41;
    result = (v39)(*(v19 + 56) + *(v38 + 72) * v32, v67, v68);
    v42 = *(v19 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_18;
    }

    *(v19 + 16) = v44;
    v2 = v62;
    v26 = v63;
  }

  v47 = v57;
  v48 = *v57;
  (*v57)(v27, v9);

  v48(v15, v9);
  return v47;
}

char *sub_22C1F782C()
{
  v2 = v0;
  v3 = sub_22C26E684();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for VariableStep(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoVariableStep(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v15);
  v20 = *&v15[*(v12 + 28)];

  sub_22C1C241C(v21, v22, v23, v24, v25, v26, v27, v28, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  if (!v1)
  {
    v30 = v45;
    v31 = *(v45 + 16);
    v43 = v29;
    v31(v6, v15, v3);
    HIDWORD(v42) = sub_22C26E674();
    v32 = sub_22C26E654();
    v40 = v33;
    v41 = v32;
    v34 = v3;
    v35 = type metadata accessor for TranscriptProtoStatementID(0);
    v36 = &v10[*(v35 + 24)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v30 + 8))(v6, v34);
    *v10 = HIDWORD(v42);
    v37 = v40;
    *(v10 + 1) = v41;
    *(v10 + 2) = v37;
    sub_22BE19DC4(v10, 0, 1, v35);
    sub_22BE19DC4(v19 + *(v16 + 20), 1, 1, v35);
    v38 = v19 + *(v16 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v19 = v43;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);
    v6 = sub_22C270744();
  }

  sub_22BE1AE58();
  return v6;
}

uint64_t sub_22C1F7BA4()
{
  v1 = v0;
  v2 = sub_22C26E5D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = sub_22C26E5A4();
  v13 = [v12 domain];

  v14 = sub_22C273024();
  v16 = v15;

  v17 = sub_22C26E5A4();
  v18 = [v17 code];

  v19 = v11 + *(v7 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  *v11 = v14;
  v11[1] = v16;
  v11[2] = v18;
  sub_22C259290(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v20 = sub_22C270744();
  sub_22BE1AE58();
  return v20;
}

uint64_t sub_22C1F7DD0()
{
  v2 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoSystemPromptResolution.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F7F50()
{
  v2 = type metadata accessor for StatementResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoStatementResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoStatementResult.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

char *sub_22C1F80D0()
{
  v2 = v0;
  v3 = sub_22C26E684();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  StepResults = type metadata accessor for QueryStepResults(0);
  v13 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v15);
  v19 = *v15;

  v21 = sub_22C1EEB74(v20);
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v38 = v21;

    (*(v4 + 16))(v7, &v15[*(StepResults + 20)], v3);
    v37 = sub_22C26E674();
    v22 = sub_22C26E654();
    v35 = v23;
    v36 = v22;
    v24 = v3;
    v25 = type metadata accessor for TranscriptProtoStatementID(0);
    v26 = &v11[*(v25 + 24)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v7, v24);
    *v11 = v37;
    v27 = v35;
    *(v11 + 1) = v36;
    *(v11 + 2) = v27;
    sub_22BE19DC4(v11, 0, 1, v25);
    v28 = &v15[*(StepResults + 24)];
    v29 = sub_22C26E184();
    v31 = v30;
    v32 = v39;
    sub_22BE19DC4(v18 + *(v39 + 24), 1, 1, v25);
    v33 = v18 + *(v32 + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v18 = v38;
    sub_22BE2343C();
    v18[1] = v29;
    v18[2] = v31;
    sub_22C259290(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

char *sub_22C1F8478()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22C26F754();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, v2, v7, v14);
  sub_22C26F724();
  sub_22C106164();
  if (v1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v35 = sub_22C26F704();
    v18 = v17;
    v19 = sub_22C26F734();
    sub_22C1C7468(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34);
    v28 = v12[5];
    v33 = v28;
    v34 = v29;
    v30 = type metadata accessor for TranscriptProtoResponseOutput(0);
    sub_22BE19DC4(v16 + v28, 1, 1, v30);
    v31 = v12[7];
    v32 = (v16 + v12[6]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v8 + 8))(v11, v7);
    sub_22BE2343C();
    *v32 = v35;
    v32[1] = v18;
    *v16 = v34;
    sub_22C259290(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);
    v11 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v11;
}

uint64_t sub_22C1F87BC()
{
  v2 = sub_22C2700F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoInterpretedStatementResult.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F8974()
{
  v2 = type metadata accessor for ActionResolverRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoActionResolverRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F8AF4()
{
  v1 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C5FF8(v5, v6, v7, v8, v9, v10, v11, v12, v17[0], v17[1]);
  if (!v0)
  {
    v14 = v13;
    v15 = v4 + *(v1 + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v4 = v14;
    sub_22C259290(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    v1 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v1;
}

uint64_t sub_22C1F8C1C()
{
  v0 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1F8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F8E3C()
{
  v1 = v0;
  v2 = sub_22C272594();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C272874();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v32 - v13;
  v14 = type metadata accessor for VariableSetter(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v18);
  (*(v7 + 16))(v10, &v18[*(v15 + 28)], v6);
  v23 = v36;
  sub_22C272854();
  if (v23)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v36 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = v33;
    v25 = v35;
    (*(v34 + 32))(v33, v5, v35);
    sub_22BE19DC4(v24, 0, 1, v25);
    v26 = *v18;

    Dictionary<>.init(handwritten:)();
    v29 = v28;
    v30 = v36;
    sub_22BE19DC4(v36 + *(v19 + 20), 1, 1, v25);
    v31 = v30 + *(v19 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v30 = v29;
    sub_22C259290(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter);
    v15 = sub_22C270744();
  }

  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C1F925C()
{
  v2 = type metadata accessor for RequestContent.SystemPromptResolution.UserAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoSystemPromptResolutionUserAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F93DC()
{
  v2 = type metadata accessor for StatementResultPayload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoStatementResultPayload.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F955C()
{
  v2 = sub_22C26F524();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoResponseOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F9714()
{
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v2 = *(*(Results - 8) + 64);
  MEMORY[0x28223BE20](Results);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C2144(v5, v6, v7, v8, v9, v10, v11, v12, v17[0], v17[1]);
  if (!v0)
  {
    v14 = v13;
    v15 = v4 + *(Results + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v4 = v14;
    sub_22C259290(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults);
    Results = sub_22C270744();
    sub_22BE1AE58();
  }

  return Results;
}

uint64_t sub_22C1F983C()
{
  v1 = type metadata accessor for ActionParameterContext(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoActionParameterContext.init(handwritten:)();
  sub_22C259290(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F99AC()
{
  v1 = v0;
  v169 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v2 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v138 = &v119[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v167 = sub_22C26F7C4();
  v4 = *(v167 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v167);
  v137 = &v119[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v149 = &v119[-v8];
  MEMORY[0x28223BE20](v9);
  v148 = &v119[-v10];
  v11 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = &v119[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v163 = &v119[-v15];
  v16 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v146 = &v119[-v18];
  v19 = sub_22C272594();
  v166 = *(v19 - 8);
  v20 = *(v166 + 64);
  MEMORY[0x28223BE20](v19);
  v157 = &v119[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = sub_22C272874();
  v165 = *(v158 - 8);
  v22 = *(v165 + 64);
  MEMORY[0x28223BE20](v158);
  v160 = &v119[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v145 = &v119[-v26];
  v156 = type metadata accessor for TranscriptProtoParameterValue(0);
  v144 = *(v156 - 8);
  v27 = *(v144 + 64);
  MEMORY[0x28223BE20](v156);
  v29 = &v119[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v143 = &v119[-v31];
  v162 = sub_22C26F2A4();
  v32 = *(v162 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v162);
  v168 = &v119[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35);
  v37 = &v119[-v36];
  v38 = sub_22BE5CE4C(&qword_27D911EE8, &unk_22C2B5C00);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v121 = &v119[-v40];
  v41 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v124 = &v119[-v43];
  v44 = sub_22C26FB84();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v119[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v49 = *(*(v122 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v122);
  v123 = &v119[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = v45;
  v52 = *(v45 + 16);
  v129 = v44;
  v53 = v52(v48, v1, v44, v50);
  v127 = v48;
  v54 = MEMORY[0x2318A8270](v53);
  sub_22BE5CE4C(&qword_27D915638, &unk_22C2CC9A8);
  v55 = sub_22C273D04();
  v56 = v55;
  v57 = 0;
  v58 = *(v54 + 64);
  v131 = v54 + 64;
  v161 = v54;
  v59 = 1 << *(v54 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v58;
  v130 = (v59 + 63) >> 6;
  v150 = v32 + 16;
  v152 = (v165 + 8);
  v142 = (v166 + 32);
  v135 = (v4 + 32);
  v134 = (v4 + 16);
  v133 = (v4 + 88);
  v141 = *MEMORY[0x277D1CAF0];
  v126 = (v4 + 96);
  v125 = *MEMORY[0x277D1CB00];
  v120 = *MEMORY[0x277D1CAF8];
  v62 = (v4 + 8);
  v63 = v162;
  v132 = v62;
  v154 = v32;
  v151 = (v32 + 8);
  v140 = v55 + 64;
  v159 = v19;
  v136 = v29;
  v155 = v37;
  v153 = v55;
  while (1)
  {
    v64 = v160;
    if (!v61)
    {
      v69 = v57;
      while (1)
      {
        v57 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v57 >= v130)
        {

          v110 = v127;
          sub_22C26FB54();
          sub_22C106F58();
          v111 = v122;
          v112 = *(v122 + 20);
          v113 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
          v114 = v123;
          sub_22BE19DC4(v123 + v112, 1, 1, v113);
          v115 = v114 + *(v111 + 24);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          (*(v128 + 8))(v110, v129);
          *v114 = v56;
          sub_22BE2343C();
          sub_22C259290(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);
          v116 = sub_22C270744();
          sub_22BE1AE58();
          return v116;
        }

        v70 = *(v131 + 8 * v57);
        ++v69;
        if (v70)
        {
          v65 = v37;
          v66 = v29;
          v67 = v63;
          v68 = __clz(__rbit64(v70));
          v164 = (v70 - 1) & v70;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_22C274004();
      __break(1u);
      return result;
    }

    v65 = v37;
    v66 = v29;
    v67 = v63;
    v68 = __clz(__rbit64(v61));
    v164 = (v61 - 1) & v61;
LABEL_11:
    v71 = v68 | (v57 << 6);
    v72 = *(v161 + 56);
    v73 = (*(v161 + 48) + 16 * v71);
    v74 = v73[1];
    v165 = *v73;
    v166 = v71;
    v75 = *(v154 + 16);
    v76 = v65;
    v75(v65, v72 + *(v154 + 72) * v71, v67);
    v77 = v168;
    v75(v168, v76, v67);
    v78 = v159;
    sub_22BE19DC4(v66, 1, 1, v159);
    v79 = v156;
    sub_22BE19DC4(v66 + *(v156 + 20), 1, 1, v169);
    v80 = *(v79 + 24);

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v81 = v64;
    sub_22C26E984();
    v82 = v157;
    v83 = v170;
    sub_22C272854();
    if (v83)
    {
      break;
    }

    v170 = 0;
    (*v152)(v64, v158);
    v84 = v145;
    (*v142)(v145, v82, v78);
    sub_22BE19DC4(v84, 0, 1, v78);
    sub_22BE2343C();
    v85 = v163;
    sub_22C26F274();
    v86 = v147;
    sub_22BE22814();
    if (sub_22BE1AEA8(v86, 1, v167) == 1)
    {
      v29 = v66;
      sub_22BE233E8(v85, &qword_27D909088, &unk_22C27FCA0);
      sub_22BE233E8(v86, &qword_27D909088, &unk_22C27FCA0);
      v87 = 1;
      v88 = v169;
      v89 = v146;
    }

    else
    {
      v90 = v86;
      v91 = v148;
      v92 = v167;
      (*v135)(v148, v90, v167);
      v93 = *v134;
      v94 = v149;
      (*v134)(v149, v91, v92);
      v95 = v137;
      v93(v137, v94, v92);
      v96 = (*v133)(v95, v92);
      v97 = v96;
      if (v96 == v141)
      {
        v98 = v167;
        (*v126)(v95, v167);
        v139 = *v95;
        v88 = v169;
      }

      else
      {
        v88 = v169;
        if (v96 == v125)
        {
          v139 = 0;
        }

        else
        {
          if (v96 != v120)
          {
            goto LABEL_29;
          }

          v139 = 1;
        }

        v98 = v167;
      }

      v99 = v97 != v141;
      v100 = v138;
      *v138 = 0;
      *(v100 + 8) = 256;
      v101 = v100 + *(v88 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v102 = *v132;
      (*v132)(v149, v98);
      *v100 = v139;
      *(v100 + 8) = v99;
      *(v100 + 9) = 0;
      v89 = v146;
      sub_22BE3B620(v100, v146);
      sub_22BE233E8(v163, &qword_27D909088, &unk_22C27FCA0);
      v102(v148, v98);
      v87 = 0;
      v29 = v136;
    }

    v63 = v162;
    sub_22BE19DC4(v89, v87, 1, v88);
    v103 = *v151;
    (*v151)(v168, v63);
    sub_22BE2343C();
    v104 = v143;
    sub_22BE3B620(v29, v143);
    v37 = v155;
    v103(v155, v63);
    v105 = v166;
    *(v140 + ((v166 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v166;
    v56 = v153;
    v106 = (*(v153 + 48) + 16 * v105);
    *v106 = v165;
    v106[1] = v74;
    sub_22BE3B620(v104, *(v56 + 56) + *(v144 + 72) * v105);
    v107 = *(v56 + 16);
    v108 = __OFADD__(v107, 1);
    v109 = v107 + 1;
    if (v108)
    {
      goto LABEL_28;
    }

    *(v56 + 16) = v109;
    v61 = v164;
  }

  v118 = *v151;
  v116 = v162;
  (*v151)(v77, v162);
  (*v152)(v81, v158);
  sub_22BE1AE58();

  v118(v155, v116);

  (*(v128 + 8))(v127, v129);
  return v116;
}

uint64_t sub_22C1FA8C4()
{
  v1 = sub_22C26FB44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  (*(v2 + 16))(v5, v0, v1, v8);
  TranscriptProtoActionConfirmationSystemStyle.init(handwritten:)();
  sub_22C259290(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C1FAA6C()
{
  v1 = v0;
  v2 = sub_22C26FB14();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_22C26FB34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v1, v8, v15);
  v18 = sub_22C26EF64();
  v25 = v19;
  v26 = v18;
  sub_22C26FB24();
  TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.init(handwritten:)();
  v20 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE19DC4(v7, 0, 1, v20);
  LOBYTE(v1) = sub_22C26EF44();
  sub_22BE19DC4(&v17[*(v13 + 24)], 1, 1, v20);
  v21 = &v17[*(v13 + 28)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v9 + 8))(v12, v8);
  v22 = v25;
  *v17 = v26;
  *(v17 + 1) = v22;
  sub_22BE2343C();
  v17[16] = v1 & 1;
  sub_22C259290(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v23 = sub_22C270744();
  sub_22BE1AE58();
  return v23;
}

uint64_t sub_22C1FAD58()
{
  v1 = v0;
  v2 = sub_22C26FB14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  v15(v9, v1, v2, v12);
  *v14 = 4;
  v16 = &v14[*(v10 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (v15)(v6, v9, v2);
  v17 = (*(v3 + 88))(v6, v2);
  if (v17 == *MEMORY[0x277D1CD48])
  {
    v18 = 0;
LABEL_9:
    (*(v3 + 8))(v9, v2);
    *v14 = v18;
    sub_22C259290(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    v19 = sub_22C270744();
    sub_22BE1AE58();
    return v19;
  }

  if (v17 == *MEMORY[0x277D1CD40])
  {
    v18 = 1;
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D1CD38])
  {
    v18 = 2;
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277D1CD30])
  {
    v18 = 3;
    goto LABEL_9;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1FB004()
{
  v2 = sub_22C26F2A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterValue(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoParameterValue.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FB1BC()
{
  v1 = v0;
  v2 = sub_22C26F7C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  v15(v9, v1, v2, v12);
  (v15)(v6, v9, v2);
  v16 = (*(v3 + 88))(v6, v2);
  v17 = v16;
  v18 = *MEMORY[0x277D1CAF0];
  if (v16 == *MEMORY[0x277D1CAF0])
  {
    (*(v3 + 96))(v6, v2);
    v19 = *v6;
    goto LABEL_7;
  }

  if (v16 == *MEMORY[0x277D1CB00])
  {
    v19 = 0;
LABEL_7:
    *v14 = 0;
    *(v14 + 4) = 256;
    v20 = &v14[*(v10 + 20)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v3 + 8))(v9, v2);
    *v14 = v19;
    v14[8] = v17 != v18;
    v14[9] = 0;
    sub_22C259290(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
    v21 = sub_22C270744();
    sub_22BE1AE58();
    return v21;
  }

  if (v16 == *MEMORY[0x277D1CAF8])
  {
    v19 = 1;
    goto LABEL_7;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1FB480()
{
  v2 = sub_22C26FC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoParameterNeedsValue.init(handwritten:)(v6, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA38, type metadata accessor for TranscriptProtoParameterNeedsValue);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FB638()
{
  v2 = sub_22C26FC34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoParameterNeedsValueContext.init(handwritten:)(v6, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA50, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FB7F0()
{
  v1 = sub_22C26FC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26ED64();
  v13 = v12;
  v14 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  sub_22C259290(&qword_27D90FA68, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C1FB9C8()
{
  v2 = sub_22C26FE94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoParameterConfirmation.init(handwritten:)(v6, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FBB80()
{
  v2 = v0;
  v3 = sub_22C26FFF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v8 = *(*(v25 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v25);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, v2, v3, v9);
  v24 = sub_22C26FFC4();
  v13 = v12;
  v14 = MEMORY[0x2318A86D0]();
  v16 = v15;
  v17 = sub_22C26FFE4();
  sub_22C220C88(v17);
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v18;
    v23 = v16 & 1;
    if (v16)
    {
      v14 = 0;
    }

    v20 = &v11[*(v25 + 28)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v7, v3);
    *v11 = v24;
    *(v11 + 1) = v13;
    v11[32] = v23;
    *(v11 + 2) = v19;
    *(v11 + 3) = v14;
    sub_22C259290(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);
    v3 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v3;
}

uint64_t sub_22C1FBDD0()
{
  v2 = sub_22C26FCD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoParameterNotAllowed.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1FBF88()
{
  v2 = type metadata accessor for Candidate(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoCandidate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoCandidate.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FC108(_BOOL8 a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  *v7 = 0;
  *(v7 + 4) = 256;
  v12 = &v7[*(v11 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v13 = a1;
  if ((a2 & 1) == 0)
  {
    v13 = a1;
  }

  *v7 = v13;
  v7[8] = a2 & 1;
  v7[9] = 0;
  sub_22BE3B620(v7, v10);
  sub_22C259290(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v14 = sub_22C270744();
  sub_22BE1AE58();
  return v14;
}

uint64_t sub_22C1FC284()
{
  v2 = v0;
  v3 = type metadata accessor for TranscriptProtoPlan(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v25 = *(v2 + 16);
  v26 = v7;
  v8 = *(v2 + 32);
  sub_22C174314(v2, v23);
  sub_22C2591A4(&v26, v23);
  sub_22C2591A4(&v25, v23);

  sub_22C1BFAF0(v9, v10, v11, v12, v13, v14, v15, v16, v23[0], v23[1]);
  if (v1)
  {
    sub_22C259200(&v26);
    sub_22C259200(&v25);
    sub_22C10D970(v2);
  }

  else
  {
    v18 = v17;
    v19 = *(v2 + 56) + 1;
    v24 = *(v2 + 40);
    v6[56] = 6;
    v20 = *(v3 + 36);
    sub_22BE22814();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C10D970(v2);
    v21 = v25;
    *v6 = v26;
    *(v6 + 1) = v21;
    *(v6 + 4) = v18;
    *(v6 + 40) = v24;
    v6[56] = v19;
    sub_22C259290(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan);
    v3 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v3;
}

uint64_t sub_22C1FC45C()
{
  v2 = type metadata accessor for Session.RecoverableError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRecoverableError.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FC5DC()
{
  v2 = type metadata accessor for Session.PlanGenerationError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoPlanGenerationError.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1FC75C()
{
  v1 = v0;
  v30 = sub_22C26E5D4();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v14);
  v19 = *v14;
  v20 = *(v14 + 1);
  v21 = *(v14 + 3);
  v28 = *(v14 + 2);
  v29 = v19;
  (*(v2 + 16))(v5, &v14[*(v11 + 32)], v30);

  TranscriptProtoIntelligenceFlowError.init(handwritten:)();
  v22 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE19DC4(v9, 0, 1, v22);
  sub_22BE19DC4(v18 + *(v15 + 24), 1, 1, v22);
  v23 = v18 + *(v15 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  v24 = v28;
  *v18 = v29;
  v18[1] = v20;
  v18[2] = v24;
  v18[3] = v21;
  sub_22BE2343C();
  sub_22C259290(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v25 = sub_22C270744();
  sub_22BE1AE58();
  return v25;
}

uint64_t sub_22C1FCD70(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TranscriptProtoValueExpression(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BECD104(a1, a2, a3);
  TranscriptProtoValueExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C1FCEA4()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v29 = *(v2 - 8);
  v3 = v29;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PrefixExpression(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v16 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v15);
  v30 = *v15;
  (*(v3 + 16))(v6, &v15[*(v12 + 28)], v2);
  LODWORD(v1) = sub_22C26E674();
  v19 = sub_22C26E654();
  v21 = v20;
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  v23 = &v10[*(v22 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v29 + 8))(v6, v2);
  *v10 = v1;
  *(v10 + 1) = v19;
  *(v10 + 2) = v21;
  sub_22BE19DC4(v10, 0, 1, v22);
  v24 = v31;
  sub_22BE19DC4(&v18[*(v31 + 20)], 1, 1, v22);
  v25 = &v18[*(v24 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v18 = v30;
  sub_22BE2343C();
  sub_22C259290(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);
  v26 = sub_22C270744();
  sub_22BE1AE58();
  return v26;
}

uint64_t sub_22C1FD1E4()
{
  v1 = type metadata accessor for InfixExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoInfixExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FD354()
{
  v1 = type metadata accessor for IndexExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoIndexExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FD4C4()
{
  updated = type metadata accessor for UpdateParametersExpression(0);
  v2 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoUpdateParametersExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FD634()
{
  updated = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  v2 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoUpdateParameterExpression_UpdateParameter.init(handwritten:)();
  sub_22C259290(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FD7A4()
{
  v1 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v13 = v0[1];
  v14 = v5;
  v6 = *(v0 + 32);
  v8 = *(v7 + 28);
  sub_22C2591A4(&v14, v12);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = v13;
  *v4 = v14;
  *(v4 + 24) = v9;
  v4[16] = v6;
  sub_22C259290(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1FD8F8()
{
  v1 = type metadata accessor for TranscriptProtoCallExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  v9 = v0[2];
  sub_22C259148(v0, v6);
  TranscriptProtoCallExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);
  v4 = sub_22C270744();
  sub_22BE1AE58();
  return v4;
}

uint64_t sub_22C1FDA1C()
{
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v1 = *(*(ContextExpression - 8) + 64);
  MEMORY[0x28223BE20](ContextExpression);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1FDB1C()
{
  SpansExpression = type metadata accessor for RetrieveSpansExpression(0);
  v2 = *(*(SpansExpression - 8) + 64);
  MEMORY[0x28223BE20](SpansExpression - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRetrieveSpansExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FDC8C()
{
  ToolsExpression = type metadata accessor for RetrieveToolsExpression(0);
  v2 = *(*(ToolsExpression - 8) + 64);
  MEMORY[0x28223BE20](ToolsExpression - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRetrieveToolsExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FDDFC()
{
  v0 = type metadata accessor for TranscriptProtoSayExpression(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);

  TranscriptProtoSayExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1FDF14()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v3 = *(v2 - 8);
  v4 = v3;
  v31 = v2;
  v32 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for PickExpression(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TranscriptProtoPickExpression(0);
  v17 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v16);
  (*(v4 + 16))(v7, v16, v2);
  LODWORD(v1) = sub_22C26E674();
  v20 = sub_22C26E654();
  v22 = v21;
  v23 = type metadata accessor for TranscriptProtoStatementID(0);
  v24 = &v11[*(v23 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v32 + 8))(v7, v31);
  *v11 = v1;
  *(v11 + 1) = v20;
  *(v11 + 2) = v22;
  sub_22BE19DC4(v11, 0, 1, v23);
  v25 = *&v16[*(v13 + 28)];
  v26 = v33;
  sub_22BE19DC4(v19 + *(v33 + 20), 1, 1, v23);
  v27 = v19 + *(v26 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v19 = v25;
  sub_22C259290(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);
  v28 = sub_22C270744();
  sub_22BE1AE58();
  return v28;
}

uint64_t sub_22C1FE248()
{
  v1 = type metadata accessor for ConfirmExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoConfirmExpression.init(handwritten:)();
  sub_22C259290(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FE3B8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v9[*(v10 + 32)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = a1;
  *(v9 + 1) = a2;
  v9[16] = a3 & 1;
  v9[17] = BYTE1(a3) & 1;
  v9[18] = BYTE2(a3) & 1;
  sub_22C259290(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);

  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C1FE4F8()
{
  v1 = type metadata accessor for TranscriptProtoStatementID(0);
  v99 = *(v1 - 8);
  v100 = v1;
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v1);
  v98 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22C26E684();
  v4 = *(v97 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = &v79 - v8;
  v9 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v79 - v11;
  v12 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v79 - v14;
  v88 = type metadata accessor for StructuredSearchExpression(0);
  v15 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = (&v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v17);
  v83 = v17;
  v20 = *v17;
  sub_22BE5CE4C(&qword_27D915600, &unk_22C2CC8E0);
  result = sub_22C273D04();
  v22 = result;
  v23 = 0;
  v24 = *(v20 + 64);
  v87 = v20 + 64;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v86 = (v25 + 63) >> 6;
  v91 = v4 + 16;
  v92 = v20;
  v96 = v4;
  v89 = result + 64;
  v90 = v4 + 8;
  v93 = result;
  if (v27)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v27));
      v101 = (v27 - 1) & v27;
LABEL_10:
      v32 = v28 | (v23 << 6);
      v33 = *(v92 + 56);
      v34 = (*(v92 + 48) + 16 * v32);
      v35 = v34[1];
      v104 = *v34;
      v103 = v35;
      v37 = v96;
      v36 = v97;
      v38 = *(v96 + 16);
      v39 = v94;
      v38(v94, v33 + *(v96 + 72) * v32, v97);
      v40 = v95;
      v38(v95, v39, v36);

      v102 = sub_22C26E674();
      v41 = sub_22C26E654();
      v43 = v42;
      v44 = v98;
      v45 = &v98[*(v100 + 24)];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v46 = *(v37 + 8);
      v46(v40, v36);
      *v44 = v102;
      *(v44 + 8) = v41;
      *(v44 + 16) = v43;
      v46(v39, v36);
      *(v89 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v22 = v93;
      v47 = (*(v93 + 48) + 16 * v32);
      v48 = v103;
      *v47 = v104;
      v47[1] = v48;
      result = sub_22BE3B620(v44, *(v22 + 56) + *(v99 + 72) * v32);
      v49 = *(v22 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        break;
      }

      *(v22 + 16) = v51;
      v27 = v101;
      if (!v101)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_5:
    v29 = v23;
    v30 = v88;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v23 >= v86)
      {
        break;
      }

      v31 = *(v87 + 8 * v23);
      ++v29;
      if (v31)
      {
        v28 = __clz(__rbit64(v31));
        v101 = (v31 - 1) & v31;
        goto LABEL_10;
      }
    }

    v52 = v83;
    v53 = v83 + *(v88 + 20);
    v54 = v82;
    sub_22BE22814();
    v55 = v85;
    sub_22C105B04(v54, v56, v57, v58, v59, v60, v61, v62, v79, v80);
    if (v55)
    {
      sub_22BE1AE58();
    }

    else
    {
      v63 = *(v52 + *(v30 + 28));

      sub_22C1C0A8C(v64, v65, v66, v67, v68, v69, v70, v71, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      v73 = v72;
      v74 = v80;
      v75 = *(v80 + 24);
      v76 = sub_22C2725A4();
      v77 = v81;
      sub_22BE19DC4(v81 + v75, 1, 1, v76);
      v78 = v77 + *(v74 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1AE58();
      *v77 = v22;
      sub_22BE2343C();
      v77[1] = v73;
      sub_22C259290(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v30 = sub_22C270744();
      sub_22BE1AE58();
    }

    return v30;
  }

  return result;
}

uint64_t sub_22C1FEB78()
{
  v1 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v9);
  v15 = *v9;
  v14 = v9[1];
  v16 = v9[3];
  v24 = v9[2];
  v17 = *(v6 + 32);
  sub_22BE22814();

  sub_22BE46914();
  v18 = *(v10 + 24);
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v13 + v18, 1, 1, v19);
  v20 = v13 + *(v10 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  *v13 = v15;
  v13[1] = v14;
  v13[2] = v24;
  v13[3] = v16;
  sub_22BE2343C();
  sub_22C259290(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v21 = sub_22C270744();
  sub_22BE1AE58();
  return v21;
}

uint64_t sub_22C1FEE4C()
{
  v1 = type metadata accessor for PickOneExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoPickOneExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FEFBC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22C1EE9C4(a1);
  v7 = v5 + *(v2 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = v6;
  sub_22C259290(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C1FF0E4()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for UndoExpression(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v9);
  sub_22BE22814();
  sub_22BE46914();
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v13, 1, 1, v14);
  v15 = &v13[*(v10 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22C259290(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);
  v16 = sub_22C270744();
  sub_22BE1AE58();
  return v16;
}

uint64_t sub_22C1FF384()
{
  v1 = type metadata accessor for RejectExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoRejectExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FF4F4()
{
  v1 = type metadata accessor for CancelExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoCancelExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FF664()
{
  v1 = type metadata accessor for OpenExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoOpenExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FF7D4()
{
  v0 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);

  TranscriptProtoPayloadExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1FF8EC()
{
  v0 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C1424(v4, v5, v6, v7, v8, v9, v10, v11, v17[0], v17[1]);
  v13 = v12;
  v14 = v3 + *(v0 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v13;
  sub_22C259290(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C1FFA18()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for SiriXFallbackExpression(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v9);
  sub_22BE22814();
  sub_22BE46914();
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(v13, 1, 1, v14);
  v15 = &v13[*(v10 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  sub_22C259290(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  v16 = sub_22C270744();
  sub_22BE1AE58();
  return v16;
}

uint64_t sub_22C1FFCB8()
{
  v1 = type metadata accessor for UserConfirmExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoUserConfirmExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FFE28()
{
  v1 = type metadata accessor for UserDisambiguateExpression(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoUserDisambiguateExpression.init(handwritten:)();
  sub_22C259290(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1FFF98()
{
  v2 = type metadata accessor for ProgramStatement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoProgramStatement.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C200118()
{
  v1 = sub_22C26E684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26E674();
  v12 = sub_22C26E654();
  v14 = v13;
  v15 = &v10[*(v6 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  *(v10 + 1) = v12;
  *(v10 + 2) = v14;
  sub_22C259290(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  v16 = sub_22C270744();
  sub_22BE1AE58();
  return v16;
}

uint64_t sub_22C200304()
{
  v2 = sub_22C26F8A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoActionRequirement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C200674()
{
  v2 = sub_22C26E9D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoActionSuccess.init(handwritten:)(v6, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);
  if (!v1)
  {
    sub_22C259290(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C20082C()
{
  v2 = sub_22C26EAC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoSnippetStream.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C2009E4()
{
  v2 = sub_22C26F874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoResponseManifest.init(handwritten:)(v6, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22);
  if (!v1)
  {
    sub_22C259290(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C200B9C()
{
  v1 = v0;
  v2 = sub_22C26FA04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = sub_22C26F9B4();
  v31 = v13;
  v32 = v12;
  v14 = sub_22C26F9D4();
  v33 = v15;
  v34 = v14;
  v16 = sub_22C26F9C4();
  v29 = v17;
  v30 = v16;
  v18 = sub_22C26F9F4();
  v19 = sub_22C26F9E4();
  v21 = v20;
  v22 = sub_22C26F994();
  *(v11 + 1) = xmmword_22C28E6A0;
  v23 = &v11[*(v7 + 40)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  v24 = v31;
  *v11 = v32;
  *(v11 + 1) = v24;
  sub_22BF158B4(*(v11 + 2), *(v11 + 3));
  v25 = v33;
  *(v11 + 2) = v34;
  *(v11 + 3) = v25;
  v26 = v29;
  *(v11 + 4) = v30;
  *(v11 + 5) = v26;
  v11[48] = v18;
  *(v11 + 7) = v19;
  *(v11 + 8) = v21;
  v11[72] = v22;
  sub_22C259290(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter);
  v27 = sub_22C270744();
  sub_22BE1AE58();
  return v27;
}

uint64_t sub_22C200DDC()
{
  v1 = v0;
  v2 = sub_22C26F304();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = sub_22C26F2E4();
  v29 = v13;
  v30 = v12;
  v14 = sub_22C26F2F4();
  v27 = v15;
  v28 = v14;
  v16 = sub_22C26F2B4();
  v18 = v17;
  v19 = sub_22C26F2C4();
  v21 = v20;
  v22 = v11 + *(v7 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  v23 = v29;
  *v11 = v30;
  v11[1] = v23;
  v24 = v27;
  v11[2] = v28;
  v11[3] = v24;
  v11[4] = v16;
  v11[5] = v18;
  v11[6] = v19;
  v11[7] = v21;
  sub_22C259290(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog);
  v25 = sub_22C270744();
  sub_22BE1AE58();
  return v25;
}

uint64_t sub_22C2011A8()
{
  v2 = sub_22C26F674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoUIType(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoUIType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C201360()
{
  v2 = sub_22C26F6D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoUILabel(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoUILabel.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C201518()
{
  v1 = sub_22C26F554();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = &v10[*(v6 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = sub_22C26F544();
  (*(v2 + 8))(v5, v1);
  *v10 = v12 & 1;
  sub_22C259290(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C2016F0()
{
  v1 = sub_22C26F6C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F6A4();
  v13 = v12;
  v14 = sub_22C26F654();
  v16 = v15;
  v17 = v10 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v16;
  sub_22C259290(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v18 = sub_22C270744();
  sub_22BE1AE58();
  return v18;
}

uint64_t sub_22C2018E0()
{
  v1 = v0;
  v2 = sub_22C26F5F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = sub_22C26F5D4();
  v24 = v13;
  v25 = v12;
  v14 = sub_22C26F5C4();
  v16 = v15;
  v17 = sub_22C26F5B4();
  v19 = v18;
  v20 = v11 + *(v7 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  v21 = v24;
  *v11 = v25;
  v11[1] = v21;
  v11[2] = v14;
  v11[3] = v16;
  v11[4] = v17;
  v11[5] = v19;
  sub_22C259290(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C201AE4()
{
  v1 = sub_22C26F624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F614();
  v13 = v12;
  v14 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  sub_22C259290(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C201CBC()
{
  v1 = sub_22C26F664();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F634();
  v13 = v12;
  v14 = sub_22C26F654();
  v16 = v15;
  v17 = v10 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v16;
  sub_22C259290(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  v18 = sub_22C270744();
  sub_22BE1AE58();
  return v18;
}

uint64_t sub_22C201EAC()
{
  v1 = sub_22C2729D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C26F5A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoControlPayload(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v7 + 16);
  v27 = v6;
  v16(v10, v0, v6, v13);
  sub_22C26F584();
  v17 = sub_22C2729B4();
  v19 = v18;
  (*(v2 + 8))(v5, v1);
  if (v19 >> 60 == 15)
  {
    v28 = MEMORY[0x277CC9318];
    sub_22BE5CE4C(&qword_27D915680, &qword_22C2CCA40);
    v20 = sub_22C273074();
    v22 = v21;
    sub_22C108598();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
    (*(v7 + 8))(v10, v27);
  }

  else
  {
    v24 = v15 + *(v11 + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v7 + 8))(v10, v27);
    *v15 = v17;
    v15[1] = v19;
    sub_22C259290(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);
    v20 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v20;
}

uint64_t sub_22C2021C0()
{
  v2 = sub_22C26F444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoVisualOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C202378()
{
  v1 = sub_22C26F364();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  (*(v2 + 16))(v5, v0, v1, v8);
  TranscriptProtoAceCommandOutputPayload.init(handwritten:)();
  sub_22C259290(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C202520()
{
  v1 = sub_22C26F354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  (*(v2 + 16))(v5, v0, v1, v8);
  TranscriptProtoAceCommandOutputData.init(handwritten:)();
  sub_22C259290(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C2026C8()
{
  v1 = sub_22C26F394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F384();
  v13 = v12;
  v14 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  sub_22C259290(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C2028A0()
{
  v1 = sub_22C26F424();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F384();
  v13 = v12;
  v14 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  sub_22C259290(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

uint64_t sub_22C202A78()
{
  v1 = sub_22C26F3D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26F3A4();
  v13 = v12;
  v14 = sub_22C26F3C4();
  v16 = v15;
  v17 = v10 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v16;
  sub_22C259290(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  v18 = sub_22C270744();
  sub_22BE1AE58();
  return v18;
}

uint64_t sub_22C202C68()
{
  v2 = sub_22C26F4B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoDialogType(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoDialogType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C202E20()
{
  v1 = type metadata accessor for AST.FlatExpr(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoASTFlatExpr(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoASTFlatExpr.init(handwritten:)();
  sub_22C259290(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C202F90()
{
  v1 = type metadata accessor for AST.Update(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v6 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoASTFlatExprUpdateVariant.init(handwritten:)();
  sub_22C259290(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C203100(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 & 1;
  if (v9)
  {
    a1 = 1;
  }

  *v8 = 0;
  v8[8] = -1;
  v10 = &v8[*(v6 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = a1;
  v8[8] = v9;
  sub_22C259290(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C203230()
{
  v1 = type metadata accessor for AST.FlatValue(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoASTFlatValue.init(handwritten:)();
  sub_22C259290(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C2033A0()
{
  v2 = type metadata accessor for Action.ParameterValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoActionParameterValue.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2036DC()
{
  v2 = type metadata accessor for RetrievedContextStatement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRetrievedContextStatement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C20385C()
{
  v2 = type metadata accessor for DynamicEnumerationEntityStatement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoDynamicEnumerationEntityStatement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2039DC()
{
  v2 = type metadata accessor for SpanMatchedEntityStatement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoSpanMatchedEntityStatement.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C203C84()
{
  v2 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v4;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  sub_22C2590EC(v0, v6);
  TranscriptProtoToolRetrievalResponse.init(handwritten:)(v7);
  if (!v1)
  {
    sub_22C259290(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    v2 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v2;
}

uint64_t sub_22C203DC0()
{
  v2 = type metadata accessor for ToolParameterValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoToolParameterValue.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C203F40()
{
  v2 = type metadata accessor for ExternalAgentOutcome(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoExternalAgentOutcome.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2040C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v10 + 24);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  sub_22C259290(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C2041F0()
{
  v1 = sub_22C26E1D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C26E954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoUndoContext(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v0, v6, v13);
  sub_22C26E934();
  v16 = sub_22C26E184();
  v28 = v17;
  v29 = v16;
  (*(v2 + 8))(v5, v1);
  v18 = sub_22C26E914();
  v20 = v19;
  v21 = sub_22C26E924();
  v23 = v22;
  v24 = v15 + *(v11 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v7 + 8))(v10, v6);
  v25 = v28;
  *v15 = v29;
  v15[1] = v25;
  v15[2] = v18;
  v15[3] = v20;
  v15[4] = v21;
  v15[5] = v23;
  sub_22C259290(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);
  v26 = sub_22C270744();
  sub_22BE1AE58();
  return v26;
}

uint64_t sub_22C204494()
{
  v2 = sub_22C26E8E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoFollowUpAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C20464C()
{
  v2 = sub_22C26E8B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoFollowUpActionExecutableAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C204804()
{
  v2 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_22C26E8A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v11 = *(*(v27 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v27);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v0, v6, v12);
  v26 = sub_22C26E894();
  v28 = v15;
  sub_22C26E874();
  if (qword_27D906E28 != -1)
  {
    swift_once();
  }

  sub_22C250EF0(&qword_27D9156C8);
  v16 = sub_22C26DC04();
  v18 = (v29 + 8);
  if (v1)
  {

    (*v18)(v5, v2);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v19 = v17;
    v20 = *v18;
    v29 = v16;
    v20(v5, v2);
    v21 = sub_22C26E864();
    v22 = v14 + *(v27 + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v7 + 8))(v10, v6);
    v23 = v28;
    *v14 = v26;
    v14[1] = v23;
    v14[2] = v29;
    v14[3] = v19;
    v14[4] = v21;
    sub_22C259290(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v2 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v2;
}

char *sub_22C204B70()
{
  v2 = v0;
  v3 = sub_22C26FD94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, v2, v3, v10);
  v13 = sub_22C26FD84();
  sub_22C220C88(v13);
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v15 = v14;
    v16 = v12 + *(v8 + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v4 + 8))(v7, v3);
    *v12 = v15;
    sub_22C259290(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C204D74()
{
  v2 = sub_22C26E854();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoActionFailure(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoActionFailure.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C204F2C(char a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v5[*(v6 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = a1;
  sub_22C259290(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C205038()
{
  v0 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C205138()
{
  v2 = type metadata accessor for TypeConversionRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoTypeConversionRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2052B8()
{
  v2 = type metadata accessor for TypeConversionResult(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoTypeConversionResult.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C205438()
{
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v3 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoQueryDecorationResult.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2055B8()
{
  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
  v3 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoQueryDecorationPrePlannerResult.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C205738(uint64_t a1, char a2)
{
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v6 = *(*(DecorationPrePlannerResultPayload - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v8 = a1;
  v9 = a2;

  TranscriptProtoQueryDecorationPrePlannerResultPayload.init(handwritten:)(&v8);
  if (!v2)
  {
    sub_22C259290(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
    DecorationPrePlannerResultPayload = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationPrePlannerResultPayload;
}

uint64_t sub_22C20586C()
{
  v1 = v0;
  v2 = sub_22C26E7E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = v11 + *(v7 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v11 = sub_22C26E7B4();
  v11[1] = v13;
  v11[2] = sub_22C26E7D4();
  v11[3] = v14;
  v15 = sub_22C26E7C4();
  (*(v3 + 8))(v6, v2);
  v11[4] = v15;
  sub_22C259290(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  v16 = sub_22C270744();
  sub_22BE1AE58();
  return v16;
}

uint64_t sub_22C205A50()
{
  v1 = sub_22C26E814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v12 = sub_22C26E804();
  v14 = v13;
  (*(v2 + 8))(v5, v1);
  *v10 = v12;
  v10[1] = v14;
  sub_22C259290(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  v15 = sub_22C270744();
  sub_22BE1AE58();
  return v15;
}

char *sub_22C205C28()
{
  v2 = v0;
  v3 = type metadata accessor for RequestContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - v9;
  v11 = type metadata accessor for RequestAmendment(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v15);
  v20 = sub_22C26E184();
  v22 = v21;
  sub_22BE1AA68(&v15[*(v12 + 28)], v6);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v23 = type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22BE19DC4(v10, 0, 1, v23);
    sub_22BE19DC4(v19 + *(v16 + 20), 1, 1, v23);
    v24 = v19 + *(v16 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v19 = v20;
    v19[1] = v22;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);
    v10 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v10;
}

uint64_t sub_22C205F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C206048()
{
  v0 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C206148(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v5 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C206268()
{
  v2 = sub_22C270074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  TranscriptProtoIntermediateSystemResponse.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C206420()
{
  v1 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_22C270234();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v0, v11, v18);
  v37 = sub_22C2701D4();
  v21 = sub_22C270224();
  v35 = v22;
  v36 = v21;
  sub_22C2701E4();
  v39 = v10;
  v23 = v38;
  sub_22BE46914();
  v38 = v23;
  sub_22C26FF64();
  v24 = sub_22C26E1D4();
  if (sub_22BE1AEA8(v4, 1, v24) == 1)
  {
    sub_22BE233E8(v4, &qword_27D9082F0, &qword_22C27AB00);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_22C26E184();
    v26 = v27;
    (*(*(v24 - 8) + 8))(v4, v24);
  }

  v28 = v16[6];
  v29 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE19DC4(&v20[v28], 1, 1, v29);
  v30 = v16[8];
  v31 = &v20[v16[7]];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v12 + 8))(v15, v11);
  *v20 = v37 & 1;
  v32 = v35;
  *(v20 + 1) = v36;
  *(v20 + 2) = v32;
  sub_22BE2343C();
  *v31 = v25;
  v31[1] = v26;
  sub_22C259290(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  v33 = sub_22C270744();
  sub_22BE1AE58();
  return v33;
}

char *sub_22C2067F0()
{
  v2 = v0;
  v3 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90F248, &unk_22C2CC860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for AgentPrimitiveAction(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v15);
  v21 = *v15;
  v20 = v15[1];
  sub_22BE1AA68(v15 + *(v12 + 28), v6);

  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v22 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
    sub_22BE19DC4(v10, 0, 1, v22);
    sub_22BE19DC4(v19 + *(v16 + 20), 1, 1, v22);
    v23 = v19 + *(v16 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v19 = v21;
    v19[1] = v20;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
    v10 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v10;
}

uint64_t sub_22C206AEC()
{
  v2 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoPrimitiveAction.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

char *sub_22C206C6C()
{
  v2 = v0;
  v3 = type metadata accessor for AgentRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90F220, &unk_22C2AE830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for AgentHandoffRequest(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v2, v15);
  v21 = *v15;
  v20 = v15[1];
  sub_22BE1AA68(v15 + *(v12 + 28), v6);

  TranscriptProtoAgentRequest.init(handwritten:)(v6);
  if (v1)
  {
    sub_22BE1AE58();
  }

  else
  {
    v22 = type metadata accessor for TranscriptProtoAgentRequest(0);
    sub_22BE19DC4(v10, 0, 1, v22);
    sub_22BE19DC4(v19 + *(v16 + 20), 1, 1, v22);
    v23 = v19 + *(v16 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1AE58();
    *v19 = v21;
    v19[1] = v20;
    sub_22BE2343C();
    sub_22C259290(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);
    v10 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v10;
}

uint64_t sub_22C206F68()
{
  v2 = type metadata accessor for AgentPassRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoAgentPassRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C2070E8()
{
  v0 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C2071E8()
{
  v2 = type metadata accessor for AgentRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoAgentRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoAgentRequest.init(handwritten:)(v5);
  if (!v1)
  {
    sub_22C259290(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

void TranscriptHandwrittenBidirectionalConvertibleProtocol.protoBytes()()
{
  sub_22BE19130();
  v2 = sub_22C259488(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE294E0();
  v8 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  v14 = *(v4 + 16);
  v15 = sub_22BE289D8();
  v16(v15);
  sub_22BE1A8C4();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  v18 = sub_22BE3D5BC();
  v19(v18, AssociatedTypeWitness);
  if (!v0)
  {
    sub_22BE1B5E0();
    swift_getAssociatedConformanceWitness();
    sub_22BE19454();
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22BE354D0();
    sub_22C270744();
    sub_22BE29328();
    v20 = *(v23 + 8);
    v21 = sub_22BE200D4();
    v22(v21);
  }

  sub_22BE1A8C4();
  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t Array<A>.init<A>(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (v3)
  {
    sub_22BE1BC24(a3);
    v7 = *(v6 + 8);
  }

  else
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C25A368();
    a2 = sub_22C2735C4();
    sub_22BE1BC24(a3);
    v11 = *(v10 + 8);
  }

  v8 = sub_22BE18944();
  v9(v8);
  return a2;
}

uint64_t sub_22C2077FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v14);
  result = (*(a5 + 16))(v16, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t Set<>.init(handwritten:)()
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v0)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    sub_22C259FD0();
    return sub_22C2736A4();
  }

  return result;
}

uint64_t sub_22C207A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a4 + 16))(v15, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t Dictionary<>.init(handwritten:)()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_22C272EB4();

  return v0;
}

uint64_t sub_22C207C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1, v11);
  return (*(a6 + 16))(v13, a4, a6);
}

uint64_t HandwrittenConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

void Session.Event.init(transcript:)()
{
  sub_22BE19130();
  v6 = v5;
  v170 = v7;
  v8 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE29200(v12);
  v13 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v18 = sub_22BE417B4(v17);
  v19 = type metadata accessor for TranscriptProtoTimepoint(v18);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  sub_22BE48A8C(v23);
  v24 = type metadata accessor for Timepoint();
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v29 = sub_22BE3C768(v28);
  v30 = type metadata accessor for TranscriptProtoPayload(v29);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v35 = sub_22BE28E74(v34);
  v36 = type metadata accessor for Session.Event.Payload(v35);
  v37 = sub_22BE19448(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17CBC();
  v40 = sub_22C26E1D4();
  v41 = sub_22BE179D8(v40);
  v175 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v47 = sub_22BE19448(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v50);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v51);
  sub_22C259BC0();
  v52 = *v6;
  v53 = v6[1];
  sub_22C26E174();
  sub_22C101298();
  v54 = sub_22BE1B73C();
  sub_22BE233E8(v54, v55, &qword_22C27AB00);
  if (v0)
  {
    sub_22C2596C8();
    sub_22BE1AE58();
LABEL_7:
    sub_22BE46D98();
    sub_22BE18478();
    return;
  }

  v164 = v1;
  v165 = v3;
  v176 = v40;
  v56 = v6[2];
  v57 = v6[3];
  sub_22C26E174();
  sub_22C101298();
  v58 = v2;
  sub_22BE233E8(v4, &qword_27D9082F0, &qword_22C27AB00);
  if (v6[12])
  {
    v59 = v6[11];
    v60 = v6[12];

    sub_22BE1804C();
    sub_22C26E174();
  }

  else
  {
    sub_22C25975C();
    sub_22BE19DC4(v61, v62, v63, v64);
  }

  v65 = v171;
  v66 = type metadata accessor for TranscriptProtoEvent(0);
  v67 = v6 + *(v66 + 44);
  sub_22C1035D4();
  v172 = v66;
  Session.Event.Payload.init(transcript:)(v65, v68, v69, v70, v71, v72, v73, v74, v136, v137, v139, v141, v143, v145, v147, v148, v149, v151, v153, v155);
  v75 = v6[5];
  v76 = v6[7];
  v156 = v6[4];
  v157 = v6[6];
  v77 = v6[9];
  v158 = v6[8];
  v78 = v172[13];
  v79 = (v6 + v172[12]);
  v154 = *v79;
  v161 = v79[1];

  v159 = v75;

  v160 = v76;

  sub_22C1036C4();
  v150 = v77;
  Timepoint.init(transcript:)();
  v146 = v58;
  v80 = v172[14];
  sub_22C1CF208();
  sub_22BE22814();
  sub_22C0FCA40();
  v144 = v81;
  v142 = v82;
  v83 = v172[15];
  sub_22BE22814();
  sub_22C0FCB48();
  v86 = v6[10];
  v87 = *(v86 + 16);
  v88 = MEMORY[0x277D84F90];
  v140 = v85;
  v138 = v84;
  if (!v87)
  {
    v120 = v170;
LABEL_29:
    v174 = sub_22C1EE5C8(v88, &qword_27D915CA0, &qword_22C2D1AB0, sub_22C250A74);
    v124 = type metadata accessor for Session.Event(0);
    v125 = v124[6];
    sub_22BE1A140();
    sub_22BE19DC4(v126, v127, v128, v176);
    v129 = (v120 + v124[11]);
    v130 = (v120 + v124[13]);
    v131 = v120 + v124[14];
    v132 = *(v175 + 32);
    v132(v120, v165, v176);
    v132(v120 + v124[5], v146, v176);
    sub_22BE2343C();
    sub_22BE3B620(v164, v120 + v124[7]);
    v133 = (v120 + v124[8]);
    *v133 = v156;
    v133[1] = v159;
    v134 = (v120 + v124[9]);
    *v134 = v157;
    v134[1] = v160;
    v135 = (v120 + v124[10]);
    *v135 = v158;
    v135[1] = v150;
    *v129 = v154;
    v129[1] = v161;
    sub_22BE3B620(v168, v120 + v124[12]);
    *v130 = v144;
    v130[1] = v142;
    *v131 = v138;
    *(v131 + 8) = v140 & 1;
    *(v120 + v124[15]) = v174;
    sub_22C2596C8();
    sub_22BE406B8();
    sub_22BE1AE58();
    goto LABEL_7;
  }

  sub_22C25A000();
  sub_22C25A930();
  sub_22BE71BBC(v89, v90, v91);
  v92 = sub_22BE308D0(v86);
  v93 = 0;
  v173 = v86 + 64;
  v162 = v94;
  sub_22BE417A8(v86 + 72);
  v96 = 1;
  v163 = v87;
  while ((v92 & 0x8000000000000000) == 0 && v92 < v96 << *(v86 + 32))
  {
    v97 = v92 >> 6;
    v98 = v96 << v92;
    if ((*(v173 + 8 * (v92 >> 6)) & (v96 << v92)) == 0)
    {
      goto LABEL_31;
    }

    v166 = v93;
    if (*(v86 + 36) != v95)
    {
      goto LABEL_32;
    }

    v99 = v95;
    v100 = (*(v86 + 48) + 16 * v92);
    v101 = v100[1];
    v169 = *v100;
    v167 = *(*(v86 + 56) + 8 * v92);
    v102 = v86;
    v104 = *(v88 + 16);
    v103 = *(v88 + 24);

    if (v104 >= v103 >> 1)
    {
      sub_22BE447E4();
      sub_22BE71BBC(v121, v122, v123);
    }

    *(v88 + 16) = v104 + 1;
    v105 = (v88 + 24 * v104);
    v105[4] = v169;
    v105[5] = v101;
    v105[6] = v167;
    v106 = 1 << *(v102 + 32);
    if (v92 >= v106)
    {
      goto LABEL_33;
    }

    if ((*(v173 + 8 * v97) & v98) == 0)
    {
      goto LABEL_34;
    }

    v86 = v102;
    if (*(v102 + 36) != v99)
    {
      goto LABEL_35;
    }

    sub_22C25AC7C();
    if (v108)
    {
      v109 = v97 << 6;
      v110 = v97 + 1;
      v111 = (v152 + 8 * v97);
      while (v110 < (v106 + 63) >> 6)
      {
        v113 = *v111++;
        v112 = v113;
        v109 += 64;
        ++v110;
        if (v113)
        {
          v114 = sub_22BE33FCC();
          sub_22BE2FC64(v114, v115, v116);
          v96 = 1;
          v106 = __clz(__rbit64(v112)) + v109;
          goto LABEL_26;
        }
      }

      v117 = sub_22BE33FCC();
      sub_22BE2FC64(v117, v118, v119);
      v96 = 1;
    }

    else
    {
      v106 = __clz(__rbit64(v107)) | v92 & 0x7FFFFFFFFFFFFFC0;
    }

LABEL_26:
    v93 = v166 + 1;
    v92 = v106;
    v95 = v162;
    v120 = v170;
    if (v166 + 1 == v163)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void Session.Event.Payload.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v27;
  a20 = v28;
  sub_22C25A50C();
  v705 = v29;
  v30 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v703 = v34;
  v35 = sub_22BE183BC();
  v36 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v35);
  v37 = sub_22BE19448(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v41 = sub_22BE18950(v40);
  v701 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(v41);
  v42 = sub_22BE18000(v701);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  v702 = v45;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  sub_22C259824(v47, v48, v49, v50, v51, v52, v53, v54, v632);
  v55 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v56 = sub_22BE19448(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  v68 = sub_22BE3CEC0(v60, v61, v62, v63, v64, v65, v66, v67, v633);
  v69 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v68);
  v70 = sub_22BE19448(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v73);
  sub_22BE19E94();
  v75 = sub_22BE18950(v74);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(v75);
  v77 = sub_22BE19448(matched);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BE17A44();
  v81 = sub_22BE18950(v80);
  v82 = type metadata accessor for TranscriptProtoToolRetrievalRequest(v81);
  v83 = sub_22BE19448(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22BE17A44();
  v87 = sub_22BE18950(v86);
  v88 = type metadata accessor for TranscriptProtoRequestAmendment(v87);
  v89 = sub_22BE19448(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v92);
  sub_22BE19E94();
  v94 = sub_22BE18950(v93);
  v95 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v94);
  v96 = sub_22BE19448(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v99);
  sub_22BE19E94();
  v101 = sub_22BE18950(v100);
  v102 = type metadata accessor for TranscriptProtoSkipStatement(v101);
  v103 = sub_22BE19448(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v106);
  sub_22BE19E94();
  v108 = sub_22BE18950(v107);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v108);
  v110 = sub_22BE19448(DecorationPrePlannerResult);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v113);
  sub_22BE19E94();
  v115 = sub_22BE18950(v114);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v115);
  v117 = sub_22BE19448(DecorationResult);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19E94();
  v122 = sub_22BE18950(v121);
  v123 = type metadata accessor for TranscriptProtoTypeConversionResult(v122);
  v124 = sub_22BE19448(v123);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v127);
  sub_22BE19E94();
  v129 = sub_22BE18950(v128);
  v130 = type metadata accessor for TranscriptProtoTypeConversionRequest(v129);
  v131 = sub_22BE19448(v130);
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v134);
  sub_22BE19E94();
  v136 = sub_22BE18950(v135);
  v137 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(v136);
  v138 = sub_22BE19448(v137);
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v141);
  sub_22BE19E94();
  v143 = sub_22BE18950(v142);
  v144 = type metadata accessor for TranscriptProtoUndoRedoRequest(v143);
  v145 = sub_22BE19448(v144);
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v145);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v148);
  sub_22BE19E94();
  v150 = sub_22BE18950(v149);
  v151 = type metadata accessor for TranscriptProtoToolResolution(v150);
  v152 = sub_22BE19448(v151);
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v155);
  sub_22BE19E94();
  v157 = sub_22BE18950(v156);
  v158 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v157);
  v159 = sub_22BE19448(v158);
  v161 = *(v160 + 64);
  MEMORY[0x28223BE20](v159);
  sub_22BE17A44();
  v163 = sub_22BE18950(v162);
  v164 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v163);
  v165 = sub_22BE19448(v164);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v168);
  sub_22BE19E94();
  v170 = sub_22BE18950(v169);
  v171 = type metadata accessor for TranscriptProtoExternalAgentRequest(v170);
  v172 = sub_22BE19448(v171);
  v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v172);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v175);
  sub_22BE19E94();
  v177 = sub_22BE18950(v176);
  v178 = type metadata accessor for TranscriptProtoStatementResult(v177);
  v179 = sub_22BE19448(v178);
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v179);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v182);
  sub_22BE19E94();
  v184 = sub_22BE18950(v183);
  v185 = type metadata accessor for TranscriptProtoSystemResponse(v184);
  v186 = sub_22BE19448(v185);
  v188 = *(v187 + 64);
  MEMORY[0x28223BE20](v186);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v189);
  sub_22BE19E94();
  v191 = sub_22BE18950(v190);
  v192 = type metadata accessor for TranscriptProtoActionCancellation(v191);
  v193 = sub_22BE19448(v192);
  v195 = *(v194 + 64);
  MEMORY[0x28223BE20](v193);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v196);
  sub_22BE19E94();
  v198 = sub_22BE18950(v197);
  v199 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(v198);
  v200 = sub_22BE19448(v199);
  v202 = *(v201 + 64);
  MEMORY[0x28223BE20](v200);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v203);
  sub_22BE19E94();
  v205 = sub_22BE18950(v204);
  v206 = type metadata accessor for TranscriptProtoToolRetrievalResponse(v205);
  v207 = sub_22BE19448(v206);
  v209 = *(v208 + 64);
  MEMORY[0x28223BE20](v207);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v210);
  sub_22BE19E94();
  v212 = sub_22BE18950(v211);
  v213 = type metadata accessor for TranscriptProtoContextRetrieved(v212);
  v214 = sub_22BE19448(v213);
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v214);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v217);
  sub_22BE19E94();
  v219 = sub_22BE18950(v218);
  v220 = type metadata accessor for TranscriptProtoSafetyModeException(v219);
  v221 = sub_22BE19448(v220);
  v223 = *(v222 + 64);
  MEMORY[0x28223BE20](v221);
  sub_22BE17A44();
  v225 = sub_22BE18950(v224);
  v226 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v225);
  v227 = sub_22BE19448(v226);
  v229 = *(v228 + 64);
  MEMORY[0x28223BE20](v227);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v230);
  sub_22BE19E94();
  v232 = sub_22BE18950(v231);
  v233 = type metadata accessor for TranscriptProtoActionResolverRequest(v232);
  v234 = sub_22BE19448(v233);
  v236 = *(v235 + 64);
  MEMORY[0x28223BE20](v234);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v237);
  sub_22BE19E94();
  v239 = sub_22BE18950(v238);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v239);
  v241 = sub_22BE19448(StepResults);
  v243 = *(v242 + 64);
  MEMORY[0x28223BE20](v241);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v244);
  sub_22BE19E94();
  v246 = sub_22BE18950(v245);
  v247 = type metadata accessor for TranscriptProtoSessionError(v246);
  v248 = sub_22BE19448(v247);
  v250 = *(v249 + 64);
  MEMORY[0x28223BE20](v248);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v251);
  sub_22BE19E94();
  v253 = sub_22BE18950(v252);
  v254 = type metadata accessor for TranscriptProtoStatementID(v253);
  v255 = sub_22BE19448(v254);
  v257 = *(v256 + 64);
  MEMORY[0x28223BE20](v255);
  sub_22BE17A44();
  sub_22BE18950(v258);
  v259 = sub_22C26E684();
  v260 = sub_22BE18910(v259, &v660);
  v636 = v261;
  v263 = *(v262 + 64);
  MEMORY[0x28223BE20](v260);
  sub_22BE17A44();
  v265 = sub_22BE18950(v264);
  v266 = type metadata accessor for TranscriptProtoVariableStep(v265);
  v267 = sub_22BE290A0(v266, &v677);
  v269 = *(v268 + 64);
  MEMORY[0x28223BE20](v267);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v270);
  sub_22BE19E94();
  v272 = sub_22BE18950(v271);
  Step = type metadata accessor for TranscriptProtoQueryStep(v272);
  v274 = sub_22BE19448(Step);
  v276 = *(v275 + 64);
  MEMORY[0x28223BE20](v274);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v277);
  sub_22BE19E94();
  v279 = sub_22BE18950(v278);
  v280 = type metadata accessor for TranscriptProtoClientAction(v279);
  v281 = sub_22BE19448(v280);
  v283 = *(v282 + 64);
  MEMORY[0x28223BE20](v281);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v284);
  sub_22BE19E94();
  v286 = sub_22BE18950(v285);
  v287 = type metadata accessor for TranscriptProtoAction(v286);
  v288 = sub_22BE19448(v287);
  v290 = *(v289 + 64);
  MEMORY[0x28223BE20](v288);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v291);
  sub_22BE19E94();
  v293 = sub_22BE18950(v292);
  v294 = type metadata accessor for TranscriptProtoRecoverableError(v293);
  v295 = sub_22BE19448(v294);
  v297 = *(v296 + 64);
  MEMORY[0x28223BE20](v295);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v298);
  sub_22BE19E94();
  v300 = sub_22BE18950(v299);
  v301 = type metadata accessor for TranscriptProtoPlan(v300);
  v302 = sub_22BE19448(v301);
  v304 = *(v303 + 64);
  MEMORY[0x28223BE20](v302);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v305);
  sub_22BE19E94();
  v307 = sub_22BE18950(v306);
  v308 = type metadata accessor for TranscriptProtoRequest(v307);
  v309 = sub_22BE19448(v308);
  v311 = *(v310 + 64);
  MEMORY[0x28223BE20](v309);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v312);
  sub_22BE19E94();
  v314 = sub_22BE18950(v313);
  v315 = type metadata accessor for TranscriptProtoSpeechPartialResult(v314);
  v316 = sub_22BE19448(v315);
  v318 = *(v317 + 64);
  MEMORY[0x28223BE20](v316);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v319);
  sub_22BE19E94();
  v321 = sub_22BE18950(v320);
  v322 = type metadata accessor for TranscriptProtoUserTurnStarted(v321);
  v323 = sub_22BE19448(v322);
  v325 = *(v324 + 64);
  MEMORY[0x28223BE20](v323);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v326);
  sub_22BE19E94();
  v328 = sub_22BE18950(v327);
  v329 = type metadata accessor for TranscriptProtoSessionStart(v328);
  v330 = sub_22BE19448(v329);
  v332 = *(v331 + 64);
  MEMORY[0x28223BE20](v330);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v333);
  sub_22BE25A90();
  v334 = sub_22C0B1AF0();
  v336 = sub_22BE5CE4C(v334, v335);
  sub_22BE19448(v336);
  v338 = *(v337 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v339);
  v340 = sub_22BE46DE8();
  v341 = type metadata accessor for TranscriptProtoPayloadEnum(v340);
  v342 = sub_22BE18000(v341);
  v344 = *(v343 + 64);
  MEMORY[0x28223BE20](v342);
  sub_22BE1955C();
  sub_22BE200D4();
  sub_22BE22814();
  v345 = sub_22BE391E8();
  sub_22BE1AB5C(v345, v346, v341);
  if (v347)
  {
    sub_22BE233E8(v20, &qword_27D90E450, &qword_22C2AE470);
    *&v709 = v341;
    sub_22BE5CE4C(&qword_27D9155D8, &qword_22C2CC858);
    sub_22C273074();
    sub_22BE3D554();
    sub_22C108598();
    v348 = sub_22BE196B4();
    sub_22C259EA0(v348, v349);
    sub_22BE18FBC();
LABEL_83:
    sub_22BE1AE58();
  }

  else
  {
    v350 = sub_22BE19EBC();
    sub_22BE3B620(v350, v25);
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22C1088AC();
        sub_22BE22944(&v662);
        sub_22BE3B620(v462, v463);
        v464 = sub_22BE431F0();
        sub_22BE1AA68(v464, v24);
        sub_22C25A730();
        v465 = a10;
        UserTurnStarted.init(transcript:)();
        if (v465)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE2BC54();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 2:
        sub_22C1088AC();
        sub_22C25ABA8(&v664);
        sub_22BE3B620(v436, v437);
        sub_22BE44744();
        sub_22BE46048(&v665);
        sub_22BE1AA68(v438, v439);
        v441 = *v25;
        v440 = v25[1];
        v442 = v25[2];

        sub_22C0F28E0(v443);
        v445 = v444;
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE392D4();
        sub_22BE1AE58();
        v446 = v705;
        *v705 = v441;
        v446[1] = v440;
        v446[2] = v445;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE39250();
        goto LABEL_116;
      case 3:
        sub_22C1088AC();
        sub_22BE22944(&v667);
        sub_22BE3B620(v453, v454);
        sub_22BE431F0();
        sub_22BE37B14(&v663);
        sub_22BE1AA68(v455, v456);
        sub_22BE2730C();
        Request.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE27AC8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 4:
        sub_22C1088AC();
        sub_22BEE94A4(&v669);
        sub_22BE3B620(v401, v402);
        sub_22BE19EBC();
        sub_22BE22944(&v666);
        sub_22BE1AA68(v403, v404);
        v405 = sub_22C259FC4();
        Session.Plan.init(transcript:)(v405, v406);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE29228();
        v602 = v707;
        v603 = v705;
        *v705 = v706;
        v603[1] = v602;
        v603[2] = *v708;
        *(v603 + 41) = *&v708[9];
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 5:
        sub_22C1088AC();
        sub_22BE22944(&v673);
        sub_22BE3B620(v502, v503);
        sub_22BE431F0();
        sub_22BE37B14(&v670);
        sub_22BE1AA68(v504, v505);
        v506 = sub_22BE2730C();
        Action.init(transcript:)(v506, v507, v508, v509, v510, v511, v512, v513, v634, v636, v639, v641, v643, v645, v647, v649, v651, v653, v655, v657);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE23984();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 6:
        sub_22C1088AC();
        sub_22BE22944(&v675);
        sub_22BE3B620(v518, v519);
        sub_22BE431F0();
        sub_22BE37B14(&v672);
        sub_22BE1AA68(v520, v521);
        v522 = sub_22BE2730C();
        ClientAction.init(transcript:)(v522, v523, v524, v525, v526, v527, v528, v529, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2594D0();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 7:
        sub_22C1088AC();
        sub_22BE22944(&v676);
        sub_22BE3B620(v457, v458);
        sub_22BE431F0();
        sub_22BE37B14(&v674);
        sub_22BE1AA68(v459, v460);
        v461 = sub_22BE2730C();
        QueryStep.init(transcript:)(v461);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE447B8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 8:
        sub_22C1088AC();
        sub_22C108C10(&v683);
        sub_22BE3B620(v538, v539);
        sub_22BE29370();
        sub_22BE46048(&v682);
        sub_22BE1AA68(v540, v541);
        sub_22BE2ED7C(&v677);
        sub_22BE351B8(&v679);
        v542 = a10;
        sub_22C1026C4();
        if (v542)
        {
          goto LABEL_62;
        }

        v604 = *v341;
        v605 = *(v341 + 1);
        v606 = *(v341 + 2);

        sub_22BE3C6E0(&v659);
        sub_22BE354D0();
        sub_22C26E664();
        sub_22BE18B80();
        sub_22BE1AE58();
        v607 = *v25;

        sub_22C0F50E4(v608, v609, v610, v611, v612, v613, v614, v615, v634, v636, v639, v641, v643, v645, v647, v649, v651, v653, v655, v657);
        v627 = v626;
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE431C0();
        sub_22BE1AE58();
        v628 = *(v638 + 32);
        v629 = v705;
        v630 = sub_22BE1A8C4();
        v631(v630);
        *(v629 + *(type metadata accessor for VariableStep(0) + 20)) = v627;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE1ACEC();
        goto LABEL_116;
      case 9:
        sub_22C1088AC();
        sub_22BE22944(&v681);
        sub_22BE3B620(v414, v415);
        sub_22BE431F0();
        sub_22BE37B14(&v678);
        sub_22BE1AA68(v416, v417);
        sub_22BE2730C();
        SessionError.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE31020();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 10:
        sub_22C1088AC();
        sub_22BE22944(&v671);
        sub_22BE3B620(v534, v535);
        sub_22BE431F0();
        sub_22BE37B14(&v668);
        sub_22BE1AA68(v536, v537);
        sub_22BE2730C();
        Session.RecoverableError.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259888();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 11:
        sub_22C1088AC();
        sub_22BE22944(&v685);
        sub_22BE3B620(v389, v390);
        sub_22BE431F0();
        sub_22BE37B14(&v680);
        sub_22BE1AA68(v391, v392);
        v393 = sub_22BE2730C();
        QueryStepResults.init(transcript:)(v393, v394, v395, v396, v397, v398, v399, v400, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      case 12:
        sub_22C1088AC();
        sub_22BE22944(&v686);
        sub_22BE3B620(v410, v411);
        sub_22BE431F0();
        sub_22BE37B14(&v684);
        sub_22BE1AA68(v412, v413);
        sub_22BE2730C();
        ActionResolverRequest.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE25D94();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 13:
      case 31:
      case 37:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259CD0();
        type metadata accessor for Session.Event.Payload(0);
        sub_22C25A960();
        goto LABEL_80;
      case 14:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C1088AC();
        sub_22BE37B14(&v687);
        sub_22BE3B620(v383, v384);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22BE38FBC();
        sub_22BE39250();
        goto LABEL_80;
      case 15:
        sub_22C1088AC();
        sub_22BE37B14(&v689);
        sub_22BE3B620(v447, v448);
        sub_22BE385E4();
        sub_22C108C10(&v688);
        sub_22BE1AA68(v449, v450);
        v451 = *v23;

        v452 = a10;
        sub_22C0F77A0();
        if (v452)
        {
          goto LABEL_62;
        }

        goto LABEL_88;
      case 16:
        sub_22C1088AC();
        sub_22BE37B14(&v696);
        sub_22BE3B620(v377, v378);
        sub_22BE385E4();
        sub_22C108C10(&v695);
        sub_22BE1AA68(v379, v380);
        v381 = *v23;

        v382 = a10;
        sub_22C0F751C();
        if (v382)
        {
          goto LABEL_62;
        }

LABEL_88:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        sub_22BE3C5E4();
        sub_22BE1AE58();
        v601 = sub_22C25AB28();
        type metadata accessor for Session.Event.Payload(v601);
        sub_22BE1ACEC();
        goto LABEL_116;
      case 17:
        sub_22C1088AC();
        sub_22C108C10(&v693);
        sub_22BE3B620(v466, v467);
        sub_22BE29370();
        sub_22BE46048(&v692);
        sub_22BE1AA68(v468, v469);
        v470 = *v25;

        v472 = a10;
        sub_22C0F67EC(v471, v473, v474, v475, v476, v477, v478, v479, v634, v636, v639, v641, v643, v645, v647, v649, v651, v653, v655, v657);
        if (!v472)
        {
          v481 = v480;
          v482 = v25[1];

          sub_22C0F67EC(v483, v484, v485, v486, v487, v488, v489, v490, v635, v637, v640, v642, v644, v646, v648, v650, v652, v654, v656, v658);
          v621 = v620;
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22BE1AE58();
          sub_22BE1B328();
          sub_22BE1AE58();
          v622 = v705;
          *v705 = v481;
          v622[1] = v621;
          type metadata accessor for Session.Event.Payload(0);
          sub_22BE39250();
          goto LABEL_116;
        }

LABEL_62:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AE58();
        goto LABEL_83;
      case 18:
        sub_22C1088AC();
        sub_22BE22944(&v698);
        sub_22BE3B620(v530, v531);
        sub_22BE431F0();
        sub_22BE37B14(&v694);
        sub_22BE1AA68(v532, v533);
        sub_22BE2730C();
        ActionCancellation.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE3A04C();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 19:
        sub_22C1088AC();
        sub_22BEE94A4(&v691);
        sub_22BE3B620(v568, v569);
        sub_22BE19EBC();
        sub_22BE22944(&v690);
        sub_22BE1AA68(v570, v571);
        v572 = sub_22C259FC4();
        ToolRetrievalResponse.init(transcript:)(v572, v573);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE203FC();
        sub_22BE1AE58();
        v616 = v710;
        v617 = v711;
        v618 = v712;
        v619 = v705;
        *v705 = v709;
        v619[2] = v616;
        v619[3] = v617;
        *(v619 + 8) = v618;
        *(v619 + 5) = v713;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 20:
        sub_22C1088AC();
        sub_22BE22944(&v700);
        sub_22BE3B620(v498, v499);
        sub_22BE431F0();
        sub_22BE37B14(&v697);
        sub_22BE1AA68(v500, v501);
        sub_22BE2730C();
        SystemResponse.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259668();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 21:
        sub_22C1088AC();
        sub_22BE22944(&v702);
        sub_22BE3B620(v514, v515);
        sub_22BE431F0();
        sub_22BE37B14(&v699);
        sub_22BE1AA68(v516, v517);
        sub_22BE2730C();
        StatementResult.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2599D8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 22:
        sub_22C1088AC();
        sub_22BE22944(&v704);
        sub_22BE3B620(v552, v553);
        sub_22BE431F0();
        sub_22BE37B14(&v701);
        sub_22BE1AA68(v554, v555);
        sub_22BE2730C();
        ExternalAgentRequest.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE487FC();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 23:
        sub_22C1088AC();
        sub_22BE22944(&v705);
        sub_22BE3B620(v574, v575);
        sub_22BE431F0();
        sub_22BE37B14(&v703);
        sub_22BE1AA68(v576, v577);
        v578 = sub_22BE2730C();
        ExternalAgentOutcome.init(transcript:)(v578);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1AFF8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 24:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE39758();
        sub_22C108C10(&v706);
        sub_22BE3B620(v430, v431);
        v433 = *v23;
        v432 = v23[1];
        v434 = v23[2];

        sub_22BE323E0();
        sub_22BE1AE58();
        v435 = v705;
        *v705 = v433;
        v435[1] = v432;
        v435[2] = v434;
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE31160();
        goto LABEL_80;
      case 25:
        sub_22C1088AC();
        sub_22BE22944(&v707 + 8);
        sub_22BE3B620(v418, v419);
        sub_22BE431F0();
        sub_22BE37B14(&v706 + 8);
        sub_22BE1AA68(v420, v421);
        v422 = sub_22BE2730C();
        ToolResolution.init(transcript:)(v422, v423, v424, v425, v426, v427, v428, v429, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE23370();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 26:
        sub_22C1088AC();
        sub_22BE22944(&v708[8]);
        sub_22BE3B620(v597, v598);
        sub_22BE431F0();
        sub_22BE37B14(&v707);
        sub_22BE1AA68(v599, v600);
        sub_22BE2730C();
        UndoRedoRequest.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2599A8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 27:
        sub_22C1088AC();
        sub_22BE22944(&v708[24]);
        sub_22BE3B620(v369, v370);
        sub_22BE431F0();
        sub_22BE37B14(v708);
        sub_22BE1AA68(v371, v372);
        sub_22BE2730C();
        ClientUndoRedoRequest.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE2C2A0();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 28:
        sub_22C1088AC();
        sub_22BE22944(&v709 + 8);
        sub_22BE3B620(v579, v580);
        sub_22BE431F0();
        sub_22BE37B14(&v708[16]);
        sub_22BE1AA68(v581, v582);
        v583 = sub_22BE2730C();
        TypeConversionRequest.init(transcript:)(v583, v584, v585, v586, v587, v588, v589, v590, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2594B8();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 29:
        sub_22C1088AC();
        sub_22BE22944(&v711);
        sub_22BE3B620(v591, v592);
        sub_22BE431F0();
        sub_22BE37B14(&v709);
        sub_22BE1AA68(v593, v594);
        sub_22BE2730C();
        TypeConversionResult.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE1B154();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 30:
        sub_22C1088AC();
        sub_22BE22944(&v713);
        sub_22BE3B620(v543, v544);
        sub_22BE431F0();
        sub_22BE37B14(&v710);
        sub_22BE1AA68(v545, v546);
        v547 = sub_22BE2730C();
        QueryDecorationResult.init(transcript:)(v547);
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C2595C8();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 32:
        sub_22C1088AC();
        sub_22BE22944(&v714);
        sub_22BE3B620(v548, v549);
        sub_22BE431F0();
        sub_22BE37B14(&v712);
        sub_22BE1AA68(v550, v551);
        sub_22BE2730C();
        QueryDecorationPrePlannerResult.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE27C5C();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 33:
        sub_22C1088AC();
        sub_22BE22944(&a10);
        sub_22BE3B620(v385, v386);
        sub_22BE431F0();
        sub_22BE37B14(&v713 + 8);
        sub_22BE1AA68(v387, v388);
        sub_22BE2730C();
        SkipStatement.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      case 34:
        sub_22C1088AC();
        sub_22BE22944(&a12);
        sub_22BE3B620(v373, v374);
        sub_22BE431F0();
        sub_22BE37B14(&a9);
        sub_22BE1AA68(v375, v376);
        sub_22BE2730C();
        ExecutionPreconditionEvaluatorRequest.init(transcript:)();
        if (v21)
        {
          goto LABEL_82;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259A38();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 35:
        sub_22C1088AC();
        sub_22BE22944(&a14);
        sub_22BE3B620(v355, v356);
        sub_22BE431F0();
        sub_22BE37B14(&a11);
        sub_22BE1AA68(v357, v358);
        v359 = sub_22BE2730C();
        RequestAmendment.init(transcript:)(v359, v360, v361, v362, v363, v364, v365, v366, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      case 36:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C1088AC();
        sub_22BE37B14(&a13);
        sub_22BE3B620(v367, v368);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22BE38FBC();
        sub_22BE39250();
        goto LABEL_80;
      case 38:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C1088AC();
        sub_22BE37B14(&a15);
        sub_22BE3B620(v595, v596);
        sub_22C25AE34();
        sub_22BE379D8();
        sub_22BE1AE58();
        sub_22BE38FBC();
        sub_22BE39250();
        goto LABEL_80;
      case 39:
        sub_22C1088AC();
        sub_22BE22944(&a18);
        sub_22BE3B620(v556, v557);
        sub_22BE431F0();
        sub_22BE37B14(&a16);
        sub_22BE1AA68(v558, v559);
        v560 = sub_22BE2730C();
        IntermediateSystemResponse.init(transcript:)(v560, v561, v562, v563, v564, v565, v566, v567, v634, v636);
        if (v21)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      case 40:
        v407 = sub_22C1088AC();
        sub_22BE3B620(v407, v700);
        sub_22BE431F0();
        sub_22BE37B14(&a17);
        sub_22BE1AA68(v408, v409);
        sub_22BE2730C();
        IntermediateSystemResponseRendered.init(transcript:)();
        if (v21)
        {
LABEL_82:
          sub_22BE18FBC();
          sub_22BE1AE58();
          goto LABEL_83;
        }

LABEL_89:
        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C0E9A74();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
        goto LABEL_116;
      case 41:
        v491 = sub_22C1088AC();
        sub_22BE3B620(v491, v704);
        v492 = sub_22C1088AC();
        v493 = v702;
        sub_22BE1AA68(v492, v702);
        v495 = *v493;
        v494 = v493[1];
        v496 = *(v701 + 20);

        v497 = a10;
        sub_22C103D4C();
        if (!v497)
        {
          sub_22BE351B8(&v661);
          AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
          sub_22C25A224();
          sub_22BE1AE58();
          v623 = v705;
          *v705 = v495;
          v623[1] = v494;
          v624 = *(type metadata accessor for AgentPrimitiveAction(0) + 20);
          sub_22C259620();
          sub_22BE3B620(v341, v623 + v625);
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22BE35838();
          sub_22BE1AE58();
          type metadata accessor for Session.Event.Payload(0);
          sub_22BE31160();
          goto LABEL_116;
        }

        sub_22C25A224();
        sub_22BE1AE58();

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22BE35838();
        goto LABEL_83;
      case 42:
      case 43:
        sub_22BE18FBC();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22C25A960();
LABEL_80:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        v352 = sub_22C1088AC();
        sub_22BE3B620(v352, v22);
        v353 = sub_22BE385E4();
        sub_22BE1AA68(v353, v26);
        v354 = a10;
        SessionStart.init(transcript:)();
        if (v354)
        {
          sub_22BE18FBC();
          sub_22BE1AE58();
          sub_22C259530();
          goto LABEL_83;
        }

        sub_22BE18FBC();
        sub_22BE1AE58();
        sub_22C259530();
        sub_22BE1AE58();
        type metadata accessor for Session.Event.Payload(0);
        sub_22BE23BA8();
LABEL_116:
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void Timepoint.init(transcript:)()
{
  sub_22BE19130();
  sub_22C18F0F4();
  v37 = v3;
  v38 = sub_22C26E1D4();
  v4 = sub_22BE179D8(v38);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v40 = v7;
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE3A208();
  v12 = sub_22C26E164();
  v13 = sub_22C2594A0(v12);
  v39 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE28FD8();
  v17 = sub_22C270454();
  v18 = sub_22C259488(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE18DFC();
  v23 = v0 + *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  sub_22C102C6C();
  if (!v1)
  {
    sub_22C270434();
    v24 = *(v20 + 8);
    v25 = sub_22BE1B328();
    v26(v25);
    v28 = *v0;
    v27 = v0[1];
    v29 = v0[2];
    v30 = v0[3];
    sub_22C26E174();
    sub_22C101298();
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
    v31 = *(v39 + 32);
    v32 = sub_22BE261AC();
    v33(v32);
    v34 = type metadata accessor for Timepoint();
    *(v37 + v34[5]) = v28;
    *(v37 + v34[6]) = v27;
    v35 = sub_22C25A688(v34[7]);
    v36(v35, v40, v38);
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AB28();
  sub_22BE18478();
}

void Session.Transcript.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A430();
  v6 = sub_22BE3BD70(v5);
  v7 = type metadata accessor for TranscriptProtoEvent(v6);
  v8 = sub_22BE17A18(v7);
  v68 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE195C4();
  v14 = type metadata accessor for Session.Event(v13);
  v15 = sub_22BE17A18(v14);
  v64 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE1955C();
  v19 = sub_22C26E1D4();
  v20 = sub_22BE179D8(v19);
  v62 = v21;
  v63 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE28FD8();
  v24 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE19668();
  v29 = *v2;
  v28 = v2[1];
  sub_22BE200D4();
  sub_22C26E174();
  sub_22BE34128();
  sub_22C101298();
  sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
  if (v1)
  {
LABEL_11:
    sub_22BE1AE58();
    sub_22BE467E4();
    sub_22BE18478();
    return;
  }

  v67 = v29;
  v59 = v4;
  v60 = v28;
  v30 = v2[2];
  v31 = *(v30 + 16);
  if (!v31)
  {
    v51 = v28;

    v34 = MEMORY[0x277D84F90];
    v49 = v61;
    v48 = v62;
    v50 = v63;
    v47 = v59;
    v45 = v29;
LABEL_10:
    (*(v48 + 32))(v49, v47, v50);
    v52 = type metadata accessor for Session.Transcript(0);
    v53 = sub_22BE48874(v52);
    *v54 = v45;
    v54[1] = v51;
    v55 = sub_22C25A67C(v53);
    *v56 = 0;
    v56[1] = 0xE000000000000000;
    v57 = sub_22C25AAB8(v55);
    *v58 = 0;
    v58[1] = 0;
    *(v49 + *(v57 + 32)) = v34;
    goto LABEL_11;
  }

  v69 = MEMORY[0x277D84F90];

  v32 = sub_22C25A000();
  sub_22BE71B64(v32, v31, 0);
  v33 = 0;
  v34 = v69;
  sub_22BE25AD8();
  v65 = v30 + v36;
  v66 = v30;
  while (v33 < *(v66 + 16))
  {
    sub_22BE1AA68(v65 + *(v35 + 72) * v33, v3);
    v37 = sub_22BE289D8();
    sub_22BE1AA68(v37, v38);
    sub_22C25AB1C();
    Session.Event.init(transcript:)();
    sub_22C2596C8();
    sub_22BE1AE58();
    v40 = *(v69 + 16);
    v39 = *(v69 + 24);
    if (v40 >= v39 >> 1)
    {
      v46 = sub_22BE3D1E4(v39);
      sub_22BE71B64(v46, v40 + 1, 1);
    }

    ++v33;
    *(v69 + 16) = v40 + 1;
    v41 = *(v64 + 80);
    sub_22BE19E14();
    v42 = *(v64 + 72);
    v43 = sub_22C1088AC();
    sub_22BE3B620(v43, v44);
    v45 = v67;
    v35 = v68;
    if (v31 == v33)
    {
      v47 = v59;
      v49 = v61;
      v48 = v62;
      v50 = v63;
      v51 = v60;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void TranscriptProtoTranscript.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE38A98();
  v4 = type metadata accessor for Session.Event(0);
  v5 = sub_22BE17A18(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE39EE8();
  v12 = type metadata accessor for TranscriptProtoEvent(v11);
  v13 = sub_22BE17A18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  sub_22BE35E00(v16);
  v41 = sub_22C26E184();
  v42 = v17;
  v18 = type metadata accessor for Session.Transcript(0);
  v19 = sub_22C25A0A4(v18);
  v21 = v20[1];
  v40 = *v20;
  v22 = *(v1 + *(v19 + 32));
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = MEMORY[0x277D84F90];
    v39 = v20[1];

    v24 = sub_22C25A000();
    sub_22BE70284(v24, v23, 0);
    v25 = 0;
    v26 = v46;
    v27 = *(v7 + 80);
    sub_22BE19E14();
    v43 = v22 + v28;
    while (v25 < *(v22 + 16))
    {
      sub_22BE1AA68(v43 + *(v7 + 72) * v25, v3);
      sub_22BE1AA68(v3, v44);
      TranscriptProtoEvent.init(handwritten:)();
      if (v0)
      {

        sub_22C2596B0();
        sub_22BE1AE58();
        sub_22BE1AE58();

        goto LABEL_12;
      }

      v29 = v7;
      sub_22C2596B0();
      sub_22BE1AE58();
      v31 = *(v46 + 16);
      v30 = *(v46 + 24);
      v2 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        sub_22BE3D1E4(v30);
        sub_22BE39E18();
        sub_22BE70284(v34, v35, v36);
      }

      ++v25;
      *(v46 + 16) = v2;
      sub_22BE25AD8();
      sub_22BE3B620(v45, v46 + v32 + *(v33 + 72) * v31);
      v7 = v29;
      if (v23 == v25)
      {
        v37 = v39;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = v20[1];

    v26 = MEMORY[0x277D84F90];
LABEL_11:
    v38 = *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
    sub_22C25A128();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v2 = v41;
    v2[1] = v42;
    v2[3] = v40;
    v2[4] = v37;
    v2[2] = v26;
LABEL_12:
    sub_22BE22978();
    sub_22BE18478();
  }
}

void TranscriptProtoTimepoint.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C259F34();
  v3 = sub_22C26E164();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE188B0();
  v9 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  v13 = *(v6 + 16);
  v14 = sub_22BF6AC14();
  v15(v14);
  sub_22BE44844();
  sub_22C270444();
  sub_22C270454();
  sub_22C2597D4();
  sub_22C18F17C(v16, v17, v18, v19);
  v20 = type metadata accessor for Timepoint();
  v21 = *(v1 + v20[5]);
  v32 = *(v1 + v20[6]);
  v22 = v1 + v20[7];
  v23 = sub_22C26E184();
  v24 = sub_22C25A77C();
  v25 = type metadata accessor for TranscriptProtoTimepoint(v24);
  v26 = *(v25 + 28);
  sub_22C25975C();
  sub_22BE19DC4(v27, v28, v29, v30);
  v31 = v0 + *(v25 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C0E9830();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v0 = v21;
  v0[1] = v32;
  v0[2] = v23;
  v0[3] = v2;
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t ParticipantID.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_22BE26148();
  sub_22BE1AE58();
  return sub_22BE18040();
}

uint64_t sub_22C20BBF0()
{
  sub_22BE48AF0();
  result = ParticipantID.init(transcript:)(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t TranscriptProtoParticipantID.init(handwritten:)()
{
  sub_22BE18378();
  v3 = v2;
  v4 = v2 + *(type metadata accessor for TranscriptProtoParticipantID(0) + 20);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t sub_22C20BC7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return TranscriptProtoParticipantID.init(handwritten:)();
}

uint64_t SpanID.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;
  sub_22BE1AE58();
  return v1;
}

uint64_t sub_22C20BCE8()
{
  sub_22BE48AF0();
  result = SpanID.init(transcript:)(v1);
  *v0 = result;
  return result;
}

uint64_t TranscriptProtoSpanID.init(handwritten:)()
{
  sub_22BE28CF0();
  v2 = type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE38954(v2);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

void SessionStart.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25A05C();
  v65 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1BCE8(v10, v62);
  v11 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22C259738(v15);
  v16 = sub_22C26E244();
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v20);
  sub_22BEC0508();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE20558();
  v23 = type metadata accessor for TranscriptProtoLocaleSettings(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE17CBC();
  v27 = sub_22C26ECA4();
  v28 = sub_22C2594A0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE294E0();
  sub_22C1041FC();
  if (v3)
  {
    sub_22C259530();
    sub_22BE1AE58();
  }

  else
  {
    v64 = v4;
    v33 = *v2;
    v34 = v2[1];

    sub_22BE236C8();
    sub_22C26E1E4();
    v35 = v2[2];
    v36 = v2[3];

    sub_22BE236C8();
    sub_22C26E1E4();
    v37 = v2[4];
    v38 = v2[5];

    sub_22BE236C8();
    sub_22C26E1E4();
    sub_22BE41FB4();
    sub_22C26EC54();
    sub_22BE379D8();
    sub_22BE1AE58();
    v39 = type metadata accessor for TranscriptProtoSessionStart(0);
    sub_22C25A374(v39);
    sub_22BE22814();
    v40 = sub_22BE489C8();
    sub_22C0FE048(v40, v41, v42, v43, v44, v45, v46, v47, v30, v64);
    v48 = *(v1 + *(v0 + 28));
    sub_22C259530();
    sub_22BE1AE58();
    v49 = type metadata accessor for SessionStart(0);
    sub_22C25A7AC(v49);
    sub_22C26EA84();
    sub_22BE1A140();
    sub_22BE19DC4(v50, v51, v52, v53);
    v54 = *(v0 + 24);
    sub_22C26EC34();
    sub_22BE1A140();
    sub_22BE19DC4(v55, v56, v57, v58);
    v59 = *(v63 + 32);
    v60 = sub_22BE1AEE4();
    v61(v60);
    sub_22BE2343C();
    *(v65 + *(v0 + 28)) = v48 & 1;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void UserTurnStarted.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v67 = v5;
  v6 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE29250(v10, v63);
  v11 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE20168(v15, v64);
  v16 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = sub_22BE415D8(v20);
  v22 = type metadata accessor for TranscriptProtoUserTurnEnum(v21);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = sub_22BE19820();
  v27 = type metadata accessor for TranscriptProtoUserTurn(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v32 = sub_22C259814(v31);
  v33 = type metadata accessor for TranscriptProtoStatementID(v32);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE197B8();
  v37 = sub_22C26E684();
  v38 = sub_22BE179D8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE28FD8();
  v43 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  sub_22C25A6A0(v43);
  v44 = v1;
  sub_22C1026C4();
  if (v69)
  {
    sub_22BE2BC54();
    sub_22BE1AE58();
  }

  else
  {
    v66 = v40;
    v45 = *v0;
    v46 = *(v0 + 1);
    v47 = *(v0 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v48 = v44 + *(v2 + 24);
    sub_22C10401C();
    v65 = v2;
    sub_22BE29454();
    sub_22BE22814();
    v49 = sub_22BE23E90();
    sub_22BE1AB5C(v49, v50, v22);
    if (v51)
    {
      sub_22BE233E8(v68, &qword_27D90E4F0, &qword_22C2CC7E0);
      sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
      sub_22BE43258();
      sub_22BE3D554();
      sub_22C108598();
      v52 = sub_22BE196B4();
      *v53 = v0;
      v53[1] = 0;
      sub_22C25A590(v52, v53);
      sub_22BE2BC54();
      sub_22BE1AE58();
      sub_22BE1A94C();
      sub_22BE1AE58();
      (*(v66 + 8))(v4, v37);
    }

    else
    {
      sub_22BE1A94C();
      sub_22BE1AE58();
      v54 = sub_22C1088E8();
      sub_22BE3B620(v54, v3);
      sub_22BE1BF88();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_22BE379D8();
      sub_22BE1AE58();
      v57 = *v44;
      v56 = v44[1];
      v58 = *(v65 + 28);
      sub_22BE22814();

      sub_22C25A6DC();
      sub_22C0FDE74();
      sub_22BE2BC54();
      sub_22BE1AE58();
      (*(v66 + 32))(v67, v4, v37);
      v59 = type metadata accessor for UserTurnStarted(0);
      *(v67 + *(v59 + 20)) = EnumCaseMultiPayload == 1;
      v60 = sub_22C25A840(v59);
      *v61 = v57;
      v61[1] = v56;
      v62 = *(v60 + 28);
      sub_22BE424BC();
    }
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t SpeechPartialResult.init(transcript:)()
{
  sub_22BE28CF0();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];

  sub_22C0F28E0(v5);
  v7 = v6;
  sub_22BE26148();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v7;
  return result;
}

void Request.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v130 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29200(v11);
  v12 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v17 = sub_22BE1B278(v16);
  v124 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v17);
  v18 = sub_22BE18000(v124);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22C0B1ABC(v21);
  v22 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v123 = v26;
  v27 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE20168(v31, v118);
  v32 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v37 = sub_22BE3FE6C(v36);
  v127 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v37);
  v38 = sub_22BE18000(v127);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17A44();
  v125 = v41;
  v42 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1B72C();
  v46 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v47 = sub_22BE19448(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v50);
  sub_22BE26800();
  v51 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE25CD0();
  v55 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v55);
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  v59 = sub_22BE250C8();
  v60 = type metadata accessor for TranscriptProtoRequestContent(v59);
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = sub_22BE2F294();
  v65 = type metadata accessor for RequestContent(v64);
  v66 = sub_22BE19448(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v69 = sub_22BE1AD20();
  v70 = type metadata accessor for TranscriptProtoRequest(v69);
  sub_22C25A694(v70);
  sub_22C103C5C();
  if (v132)
  {
    sub_22BE27AC8();
    sub_22BE1AE58();
  }

  else
  {
    v121 = v0;
    sub_22BE44844();
    RequestContent.init(transcript:)();
    v71 = v4;
    v72 = *v1;
    v73 = v5[6];
    sub_22BE22814();
    sub_22C0FE588();
    v74 = &v1[v5[7]];
    if (v74[1])
    {
      v75 = *v74;
      sub_22C26E174();
      v76 = v3;
      sub_22C101298();
      v119 = v72;
      sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
      v77 = 0;
    }

    else
    {
      v119 = v72;
      v77 = 1;
      v76 = v3;
    }

    v120 = v71;
    v78 = sub_22C26E1D4();
    sub_22BE19DC4(v76, v77, 1, v78);
    v79 = v5;
    v80 = v5[8];
    sub_22BE22814();
    v81 = sub_22BE1B010();
    sub_22BE1AB5C(v81, v82, v127);
    if (v83)
    {
      sub_22BE233E8(v121, &qword_27D90E548, &qword_22C296F00);
      v84 = 0;
      v85 = 0;
      v128 = 0;
    }

    else
    {
      sub_22BE39758();
      sub_22BE3B620(v121, v125);
      v84 = *v125;
      v85 = v125[1];
      v86 = v125[2];

      v128 = v86;

      sub_22BE323E0();
      sub_22BE1AE58();
    }

    v87 = v130;
    v88 = v79[9];
    sub_22BE22814();
    sub_22C0FDE74();
    v131 = v84;
    v89 = v79[10];
    sub_22BE22814();
    v90 = sub_22BE391E8();
    if (sub_22BE1AEA8(v90, v91, v124) == 1)
    {
      sub_22BE233E8(v123, &qword_27D90E538, &unk_22C2AE4E0);
      v129 = 0;
      v92 = 0;
    }

    else
    {
      v93 = sub_22BE19EBC();
      sub_22BE3B620(v93, v122);
      v129 = *v122;
      v92 = v122[1];

      sub_22BE26148();
      sub_22BE1AE58();
    }

    v94 = v79[11];
    sub_22BE22814();
    sub_22C25A730();
    sub_22C0FE748();
    sub_22BE27AC8();
    sub_22BE1AE58();
    v95 = type metadata accessor for Request(0);
    v126 = v95[6];
    type metadata accessor for RequestPrescribedPlan(0);
    sub_22BE1A140();
    sub_22BE19DC4(v96, v97, v98, v99);
    v133 = v95[7];
    sub_22BE1A140();
    sub_22BE19DC4(v100, v101, v102, v78);
    v103 = v87;
    v104 = (v87 + v95[8]);
    *v104 = 0;
    v104[1] = 0;
    v104[2] = 0;
    v105 = v95[9];
    sub_22C271394();
    sub_22BE1A140();
    sub_22BE19DC4(v106, v107, v108, v109);
    v110 = (v103 + v95[10]);
    *v110 = 0;
    v110[1] = 0;
    v111 = v95[11];
    type metadata accessor for DateTimeContext();
    sub_22BE1A140();
    sub_22BE19DC4(v112, v113, v114, v115);
    sub_22BE39238();
    sub_22BE3B620(v120, v103);
    *(v103 + v95[5]) = v119;
    sub_22BE2343C();
    sub_22BE2343C();
    v116 = v104[2];
    sub_22BE37808(*v104, v104[1]);
    *v104 = v131;
    v104[1] = v85;
    v104[2] = v128;
    sub_22BE2343C();
    v117 = v110[1];

    *v110 = v129;
    v110[1] = v92;
    sub_22BE2343C();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t Session.Plan.init(transcript:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];

  sub_22C0F7A24();
  if (v2)
  {
    sub_22BE29228();
  }

  else
  {
    v12 = a1[6];
    v13 = 2;
    v14 = v10;
    switch(*(a1 + 56))
    {
      case 1:
        v13 = 0;
        goto LABEL_9;
      case 2:
        v13 = 1;
        goto LABEL_9;
      case 3:
        goto LABEL_9;
      case 4:
        v13 = 3;
        goto LABEL_9;
      case 5:
        v13 = 4;
LABEL_9:
        v18 = v13;
        v17 = a1[5];

        result = sub_22BE29228();
        *a2 = v6;
        *(a2 + 8) = v5;
        *(a2 + 16) = v8;
        *(a2 + 24) = v7;
        *(a2 + 32) = v14;
        *(a2 + 40) = v17;
        *(a2 + 48) = v12;
        *(a2 + 56) = v18;
        return result;
      case 6:

        sub_22BE5CE4C(&qword_27D9155E0, &qword_22C2CC880);
        sub_22C273074();
        sub_22C1163A0();
        sub_22C108598();
        sub_22BE196B4();
        *v16 = v7;
        *(v16 + 8) = v5;
        *(v16 + 16) = 0;
        goto LABEL_11;
      default:

        sub_22C108358();
        sub_22BE196B4();
        *v15 = 0;
LABEL_11:
        swift_willThrow();
        result = sub_22BE29228();
        break;
    }
  }

  return result;
}

uint64_t Session.RecoverableError.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE2558C();
  v10 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  sub_22C25AB10();
  sub_22C1033F4();
  if (v0)
  {
    sub_22C259888();
  }

  else
  {
    v14 = sub_22C1088AC();
    sub_22BE3B620(v14, v1);
    v15 = sub_22BE385E4();
    sub_22BE1AA68(v15, v2);
    v16 = sub_22C25A730();
    Session.PlanGenerationError.init(transcript:)(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
    sub_22C259888();
    sub_22BE1AE58();
    sub_22C259698();
  }

  return sub_22BE1AE58();
}

void Action.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ValueMetadata *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v302 = v20;
  v27 = v26;
  sub_22C25A344(v28);
  v29 = sub_22C26F7C4();
  v30 = sub_22BE18910(v29, &a17);
  v280 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  v36 = sub_22BE18950(v35);
  v288 = type metadata accessor for TranscriptProtoPromptSelection(v36);
  v37 = sub_22BE18000(v288);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  sub_22BE181F4();
  v41 = MEMORY[0x28223BE20](v40);
  sub_22C259824(v41, v42, v43, v44, v45, v46, v47, v48, v255);
  v49 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v50 = sub_22BE19448(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17B98();
  sub_22BE1B99C();
  v54 = MEMORY[0x28223BE20](v53);
  sub_22C10887C(v54, v55, v56, v57, v58, v59, v60, v61, v256);
  v62 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v62);
  v64 = *(v63 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v65);
  sub_22BE1A174();
  sub_22BE18950(v66);
  v67 = sub_22C272874();
  v68 = sub_22BE18910(v67, &a18);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BE17A44();
  sub_22C259AC0(v71);
  v297 = sub_22C272594();
  v72 = sub_22BE179D8(v297);
  v278 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17B98();
  v292[1] = v76;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v77);
  sub_22BE409D8();
  v79 = MEMORY[0x28223BE20](v78);
  sub_22BE355FC(v79, v80, v81, v82, v83, v84, v85, v86, v257);
  v87 = sub_22BE5CE4C(&qword_27D90F038, &qword_22C297100);
  sub_22BE19448(v87);
  v89 = *(v88 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v90);
  v92 = sub_22BE417B4(v91);
  v293 = type metadata accessor for TranscriptProtoToolParameterValueEnum(v92);
  v93 = sub_22BE18000(v293);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v292[0] = v96;
  v97 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  sub_22BE19448(v97);
  v99 = *(v98 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v100);
  sub_22BE1A174();
  v294 = v101;
  v102 = sub_22BE183BC();
  v295 = type metadata accessor for TranscriptProtoToolParameterValue(v102);
  v103 = sub_22BE18000(v295);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BE17A44();
  v107 = sub_22BE28E74(v106);
  v108 = type metadata accessor for ToolParameterValue(v107);
  v109 = sub_22BE19448(v108);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22BE17B98();
  sub_22BE1B99C();
  v113 = MEMORY[0x28223BE20](v112);
  sub_22C1CEC08(v113, v114, v115, v116, v117, v118, v119, v120, v258);
  v121 = type metadata accessor for Action.ParameterValue(0);
  v122 = sub_22BE18910(v121, &a15);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22BE17A44();
  v126 = sub_22BE18950(v125);
  v287 = type metadata accessor for TranscriptProtoActionParameterValue(v126);
  v127 = sub_22BE179D8(v287);
  v296[0] = v128;
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v131);
  v132 = sub_22BE374E4();
  v133 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v132);
  v134 = sub_22BE19448(v133);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  sub_22BE17A44();
  v290 = v137;
  v138 = sub_22BE183BC();
  v139 = type metadata accessor for TranscriptProtoStatementID(v138);
  v140 = sub_22BE19448(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  sub_22BE1AD20();
  v143 = sub_22C26E684();
  v144 = sub_22BE179D8(v143);
  v146 = v145;
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22BE17CBC();
  v149 = type metadata accessor for TranscriptProtoAction(0);
  v150 = v27;
  v151 = &v27[v149[6]];
  sub_22C1026C4();
  if (v20)
  {
    sub_22BE23984();
    sub_22BE1AE58();
LABEL_27:
    sub_22BEE94B0();
    sub_22BE18478();
  }

  else
  {
    v282 = v22;
    v275 = v146;
    v276 = v143;
    v152 = *v23;
    v153 = *(v23 + 1);
    v154 = *(v23 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v155 = &v150[v149[9]];
    sub_22C10289C();
    v269 = v21;
    v156 = v290[1];
    v265 = *v290;
    v264 = v290[3];
    v263 = *(v290 + 16);
    v268 = v290[4];

    sub_22BE40CB0();
    sub_22BE1AE58();
    v266 = v149;
    v157 = &v150[v149[7]];
    v158 = v157[1];
    v262 = *v157;
    v159 = *(v150 + 1);
    sub_22BE5CE4C(&qword_27D9155E8, &qword_22C2CC888);
    v160 = sub_22C273D04();
    v161 = *(v159 + 64);
    v271 = v159 + 64;
    v162 = *(v159 + 32);
    sub_22BE185B4();
    v165 = v164 & v163;
    sub_22C25A350();
    v272 = v166;
    sub_22C25AC64(v278 + 32);
    v273 = v167;
    v279 = (v168 + 8);
    v261 = *MEMORY[0x277D1CAF0];
    v260 = *MEMORY[0x277D1CAF8];
    v259 = *MEMORY[0x277D1CB00];
    v270 = (v280 + 32);
    v267 = v158;

    v169 = 0;
    v170 = v301;
    v274 = v160;
    while (1)
    {
      v172 = v296[1];
      v171 = v297;
      if (!v165)
      {
        break;
      }

      sub_22C25A478();
LABEL_11:
      v177 = v173 | (v169 << 6);
      sub_22C25A7E8(v296);
      v291 = *v178;
      v302 = v178[1];
      sub_22BE1AA68(v180 + *(v179 + 72) * v177, v282);
      sub_22BEE94A4(&a10);
      sub_22BE1AA68(v181, v182);
      v183 = v294;
      sub_22BE22814();
      v184 = sub_22BE26188();
      sub_22BE1AB5C(v184, v185, v295);
      if (v186)
      {

        sub_22BE233E8(v183, &qword_27D90E698, &unk_22C2AE520);
        a10 = v295;
        sub_22BE5CE4C(&qword_27D911FC8, &unk_22C2B5D80);
        sub_22BE43258();
        sub_22C25A64C();
        sub_22C108598();
        v246 = sub_22BE196B4();
        sub_22C25A448(v246, v247);
LABEL_26:
        sub_22BE1AE58();

        sub_22BE31278();
        sub_22BE1AE58();

        sub_22BE23984();
        sub_22BE1AE58();
        v252 = *(v275 + 8);
        v253 = sub_22BE431C0();
        v254(v253);
        goto LABEL_27;
      }

      v187 = sub_22BE29370();
      sub_22BE3B620(v187, v300);
      sub_22BE29454();
      sub_22BE22814();
      v188 = sub_22BE23E90();
      sub_22BE1AB5C(v188, v189, v293);
      if (v186)
      {

        sub_22BE233E8(v172, &qword_27D90F038, &qword_22C297100);
        a10 = v293;
        sub_22BE5CE4C(&qword_27D911FC0, &unk_22C2B5D70);
        sub_22BE43258();
        sub_22C25A64C();
        sub_22C108598();
        v248 = sub_22BE196B4();
        sub_22C25A448(v248, v249);
        sub_22C259518();
        sub_22BE1AE58();
        sub_22BE31278();
        sub_22C25AD44();
        goto LABEL_26;
      }

      v281 = v165;
      v190 = sub_22C1088E8();
      sub_22BE3B620(v190, v292[0]);
      sub_22BE33554(&v295);
      v191 = sub_22BE38FD8();
      v192(v191);
      v193 = *v273;
      v194 = sub_22BE180C8();
      v193(v194);
      v195 = sub_22BE23108();
      v193(v195);

      sub_22C25A08C();
      sub_22C272864();
      v196 = *v279;
      v197 = sub_22BE25EFC();
      v196(v197);
      sub_22BE33554(&v301);
      v198 = sub_22BE1824C();
      v199(v198);
      sub_22C259518();
      sub_22BE1AE58();
      v200 = sub_22C25A870();
      v196(v200);
      sub_22C259A20();
      sub_22C25AC2C();
      sub_22BE3B620(v201, v202);
      v203 = *(v287 + 20);
      v204 = v298;
      sub_22BE22814();
      sub_22C25AB7C();
      sub_22BE22814();
      v205 = sub_22BE391E8();
      sub_22BE1AB5C(v205, v206, v288);
      if (v186)
      {
        v207 = sub_22BE33560();
        sub_22BE233E8(v207, v208, &qword_22C296F40);
        v209 = sub_22BE3CC34();
        sub_22BE233E8(v209, v210, &qword_22C296F40);
        v211 = 1;
        v212 = v285;
        v213 = v284;
        v165 = v281;
        v170 = v286;
      }

      else
      {
        sub_22C259680();
        sub_22BE3B620(v282, v289);
        sub_22BE29370();
        sub_22C108C10(&a11);
        sub_22BE1AA68(v214, v215);
        if (*(v289 + 9))
        {
          a10 = &type metadata for TranscriptProtoPromptSelectionEnum;
          sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
          sub_22BE43258();
          sub_22C25A64C();
          sub_22C108598();
          v250 = sub_22BE196B4();
          sub_22C25A448(v250, v251);
          sub_22BE1AE58();
          sub_22BE233E8(v204, &qword_27D90E688, &qword_22C296F40);
          sub_22BE1AE58();
          sub_22BE31278();
          sub_22C25AD44();
          sub_22BE1AE58();
          goto LABEL_26;
        }

        v216 = *v289;
        v217 = *(v289 + 8);
        sub_22BE3767C();
        sub_22BE1AE58();
        if ((v217 & 1) == 0)
        {
          sub_22C25A634();
          *v171 = v216;
        }

        sub_22BE33554(v292);
        sub_22C25AC0C();
        v218();
        v213 = v284;
        v219 = *v270;
        v220 = sub_22BE19454();
        v219(v220);
        sub_22BE233E8(v298, &qword_27D90E688, &qword_22C296F40);
        sub_22BE3767C();
        sub_22BE1AE58();
        v212 = v285;
        v221 = sub_22BE18944();
        v219(v221);
        v211 = 0;
        v165 = v281;
      }

      sub_22BE19DC4(v212, v211, 1, v170);
      sub_22BE1AE58();
      v222 = *(v213 + 20);
      sub_22C25976C();
      sub_22BE19DC4(v223, v224, v225, v226);
      sub_22C259A20();
      sub_22BE3B620(v299, v283);
      sub_22BE2343C();
      sub_22BE1AE58();
      sub_22C259F84();
      sub_22C25977C(v227);
      v160 = v274;
      v228 = (v274[6] + 16 * v177);
      v229 = v302;
      *v228 = v291;
      v228[1] = v229;
      v230 = v274[7];
      sub_22C25AC90();
      v231 = sub_22BE19EBC();
      sub_22BE3B620(v231, v232);
      sub_22C25A8A0();
      if (v234)
      {
        goto LABEL_29;
      }

      v274[2] = v233;
      v170 = v301;
    }

    v174 = v169;
    while (1)
    {
      v169 = v174 + 1;
      if (__OFADD__(v174, 1))
      {
        break;
      }

      if (v169 >= v272)
      {
        v235 = *v150;
        v236 = &v150[v266[8]];
        v237 = v160;
        v239 = *v236;
        v238 = v236[1];

        sub_22BE23984();
        sub_22BE1AE58();
        v240 = type metadata accessor for Action(0);
        v241 = sub_22C25A530(v240);
        v243 = (v277 + v242);
        v244 = (v277 + *(v241 + 32));
        (*(v275 + 32))(v277, v269, v276);
        v245 = v277 + *(v171 + 36);
        *v245 = v265;
        *(v245 + 8) = v156;
        *(v245 + 16) = v264;
        *(v245 + 24) = v268;
        *(v245 + 32) = v263;
        *v243 = v262;
        v243[1] = v267;
        *(v277 + *(v171 + 28)) = v237;
        *(v277 + *(v171 + 24)) = v235;
        *v244 = v239;
        v244[1] = v238;
        goto LABEL_27;
      }

      ++v174;
      if (*(v271 + 8 * v169))
      {
        sub_22BE29270();
        v165 = v176 & v175;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void ClientAction.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v16 = sub_22C25A344(v15);
  v17 = type metadata accessor for TranscriptProtoShimParameters(v16);
  v18 = sub_22BE17A18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22C259AC0(v22);
  v138 = sub_22C272874();
  v23 = sub_22BE179D8(v138);
  v142 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v27);
  sub_22BE3173C(v28, v29, v30, v31, v32, v33, v34, v35, v125);
  v36 = sub_22C272594();
  v37 = sub_22BE179D8(v36);
  v141 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v41);
  sub_22BE20324();
  MEMORY[0x28223BE20](v42);
  v43 = sub_22BE195C4();
  v44 = type metadata accessor for TranscriptProtoStatementID(v43);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE1955C();
  v48 = sub_22C26E684();
  v49 = sub_22BE41130(v48);
  v133 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = sub_22BE2F294();
  v54 = v10;
  v55 = v10 + *(type metadata accessor for TranscriptProtoClientAction(v53) + 36);
  sub_22C1026C4();
  if (a10)
  {
    sub_22C2594D0();
    sub_22BE1AE58();
LABEL_24:
    sub_22BEE94B0();
    sub_22BE18478();
  }

  else
  {
    v145 = v13;
    v129 = v11;
    v56 = *v12;
    v57 = *(v12 + 1);
    v58 = *(v12 + 2);

    v128 = v14;
    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v59 = v54[1];
    v126 = *v54;
    v134 = v54;
    v60 = v54[2];
    sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
    sub_22BE3D3E0();
    v136 = sub_22C273D04();
    sub_22C25A43C();
    v131 = v61;
    v135 = v60;
    v62 = *(v60 + 32);
    sub_22BE185B4();
    v65 = v64 & v63;
    sub_22C25A350();
    v130 = v66;
    v67 = v141;
    sub_22C25AA88(v142 + 32);
    sub_22BE417A8(v68);
    v127 = v59;

    v69 = 0;
    while (v65)
    {
      sub_22C25A478();
      v143 = v65;
LABEL_11:
      v73 = v70 | (v69 << 6);
      v74 = (*(v135 + 48) + 16 * v73);
      v75 = v74[1];
      v144 = *v74;
      v76 = *(v67 + 16);
      v76(v145, *(v135 + 56) + *(v67 + 72) * v73, v36);
      v77 = sub_22BE392D4();
      (v76)(v77);
      v78 = sub_22BE1AEE4();
      (v76)(v78);

      sub_22C272864();
      v79 = *(v141 + 8);
      v80 = sub_22BE2BA80();
      v79(v80);
      v81 = *(v142 + 32);
      v82 = sub_22BE35838();
      v81(v82);
      (v79)(v145, v36);
      sub_22C259DA0();
      sub_22C25977C(v83);
      v85 = (v136[6] + 16 * v84);
      *v85 = v144;
      v85[1] = v75;
      (v81)(v136[7] + *(v142 + 72) * v84, v139, v138);
      sub_22C25A8A0();
      if (v87)
      {
        goto LABEL_27;
      }

      v136[2] = v86;
      v67 = v141;
      v65 = v143;
    }

    v71 = v69;
    while (1)
    {
      v69 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v69 >= v130)
      {
        break;
      }

      ++v71;
      if (*(v131 + 8 * v69))
      {
        sub_22BE4878C();
        v143 = v72;
        goto LABEL_11;
      }
    }

    v88 = v134[3];
    sub_22BE5CE4C(&qword_27D913578, &unk_22C2B82B0);
    sub_22BE3D3E0();
    v89 = 0;
    sub_22C273D04();
    v90 = *(v88 + 32);
    sub_22C259B4C();
    v92 = v88 + 64;
    v94 = v93 & *(v88 + 64);
    v96 = (v95 + 63) >> 6;
    while (v94)
    {
      sub_22BE22BE8();
      v146 = v98;
LABEL_21:
      v101 = v97 | (v89 << 6);
      sub_22C25A8B8();
      v104 = *v102;
      v103 = v102[1];
      sub_22BE1AA68(v106 + *(v105 + 72) * v101, v137);
      v107 = sub_22BE1BF88();
      sub_22BE1AA68(v107, v108);
      v109 = *v140;

      sub_22C0F4BDC();
      v111 = v110;
      sub_22BE1AE58();
      sub_22BE1BF88();
      sub_22BE1AE58();
      sub_22C259F70();
      sub_22C25977C(v112);
      v113 = (v91[6] + 16 * v101);
      *v113 = v104;
      v113[1] = v103;
      *(v91[7] + 8 * v101) = v111;
      v114 = v91[2];
      v87 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v87)
      {
        goto LABEL_28;
      }

      v91[2] = v115;
      v94 = v146;
    }

    v99 = v89;
    while (1)
    {
      v89 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      if (v89 >= v96)
      {
        v116 = v134[4];
        v117 = v134[5];
        v119 = v134[6];
        v118 = v134[7];
        v120 = v91;

        sub_22C2594D0();
        sub_22BE1AE58();
        v121 = type metadata accessor for ClientAction(0);
        v122 = (v132 + v121[7]);
        v123 = (v132 + v121[8]);
        (*(v133 + 32))(v132, v128, v129);
        v124 = (v132 + v121[5]);
        *v124 = v126;
        v124[1] = v127;
        *(v132 + v121[6]) = v136;
        *(v132 + v121[9]) = v120;
        *v122 = v116;
        v122[1] = v117;
        *v123 = v119;
        v123[1] = v118;
        goto LABEL_24;
      }

      ++v99;
      if (*(v92 + 8 * v89))
      {
        sub_22BE4878C();
        v146 = v100;
        goto LABEL_21;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

void SessionError.init(transcript:)()
{
  sub_22BE19130();
  v7 = sub_22C259C10(v6);
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  sub_22BE2BCB4();
  MEMORY[0x28223BE20](v12);
  v21 = sub_22BE22D7C(v13, v14, v15, v16, v17, v18, v19, v20, v60);
  v22 = type metadata accessor for TranscriptProtoPlannerError(v21);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BE20558();
  v28 = type metadata accessor for TranscriptProtoSessionCoordinatorError(v27);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22BE2558C();
  v34 = type metadata accessor for TranscriptProtoExecutorError(v33);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BE41E38();
  v40 = type metadata accessor for TranscriptProtoSessionErrorEnum(v39);
  v41 = sub_22BE18000(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE1955C();
  sub_22C102A7C();
  if (v1)
  {
    sub_22BE31020();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE33560();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v58 = sub_22C1088AC();
        sub_22BE3B620(v58, v2);
        v59 = sub_22BE385E4();
        sub_22BE1AA68(v59, v4);
        sub_22C259FC4();
        SessionCoordinatorError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22C259978();
        goto LABEL_8;
      case 2u:
        v53 = sub_22C1088AC();
        sub_22BE3B620(v53, v0);
        sub_22BE19EBC();
        sub_22BE341B0();
        sub_22BE1AA68(v54, v55);
        sub_22C259FC4();
        PlannerError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE3405C();
        goto LABEL_8;
      case 3u:
        v56 = sub_22C1088AC();
        sub_22BE3B620(v56, v5);
        v57 = sub_22C259FB8();
        sub_22BE1AA68(v57, v3);
        sub_22BE3D5BC();
        ExecutorError.init(transcript:)();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE35D00();
LABEL_8:
        sub_22BE1AE58();
        break;
      default:
        sub_22BE3C670();
        v44 = sub_22BE18240();
        sub_22BE3B620(v44, v45);
        sub_22BE26170();
        v46 = sub_22BE23108();
        sub_22BE1AA68(v46, v47);
        v48 = *v61;
        v49 = v61[1];
        v50 = v61[2];
        objc_allocWithZone(MEMORY[0x277CCA9B8]);

        v51 = sub_22BE19454();
        sub_22C25A990(v51, v52, v50);
        sub_22C26E5E4();
        sub_22BE31020();
        sub_22BE1AE58();
        sub_22BE38A00();
        sub_22BE1AE58();
        sub_22BE291B0();
        sub_22BE1AE58();
        break;
    }

    type metadata accessor for SessionError();
    sub_22BE31160();
    swift_storeEnumTagMultiPayload();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void QueryStepResults.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  sub_22BE19130();
  v17 = v16;
  sub_22C25A424(v18);
  v19 = sub_22C26E1D4();
  v20 = sub_22BE41130(v19);
  v62 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17CBC();
  v24 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BE28E00();
  v29 = type metadata accessor for TranscriptProtoStatementID(v28);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE18DFC();
  v33 = sub_22C26E684();
  v34 = sub_22BE179D8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE2379C();
  v39 = *v17;

  sub_22C0F7204(v40, v41, v42, v43, v44, v45, v46, v47, v57, v59);
  if (!v11)
  {
    v61 = v48;
    v60 = v10;
    v58 = v14;
    v49 = v17 + *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
    sub_22C1026C4();
    v50 = *v13;
    v51 = *(v13 + 1);
    v52 = *(v13 + 2);

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v53 = v17[1];
    v54 = v17[2];
    sub_22C26E174();
    sub_22C101298();
    sub_22BE233E8(v15, &qword_27D9082F0, &qword_22C27AB00);
    *a10 = v61;
    StepResults = type metadata accessor for QueryStepResults(0);
    sub_22C25A530(StepResults);
    (*(v36 + 32))(&a10[v56], v60, v33);
    (*(v62 + 32))(&a10[*(v15 + 24)], v12, v58);
  }

  sub_22BE20118();
  sub_22BE1AE58();
  sub_22BE46D98();
  sub_22BE18478();
}

void ActionResolverRequest.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AD88();
  v85 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE20168(v11, v75);
  v86 = type metadata accessor for TranscriptProtoParameterSet(0);
  v12 = sub_22BE179D8(v86);
  v93 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  sub_22BE32C08();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22C2595B4();
  v18 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v17);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = sub_22BE19820();
  v23 = type metadata accessor for TranscriptProtoStatementID(v22);
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE197B8();
  v27 = sub_22C26E684();
  v28 = sub_22BE1A3D8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE28FD8();
  v33 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v34 = v1;
  v35 = v1 + v33[8];
  sub_22C1026C4();
  if (v95)
  {
    sub_22BE25D94();
LABEL_8:
    sub_22BE1AE58();
LABEL_9:
    sub_22BEE94B0();
    sub_22BE18478();
    return;
  }

  v81 = v4;
  v82 = v34;
  v84 = v30;
  v96 = v2;
  v36 = *v0;
  v37 = *(v0 + 1);
  v38 = *(v0 + 2);

  sub_22BE1804C();
  v39 = v34;
  sub_22C26E664();
  sub_22BE18B80();
  sub_22BE1AE58();
  v40 = v34 + v33[9];
  sub_22C25ABC0();
  sub_22C10289C();
  if (v36)
  {
    v41 = sub_22C11FDE0();
    v42(v41, v2);
    goto LABEL_8;
  }

  v43 = *v3;
  v44 = v3[1];
  v45 = v3[4];
  v80 = v3[3];
  v79 = *(v3 + 16);

  sub_22BE40CB0();
  sub_22BE1AE58();
  v46 = v33[7];
  sub_22BE22814();
  v47 = sub_22BE23E90();
  sub_22BE1AB5C(v47, v48, v86);
  if (v49)
  {
    sub_22BE233E8(v88, &qword_27D90ECF8, &qword_22C2970B0);
    sub_22BF103C8();
    sub_22BE196B4();
    *v50 = 0xD000000000000093;
    *(v50 + 8) = 0x800000022C2DBF10;
    *(v50 + 16) = xmmword_22C2CC830;
    *(v50 + 32) = 0x800000022C2DBFB0;
    swift_willThrow();

    (*(v84 + 8))(v5, v2);
    goto LABEL_8;
  }

  v87 = v43;
  v51 = sub_22C1088E8();
  sub_22BE3B620(v51, v81);
  TranscriptProtoParameterSet.handwrittenParameters.getter();
  v76 = v52;
  v77 = v44;
  v78 = v5;
  sub_22C259608();
  sub_22BE1AE58();
  v53 = *v39;
  v54 = *(*v39 + 16);
  v55 = MEMORY[0x277D84F90];
  if (!v54)
  {
LABEL_17:
    v90 = sub_22BF39A20(v55);
    v94 = *(v39 + 8);
    v92 = *(v39 + 9);
    type metadata accessor for AST.FlatValue(0);
    sub_22BE1B18C();
    v83 = sub_22C272E84();
    v67 = type metadata accessor for ActionResolverRequest(0);
    sub_22C25AAAC(v67);
    v69 = sub_22BE3BD70(v68);
    type metadata accessor for Candidate(v69);
    sub_22BE5CF7C();
    sub_22C272E84();
    v70 = *(v39 + 6);
    v71 = *(v39 + 7);
    sub_22BE1B18C();
    sub_22C272E84();
    sub_22BE25D94();
    sub_22BE1AE58();
    v72 = *(v39 + 8);
    v73 = *(v39 + 9);
    (*(v84 + 32))(v85, v78, v96);

    v74 = v85 + *(v39 + 10);
    *v74 = v87;
    *(v74 + 8) = v77;
    *(v74 + 16) = v80;
    *(v74 + 24) = v45;
    *(v74 + 32) = v79;
    *(v85 + v81) = v76;
    *(v85 + v70) = v90;
    *(v85 + v71) = v83;
    *(v85 + v72) = v94;
    *(v85 + v73) = v92;
    goto LABEL_9;
  }

  v97 = MEMORY[0x277D84F90];
  v56 = sub_22C259F98();
  sub_22BE71A94(v56, v57, v58);
  v59 = 0;
  v55 = v97;
  sub_22BE25AD8();
  v89 = v53 + v61;
  while (v59 < *(v53 + 16))
  {
    sub_22BE1AA68(v89 + *(v60 + 72) * v59, v91);
    TranscriptProtoParameterSet.handwrittenParameters.getter();
    v63 = v62;
    sub_22C259608();
    sub_22BE1AE58();
    v65 = *(v97 + 16);
    v64 = *(v97 + 24);
    if (v65 >= v64 >> 1)
    {
      v66 = sub_22BE3D1E4(v64);
      sub_22BE71A94(v66, v65 + 1, 1);
    }

    ++v59;
    *(v97 + 16) = v65 + 1;
    *(v97 + 8 * v65 + 32) = v63;
    v60 = v93;
    if (v54 == v59)
    {
      v39 = v82;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t SafetyModeException.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];

  sub_22C0E9918();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void ToolRetrievalResponse.init(transcript:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2;
  v9 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE3100C();
  v13 = sub_22C2725B4();
  v14 = sub_22BE41130(v13);
  v152 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v18);
  sub_22BE195C4();
  v156 = sub_22C2728E4();
  v19 = sub_22BE179D8(v156);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE29178(v24, v134);
  MEMORY[0x28223BE20](v25);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v26);
  sub_22C259838(v27, v28, v29, v30, v31, v32, v33, v34, v135);
  v35 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  sub_22C259DF0(v39);
  v149 = sub_22C2725C4();
  v40 = sub_22BE179D8(v149);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE43220();
  MEMORY[0x28223BE20](v45);
  sub_22BE19E94();
  sub_22BE183BC();
  v157 = sub_22C272984();
  v46 = sub_22BE179D8(v157);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17B98();
  v147 = v51;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v52);
  v61 = sub_22BE22D7C(v53, v54, v55, v56, v57, v58, v59, v60, v136);
  v143 = type metadata accessor for ContextProtoToolRetrievalType(v61);
  v62 = sub_22BE179D8(v143);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE1955C();
  v138 = a1;
  v150 = *(a1[6] + 16);
  v145 = v42 + 2;
  v146 = v42 + 4;
  v144 = v42 + 1;
  sub_22C25AC64(v152 + 32);
  sub_22C1CEFB0(v65 + 8);
  v151 = (v21 + 32);
  v66 = MEMORY[0x277D84F98];
  sub_22BE417A8(v48 + 8);
  v141 = v3;
  v140 = v6;
  for (i = v68; ; v68 = i)
  {
    if (v150 == v67)
    {
      v117 = *v138;
      v116 = v138[1];
      v119 = v138[2];
      v118 = v138[3];
      v120 = *(v138 + 8);
      v121 = v138[5];

      v123 = sub_22C0F3228(v122);
      if (v7)
      {
        sub_22BE203FC();
        sub_22BE1AE58();

        goto LABEL_22;
      }

      v133 = v123;
      sub_22BE203FC();
      sub_22BE1AE58();
      *a2 = v117;
      *(a2 + 8) = v116;
      *(a2 + 16) = v119;
      *(a2 + 24) = v118;
      *(a2 + 32) = v120;
      *(a2 + 40) = v133;
      *(a2 + 48) = v66;
LABEL_23:
      sub_22BE22978();
      return;
    }

    if (v67 >= *(v68 + 16))
    {
      break;
    }

    sub_22BE25AD8();
    v153 = v72;
    sub_22BE1AA68(v70 + v69 + *(v71 + 72) * v72, v5);
    sub_22BE22814();
    v73 = sub_22BE391E8();
    sub_22BE1AB5C(v73, v74, v149);
    if (v75)
    {

      sub_22BE233E8(v148, &qword_27D909280, &unk_22C294B50);
      v159 = v149;
      sub_22BE5CE4C(&qword_27D912030, &unk_22C2B5E40);
      sub_22BE3369C();
      sub_22BE29328();
      sub_22C108598();
      v124 = sub_22BE196B4();
      *v125 = v66;
      v125[1] = v3;
      sub_22C25A590(v124, v125);
      sub_22BE203FC();
      sub_22C25AE1C();
      goto LABEL_21;
    }

    v76 = *v146;
    v77 = sub_22BE1B074();
    v78(v77);
    v79 = *v145;
    v80 = sub_22BE41FB4();
    v81(v80);
    sub_22C272974();
    if (v7)
    {
      sub_22BE203FC();
      sub_22C25AE1C();
      v126 = *v144;
      v127 = sub_22BE2684C();
      v132(v127, v131);
      sub_22C259930();
      sub_22BE1AE58();
LABEL_22:

      goto LABEL_23;
    }

    v82 = *v144;
    v83 = sub_22BE2684C();
    v84(v83);
    (*(v48 + 32))(v158, v147, v157);
    v85 = *(v143 + 20);
    sub_22BE22814();
    v86 = sub_22BE2BA98();
    sub_22BE1AB5C(v86, v87, v4);
    if (v75)
    {

      sub_22BE233E8(v3, &qword_27D909270, &unk_22C2CB810);
      v159 = v4;
      sub_22BE5CE4C(&qword_27D912038, &unk_22C2B5E50);
      sub_22BE3369C();
      sub_22BE29328();
      sub_22C108598();
      v128 = sub_22BE196B4();
      *v129 = v66;
      v129[1] = v3;
      sub_22C25A590(v128, v129);
      sub_22BE203FC();
      sub_22C25AE1C();
      sub_22BE33554(&v164);
      v130(v158, v157);
LABEL_21:
      sub_22C259930();
      sub_22BE1AE58();
      goto LABEL_23;
    }

    sub_22BE33554(&v162);
    v88 = sub_22BE392D4();
    v89(v88);
    sub_22BE33554(&v161);
    v90 = sub_22BE36658();
    v91(v90);
    sub_22C2728D4();
    sub_22BE33554(&v163);
    v92 = v4;
    v93(v6, v4);
    v94 = *v151;
    (*v151)(v154, v142, v156);
    sub_22BE33554(&v160);
    sub_22BE25300();
    v95();
    swift_isUniquelyReferenced_nonNull_native();
    v159 = v66;
    sub_22BE603AC();
    sub_22C1CF0B4();
    if (__OFADD__(v98, v99))
    {
      goto LABEL_26;
    }

    v100 = v96;
    v101 = v97;
    sub_22BE5CE4C(&qword_27D915490, &unk_22C2CB820);
    if (sub_22C273C44())
    {
      sub_22BE603AC();
      if ((v101 & 1) != (v103 & 1))
      {
        goto LABEL_28;
      }

      v100 = v102;
    }

    v66 = v159;
    if (v101)
    {
      v104 = sub_22C25AB34(v159[7]);
      v106 = v156;
      (*(v105 + 40))(v104, v155, v156);
    }

    else
    {
      sub_22BE45B78(&v159[v100 >> 6]);
      v107 = sub_22C25AB34(v66[6]);
      (*(v108 + 16))(v107, v158, v157);
      v109 = v66[7];
      sub_22C25AC90();
      v106 = v156;
      v94(v110 + v111 * v100, v155, v156);
      sub_22C25A500();
      if (v113)
      {
        goto LABEL_27;
      }

      v66[2] = v112;
    }

    sub_22BE33554(&v159);
    v114(v154, v106);
    sub_22BE33554(&v164);
    v115(v158, v157);
    sub_22C259930();
    sub_22BE1AE58();
    v7 = 0;
    v67 = v153 + 1;
    v4 = v92;
    v3 = v141;
    v6 = v140;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_22C2740B4();
  __break(1u);
}

uint64_t sub_22C2106AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;

  v8 = a2(v7);
  sub_22BE1AB1C();
  result = sub_22BE1AE58();
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

void ActionCancellation.init(transcript:)()
{
  sub_22BE19130();
  v46 = v0;
  sub_22BE23C8C();
  v47 = sub_22C26E684();
  v5 = sub_22BE179D8(v47);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v9 = sub_22BE28E74(v8);
  v10 = type metadata accessor for TranscriptProtoStatementID(v9);
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE18928();
  MEMORY[0x28223BE20](v14);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v15);
  sub_22BE324EC();
  v16 = sub_22BE1B328();
  v18 = sub_22BE5CE4C(v16, v17);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B01C();
  v22 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BE25334();
  v27 = *(type metadata accessor for TranscriptProtoActionCancellation(v26) + 20);
  sub_22BE25300();
  sub_22BE22814();
  v28 = 1;
  sub_22BE18190(v1);
  if (!v29)
  {
    sub_22BE3B168();
    v30 = sub_22BE36318();
    sub_22BE3B620(v30, v31);
    sub_22BE2C73C();
    v32 = sub_22BE191C0();
    sub_22BE1AA68(v32, v33);
    v34 = *v4;
    v35 = *(v4 + 1);
    v36 = *(v4 + 2);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C259638();
    sub_22BE1AE58();
    sub_22BE1B074();
    sub_22BE1AE58();
    v28 = 0;
  }

  sub_22BE19DC4(v3, v28, 1, v47);
  sub_22C1026C4();
  if (v46)
  {
    sub_22BE3A04C();
    sub_22BE233E8(v3, &qword_27D907240, &unk_22C2B5B80);
  }

  else
  {
    v37 = *v2;
    v38 = *(v2 + 1);
    v39 = *(v2 + 2);

    sub_22C259FD0();
    sub_22C26E664();
    sub_22BE3A04C();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C259BD0();
    sub_22BE19DC4(v40, v41, v42, v43);
    sub_22BE2565C();
    sub_22BE2343C();
    v44 = type metadata accessor for ActionCancellation(0);
    sub_22C25A688(*(v44 + 20));
    sub_22C25A4B8();
    v45();
  }

  sub_22BE22978();
  sub_22BE18478();
}

void SystemResponse.init(transcript:)()
{
  sub_22BE19130();
  v6 = sub_22C259C10(v5);
  v7 = type metadata accessor for TranscriptProtoResponseOutput(v6);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18928();
  MEMORY[0x28223BE20](v11);
  sub_22BE26800();
  v12 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2C64C();
  v16 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE22BFC();
  v21 = type metadata accessor for TranscriptProtoSystemResponse(v20);
  v22 = *(v21 + 20);
  v23 = v0;
  sub_22BE22814();
  v24 = 1;
  v25 = sub_22BE3C688();
  sub_22BE1AB5C(v25, v26, v7);
  if (v27)
  {
    v28 = v1;
  }

  else
  {
    v29 = sub_22C259FB8();
    sub_22BE3B620(v29, v3);
    v30 = sub_22C1088E8();
    sub_22BE1AA68(v30, v4);
    v31 = sub_22C25A518();
    ResponseOutput.init(transcript:)(v31, v32, v33, v34, v35, v36, v37, v38, v44, v45);
    v28 = v1;
    if (v1)
    {
      sub_22C259668();
      sub_22BE1AE58();
      sub_22BE38444();
LABEL_10:
      sub_22BE1AE58();
      goto LABEL_11;
    }

    sub_22BE38444();
    sub_22BE1AE58();
    v24 = 0;
  }

  v39 = sub_22C26F524();
  sub_22BE19DC4(v2, v24, 1, v39);
  v40 = (v23 + *(v21 + 24));
  v41 = *v40;
  v42 = v40[1];
  v43 = *v23;

  sub_22C0F2CB0();
  if (!v28)
  {
    sub_22BE1B328();
    sub_22C26F714();
    sub_22C259668();
    goto LABEL_10;
  }

  sub_22C259668();
  sub_22BE1AE58();
  sub_22BE233E8(v2, &qword_27D911F40, &qword_22C2B5CA8);
LABEL_11:
  sub_22BEE94B0();
  sub_22BE18478();
}

void StatementResult.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA20();
  v8 = sub_22BE3BD70(v7);
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v13);
  sub_22BE22D7C(v14, v15, v16, v17, v18, v19, v20, v21, v85);
  v22 = sub_22C26E684();
  v23 = sub_22BE179D8(v22);
  v90 = v24;
  v91 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22C2595B4();
  v29 = type metadata accessor for TranscriptProtoStatementResultPayload(v28);
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = sub_22BE19820();
  v34 = type metadata accessor for StatementResultPayload(v33);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v39 = sub_22C259814(v38);
  v40 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v39);
  v41 = sub_22BE18000(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE2379C();
  v44 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE234F4();
  v48 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v48);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE2C64C();
  if (v2[1])
  {
    v1 = *v2;
    v52 = v2[1];

    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    v53 = sub_22C259C00();
    sub_22BE19DC4(v53, v54, v55, v56);
  }

  v92 = v5;
  v57 = type metadata accessor for TranscriptProtoStatementResult(0);
  v58 = v57[9];
  sub_22BE22814();
  sub_22BE18190(v4);
  if (v59)
  {
    sub_22BE233E8(v4, &qword_27D90E670, &unk_22C2CC890);
    v62 = 0;
    v61 = 0;
    v95 = 0;
    v63 = 0;
    v96 = 0;
  }

  else
  {
    v60 = sub_22C1088AC();
    sub_22BE3B620(v60, v0);
    v62 = *v0;
    v61 = *(v0 + 8);
    v63 = *(v0 + 32);
    v95 = *(v0 + 24);
    v96 = *(v0 + 16);

    sub_22BE40CB0();
    sub_22BE1AE58();
  }

  v64 = v2 + v57[5];
  sub_22C25ABC0();
  sub_22C10410C();
  if (v1)
  {
    v65 = sub_22BE39EAC();
    sub_22C25A9D0(v65, v66);
    sub_22BE233E8(v6, &qword_27D9082F0, &qword_22C27AB00);
    sub_22C2599D8();
    sub_22BE1AE58();
  }

  else
  {
    StatementResultPayload.init(transcript:)(v3);
    v67 = v2 + v57[6];
    sub_22C25ABC0();
    sub_22C1026C4();
    v68 = *v93;
    v86 = *(v93 + 1);
    v69 = *(v93 + 2);

    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v70 = v2 + v57[7];
    sub_22C1026C4();
    v71 = *v89;
    v72 = *(v89 + 1);
    v73 = *(v89 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    sub_22C2599D8();
    sub_22BE1AE58();
    sub_22C26E1D4();
    sub_22BE1A140();
    v78 = sub_22C18F17C(v74, v75, v76, v77);
    v79 = type metadata accessor for StatementResult(v78);
    v80 = v87 + v79[9];
    *(v80 + 32) = 0;
    *v80 = 0u;
    *(v80 + 16) = 0u;
    sub_22BE25C94();
    sub_22BE2343C();
    v81 = *(v80 + 16);
    v82 = *(v80 + 24);
    v83 = *(v80 + 32);
    sub_22C1083D4(*v80, *(v80 + 8));
    *v80 = v62;
    *(v80 + 8) = v61;
    *(v80 + 16) = v95;
    *(v80 + 24) = v63;
    *(v80 + 32) = v96;
    sub_22BE3B620(v94, v87 + v79[5]);
    v84 = *(v90 + 32);
    v84(v87 + v79[6], v92, v91);
    (*(v90 + 16))(v87 + v79[7], v88, v91);
    v84(v87 + v79[8], v88, v91);
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void ExternalAgentRequest.init(transcript:)()
{
  sub_22BE19130();
  v6 = sub_22C259C10(v5);
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v6);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE1955C();
  v11 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v15 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE195C4();
  v21 = type metadata accessor for TranscriptProtoRequestContent(v20);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE18DFC();
  v25 = type metadata accessor for RequestContent(0);
  v26 = sub_22BE19448(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE188B0();
  sub_22C103C5C();
  if (v1)
  {
    sub_22BE487FC();
    sub_22BE1AE58();
  }

  else
  {
    v51 = v2;
    sub_22C25A918();
    RequestContent.init(transcript:)();
    v29 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
    sub_22C25A548(v29);
    if (v30[1])
    {
      v31 = *v30;
      sub_22C26E174();
      v32 = v4;
      sub_22C101298();
      v33 = 0;
      sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    }

    else
    {
      v33 = 1;
      v32 = v4;
    }

    v34 = sub_22C26E1D4();
    sub_22C25AD2C(v32, v33, 1, v34);
    sub_22BE22814();
    sub_22BE487FC();
    sub_22BE1AE58();
    sub_22BE23B00(v51);
    if (v35)
    {
      sub_22BE233E8(v51, &qword_27D90E548, &qword_22C296F00);
      v39 = 0;
      v38 = 0;
      v40 = 0;
    }

    else
    {
      sub_22BE39758();
      v36 = sub_22BE1B73C();
      sub_22BE3B620(v36, v37);
      v39 = *v3;
      v38 = v3[1];
      v40 = v3[2];

      sub_22BE323E0();
      sub_22BE1AE58();
    }

    v41 = type metadata accessor for ExternalAgentRequest(0);
    v42 = *(v41 + 20);
    sub_22BE32EE0();
    sub_22BE19DC4(v43, v44, v45, v46);
    v47 = (v52 + *(v41 + 24));
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    sub_22BE39238();
    v48 = sub_22BE3E79C();
    sub_22BE3B620(v48, v49);
    sub_22BE2343C();
    v50 = v47[2];
    sub_22BE37808(*v47, v47[1]);
    *v47 = v39;
    v47[1] = v38;
    v47[2] = v40;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ExternalAgentRequestRewriteMetadata.init(transcript:)()
{
  sub_22C25A3E0();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];

  sub_22BE323E0();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  return result;
}

void ToolResolution.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22C25A424(v13);
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v57 = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  sub_22C259814(v21);
  v22 = sub_22C26E684();
  v23 = sub_22BE179D8(v22);
  v55 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v27);
  sub_22BE20558();
  v28 = sub_22C272674();
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE1AD20();
  v32 = sub_22C272224();
  v33 = sub_22C2594A0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE18DFC();
  sub_22C25ACCC();
  sub_22C102B6C();
  if (v11)
  {
    sub_22BE23370();
    sub_22BE1AE58();
  }

  else
  {
    v38 = sub_22BE3D5BC();
    ToolDefinition.init(transcript:)(v38, v39);
    v40 = type metadata accessor for TranscriptProtoToolResolution(0);
    sub_22C25A4C4(v40);
    sub_22BE34128();
    sub_22C1026C4();
    v54 = *v56;
    v41 = *(v56 + 1);
    v42 = *(v56 + 2);

    sub_22C25A61C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v43 = v12 + *(v40 + 24);
    sub_22C1026C4();
    v44 = *v57;
    v45 = *(v57 + 1);
    v46 = *(v57 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE23370();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    v47 = *(v35 + 32);
    v48 = sub_22BE1824C();
    v49(v48);
    v50 = type metadata accessor for ToolResolution(0);
    sub_22C25A374(v50);
    v51 = *(v55 + 32);
    (v51)(a10 + v52, v10, v22);
    v53 = *(v35 + 56);
    sub_22C18FD4C();
    v51();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void UndoRedoRequest.init(transcript:)()
{
  sub_22BE19130();
  v5 = v4;
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE35C94(v12, v59);
  v13 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE3A208();
  v18 = type metadata accessor for TranscriptProtoStatementID(v17);
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17CBC();
  v22 = sub_22C26E684();
  v23 = sub_22BE179D8(v22);
  v62 = v24;
  v63 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v64 = v27;
  v28 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE25544();
  MEMORY[0x28223BE20](v32);
  sub_22BE324EC();
  v33 = v5[1];
  v61 = *v5;
  if (v5[4])
  {
    v34 = v5[3];

    sub_22C26E174();
    sub_22C101298();
    if (v1)
    {

      sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
      goto LABEL_8;
    }

    sub_22BE233E8(v0, &qword_27D9082F0, &qword_22C27AB00);
    sub_22C26E1D4();
    sub_22BE187DC();
    sub_22BE19DC4(v39, v40, v41, v42);
  }

  else
  {
    sub_22C26E1D4();
    v35 = sub_22C259C00();
    sub_22BE19DC4(v35, v36, v37, v38);
  }

  v60 = *(v5 + 16);
  v43 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v44 = v5 + *(v43 + 28);
  sub_22C1026C4();
  if (!v1)
  {
    v45 = *v2;
    v46 = v7;
    v47 = *(v2 + 1);
    v48 = *(v2 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v49 = *(v43 + 32);
    sub_22BE2BB28();
    sub_22BE22814();
    sub_22C0FD140();
    sub_22C2599A8();
    sub_22BE1AE58();
    v50 = type metadata accessor for UndoRedoRequest(0);
    sub_22C25ACC0(v50);
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v51, v52, v53, v54);
    v55 = v47[8];
    sub_22BE1A140();
    sub_22BE19DC4(v56, v57, v58, v63);
    *v46 = v61;
    v46[1] = v33;
    sub_22BE2343C();
    *(v46 + v47[6]) = v60;
    (*(v62 + 32))(v46 + v47[7], v64, v63);
    sub_22BE2343C();
    goto LABEL_10;
  }

  sub_22BE233E8(v3, &qword_27D9082F0, &qword_22C27AB00);

LABEL_8:
  sub_22C2599A8();
  sub_22BE1AE58();
LABEL_10:
  sub_22BE22978();
  sub_22BE18478();
}

void ClientUndoRedoRequest.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v59 = v4;
  v5 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20310(v9, v56);
  v10 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = sub_22BE36294(v14);
  v16 = type metadata accessor for TranscriptProtoStatementID(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BE4682C(v20);
  v21 = sub_22C26E684();
  v22 = sub_22BE179D8(v21);
  v58 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE2F294();
  v26 = sub_22C26E1D4();
  v27 = sub_22BE179D8(v26);
  v61 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE18DFC();
  v31 = sub_22BE1B18C();
  v33 = sub_22BE5CE4C(v31, v32);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE19668();
  v37 = *v3;
  v38 = v3[1];
  sub_22C26E174();
  sub_22C101298();
  v39 = sub_22BE27A44();
  sub_22BE233E8(v39, v40, &qword_22C27AB00);
  if (!v0)
  {
    v41 = *(v3 + 16);
    v42 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
    v43 = v3 + *(v42 + 24);
    sub_22C1026C4();
    v44 = *v60;
    v57 = v41;
    v45 = *(v60 + 1);
    v46 = *(v60 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v47 = *(v42 + 28);
    sub_22BE22814();
    sub_22C259FDC();
    sub_22C0FD140();
    v48 = type metadata accessor for ClientUndoRedoRequest(0);
    v49 = v48[7];
    sub_22BE1A140();
    sub_22BE19DC4(v50, v51, v52, v21);
    v53 = *(v61 + 32);
    v54 = sub_22BE1AB1C();
    v55(v54);
    *(v59 + v48[5]) = v57;
    (*(v58 + 32))(v59 + v48[6], v1, v21);
    sub_22BE2343C();
  }

  sub_22BE2C2A0();
  sub_22BE1AE58();
  sub_22BE34134();
  sub_22BE18478();
}

void TypeConversionRequest.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10)
{
  sub_22BE19130();
  v16 = v15;
  v18 = sub_22BE3BD70(v17);
  v19 = type metadata accessor for TranscriptProtoStatementID(v18);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  sub_22C259BA0(v23);
  v24 = sub_22C26E684();
  v25 = sub_22BE179D8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE4682C(v28);
  v29 = sub_22C2725A4();
  v30 = sub_22BE179D8(v29);
  v84 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE29178(v34, v81);
  MEMORY[0x28223BE20](v35);
  sub_22BE22D7C(v36, v37, v38, v39, v40, v41, v42, v43, v82);
  v44 = sub_22C2728A4();
  v45 = sub_22BE179D8(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE2F294();
  v48 = sub_22C272594();
  v49 = sub_22BE179D8(v48);
  v85 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v53);
  sub_22BE2558C();
  v54 = sub_22C272874();
  v55 = sub_22BE1A3D8(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE19338();
  sub_22C101488();
  if (v11)
  {
    sub_22C2594B8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A068();
    v60 = sub_22BE260B8();
    v61(v60);
    sub_22C25A524();
    sub_22C272864();
    v62 = *(v85 + 8);
    v63 = sub_22BE426E8();
    v64(v63);
    v65 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
    sub_22C25A374(v65);
    sub_22C1024DC();
    sub_22C11634C();
    v66 = sub_22BE23108();
    v67(v66);
    sub_22C272894();
    v68 = *(v84 + 8);
    v69 = sub_22C25A870();
    v70(v69);
    v71 = v16 + *(v10 + 24);
    sub_22C1026C4();
    v72 = *a10;
    v73 = *(a10 + 1);
    v74 = *(a10 + 2);

    sub_22BE354D0();
    sub_22C26E664();
    sub_22C2594B8();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    (*(v57 + 32))(v83, v13, v12);
    v75 = type metadata accessor for TypeConversionRequest(0);
    sub_22C25A374(v75);
    v77 = sub_22C25A688(v76);
    v78(v77, v14);
    v79 = sub_22C25A688(*(v73 + 24));
    v80(v79);
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TypeConversionResult.init(transcript:)()
{
  sub_22BE19130();
  v55 = v3;
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  v61 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE22D7C(v10, v11, v12, v13, v14, v15, v16, v17, v53);
  v18 = sub_22C26E684();
  v19 = sub_22BE179D8(v18);
  v56 = v20;
  v57 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v23);
  sub_22BE2558C();
  v24 = sub_22C272594();
  v25 = sub_22BE179D8(v24);
  v59 = v26;
  v60 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE18928();
  MEMORY[0x28223BE20](v29);
  sub_22C2595B4();
  v30 = sub_22C272874();
  v31 = sub_22BE179D8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE197B8();
  sub_22C101488();
  if (v1)
  {
    sub_22BE1B154();
    sub_22BE1AE58();
  }

  else
  {
    v54 = v30;
    sub_22C1CF23C();
    v36 = sub_22BE33B3C();
    v37(v36);
    sub_22C272864();
    v38 = *(v59 + 8);
    v39 = sub_22BE33BE8();
    v40(v39);
    v41 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
    sub_22C25A4C4(v41);
    sub_22BE34128();
    sub_22C1026C4();
    v42 = *v58;
    v43 = *(v58 + 1);
    v44 = *(v58 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v45 = v60 + *(v41 + 24);
    sub_22C1026C4();
    v46 = *v61;
    v47 = *(v61 + 1);
    v48 = *(v61 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE1B154();
    sub_22BE1AE58();
    sub_22BE18B80();
    sub_22BE1AE58();
    (*(v33 + 32))(v55, v0, v54);
    v49 = type metadata accessor for TypeConversionResult(0);
    sub_22C25A374(v49);
    v50 = *(v56 + 32);
    (v50)(v55 + v51, v2, v57);
    v52 = *(v54 + 24);
    sub_22C18FD4C();
    v50();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void QueryDecorationPrePlannerResult.init(transcript:)()
{
  sub_22BE19130();
  v4 = v3;
  v6 = sub_22C25A424(v5);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v6);
  v8 = sub_22BE19448(DecorationPrePlannerResultPayload);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22BE1AD20();
  v12 = type metadata accessor for TranscriptProtoStatementID(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE2F294();
  v16 = sub_22C26E684();
  v17 = sub_22BE41130(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE1955C();
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_22C25A694(DecorationPrePlannerResult);
  sub_22C25AA44();
  sub_22C1026C4();
  if (v0)
  {
    sub_22BE27C5C();
    sub_22BE1AE58();
  }

  else
  {
    v36 = v19;
    v23 = *v1;
    v24 = *(v1 + 1);
    v25 = *(v1 + 2);

    sub_22BE1804C();
    sub_22C26E664();
    sub_22BE18B80();
    sub_22BE1AE58();
    v26 = *v4;
    v27 = v4[1];
    v28 = *(v2 + 24);

    sub_22C1027AC();
    QueryDecorationPrePlannerResultPayload.init(transcript:)();
    sub_22BE27C5C();
    sub_22BE1AE58();
    v29 = *(v36 + 32);
    v30 = sub_22BE196A8();
    v31(v30);
    v32 = type metadata accessor for QueryDecorationPrePlannerResult(0);
    v33 = sub_22BE406AC(v32);
    *v34 = v26;
    v34[1] = v27;
    sub_22C25A3A8(v33);
    *v35 = v37;
    *(v35 + 8) = v38;
  }

  sub_22BE35D48();
  sub_22BE18478();
}

void ExecutionPreconditionEvaluatorRequest.init(transcript:)()
{
  sub_22BE19130();
  sub_22C25AA94();
  sub_22C25A554(v8);
  v9 = sub_22C26E684();
  v10 = sub_22C2594A0(v9);
  v69 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = sub_22BE2F294();
  v15 = type metadata accessor for TranscriptProtoStatementID(v14);
  v16 = sub_22BE17A18(v15);
  v68 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE2558C();
  v22 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v21);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE18DFC();
  v26 = type metadata accessor for ExecutionPreconditionEvaluatorRequest.ActionRequest(0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE28FD8();
  v30 = v3 + *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0) + 20);
  sub_22C103124();
  if (v0)
  {
    sub_22C259A38();
    sub_22BE1AE58();
LABEL_4:
    sub_22BE22978();
    sub_22BE18478();
  }

  else
  {
    v63 = v5;
    v64 = v1;
    ExecutionPreconditionEvaluatorRequest.ActionRequest.init(transcript:)(v2);
    v60 = v7;
    v62 = v4;
    v31 = *v3;
    sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
    sub_22BE3D3E0();
    v32 = sub_22C273D04();
    v33 = 0;
    v35 = v31 + 64;
    v34 = *(v31 + 64);
    v36 = *(v31 + 32);
    sub_22BE26A98();
    v39 = v38 >> 6;
    v40 = v1;
    v61 = v41;
    while (v37)
    {
      sub_22BE22BE8();
      v66 = v43;
LABEL_12:
      v46 = v42 | (v33 << 6);
      sub_22C25A8B8();
      v48 = v47[1];
      v67 = *v47;
      sub_22BE1AA68(v49 + *(v68 + 72) * v46, v40);
      v50 = sub_22BE3CEF4();
      sub_22BE1AA68(v50, v51);
      v52 = *v63;
      v54 = *(v63 + 1);
      v53 = *(v63 + 2);

      sub_22C25A3C4();
      sub_22C26E664();
      sub_22C25A1AC();
      v40 = v64;
      sub_22BE1AE58();
      sub_22BE3CEF4();
      sub_22BE1AE58();
      sub_22BE3CD8C((v46 >> 3) & 0x1FFFFFFFFFFFFFF8);
      sub_22C25A924(v55);
      v32 = v61;
      v56 = (v61[6] + 16 * v46);
      *v56 = v67;
      v56[1] = v48;
      (*(v69 + 32))(v61[7] + *(v69 + 72) * v46, v6, v62);
      v57 = v61[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_16;
      }

      v61[2] = v59;
      v37 = v66;
    }

    v44 = v33;
    while (1)
    {
      v33 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v33 >= v39)
      {
        sub_22C259A38();
        sub_22BE1AE58();
        sub_22BE3B620(v60, v65);
        *(v65 + *(type metadata accessor for ExecutionPreconditionEvaluatorRequest(0) + 20)) = v32;
        goto LABEL_4;
      }

      ++v44;
      if (*(v35 + 8 * v33))
      {
        sub_22BE4878C();
        v66 = v45;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void RequestAmendment.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C18F0F4();
  v14 = sub_22C25A424(v13);
  v15 = type metadata accessor for TranscriptProtoRequestContent(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE1955C();
  v19 = type metadata accessor for RequestContent(0);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE18DFC();
  v23 = sub_22C26E1D4();
  v24 = sub_22BE41130(v23);
  v44 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE188B0();
  v28 = sub_22BE3CEF4();
  v30 = sub_22BE5CE4C(v28, v29);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE19668();
  v34 = *v10;
  v35 = v10[1];
  sub_22C26E174();
  sub_22C101298();
  v36 = sub_22BE261AC();
  sub_22BE233E8(v36, v37, &qword_22C27AB00);
  if (!v12)
  {
    v38 = v10 + *(type metadata accessor for TranscriptProtoRequestAmendment(0) + 20);
    sub_22C103C5C();
    sub_22C25A518();
    RequestContent.init(transcript:)();
    v39 = *(v44 + 32);
    v40 = sub_22BE3911C();
    v41(v40);
    v42 = *(type metadata accessor for RequestAmendment(0) + 20);
    sub_22BE39238();
    sub_22BE3B620(v11, a10 + v43);
  }

  sub_22BE26148();
  sub_22BE1AE58();
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C213508()
{
  sub_22C25AD18();
  v3 = *v1;
  v2 = v1[1];

  sub_22BE1B5EC();
  result = sub_22BE1AE58();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

void IntermediateSystemResponse.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v14 = sub_22C18F934(v13);
  v109 = type metadata accessor for TranscriptProtoResponseOutput(v14);
  v15 = sub_22BE18000(v109);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v18);
  sub_22C10887C(v19, v20, v21, v22, v23, v24, v25, v26, v104);
  v27 = sub_22BE5CE4C(&qword_27D90F078, &unk_22C2AE7D0);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE20168(v31, v105);
  v32 = sub_22BE5CE4C(&qword_27D911F40, &qword_22C2B5CA8);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v37 = sub_22BE23A90(v36);
  v38 = type metadata accessor for TranscriptProtoStatementID(v37);
  v39 = sub_22BE18000(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE18928();
  MEMORY[0x28223BE20](v42);
  sub_22BE1C17C();
  v43 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE25CD0();
  v47 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  v52 = v51;
  v53 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  v57 = sub_22BE3A208();
  v58 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v57);
  v59 = (v10 + v58[8]);
  if (v59[1])
  {
    v60 = *v59;

    sub_22BE191CC();
    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v64);
  }

  v65 = v58[7];
  sub_22BE22814();
  v66 = 1;
  v67 = sub_22BE26188();
  sub_22BE1AB5C(v67, v68, v38);
  if (!v69)
  {
    sub_22BE3B168();
    v70 = sub_22BE36658();
    sub_22BE3B620(v70, v71);
    sub_22BE2C73C();
    v72 = sub_22BE196A8();
    sub_22BE1AA68(v72, v73);
    v74 = *v11;
    v75 = *(v11 + 1);
    v76 = *(v11 + 2);

    sub_22C259FD0();
    sub_22C26E664();
    sub_22C25A1AC();
    sub_22BE1AE58();
    sub_22BE392D4();
    sub_22BE1AE58();
    v66 = 0;
  }

  v77 = sub_22C26E684();
  sub_22BE19DC4(v52, v66, 1, v77);
  v79 = *v10;
  v78 = v10[1];
  v80 = v58[5];
  sub_22C0E9A68();
  sub_22BE22814();
  v81 = sub_22BE2BA98();
  sub_22BE1AB5C(v81, v82, v109);
  if (v69)
  {
    sub_22C26F524();
    v83 = sub_22BE3D5C8();
    sub_22BE19DC4(v83, v84, v85, v86);

LABEL_12:
    v101 = (v10 + v58[6]);
    v103 = *v101;
    v102 = v101[1];

    sub_22BE2BA80();
    sub_22C270014();
    goto LABEL_13;
  }

  v87 = sub_22BE385E4();
  sub_22BE3B620(v87, v108);
  v88 = sub_22BE44744();
  sub_22BE1AA68(v88, v107);

  v89 = sub_22C25A6C4();
  ResponseOutput.init(transcript:)(v89, v90, v91, v92, v93, v94, v95, v96, v106, v107);
  if (!a10)
  {
    sub_22BE38444();
    sub_22BE1AE58();
    sub_22C26F524();
    v97 = sub_22C25974C();
    sub_22BE19DC4(v97, v98, v99, v100);
    goto LABEL_12;
  }

  sub_22BE38444();
  sub_22BE1AE58();
  sub_22BE233E8(v52, &qword_27D907240, &unk_22C2B5B80);
  sub_22BE233E8(v12, &qword_27D9082F0, &qword_22C27AB00);
LABEL_13:
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE19650();
  sub_22BE18478();
}

void IntermediateSystemResponseRendered.init(transcript:)()
{
  sub_22BE19130();
  v4 = sub_22C259C10(v3);
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE2C64C();
  v14 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE234F4();
  v18 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE25334();
  v23 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v22);
  v24 = &v0[*(v23 + 28)];
  if (*(v24 + 1))
  {
    v25 = *v24;
    v26 = *(v24 + 1);

    sub_22BE191CC();
    sub_22C26E174();
  }

  else
  {
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v27, v28, v29, v30);
  }

  v31 = *(v23 + 24);
  sub_22BE22814();
  v32 = 1;
  v33 = sub_22BE3C688();
  sub_22BE1AB5C(v33, v34, v5);
  if (!v35)
  {
    sub_22BE3B168();
    v36 = sub_22BE25C94();
    sub_22BE3B620(v36, v37);
    sub_22BE2C73C();
    v38 = sub_22BE1AB1C();
    sub_22BE1AA68(v38, v39);
    v40 = *v1;
    v41 = *(v1 + 1);
    v42 = *(v1 + 2);

    sub_22BE1B5EC();
    sub_22C26E664();
    sub_22C259638();
    sub_22BE1AE58();
    sub_22BE291B0();
    sub_22BE1AE58();
    v32 = 0;
  }

  v43 = sub_22C26E684();
  sub_22BE19DC4(v2, v32, 1, v43);
  v45 = *(v0 + 1);
  v44 = *(v0 + 2);
  v46 = *v0;

  sub_22BE196A8();
  sub_22C2701F4();
  sub_22C0E9A74();
  sub_22BE1AE58();
  sub_22BE3C298();
  sub_22BE18478();
}

void AgentPrimitiveAction.init(transcript:)()
{
  sub_22BE2BB34();
  v4 = v1;
  v5 = sub_22C259D80();
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22BE1AD20();
  v11 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE19338();
  v16 = *v2;
  v15 = v2[1];
  v17 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(0) + 20);

  sub_22C103D4C();
  if (v4)
  {
    sub_22BE379D8();
    sub_22BE1AE58();
  }

  else
  {
    sub_22C25A894();
    AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
    sub_22BE379D8();
    sub_22BE1AE58();
    *v0 = v16;
    v0[1] = v15;
    v18 = *(type metadata accessor for AgentPrimitiveAction(0) + 20);
    sub_22C259620();
    sub_22BE3B620(v3, v0 + v19);
  }

  sub_22BE36324();
  sub_22BEE93D4();
}

void TranscriptProtoUserTurnStarted.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v105 = v14;
  v15 = v14;
  v102 = v16;
  v17 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE35C94(v21, v100);
  v22 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE20168(v26, v101);
  v27 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = sub_22BE36294(v31);
  v103 = type metadata accessor for TranscriptProtoUserTurn(v32);
  v33 = sub_22BE18000(v103);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE18DFC();
  v36 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22C259738(v40);
  v41 = sub_22C26E684();
  v42 = sub_22BE179D8(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE2379C();
  v47 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE23E58();
  v51 = sub_22C259E4C();
  v52(v51, v15, v41);
  LODWORD(v15) = sub_22C26E674();
  v53 = sub_22C26E654();
  v54 = sub_22C25A4A0();
  v55 = type metadata accessor for TranscriptProtoStatementID(v54);
  sub_22C25A5EC(v55);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v56 = *(v44 + 8);
  v57 = sub_22BE18944();
  v58(v57);
  *v13 = v15;
  *(v13 + 8) = v53;
  *(v13 + 16) = v12;
  v59 = sub_22BE360A0();
  v62 = sub_22C259E00(v59, v60, v61);
  v63 = type metadata accessor for UserTurnStarted(v62);
  sub_22C25A374(v63);
  v65 = *(v105 + v64);
  v66 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22C259804();
  sub_22BE19DC4(v67, v68, v69, v70);
  v71 = v11 + *(v103 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE25C08();
  swift_storeEnumTagMultiPayload();
  v72 = sub_22BE22B8C();
  sub_22BE19DC4(v72, v73, v74, v66);
  sub_22BE1AB1C();
  sub_22BE2343C();
  v75 = sub_22BE29370();
  sub_22BE3B620(v75, a10);
  sub_22C2597F4();
  sub_22BE19DC4(v76, v77, v78, v79);
  v80 = *(v41 + 28);
  v81 = (v105 + *(v41 + 24));
  v83 = *v81;
  v82 = v81[1];
  sub_22BE22814();

  sub_22C1B2294();
  if (v10)
  {

    sub_22BE336C4();
    sub_22BE1AE58();
    sub_22BE233E8(a10, &qword_27D90E4D8, &qword_22C2B5DB0);
    sub_22BE233E8(v13, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    v84 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
    sub_22C25A658(v84);
    sub_22BE1A140();
    sub_22BE19DC4(v85, v86, v87, v88);
    v104 = v83;
    v89 = v105[6];
    sub_22C25976C();
    sub_22BE19DC4(v90, v91, v92, v93);
    v94 = v105[7];
    type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v95, v96, v97, v98);
    v99 = v102 + v105[8];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE336C4();
    sub_22BE1AE58();
    sub_22BE2343C();
    sub_22BE2343C();
    *v102 = v104;
    v102[1] = v82;
    sub_22BE2343C();
  }

  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t TranscriptProtoSpeechPartialResult.init(handwritten:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];

  sub_22C1C36F4();
  v7 = v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  sub_22C25A67C(v8);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v7;
  return result;
}

void TranscriptProtoRequest.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C25A6AC();
  v132 = v12;
  v13 = sub_22BE5CE4C(&qword_27D911F50, &qword_22C2B5EF0);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE35C94(v17, v125);
  v18 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE20310(v22, v126);
  v23 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1BCE8(v27, v127);
  v28 = sub_22BE5CE4C(&qword_27D9120B0, &qword_22C2B5F00);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE19668();
  v32 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E64();
  v36 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE234F4();
  v40 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1B01C();
  v44 = sub_22BE5CE4C(&qword_27D911F58, &unk_22C2B5CC0);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A8B4();
  v48 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v48);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  v52 = sub_22BE46DE8();
  v53 = type metadata accessor for RequestContent(v52);
  v54 = sub_22BE19448(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE188B0();
  v57 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v57);
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE25CD0();
  sub_22BE35EE0();
  v61 = sub_22BE191C0();
  sub_22BE1AA68(v61, v62);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (a10)
  {
    sub_22BE1BBC8();
    sub_22BE1AE58();
  }

  else
  {
    v63 = type metadata accessor for TranscriptProtoRequestContent(0);
    v64 = sub_22BE3C530();
    v67 = sub_22C18F17C(v64, v65, v66, v63);
    v68 = type metadata accessor for Request(v67);
    v69 = v68[6];
    v70 = *(v11 + v68[5]);
    sub_22BE22814();
    sub_22C25AD7C();
    sub_22C107B14();
    v71 = v68[7];
    sub_22BE22814();
    v72 = sub_22C26E1D4();
    sub_22BE3E950(v10);
    v130 = v70;
    if (v73)
    {
      sub_22BE233E8(v10, &qword_27D9082F0, &qword_22C27AB00);
      v129 = 0;
      v131 = 0;
    }

    else
    {
      v129 = sub_22C26E184();
      v131 = v74;
      sub_22BE1BC24(v72);
      v76 = *(v75 + 8);
      v77 = sub_22BE3EA80();
      v78(v77);
    }

    v79 = (v11 + v68[8]);
    v80 = *v79;
    v81 = v79[1];
    v82 = v79[2];
    v83 = sub_22BE31038();
    sub_22BE3820C(v83, v84);
    v85 = sub_22BE31038();
    sub_22BE3943C(v85, v86, v82, v87);
    v88 = v68[9];
    sub_22BE22814();
    sub_22C1B2294();
    v89 = (v11 + v68[10]);
    v91 = *v89;
    v90 = v89[1];

    v92 = sub_22BE1804C();
    sub_22C107CD4(v92, v93, v94);
    v95 = v68[11];
    sub_22BE22814();
    sub_22C107D88();
    v96 = type metadata accessor for TranscriptProtoRequest(0);
    sub_22C25A530(v96);
    sub_22BE1A140();
    sub_22BE19DC4(v97, v98, v99, v63);
    v133 = v90[6];
    type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    sub_22BE1A140();
    sub_22BE19DC4(v100, v101, v102, v103);
    v128 = v90[8];
    v104 = &v132[v90[7]];
    type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
    sub_22BE1A140();
    sub_22BE19DC4(v105, v106, v107, v108);
    v109 = v90[9];
    type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v110, v111, v112, v113);
    v114 = v90[10];
    type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
    sub_22BE1A140();
    sub_22BE19DC4(v115, v116, v117, v118);
    v119 = v90[11];
    type metadata accessor for TranscriptProtoDateTimeContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v120, v121, v122, v123);
    v124 = &v132[v90[12]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1BBC8();
    sub_22BE1AE58();
    sub_22BE2343C();
    *v132 = v130;
    sub_22BE2343C();
    *v104 = v129;
    v104[1] = v131;
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE2343C();
    sub_22BE2343C();
  }

  sub_22C18F0A4();
  sub_22BE18478();
}