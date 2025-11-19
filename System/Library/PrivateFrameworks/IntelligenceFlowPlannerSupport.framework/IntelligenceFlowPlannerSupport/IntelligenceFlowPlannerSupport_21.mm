uint64_t sub_22BFE01C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911138, type metadata accessor for TranscriptProtoUserTurn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0244(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE02B4()
{
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);

  return sub_22C270774();
}

uint64_t sub_22BFE0404(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911130, type metadata accessor for TranscriptProtoUserTurnSpeech);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0484(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE04F4()
{
  sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);

  return sub_22C270774();
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V2eeoiySbAC_ACtFZ_0()
{
  sub_22BE1B2D4();
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v0, v1);
  sub_22BE18944();
  return sub_22C272FD4() & 1;
}

uint64_t sub_22BFE068C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911128, type metadata accessor for TranscriptProtoUserTurnText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE070C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE077C()
{
  sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);

  return sub_22C270774();
}

uint64_t sub_22BFE0804()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD20);
  sub_22BE199F4(v0, qword_27D90CD20);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "turnId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokens";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSpeechPartialResult.decodeMessage<A>(decoder:)()
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
      sub_22BFE0AA0();
    }

    else if (v1 == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }
}

void sub_22BFE0AA0()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C988(v2, v3);
  sub_22BE38514();
  sub_22C2706E4();
  sub_22BE18478();
}

void TranscriptProtoSpeechPartialResult.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22C0B1AE4();
    if (!v2 || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_22BE44774(), sub_22BE2C988(v3, v4), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      v5 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
      sub_22BE25FB0(v5);
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE0C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911120, type metadata accessor for TranscriptProtoSpeechPartialResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE0CF4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE0D64()
{
  sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);

  return sub_22C270774();
}

uint64_t sub_22BFE0DFC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD38);
  sub_22BE199F4(v0, qword_27D90CD38);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyMode";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prescribedPlan";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawRewriteMetadataEventId";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rewriteMetadataInlined";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "siriRequestContext";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "suggestedInvocation";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "datetimeContext";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)()
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
        sub_22BFE124C();
        break;
      case 2:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFE1300();
        break;
      case 4:
        sub_22BE393E0();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFE13B4();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFE1468();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BFE151C();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BFE15D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE124C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 20);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
  return sub_22C2706F4();
}

uint64_t sub_22BFE1300()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 24);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  return sub_22C2706F4();
}

uint64_t sub_22BFE13B4()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 32);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_22C2706F4();
}

uint64_t sub_22BFE1468()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 36);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  return sub_22C2706F4();
}

uint64_t sub_22BFE151C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 40);
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  return sub_22C2706F4();
}

uint64_t sub_22BFE15D0()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 44);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);
  return sub_22C2706F4();
}

void TranscriptProtoRequest.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  sub_22BFE1760(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22C0B1C3C();
    if (v5)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v6 = sub_22BE17D60();
    sub_22BFE1934(v6, v7, v8, v9);
    sub_22BE393E0();
    sub_22BE17D60();
    sub_22C099168();
    v10 = sub_22BE17D60();
    sub_22BFE1B08(v10, v11, v12, v13);
    v14 = sub_22BE17D60();
    sub_22BFE1CDC(v14, v15, v16, v17);
    v18 = sub_22BE17D60();
    sub_22BFE1EB0(v18, v19, v20, v21);
    v22 = sub_22BE17D60();
    sub_22BFE2084(v22, v23, v24, v25);
    v26 = *(type metadata accessor for TranscriptProtoRequest(0) + 48);
    sub_22BE1AC30();
  }
}

uint64_t sub_22BFE1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 20);
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

uint64_t sub_22BFE1934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E558, &unk_22C2AE4D0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 36);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 40);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E538, &unk_22C2AE4E0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequest(0) + 44);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E528, &unk_22C2CC870);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v158 = v4;
  v5 = sub_22C0B1E74();
  v142 = type metadata accessor for TranscriptProtoDateTimeContext(v5);
  v6 = sub_22BE18000(v142);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v9 = sub_22BE5CE4C(&qword_27D90E528, &unk_22C2CC870);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v141 = sub_22BE5CE4C(&qword_27D90E530, &qword_22C296EF0);
  sub_22BE18000(v141);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v143 = v16;
  v17 = sub_22BE183BC();
  v146 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v17);
  v18 = sub_22BE18000(v146);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v140 = v21;
  v22 = sub_22BE5CE4C(&qword_27D90E538, &unk_22C2AE4E0);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v144 = v26;
  v145 = sub_22BE5CE4C(&qword_27D90E540, &qword_22C296EF8);
  sub_22BE18000(v145);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v147 = v30;
  v31 = sub_22BE183BC();
  v150 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v31);
  v32 = sub_22BE18000(v150);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v35 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  v149 = sub_22BE5CE4C(&qword_27D90E4D0, &qword_22C296ED8);
  sub_22BE18000(v149);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE33FF0(v42, v136);
  v154 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v43 = sub_22BE18000(v154);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  v148 = v46;
  v47 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  sub_22C0B1ABC(v51);
  v153 = sub_22BE5CE4C(&qword_27D90E550, &qword_22C296F08);
  sub_22BE18000(v153);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  v56 = sub_22BE4098C(v55, v137);
  v57 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(v56);
  v58 = sub_22BE1B7B0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17A44();
  sub_22BEE94C8(v61);
  v62 = sub_22BE5CE4C(&qword_27D90E558, &unk_22C2AE4D0);
  sub_22BE19448(v62);
  v64 = *(v63 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v65);
  sub_22BE3C048(v66, v138);
  v67 = sub_22BE5CE4C(&qword_27D90E560, &qword_22C296F10);
  sub_22BE26880(v67);
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  v72 = sub_22BE1BC94(v71, v139);
  v73 = type metadata accessor for TranscriptProtoRequestContent(v72);
  v74 = sub_22BE18000(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE38390();
  v77 = sub_22BE392D4();
  v79 = sub_22BE5CE4C(v77, v78);
  sub_22BE19448(v79);
  v81 = *(v80 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v82);
  sub_22BE19668();
  v83 = sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22C0B1A7C(v83);
  v85 = *(v84 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v86);
  sub_22BE234F4();
  v157 = type metadata accessor for TranscriptProtoRequest(0);
  v87 = v157[5];
  v88 = *(v1 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE18190(v2);
  if (!v89)
  {
    sub_22BE35838();
    sub_22BE22868();
    sub_22BE18190(v2 + v88);
    if (!v89)
    {
      sub_22C0B0868();
      sub_22BE18040();
      static TranscriptProtoRequestContent.== infix(_:_:)();
      v94 = v93;
      sub_22BE1B5EC();
      sub_22C0B08BC();
      sub_22BE18944();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D90E568, &unk_22C2CC8B0);
      if ((v94 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    sub_22C0B1538();
    sub_22C0B08BC();
LABEL_9:
    v90 = &qword_27D90E570;
    v91 = &qword_22C296F18;
    v92 = v2;
    goto LABEL_10;
  }

  sub_22BE18190(v2 + v88);
  if (!v89)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v2, &qword_27D90E568, &unk_22C2CC8B0);
LABEL_12:
  if (*v3 != *v158)
  {
    goto LABEL_13;
  }

  v96 = v157[6];
  v97 = *(v0 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v98 = sub_22BE26188();
  sub_22BE36144(v98, v99);
  if (v89)
  {
    sub_22BE18190(v156 + v97);
    if (v89)
    {
      sub_22BE33928(v156, &qword_27D90E558, &unk_22C2AE4D0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_22BE22868();
    sub_22BE18190(v156 + v97);
    if (!v100)
    {
      sub_22C0B0868();
      sub_22BE1C2A0();
      static TranscriptProtoRequestPrescribedPlan.== infix(_:_:)();
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v156, &qword_27D90E558, &unk_22C2AE4D0);
      if ((&unk_22C2AE4D0 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_25:
      v101 = v157[7];
      v102 = *&v158[v101 + 8];
      if (*&v3[v101 + 8])
      {
        if (!v102)
        {
          goto LABEL_13;
        }

        sub_22BE3A508(&v3[v101]);
        v105 = v89 && v103 == v104;
        if (!v105 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (v102)
      {
        goto LABEL_13;
      }

      v106 = v157[8];
      sub_22C0B1B6C();
      sub_22BE27B84();
      sub_22BE22868();
      v107 = v155;
      sub_22BE27B84();
      sub_22BE22868();
      v108 = sub_22BE26188();
      sub_22BE36144(v108, v109);
      if (v89)
      {
        sub_22BE18A84();
        if (v89)
        {
          sub_22BE33928(v155, &qword_27D90E548, &qword_22C296F00);
          goto LABEL_39;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22BE18A84();
        if (!v114)
        {
          sub_22C0B1788();
          sub_22C0B0868();
          v115 = *v152 == *v148 && v152[1] == v148[1];
          if (!v115 && (sub_22C274014() & 1) == 0 || (sub_22BE9693C(v152[2], v148[2]) & 1) == 0)
          {
            sub_22BE487C0();
            sub_22C0B08BC();
            sub_22BE200D4();
            sub_22C0B08BC();
            v90 = &qword_27D90E548;
            v91 = &qword_22C296F00;
            goto LABEL_89;
          }

          sub_22BE27098();
          sub_22BE18E5C();
          sub_22BE2C988(v116, v117);
          sub_22BE3A008();
          sub_22C0B1B54();
          sub_22BE32478();
          sub_22C0B08BC();
          sub_22BE431C0();
          sub_22C0B08BC();
          sub_22BE33928(v155, &qword_27D90E548, &qword_22C296F00);
          if ((v154 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_39:
          v110 = v157[9];
          v111 = *(v149 + 48);
          sub_22BE27B84();
          sub_22BE22868();
          v107 = v151;
          sub_22BE27B84();
          sub_22BE22868();
          v112 = sub_22BE26188();
          sub_22BE36144(v112, v113);
          if (v89)
          {
            sub_22BE18A84();
            if (v89)
            {
              sub_22BE33928(v151, &qword_27D90C7E8, &unk_22C2AE4B0);
              goto LABEL_62;
            }
          }

          else
          {
            sub_22BE22868();
            sub_22BE18A84();
            if (!v118)
            {
              sub_22C0B17E8();
              sub_22C0B0868();
              sub_22BE232C8();
              static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)();
              sub_22BE39304();
              sub_22BE200D4();
              sub_22C0B08BC();
              sub_22BE33928(v151, &qword_27D90C7E8, &unk_22C2AE4B0);
              if ((&unk_22C2AE4B0 & 1) == 0)
              {
                goto LABEL_13;
              }

LABEL_62:
              v119 = v157[10];
              v120 = *(v145 + 48);
              sub_22BE27B84();
              sub_22BE22868();
              v107 = v147;
              sub_22BE27B84();
              sub_22BE22868();
              v121 = sub_22BE26188();
              sub_22BE36144(v121, v122);
              if (v89)
              {
                sub_22BE18A84();
                if (v89)
                {
                  sub_22BE33928(v147, &qword_27D90E538, &unk_22C2AE4E0);
LABEL_77:
                  v128 = v157[11];
                  v129 = *(v141 + 48);
                  sub_22BE27B84();
                  sub_22BE22868();
                  v107 = v143;
                  sub_22BE27B84();
                  sub_22BE22868();
                  v130 = sub_22BE26188();
                  sub_22BE36144(v130, v131);
                  if (v89)
                  {
                    sub_22BE18A84();
                    if (v89)
                    {
                      sub_22BE33928(v143, &qword_27D90E528, &unk_22C2CC870);
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    sub_22BE22868();
                    sub_22BE18A84();
                    if (!v132)
                    {
                      sub_22C0B0868();
                      sub_22BE232C8();
                      static TranscriptProtoDateTimeContext.== infix(_:_:)();
                      sub_22BE39304();
                      sub_22BE200D4();
                      sub_22C0B08BC();
                      sub_22BE33928(v143, &qword_27D90E528, &unk_22C2CC870);
                      if ((&unk_22C2CC870 & 1) == 0)
                      {
                        goto LABEL_13;
                      }

LABEL_87:
                      v133 = v157[12];
                      sub_22C2704B4();
                      sub_22BE18E5C();
                      sub_22BE2C988(v134, v135);
                      v95 = sub_22C272FD4();
                      goto LABEL_14;
                    }

                    sub_22BE3FEA4();
                  }

                  v90 = &qword_27D90E530;
                  v91 = &qword_22C296EF0;
                  goto LABEL_89;
                }
              }

              else
              {
                sub_22BE22868();
                sub_22BE18A84();
                if (!v123)
                {
                  sub_22C0B0868();
                  v124 = *v144 == *v140 && v144[1] == v140[1];
                  if (v124 || (sub_22C274014() & 1) != 0)
                  {
                    sub_22BE46030();
                    sub_22BE18E5C();
                    sub_22BE2C988(v125, v126);
                    sub_22BE3A008();
                    v127 = sub_22C0B1B54();
                    sub_22C0B08BC();
                    sub_22BE431C0();
                    sub_22C0B08BC();
                    sub_22BE33928(v147, &qword_27D90E538, &unk_22C2AE4E0);
                    if ((v127 & 1) == 0)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_77;
                  }

                  sub_22C0B08BC();
                  sub_22BE200D4();
                  sub_22C0B08BC();
                  v90 = &qword_27D90E538;
                  v91 = &unk_22C2AE4E0;
LABEL_89:
                  v92 = v107;
                  goto LABEL_10;
                }

                sub_22BE3FEA4();
              }

              v90 = &qword_27D90E540;
              v91 = &qword_22C296EF8;
              goto LABEL_89;
            }

            sub_22BE3FEA4();
          }

          v90 = &qword_27D90E4D0;
          v91 = &qword_22C296ED8;
          goto LABEL_89;
        }

        sub_22C0B17A0();
        sub_22C0B08BC();
      }

      v90 = &qword_27D90E550;
      v91 = &qword_22C296F08;
      goto LABEL_89;
    }

    sub_22C0B1AFC();
  }

  v90 = &qword_27D90E560;
  v91 = &qword_22C296F10;
  v92 = v156;
LABEL_10:
  sub_22BE33928(v92, v90, v91);
LABEL_13:
  v95 = 0;
LABEL_14:
  sub_22BE1C1DC(v95);
  sub_22BE1AABC();
}

uint64_t sub_22BFE3024(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911118, type metadata accessor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE30A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE3114()
{
  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);

  return sub_22C270774();
}

uint64_t sub_22BFE31A0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281075D60);
  sub_22BE199F4(v0, qword_281075D60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speech";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFE3448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911380, &qword_22C2AE0B0);
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
    sub_22BE33928(v12, &qword_27D90E580, &qword_22C2AE4F0);
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
      sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFE3940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911388, &qword_22C2AE0B8);
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
    sub_22BE33928(v12, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFE3E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115B0, &qword_22C2AE2C8);
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
    sub_22BE33928(v12, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9115B0, &qword_22C2AE2C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115B0, &qword_22C2AE2C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115B0, &qword_22C2AE2C8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115B0, &qword_22C2AE2C8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115B0, &qword_22C2AE2C8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFE4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115B8, &qword_22C2AE2D0);
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
    sub_22BE33928(v12, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9115B8, &qword_22C2AE2D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115B8, &qword_22C2AE2D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115B8, &qword_22C2AE2D0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115B8, &qword_22C2AE2D0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115B8, &qword_22C2AE2D0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E580, &qword_22C2AE4F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFE4828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE4A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFE4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoRequestContent.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoRequestContentEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E588, &qword_22C296F20);
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
      sub_22BE33928(v0, &qword_27D90E580, &qword_22C2AE4F0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoRequestContent(0);
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
    sub_22BE33928(v0, &qword_27D90E588, &qword_22C296F20);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoRequestContentEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E580, &qword_22C2AE4F0);
  if (&qword_27D90E580)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22BFE50B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911110, type metadata accessor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE5134(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE51A4()
{
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5340(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911108, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE53C0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE5430()
{
  sub_22BE2C988(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return sub_22C270774();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)()
{
  do
  {
    sub_22BE1AB74();
    result = sub_22C270584();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_22BFE55BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911100, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE563C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE56AC()
{
  sub_22BE2C988(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5734()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_28107DC28);
  sub_22BE199F4(v0, qword_28107DC28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
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
  return sub_22C2708A4();
}

uint64_t sub_22BFE5928()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void static TranscriptProtoRequestContentTextContent.== infix(_:_:)()
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
    goto LABEL_15;
  }

  v17 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_22BE3E440(v17);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v23, v24);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_14:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_15;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v20 = sub_22BE38970();
  v22 = static TranscriptProtoStatementID.== infix(_:_:)(v20, v21);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22BFE5C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110F8, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE5CEC(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE5D5C()
{
  sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return sub_22C270774();
}

uint64_t sub_22BFE5DE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CD80);
  sub_22BE199F4(v0, qword_27D90CD80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "speechPackage";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "preITNSpeechPackage";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFE60F0();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFE61A4();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFE6258();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE60F0()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 20);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_22C2706F4();
}

uint64_t sub_22BFE61A4()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFE6258()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 28);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22BFE639C(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22BFE6570(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22BFE6744(v11, v12, v13, v14);
      v15 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 32);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BFE639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E5B0, &unk_22C2AE500);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFE6570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 24);
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

uint64_t sub_22BFE6744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E5B0, &unk_22C2AE500);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE272C0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE38A28(v9);
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE29250(v14, v88);
  v15 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28784(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE1AED0();
  v93 = type metadata accessor for TranscriptProtoSpeechPackage(v19);
  v20 = sub_22BE18000(v93);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE32374();
  v27 = sub_22BE5CE4C(&qword_27D90E5B0, &unk_22C2AE500);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE183AC();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v36 = (&v88 - v35);
  v37 = sub_22BE5CE4C(&qword_27D90E5B8, &qword_22C296F28);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v41);
  v43 = &v88 - v42;
  v44 = *v0;
  v45 = v0[1];
  v94 = v0;
  sub_22BE33C20();
  v48 = v48 && v46 == v47;
  if (!v48 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_22;
  }

  v88 = v25;
  v89 = v33;
  v91 = v1;
  v90 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v49 = *(v90 + 20);
  v50 = *(v37 + 48);
  sub_22C0B1C48();
  sub_22BE22868();
  sub_22BE22868();
  v51 = sub_22BE406A0();
  v52 = v93;
  sub_22BE36144(v51, v53);
  if (v48)
  {
    sub_22BE18190(&v43[v50]);
    if (v48)
    {
      sub_22BE33928(v43, &qword_27D90E5B0, &unk_22C2AE500);
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_22BE392D4();
  sub_22BE22868();
  sub_22BE18190(&v43[v50]);
  if (v60)
  {
    sub_22BE3D570();
LABEL_19:
    v61 = &qword_27D90E5B8;
    v62 = &qword_22C296F28;
LABEL_20:
    v63 = v43;
LABEL_21:
    sub_22BE33928(v63, v61, v62);
    goto LABEL_22;
  }

  sub_22C0B1974();
  sub_22C0B0868();
  v65 = *v36;
  v66 = *v2;
  sub_22BEA0CA0();
  if ((v67 & 1) == 0)
  {
    sub_22C0B198C();
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v61 = &qword_27D90E5B0;
    v62 = &unk_22C2AE500;
    goto LABEL_20;
  }

  sub_22BE46030();
  sub_22BE18E5C();
  sub_22BE2C988(v68, v69);
  sub_22C272FD4();
  sub_22C0B1738();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v43, &qword_27D90E5B0, &unk_22C2AE500);
  if ((v52 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v54 = v90;
  v55 = *(v90 + 24);
  v56 = *(v92 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v57 = sub_22BE3C688();
  sub_22BE36144(v57, v58);
  if (v48)
  {
    sub_22BE18190(v3 + v56);
    v59 = v91;
    if (v48)
    {
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE18190(v3 + v56);
  v59 = v91;
  if (v70)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_30:
    v61 = &qword_27D909100;
    v62 = &unk_22C27FD00;
    v63 = v3;
    goto LABEL_21;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v71 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v71, v72);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&unk_22C2AE4A0 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_33:
  v73 = *(v54 + 28);
  v74 = *(v37 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v75 = sub_22BFB1A7C();
  v76 = v93;
  sub_22BE36144(v75, v77);
  if (v48)
  {
    sub_22BE18190(v59 + v74);
    if (v48)
    {
      sub_22BE33928(v59, &qword_27D90E5B0, &unk_22C2AE500);
LABEL_38:
      sub_22C0B1D70();
      sub_22BE18E5C();
      sub_22BE2C988(v78, v79);
      sub_22C0B1C54();
      v64 = sub_22C272FD4();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v80 = v89;
  sub_22BE22868();
  sub_22BE18190(v59 + v74);
  if (v81)
  {
    sub_22BE3D570();
LABEL_42:
    v61 = &qword_27D90E5B8;
    v62 = &qword_22C296F28;
LABEL_43:
    v63 = v59;
    goto LABEL_21;
  }

  sub_22C0B1974();
  v82 = v88;
  sub_22C0B0868();
  v83 = *v80;
  v84 = *v82;
  sub_22BEA0CA0();
  if ((v85 & 1) == 0)
  {
    sub_22C0B198C();
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v61 = &qword_27D90E5B0;
    v62 = &unk_22C2AE500;
    goto LABEL_43;
  }

  sub_22BE46030();
  sub_22BE18E5C();
  sub_22BE2C988(v86, v87);
  sub_22BE3C4B0();
  sub_22C0B1738();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v59, &qword_27D90E5B0, &unk_22C2AE500);
  if (v76)
  {
    goto LABEL_38;
  }

LABEL_22:
  v64 = 0;
LABEL_23:
  sub_22BE1C1DC(v64);
  sub_22BE1AABC();
}

uint64_t sub_22BFE7030(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110F0, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE70B0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE7120()
{
  sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.decodeMessage<A>(decoder:)()
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

void TranscriptProtoSpeechPackage.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoSpeechPackage(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE73F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110E8, type metadata accessor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7474(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE74E4()
{
  sub_22BE2C988(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.Phrase.decodeMessage<A>(decoder:)()
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

void sub_22BFE7680()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C988(v2, v3);
  sub_22BE38514();
  sub_22C2706E4();
  sub_22BE18478();
}

void TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE77A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BE18378();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  sub_22BE3636C(v8);
  sub_22BE18E5C();
  sub_22BE2C988(v9, v10);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFE78B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110E0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7934(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE79A4()
{
  sub_22BE2C988(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return sub_22C270774();
}

void TranscriptProtoSpeechPackage.Interpretation.decodeMessage<A>(decoder:)()
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

void TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_22BE44774(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFE7C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE7D10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE7D80()
{
  sub_22BE2C988(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_22C270774();
}

uint64_t sub_22BFE7E20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x2318AB8D0](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000022C2D6BA0;
  return result;
}

uint64_t sub_22BFE7EAC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE10);
  sub_22BE199F4(v0, qword_27D90CE10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTime";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "silenceStartTime";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "endTime";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)()
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
        sub_22BE374D4();
        sub_22C270654();
        break;
      case 3:
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270684();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    if (!*(v1 + 16) || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
      {
        if (*(v1 + 32) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
        {
          if (*(v1 + 40) == 0.0 || (sub_22BE3C588(), result = sub_22C270834(), !v0))
          {
            v4 = *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
            return sub_22BE1AC30();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static TranscriptProtoSpeechPackage.Token.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 24) != *(v2 + 24) || *(v3 + 32) != *(v2 + 32) || *(v3 + 40) != *(v2 + 40))
  {
    return 0;
  }

  v7 = *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v8, v9);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFE8438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110D0, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE84B8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE8528()
{
  sub_22BE2C988(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return sub_22C270774();
}

uint64_t sub_22BFE85B4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281072DD0);
  sub_22BE199F4(v0, qword_281072DD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rawRewriteMetadataEventId";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rewriteMetadataInlined";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)()
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
        sub_22BFE8940();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFE88DC();
        break;
      case 1:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

void sub_22BFE8884()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C988(v2, v3);
  sub_22BE38514();
  sub_22C2706F4();
  sub_22BE18478();
}

uint64_t sub_22BFE8940()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 24);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_22C2706F4();
}

void static TranscriptProtoExternalAgentRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22C0B1BA0();
  v62 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v4);
  v5 = sub_22BE18000(v62);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v60 = v8;
  v9 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20168(v13, v58);
  v14 = sub_22BE5CE4C(&qword_27D90E550, &qword_22C296F08);
  sub_22BE272C0(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = sub_22C0B1620(v18, v59);
  v20 = type metadata accessor for TranscriptProtoRequestContent(v19);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE294E0();
  v24 = sub_22BE324FC();
  v26 = sub_22BE5CE4C(v24, v25);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v30 = sub_22BE5CE4C(&qword_27D90E570, &qword_22C296F18);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE23E58();
  v35 = *(v34 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE23B00(v1);
  if (v36)
  {
    sub_22BE22E64();
    if (v36)
    {
      sub_22BE33928(v1, &qword_27D90E568, &unk_22C2CC8B0);
      goto LABEL_14;
    }

LABEL_9:
    v37 = &qword_27D90E570;
    v38 = &qword_22C296F18;
    v39 = v1;
LABEL_10:
    sub_22BE33928(v39, v37, v38);
    goto LABEL_11;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v36)
  {
    sub_22C0B1538();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  sub_22BE1A6BC();
  static TranscriptProtoRequestContent.== infix(_:_:)();
  v42 = v41;
  sub_22BE2C254();
  sub_22C0B08BC();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E568, &unk_22C2CC8B0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v43 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v44 = v43[5];
  v45 = *(v3 + v44 + 8);
  if (*(v0 + v44 + 8))
  {
    if (!v45)
    {
      goto LABEL_11;
    }

    sub_22BE3A508((v0 + v44));
    v48 = v36 && v46 == v47;
    if (!v48 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v45)
  {
    goto LABEL_11;
  }

  v49 = v43[6];
  v50 = *(v61 + 48);
  sub_22C0B1754();
  sub_22BE22868();
  sub_22C0B1754();
  sub_22BE22868();
  sub_22BE36144(v63, 1);
  if (v36)
  {
    sub_22BE18190(v63 + v50);
    if (v36)
    {
      sub_22BE33928(v63, &qword_27D90E548, &qword_22C296F00);
LABEL_28:
      v51 = v43[7];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v52, v53);
      sub_22C0B1968();
      v40 = sub_22C272FD4();
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE18190(v63 + v50);
  if (v54)
  {
    sub_22C0B17A0();
    sub_22C0B08BC();
LABEL_32:
    v37 = &qword_27D90E550;
    v38 = &qword_22C296F08;
LABEL_42:
    v39 = v63;
    goto LABEL_10;
  }

  sub_22C0B1788();
  sub_22C0B0868();
  v55 = *v49 == *v60 && v49[1] == v60[1];
  if (!v55 && (sub_22C274014() & 1) == 0 || (sub_22BE9693C(v49[2], v60[2]) & 1) == 0)
  {
    sub_22BE487C0();
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v37 = &qword_27D90E548;
    v38 = &qword_22C296F00;
    goto LABEL_42;
  }

  sub_22BE27098();
  sub_22BE18E5C();
  sub_22BE2C988(v56, v57);
  sub_22C272FD4();
  sub_22BE32478();
  sub_22C0B08BC();
  sub_22BE36680();
  sub_22C0B08BC();
  sub_22BE33928(v63, &qword_27D90E548, &qword_22C296F00);
  if (v62)
  {
    goto LABEL_28;
  }

LABEL_11:
  v40 = 0;
LABEL_12:
  sub_22BE1C1DC(v40);
  sub_22BE1AABC();
}

uint64_t sub_22BFE8F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110C8, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE8FE4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE9054()
{
  sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return sub_22C270774();
}

uint64_t sub_22BFE90EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE28);
  sub_22BE199F4(v0, qword_27D90CE28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_22BE1BAB8(), result = sub_22C270824(), !v0))
    {
      v4 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
      return sub_22BE25FB0(v4);
    }
  }

  return result;
}

uint64_t sub_22BFE93A8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_22BE19FC4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_22C0B1C6C();
  if ((a3(v9) & 1) == 0)
  {
    return 0;
  }

  v10 = a4(0);
  sub_22BE23A04(v10);
  sub_22BE18E5C();
  sub_22BE2C988(v11, v12);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFE94E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110C0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFE9568(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFE95D8()
{
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_22C270774();
}

uint64_t sub_22BFE9664()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE40);
  sub_22BE199F4(v0, qword_27D90CE40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowConfidenceKnowledgeTool";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "textTool";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "convertTool";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "displayTool";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "knowledgeTool";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "openTool";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "openSuccessValueFromLatestRequestTool";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)()
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
        sub_22BFE9AAC(v3, v4, v5, v6);
        break;
      case 2:
        v23 = sub_22BE236F4();
        sub_22BFE9FA4(v23, v24, v25, v26);
        break;
      case 6:
        v11 = sub_22BE236F4();
        sub_22BFEA49C(v11, v12, v13, v14);
        break;
      case 7:
        v15 = sub_22BE236F4();
        sub_22BFEA994(v15, v16, v17, v18);
        break;
      case 8:
        v7 = sub_22BE236F4();
        sub_22BFEAE8C(v7, v8, v9, v10);
        break;
      case 9:
        v27 = sub_22BE236F4();
        sub_22BFEB384(v27, v28, v29, v30);
        break;
      case 10:
        v31 = sub_22BE236F4();
        sub_22BFEB87C(v31, v32, v33, v34);
        break;
      case 11:
        v19 = sub_22BE236F4();
        sub_22BFEBD74(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFE9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911570, &qword_22C2AE288);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
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
      sub_22BE33928(v22, &qword_27D911570, &qword_22C2AE288);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911570, &qword_22C2AE288);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911570, &qword_22C2AE288);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911570, &qword_22C2AE288);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911570, &qword_22C2AE288);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFE9FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911578, &qword_22C2AE290);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911578, &qword_22C2AE290);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911578, &qword_22C2AE290);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911578, &qword_22C2AE290);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911578, &qword_22C2AE290);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911578, &qword_22C2AE290);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911580, &qword_22C2AE298);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911580, &qword_22C2AE298);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911580, &qword_22C2AE298);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911580, &qword_22C2AE298);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911580, &qword_22C2AE298);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911580, &qword_22C2AE298);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEA994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911588, &qword_22C2AE2A0);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D911588, &qword_22C2AE2A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911588, &qword_22C2AE2A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911588, &qword_22C2AE2A0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911588, &qword_22C2AE2A0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911588, &qword_22C2AE2A0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEAE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911590, &qword_22C2AE2A8);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D911590, &qword_22C2AE2A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911590, &qword_22C2AE2A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911590, &qword_22C2AE2A8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911590, &qword_22C2AE2A8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911590, &qword_22C2AE2A8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEB384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911598, &qword_22C2AE2B0);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D911598, &qword_22C2AE2B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911598, &qword_22C2AE2B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911598, &qword_22C2AE2B0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911598, &qword_22C2AE2B0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911598, &qword_22C2AE2B0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115A0, &qword_22C2AE2B8);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v22, &qword_27D9115A0, &qword_22C2AE2B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115A0, &qword_22C2AE2B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115A0, &qword_22C2AE2B8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115A0, &qword_22C2AE2B8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115A0, &qword_22C2AE2B8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFEBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115A8, &qword_22C2AE2C0);
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
    sub_22BE33928(v12, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v22, &qword_27D9115A8, &qword_22C2AE2C0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115A8, &qword_22C2AE2C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115A8, &qword_22C2AE2C0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115A8, &qword_22C2AE2C0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115A8, &qword_22C2AE2C0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E608, &unk_22C2CC920);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_12;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = sub_22BE17D78();
      sub_22BFEC5AC(v29, v30, v31, v32);
      break;
    case 2u:
      v17 = sub_22BE17D78();
      sub_22BFEC7B4(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = sub_22BE17D78();
      sub_22BFEC9BC(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = sub_22BE17D78();
      sub_22BFECBC4(v13, v14, v15, v16);
      break;
    case 5u:
      v33 = sub_22BE17D78();
      sub_22BFECDCC(v33, v34, v35, v36);
      break;
    case 6u:
      v37 = sub_22BE17D78();
      sub_22BFECFD4(v37, v38, v39, v40);
      break;
    case 7u:
      v25 = sub_22BE17D78();
      sub_22BFED1DC(v25, v26, v27, v28);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22BFEC3A8(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_12:
    v41 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    sub_22BE235A8(v41);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFEC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFEC9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFECFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFED1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E608, &unk_22C2CC920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E608, &unk_22C2CC920);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoRequestPrescribedPlan.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E610, &qword_22C296F30);
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
      sub_22BE33928(v0, &qword_27D90E608, &unk_22C2CC920);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
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
    sub_22BE33928(v0, &qword_27D90E610, &qword_22C296F30);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoRequestPrescribedPlanEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E608, &unk_22C2CC920);
  if (&qword_27D90E608)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22BFED674(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110B8, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFED6F4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFED764()
{
  sub_22BE2C988(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return sub_22C270774();
}

uint64_t sub_22BFED7FC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE58);
  sub_22BE199F4(v0, qword_27D90CE58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
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
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "shouldOpenResultIfApplicable";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEDAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEDB78(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEDBE8()
{
  sub_22BE2C988(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_22C270774();
}

uint64_t sub_22BFEDD04(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  sub_22BE3636C(v7);
  sub_22BE18E5C();
  sub_22BE2C988(v8, v9);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFEDE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110A8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEDE98(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEDF08()
{
  sub_22BE2C988(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_22C270774();
}

uint64_t sub_22BFEDF94()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CE88);
  sub_22BE199F4(v0, qword_27D90CE88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
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
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEE2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D9110A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEE33C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEE3AC()
{
  sub_22BE2C988(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_22C270774();
}

uint64_t sub_22BFEE444()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEA0);
  sub_22BE199F4(v0, qword_27D90CEA0);
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
  *v10 = "isExplicit";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "directInvocationClient";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.decodeMessage<A>(decoder:)()
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
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v3 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
    {
      v4 = sub_22BE17D60();
      result = sub_22BE515C8(v4);
      if (!v0)
      {
        v5 = sub_22BE17D60();
        sub_22BFEE7E4(v5);
        v6 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
        return sub_22BE1AC30();
      }
    }
  }

  return result;
}

uint64_t sub_22BFEE7E4(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = *(result + 40);
    return sub_22C270844();
  }

  return result;
}

uint64_t static TranscriptProtoRequestPrescribedPlanConvertTool.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v6)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v9)
  {
    if (!v8)
    {
      return 0;
    }

    sub_22BE3C714();
    v12 = v6 && v10 == v11;
    if (!v12 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v13 = *(v3 + 48);
  v14 = *(v2 + 48);
  if (v13)
  {
    if (v14)
    {
      v15 = *(v3 + 40) == *(v2 + 40) && v13 == v14;
      if (v15 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_26:
  v16 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v17, v18);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFEE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911098, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEEA38(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEEAA8()
{
  sub_22BE2C988(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_22C270774();
}

uint64_t sub_22BFEEB40()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEB8);
  sub_22BE199F4(v0, qword_27D90CEB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
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
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEEDC4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v6)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v9)
  {
    if (v8)
    {
      sub_22BE3C714();
      v12 = v6 && v10 == v11;
      if (v12 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:
  v13 = a3(0);
  sub_22C0B1BAC(v13);
  sub_22BE18E5C();
  sub_22BE2C988(v14, v15);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFEEF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911090, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEEF8C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEEFFC()
{
  sub_22BE2C988(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_22C270774();
}

uint64_t sub_22BFEF088()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CED0);
  sub_22BE199F4(v0, qword_27D90CED0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
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
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFEF2B4()
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
        sub_22C270694();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

void sub_22BFEF374()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v4 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
    {
      v5 = sub_22BE17D60();
      v2(v5);
      if (!v0)
      {
        v6 = v1(0);
        sub_22BE375E4(v6);
        sub_22BE363D4();
      }
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BFEF4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911088, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEF530(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEF5A0()
{
  sub_22BE2C988(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_22C270774();
}

uint64_t sub_22BFEF62C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CEE8);
  sub_22BE199F4(v0, qword_27D90CEE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)()
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
      sub_22BFEF8B8();
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFEF970(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270814();
  }

  return result;
}

void static TranscriptProtoRequestPrescribedPlanOpenTool.== infix(_:_:)()
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
  if (!v17)
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE23D0C();
    if (!v17)
    {
      sub_22BE1868C();
      sub_22C0B0868();
      v19 = sub_22BE38970();
      static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
      sub_22BE23EBC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&qword_27D9090F8 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE23D0C();
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_13:
  v21 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  sub_22BE3FE0C(*(v21 + 20));
  if (v24)
  {
    if (v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_22BE35DEC();
    if ((v25 & 1) == 0)
    {
LABEL_17:
      sub_22BE23A04(v22);
      sub_22BE18E5C();
      sub_22BE2C988(v26, v27);
      v18 = sub_22BE2B85C();
      goto LABEL_11;
    }
  }

LABEL_10:
  v18 = 0;
LABEL_11:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22BFEFC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911080, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFEFCFC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFEFD6C()
{
  sub_22BE2C988(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_22C270774();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)()
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
      sub_22C270644();
    }
  }

  return result;
}

uint64_t static TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v3 + 8))
  {
    if (!*(v2 + 8))
    {
      return 0;
    }
  }

  else
  {
    v5 = *v0;
    v6 = *v1;
    sub_22BEC02E4();
    if (v7)
    {
      return 0;
    }
  }

  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE3636C(v8);
  sub_22BE18E5C();
  sub_22BE2C988(v9, v10);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFF0000(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911078, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF0080(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF00F0()
{
  sub_22BE2C988(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_22C270774();
}

uint64_t sub_22BFF0188()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF18);
  sub_22BE199F4(v0, qword_27D90CF18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "bundleId";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "isConfirmed";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "parameterValues";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "planEventId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)()
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
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      case 6:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BFF0548();
        break;
      case 8:
        sub_22C0B18C0();
        sub_22BE18E2C();
        sub_22C097EC0();
        break;
      case 10:
        sub_22BE18E2C();
        sub_22BFF0640();
        break;
      case 11:
        sub_22BE18E2C();
        sub_22BFF06F4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFF0548()
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);
  sub_22BE2C988(&qword_27D90E668, type metadata accessor for TranscriptProtoActionParameterValue);
  return sub_22C270564();
}

uint64_t sub_22BFF0640()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF06F4()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

void TranscriptProtoAction.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3B090();
  sub_22C0B13D0();
  sub_22C099168();
  if (!v0)
  {
    sub_22C0B1C3C();
    if (v1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    sub_22BE3A458();
    if (v2)
    {
      sub_22C270464();
      v3 = sub_22C0B19C8();
      type metadata accessor for TranscriptProtoActionParameterValue(v3);
      sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_22BE2C988(&qword_27D90E668, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_22BE37D10();
      sub_22C0B14F0();
    }

    sub_22C0B18C0();
    sub_22BE17D60();
    sub_22C0983C4();
    v4 = sub_22BE17D60();
    sub_22BFF0910(v4, v5, v6, v7);
    v8 = sub_22BE17D60();
    sub_22BFF0AE4(v8, v9, v10, v11);
    v12 = *(type metadata accessor for TranscriptProtoAction(0) + 40);
    sub_22BE1AC30();
  }

  sub_22C0B171C();
}

uint64_t sub_22BFF0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoAction(0) + 24);
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

uint64_t sub_22BFF0AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoAction(0) + 36);
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

void static TranscriptProtoAction.== infix(_:_:)()
{
  sub_22BE19460();
  v76 = v3;
  v4 = sub_22BE33690();
  v5 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v4);
  v6 = sub_22BE1B7B0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v9);
  v10 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE181D0(v14, v72);
  v74 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000(v74);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = sub_22BE1BC94(v18, v73);
  v20 = type metadata accessor for TranscriptProtoStatementID(v19);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v24 = sub_22BE1B328();
  v26 = sub_22BE5CE4C(v24, v25);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B01C();
  v30 = (sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00) - 8);
  v31 = *(*v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22BE1AED0();
  v75 = type metadata accessor for TranscriptProtoAction(v33);
  v34 = v75[6];
  v35 = v30[14];
  sub_22C0B164C();
  sub_22BE22868();
  sub_22C0B164C();
  sub_22BE22868();
  sub_22BE1C14C(v2);
  if (v36)
  {
    sub_22BE1C14C(v2 + v35);
    if (v36)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_14;
    }

LABEL_9:
    v37 = &qword_27D909100;
    v38 = &unk_22C27FD00;
    v39 = v2;
LABEL_10:
    sub_22BE33928(v39, v37, v38);
    goto LABEL_11;
  }

  sub_22BE25C94();
  sub_22BE22868();
  sub_22BE1C14C(v2 + v35);
  if (v36)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v41 = sub_22BE23108();
  v43 = static TranscriptProtoStatementID.== infix(_:_:)(v41, v42);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v44 = v75[7];
  sub_22BE28DB4();
  if (v47)
  {
    if (!v45)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v46);
    v50 = v36 && v48 == v49;
    if (!v50 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v45)
  {
    goto LABEL_11;
  }

  if (*v1 != *v76)
  {
    goto LABEL_11;
  }

  v51 = *(v1 + 1);
  v52 = *(v76 + 1);
  sub_22BEA6DC8();
  if ((v53 & 1) == 0)
  {
    goto LABEL_11;
  }

  v54 = v75[8];
  sub_22BE28DB4();
  if (v57)
  {
    if (!v55)
    {
      goto LABEL_11;
    }

    sub_22BE3A508(v56);
    v60 = v36 && v58 == v59;
    if (!v60 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v55)
  {
    goto LABEL_11;
  }

  v61 = v75[9];
  v62 = *(v74 + 48);
  sub_22BE3CB6C();
  sub_22C0B1754();
  sub_22BE22868();
  sub_22C0B1754();
  sub_22BE22868();
  v63 = sub_22BE23E90();
  sub_22BE36144(v63, v64);
  if (v36)
  {
    sub_22BE18190(v0 + v62);
    if (v36)
    {
      sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
LABEL_44:
      v69 = v75[10];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v70, v71);
      v40 = sub_22C272FD4();
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  sub_22BE22868();
  sub_22BE18190(v0 + v62);
  if (v65)
  {
    sub_22BE30F90();
    sub_22C0B08BC();
LABEL_42:
    v37 = &qword_27D90E678;
    v38 = &qword_22C296F38;
    v39 = v0;
    goto LABEL_10;
  }

  sub_22BE41FDC();
  sub_22C0B0868();
  v66 = sub_22BE36680();
  v68 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v66, v67);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
  if (v68)
  {
    goto LABEL_44;
  }

LABEL_11:
  v40 = 0;
LABEL_12:
  sub_22BE1C1DC(v40);
  sub_22BE1AABC();
}

uint64_t sub_22BFF11EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911070, type metadata accessor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF126C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF12DC()
{
  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);

  return sub_22C270774();
}

uint64_t sub_22BFF1368()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF30);
  sub_22BE199F4(v0, qword_27D90CF30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
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
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)()
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
      sub_22BFF1604();
    }

    else if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF1604()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_22C2706F4();
}

uint64_t sub_22BFF170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E698, &unk_22C2AE520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E698, &unk_22C2AE520);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E688, &qword_22C296F40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v44);
  v12 = sub_22BE5CE4C(&qword_27D90E690, &byte_22C296F48);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoToolParameterValue(0);
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
  v26 = sub_22BE5CE4C(&qword_27D90E6A0, &qword_22C296F50);
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
      sub_22BE33928(v1, &qword_27D90E698, &unk_22C2AE520);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D90E6A0;
    v33 = &qword_22C296F50;
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
  static TranscriptProtoToolParameterValue.== infix(_:_:)();
  v36 = v35;
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E698, &unk_22C2AE520);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v37 = type metadata accessor for TranscriptProtoActionParameterValue(0);
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
      sub_22BE33928(v0, &qword_27D90E688, &qword_22C296F40);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v42, v43);
      v41 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v40)
  {
    sub_22C0B18A8();
    sub_22C0B08BC();
LABEL_19:
    v32 = &qword_27D90E690;
    v33 = &byte_22C296F48;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoPromptSelection.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E688, &qword_22C296F40);
  if (&qword_22C296F40)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  sub_22BE1C1DC(v41);
  sub_22BE1AABC();
}

uint64_t sub_22BFF1EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911068, type metadata accessor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF1F64(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF1FD4()
{
  sub_22BE2C988(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);

  return sub_22C270774();
}

uint64_t sub_22BFF2060()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF48);
  sub_22BE199F4(v0, qword_27D90CF48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)()
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

    if (v1 == 5)
    {
      sub_22BE18E2C();
      sub_22BFF22F0();
    }

    else if (v1 == 4)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF22F0()
{
  v0 = *(type metadata accessor for TranscriptProtoActionCancellation(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF23F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
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

uint64_t sub_22BFF25C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionCancellation(0) + 20);
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

uint64_t sub_22BFF2850(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911060, type metadata accessor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF28D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF2940()
{
  sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);

  return sub_22C270774();
}

uint64_t sub_22BFF29CC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF60);
  sub_22BE199F4(v0, qword_27D90CF60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedInDisambiguation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "denied";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)()
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
        goto LABEL_9;
      case 2:
        sub_22BE18E2C();
        sub_22BFFB580();
        break;
      case 1:
LABEL_9:
        sub_22BE18E2C();
        sub_22BFF2C74();
        break;
    }
  }
}

void sub_22BFF2C74()
{
  sub_22BE19130();
  v5 = v4;
  sub_22BE3C63C();
  v6 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v10);
  sub_22BE374E4();
  v11 = sub_22C270424();
  sub_22BE42650(v11);
  sub_22BE1B470();
  sub_22BE2C988(v12, v13);
  sub_22C0B15A8();
  if (v0 || (sub_22BE3CF70(), v14 = sub_22C0B14AC(), sub_22C0B1FD8(v14, v15, v16), v17 = sub_22BE3C968(), sub_22BE33928(v17, v18, &byte_22C2ADF00), v3 == 1))
  {
    sub_22BE33928(v2, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      sub_22BE18240();
      sub_22C270594();
    }

    sub_22BE33928(v2, &qword_27D9111D0, &byte_22C2ADF00);
    *v1 = v5;
    *(v1 + 8) = 1;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoPromptSelection.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 9))
  {
    goto LABEL_8;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      sub_22BE17D78();
      sub_22BFFB77C();
    }

    else
    {
      sub_22BE17D78();
      sub_22BFFB694();
    }
  }

  else
  {
    v2 = sub_22BE17D78();
    sub_22BFFB8A0(v2);
  }

  if (!v1)
  {
LABEL_8:
    v3 = type metadata accessor for TranscriptProtoPromptSelection(0);
    sub_22BE235A8(v3);
  }
}

uint64_t static TranscriptProtoPromptSelection.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = *(v0 + 9);
  if (*(v1 + 9))
  {
    if (*(v0 + 9))
    {
LABEL_3:
      v3 = type metadata accessor for TranscriptProtoPromptSelection(0);
      sub_22BE3636C(v3);
      sub_22BE18E5C();
      sub_22BE2C988(v4, v5);
      return sub_22BE2B85C() & 1;
    }
  }

  else if ((*(v0 + 9) & 1) == 0)
  {
    sub_22C0B1DFC();
    if (v10)
    {
      if (v8)
      {
        if ((v9 & 1) != 0 && v7)
        {
          goto LABEL_3;
        }
      }

      else if ((v9 & 1) != 0 && !v7)
      {
        goto LABEL_3;
      }
    }

    else if ((v9 & 1) == 0 && v8 == v7)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_22BFF2FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911058, type metadata accessor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF3044(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF30B4()
{
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);

  return sub_22C270774();
}

uint64_t sub_22BFF3140()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CF78);
  sub_22BE199F4(v0, qword_27D90CF78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFF3370()
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);
  sub_22BE2C988(&qword_27D90E6C0, type metadata accessor for TranscriptProtoParameterValue);
  return sub_22C270564();
}

uint64_t sub_22BFF3468()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 20);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_22C2706F4();
}

void TranscriptProtoActionConfirmation.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3E638();
  if (!v1 || (sub_22C270464(), v2 = sub_22C0B19C8(), type metadata accessor for TranscriptProtoParameterValue(v2), sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue), sub_22BE2C988(&qword_27D90E6C0, type metadata accessor for TranscriptProtoParameterValue), sub_22BE37D10(), sub_22C0B14F0(), !v0))
  {
    v3 = sub_22BE17D60();
    sub_22BFF3608(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = type metadata accessor for TranscriptProtoActionConfirmation(0);
      sub_22BE25FB0(v7);
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22BFF3608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E6C8, &unk_22C2AE530);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionConfirmation.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90E6C8, &unk_22C2AE530);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90E6D0, &qword_22C296F58);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BEA4B88();
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_22BE3E440(v15);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90E6C8, &unk_22C2AE530);
LABEL_14:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
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
    sub_22C0B1AA4();
LABEL_10:
    sub_22BE33928(v0, &qword_27D90E6D0, &qword_22C296F58);
    goto LABEL_11;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoActionConfirmationSystemStyle.== infix(_:_:)();
  v19 = v18;
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E6C8, &unk_22C2AE530);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22BFF3A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911050, type metadata accessor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF3B18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF3B88()
{
  sub_22BE2C988(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);

  return sub_22C270774();
}

uint64_t sub_22BFF3C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911568, &qword_22C2AE280);
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
    sub_22BE33928(v12, &qword_27D90E6E0, &qword_22C2B5BF0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v22, &qword_27D911568, &qword_22C2AE280);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v22, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v24 = v31;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D911568, &qword_22C2AE280);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911568, &qword_22C2AE280);
    v25 = v20;
    return sub_22BE33928(v25, &qword_27D911568, &qword_22C2AE280);
  }

  sub_22C0B0868();
  if (v23 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v22, &qword_27D911568, &qword_22C2AE280);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E6E0, &qword_22C2B5BF0);
  sub_22C0B0868();
  return sub_22BE19DC4(v27, 0, 1, v28);
}

uint64_t sub_22BFF4164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6E0, &qword_22C2B5BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E6E0, &qword_22C2B5BF0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionConfirmationSystemStyle.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E6E8, &qword_22C296F60);
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
      sub_22BE33928(v0, &qword_27D90E6E0, &qword_22C2B5BF0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
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
    sub_22BE33928(v0, &qword_27D90E6E8, &qword_22C296F60);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E6E0, &qword_22C2B5BF0);
  if (&qword_27D90E6E0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22BFF45C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911048, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF4644(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF46B4()
{
  sub_22BE2C988(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_22C270774();
}

uint64_t sub_22BFF474C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFA8);
  sub_22BE199F4(v0, qword_27D90CFA8);
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
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isExplicitRequest";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)()
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
        sub_22BE18E2C();
        sub_22BFF49F4();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFF49F4()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_22C2706F4();
}

uint64_t sub_22BFF4AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E6F8, &qword_22C2B5BE0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90E6F8, &qword_22C2B5BE0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90E700, &qword_22C296F68);
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

  v17 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_22C0B1694(v17);
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
      sub_22C0B0868();
      sub_22BE38970();
      v19 = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.== infix(_:_:)();
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D90E6F8, &qword_22C2B5BE0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90E700, &qword_22C296F68);
    goto LABEL_17;
  }

  sub_22BE19538();
  if (!v16)
  {
    goto LABEL_14;
  }

  sub_22BE33928(v0, &qword_27D90E6F8, &qword_22C2B5BE0);
LABEL_16:
  sub_22BE36248();
  if (v16)
  {
    sub_22C0B1A60();
    sub_22BE18E5C();
    sub_22BE2C988(v21, v22);
    v20 = sub_22BE2B85C();
    goto LABEL_18;
  }

LABEL_17:
  v20 = 0;
LABEL_18:
  sub_22BE1C1DC(v20);
  sub_22BE1AABC();
}

uint64_t sub_22BFF4F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF500C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF507C()
{
  sub_22BE2C988(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_22C270774();
}

uint64_t sub_22BFF5114()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFC0);
  sub_22BE199F4(v0, qword_27D90CFC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "knowledgeFallback";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "composeViaSiri";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textAssistant";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)()
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
        goto LABEL_9;
      case 2:
        v3 = sub_22BE18E2C();
        v10 = 1;
        goto LABEL_9;
      case 3:
        v3 = sub_22BE18E2C();
        v10 = 2;
        goto LABEL_9;
      case 4:
        v3 = sub_22BE18E2C();
        v10 = 3;
LABEL_9:
        sub_22BFF5414(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
        break;
      default:
        continue;
    }
  }
}

void sub_22BFF5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
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
    if (v28 == 4)
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

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 1:
      sub_22BE17D78();
      sub_22C00EAE4();
      goto LABEL_6;
    case 2:
      sub_22BE17D78();
      sub_22C00EBC4();
      goto LABEL_6;
    case 3:
      sub_22BE17D78();
      sub_22C00FC78();
      goto LABEL_6;
    case 4:
      goto LABEL_7;
    default:
      sub_22BE17D78();
      sub_22C00EA0C();
LABEL_6:
      if (!v1)
      {
LABEL_7:
        v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
        sub_22BE235A8(v2);
      }

      return;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.== infix(_:_:)()
{
  sub_22BE18378();
  sub_22C0B1DF0(v0, v1);
  if (v3 == 4)
  {
    if (v2 != 4)
    {
      return 0;
    }
  }

  else if (v3 != v2)
  {
    return 0;
  }

  v5 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE3636C(v5);
  sub_22BE18E5C();
  sub_22BE2C988(v6, v7);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BFF5744(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911038, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF57C4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF5834()
{
  sub_22BE2C988(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_22C270774();
}

uint64_t sub_22BFF58C0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFD8);
  sub_22BE199F4(v0, qword_27D90CFD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
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
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoParameterValue.decodeMessage<A>(decoder:)()
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
      sub_22BFF5B4C();
    }

    else if (v1 == 1)
    {
      sub_22C0B13FC();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF5B4C()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_22C2706F4();
}

void TranscriptProtoParameterValue.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22C016E74();
  if (!v0)
  {
    v1 = sub_22BE17D78();
    sub_22BFF5C68(v1, v2, v3, v4);
    v5 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 24);
    sub_22BE19514();
  }
}

uint64_t sub_22BFF5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E688, &qword_22C296F40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoParameterValue.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE48298();
  v4 = type metadata accessor for TranscriptProtoPromptSelection(v3);
  v5 = sub_22BE28784(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BEE94C8(v8);
  v9 = sub_22BE5CE4C(&qword_27D90E688, &qword_22C296F40);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE3C048(v13, v58);
  v14 = sub_22BE5CE4C(&qword_27D90E690, &byte_22C296F48);
  sub_22BE1B7B0(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE35C94(v18, v59);
  v19 = sub_22C272594();
  v20 = sub_22BE35868(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v25 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B72C();
  v29 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE2C64C();
  v34 = *(v33 + 56);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v35)
  {
    sub_22BE181B0(v2 + v34);
    if (v35)
    {
      sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_27D909130;
    v40 = &unk_22C27FD30;
    v41 = v2;
LABEL_20:
    sub_22BE33928(v41, v39, v40);
    goto LABEL_21;
  }

  sub_22BE1B074();
  sub_22BE22868();
  sub_22BE181B0(v2 + v34);
  if (v35)
  {
    v36 = *(v22 + 8);
    v37 = sub_22BE19454();
    v38(v37);
    goto LABEL_9;
  }

  sub_22BE47DF4();
  v42(v1, v2 + v34, v0);
  sub_22BE192C8();
  sub_22BE2C988(v43, v44);
  v45 = sub_22C272FD4();
  v46 = *(v22 + 8);
  v47 = sub_22BE25EFC();
  v46(v47);
  v48 = sub_22BE19454();
  v46(v48);
  sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v49 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  v50 = *(v60 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  v51 = sub_22BFB1A7C();
  sub_22BE3F458(v51, v52);
  if (v35)
  {
    sub_22BE181B0(v61 + v50);
    if (v35)
    {
      sub_22BE33928(v61, &qword_27D90E688, &qword_22C296F40);
LABEL_24:
      sub_22BE27098();
      sub_22BE18E5C();
      sub_22BE2C988(v56, v57);
      sub_22BE3A008();
      sub_22BE39F74();
      v54 = sub_22C272FD4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE181B0(v61 + v50);
  if (v53)
  {
    sub_22C0B18A8();
    sub_22C0B08BC();
LABEL_19:
    v39 = &qword_27D90E690;
    v40 = &byte_22C296F48;
    v41 = v61;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE392D4();
  v55 = static TranscriptProtoPromptSelection.== infix(_:_:)();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE33928(v61, &qword_27D90E688, &qword_22C296F40);
  if (v55)
  {
    goto LABEL_24;
  }

LABEL_21:
  v54 = 0;
LABEL_22:
  sub_22BE1C1DC(v54);
  sub_22BE1AABC();
}

uint64_t sub_22BFF6364(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911030, type metadata accessor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF63E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF6454()
{
  sub_22BE2C988(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);

  return sub_22C270774();
}

uint64_t sub_22BFF64E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CFF0);
  sub_22BE199F4(v0, qword_27D90CFF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoToolDisambiguation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22BE4E190(v1);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v2)
    {
      sub_22C272674();
      sub_22BE39220();
      sub_22BE2C988(v3, v4);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
    sub_22BE25FB0(v5);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFF689C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911028, type metadata accessor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF691C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F688, type metadata accessor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF698C()
{
  sub_22BE2C988(&qword_27D90F688, type metadata accessor for TranscriptProtoToolDisambiguation);

  return sub_22C270774();
}

uint64_t sub_22BFF6A18()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281072E98);
  sub_22BE199F4(v0, qword_281072E98);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "statementOutcome";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)()
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
      case 4:
        sub_22BE18E2C();
        sub_22BFF6D50();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFF6C9C();
        break;
      case 2:
        sub_22BE239F4();
        sub_22C270664();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFF6C9C()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF6D50()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE2C988(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_22C2706F4();
}

void static TranscriptProtoExternalAgentOutcome.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = v5;
  v8 = v7;
  v52 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = sub_22BE18000(v52);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE18DFC();
  v12 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE35C94(v16, v50);
  v17 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE28F58(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E64();
  v21 = type metadata accessor for TranscriptProtoStatementID(0);
  v22 = sub_22BE18000(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v25 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE28738();
  v29 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE2C64C();
  if ((sub_22BE9693C(*v8, *v6) & 1) == 0)
  {
    goto LABEL_22;
  }

  v33 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v34 = *(v33 + 20);
  v35 = *(v29 + 48);
  v51 = v33;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C48();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CAA4(v4);
  if (v36)
  {
    sub_22BE3CAA4(v4 + v35);
    if (v36)
    {
      sub_22BE33928(v4, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_12;
    }

LABEL_10:
    v37 = &qword_27D909100;
    v38 = &unk_22C27FD00;
    v39 = v4;
LABEL_21:
    sub_22BE33928(v39, v37, v38);
    goto LABEL_22;
  }

  sub_22C0B1E68();
  sub_22BE22868();
  sub_22BE3CAA4(v4 + v35);
  if (v36)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_10;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v40 = static TranscriptProtoStatementID.== infix(_:_:)(v0, v3);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE1B5EC();
  sub_22C0B08BC();
  sub_22BE33928(v4, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v41 = *(v51 + 24);
  v42 = *(v2 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C48();
  sub_22BE27B84();
  sub_22BE22868();
  v43 = sub_22BE2BA98();
  sub_22BE36144(v43, v44);
  if (v36)
  {
    sub_22BE18A84();
    if (v36)
    {
      sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
LABEL_25:
      v47 = *(v51 + 28);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v48, v49);
      v46 = sub_22BE406DC();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v45)
  {
    sub_22BE38A40();
    sub_22C0B08BC();
LABEL_20:
    v37 = &qword_27D90CA70;
    v38 = &qword_22C2968E8;
    v39 = v1;
    goto LABEL_21;
  }

  sub_22C0B0868();
  sub_22BE200E0();
  static TranscriptProtoStatementOutcome.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
  if (&unk_22C296C50)
  {
    goto LABEL_25;
  }

LABEL_22:
  v46 = 0;
LABEL_23:
  sub_22BE1C1DC(v46);
  sub_22BE1AABC();
}

uint64_t sub_22BFF72B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911020, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF7330(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF73A0()
{
  sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return sub_22C270774();
}

uint64_t sub_22BFF742C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D008);
  sub_22BE199F4(v0, qword_27D90D008);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)()
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
      sub_22BFF76B8();
    }

    else if (v1 == 1)
    {
      sub_22C0B1860();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22BFF76B8()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_22C2706F4();
}

uint64_t sub_22BFF77C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90CA58, &unk_22C2AE550);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoStatementResultPayload.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v44);
  v12 = sub_22BE5CE4C(&qword_27D90CA60, &qword_22C2968E0);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoStatementOutcome(0);
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
  v26 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
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
      sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D90CA70;
    v33 = &qword_22C2968E8;
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
    sub_22BE38A40();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B1878();
  sub_22C0B0868();
  sub_22BE1A6BC();
  static TranscriptProtoStatementOutcome.== infix(_:_:)();
  v36 = v35;
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90CA68, &unk_22C296C50);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v37 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
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
      sub_22BE33928(v0, &qword_27D90CA58, &unk_22C2AE550);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v42, v43);
      v41 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v40)
  {
    sub_22C0B1AA4();
LABEL_19:
    v32 = &qword_27D90CA60;
    v33 = &qword_22C2968E0;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoResponseManifest.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90CA58, &unk_22C2AE550);
  if (&unk_22C2AE550)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  sub_22BE1C1DC(v41);
  sub_22BE1AABC();
}

uint64_t sub_22BFF7DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911018, type metadata accessor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF7E40(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF7EB0()
{
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);

  return sub_22C270774();
}

uint64_t sub_22BFF7F3C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D020);
  sub_22BE199F4(v0, qword_27D90D020);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "payload";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resultStatementId";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "originProgramStatementId";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "originTaskStatementId";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)()
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
        sub_22C270694();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFF82E4();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFF8398();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFF844C();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFF8500();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BFF85B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFF82E4()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);
  return sub_22C2706F4();
}

uint64_t sub_22BFF8398()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF844C()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF8500()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFF85B4()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE4E220(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BFF8710(v3, v4, v5, v6);
    v7 = sub_22BE17D78();
    sub_22BFF88E4(v7, v8, v9, v10);
    v11 = sub_22BE17D78();
    sub_22BFF8AB8(v11, v12, v13, v14);
    v15 = sub_22BE17D78();
    sub_22BFF8C8C(v15, v16, v17, v18);
    v19 = sub_22BE17D78();
    sub_22BFF8E60(v19, v20, v21, v22);
    v23 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 40);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BFF8710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E730, &qword_22C2B5D20);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFF88E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 24);
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

uint64_t sub_22BFF8AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 28);
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

uint64_t sub_22BFF8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 32);
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

uint64_t sub_22BFF8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 36);
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

void static TranscriptProtoStatementResult.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  v100 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  v6 = sub_22BE18000(v100);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE33FF0(v16, v95);
  v99 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000(v99);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v101 = v20;
  v21 = sub_22BE183BC();
  v107 = type metadata accessor for TranscriptProtoStatementID(v21);
  v22 = sub_22BE18000(v107);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  sub_22BE3668C(v25);
  v26 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v102 = v30;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  v104 = &v95 - v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  v108 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v34 = sub_22BE18000(v108);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v103 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v39);
  sub_22BE324EC();
  v40 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v41 = sub_22BE28F58(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  sub_22BE336DC();
  v44 = sub_22BE5CE4C(&qword_27D90E730, &qword_22C2B5D20);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE28738();
  v48 = sub_22BE5CE4C(&qword_27D90E738, &qword_22C296F70);
  sub_22BE18000(v48);
  v50 = *(v49 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v51);
  sub_22BE19668();
  v52 = v1[1];
  v53 = v4[1];
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_47;
    }

    v54 = *v1 == *v4 && v52 == v53;
    if (!v54 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v53)
  {
    goto LABEL_47;
  }

  v97 = v11;
  v55 = type metadata accessor for TranscriptProtoStatementResult(0);
  v106 = v4;
  v96 = v55;
  v56 = *(v55 + 20);
  v57 = *(v48 + 48);
  v98 = v1;
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE22868();
  sub_22BE3E950(v0);
  if (!v54)
  {
    sub_22BE18040();
    sub_22BE22868();
    sub_22BE3E950(v0 + v57);
    if (!v58)
    {
      sub_22C0B0868();
      sub_22BE1B5EC();
      static TranscriptProtoStatementResultPayload.== infix(_:_:)();
      v63 = v62;
      sub_22C0B08BC();
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D90E730, &qword_22C2B5D20);
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    sub_22C0B08BC();
LABEL_18:
    v59 = &qword_27D90E738;
    v60 = &qword_22C296F70;
    goto LABEL_19;
  }

  sub_22BE3E950(v0 + v57);
  if (!v54)
  {
    goto LABEL_18;
  }

  sub_22BE33928(v0, &qword_27D90E730, &qword_22C2B5D20);
LABEL_21:
  v64 = v96;
  v65 = v96[6];
  v66 = *(v108 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE27B84();
  sub_22BE22868();
  v67 = sub_22BE3C688();
  if (sub_22BE1AEA8(v67, v68, v107) == 1)
  {
    sub_22BE3E950(v2 + v66);
    if (!v54)
    {
      goto LABEL_28;
    }

    sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  else
  {
    sub_22BE22868();
    sub_22BE3E950(v2 + v66);
    if (v54)
    {
      sub_22BE17DB0();
      sub_22C0B08BC();
LABEL_28:
      v59 = &qword_27D909100;
      v60 = &unk_22C27FD00;
      v61 = v2;
      goto LABEL_46;
    }

    sub_22BE18AA8();
    sub_22C0B0868();
    v69 = sub_22BE200E0();
    static TranscriptProtoStatementID.== infix(_:_:)(v69, v70);
    sub_22BE39304();
    sub_22BE39EAC();
    sub_22C0B08BC();
    sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
    if ((&unk_22C2AE4A0 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v71 = v64[7];
  v72 = *(v108 + 48);
  v73 = v105;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22C0B1C9C();
  sub_22BE3CBC0();
  sub_22BE22868();
  sub_22BE3E950(v73);
  if (v54)
  {
    sub_22BE3E950(v73 + v72);
    if (!v54)
    {
      goto LABEL_45;
    }

    sub_22BE33928(v73, &qword_27D9090F8, &unk_22C2AE4A0);
    goto LABEL_37;
  }

  sub_22BE22868();
  sub_22BE3E950(v73 + v72);
  if (v74)
  {
    goto LABEL_44;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v75 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v75, v76);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v73, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
LABEL_37:
    v77 = v64[8];
    v78 = *(v108 + 48);
    v73 = v103;
    sub_22BE27B84();
    sub_22BE22868();
    sub_22C0B1C9C();
    sub_22BE3CBC0();
    sub_22BE22868();
    sub_22BE3E950(v73);
    if (v54)
    {
      sub_22BE3E950(v73 + v78);
      if (v54)
      {
        sub_22BE33928(v73, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_50:
        v83 = v64[9];
        v84 = *(v99 + 48);
        v85 = v101;
        sub_22BE27B84();
        sub_22BE22868();
        sub_22C0B1C9C();
        sub_22BE3CBC0();
        v0 = v85;
        sub_22BE22868();
        v86 = sub_22BFB1A7C();
        sub_22BE36144(v86, v87);
        if (v54)
        {
          sub_22BE18190(v85 + v84);
          if (v54)
          {
            sub_22BE33928(v85, &qword_27D90E670, &unk_22C2CC890);
            goto LABEL_60;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE18190(v85 + v84);
          if (!v88)
          {
            sub_22BE41FDC();
            sub_22C0B0868();
            v89 = sub_22BE18240();
            v91 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v89, v90);
            sub_22BE291B0();
            sub_22C0B08BC();
            sub_22BE39EAC();
            sub_22C0B08BC();
            sub_22BE33928(v85, &qword_27D90E670, &unk_22C2CC890);
            if ((v91 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_60:
            v92 = v64[10];
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v93, v94);
            sub_22BE3A008();
            v80 = sub_22C272FD4();
            goto LABEL_48;
          }

          sub_22BE30F90();
          sub_22C0B08BC();
        }

        v59 = &qword_27D90E678;
        v60 = &qword_22C296F38;
LABEL_19:
        v61 = v0;
LABEL_46:
        sub_22BE33928(v61, v59, v60);
        goto LABEL_47;
      }

LABEL_45:
      v59 = &qword_27D909100;
      v60 = &unk_22C27FD00;
      v61 = v73;
      goto LABEL_46;
    }

    sub_22BE22868();
    sub_22BE3E950(v73 + v78);
    if (!v79)
    {
      sub_22BE18AA8();
      sub_22C0B0868();
      v81 = sub_22BE1C2A0();
      static TranscriptProtoStatementID.== infix(_:_:)(v81, v82);
      sub_22BE39304();
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE33928(v73, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((&unk_22C2AE4A0 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

LABEL_44:
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_45;
  }

LABEL_47:
  v80 = 0;
LABEL_48:
  sub_22BE1C1DC(v80);
  sub_22BE1AABC();
}

uint64_t sub_22BFF999C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911010, type metadata accessor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF9A1C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF9A8C()
{
  sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);

  return sub_22C270774();
}

void TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementResult(0), sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFF9D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911008, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFF9DA8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFF9E18()
{
  sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return sub_22C270774();
}

uint64_t sub_22BFF9EA4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D050);
  sub_22BE199F4(v0, qword_27D90D050);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptStatus";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)()
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
        sub_22BFFA1AC();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFFA260();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFFA2C8();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFFA37C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFFA1AC()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 20);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22BFFA2C8()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 24);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  return sub_22C2706F4();
}

uint64_t sub_22BFFA37C()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoCandidate.traverse<A>(visitor:)()
{
  sub_22C0B1EE4();
  v2 = sub_22BE3B0CC();
  sub_22BFFA4DC(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      v15 = *v1;
      sub_22C09DAA0();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    v6 = sub_22BE17D60();
    sub_22BFFA6E8(v6, v7, v8, v9);
    v10 = sub_22BE17D60();
    sub_22BFFA8BC(v10, v11, v12, v13);
    v14 = *(type metadata accessor for TranscriptProtoCandidate(0) + 32);
    sub_22BE1AC30();
  }

  sub_22C0B1ED0();
}

uint64_t sub_22BFFA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = *(type metadata accessor for TranscriptProtoCandidate(0) + 20);
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

uint64_t sub_22BFFA6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoCandidate(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909208, &unk_22C2AE560);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFFA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoCandidate(0) + 28);
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

void static TranscriptProtoCandidate.== infix(_:_:)()
{
  sub_22BE19460();
  v92 = v5;
  v6 = sub_22C0B1BA0();
  v87 = type metadata accessor for TranscriptProtoStatementID(v6);
  v7 = sub_22BE18000(v87);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BE3FF64(v10);
  v11 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE33FF0(v15, v82);
  v86 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v86);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = sub_22BE4098C(v19, v83);
  v21 = type metadata accessor for TranscriptProtoCandidatePromptStatus(v20);
  v22 = sub_22BE1B7B0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  sub_22C0B1ABC(v25);
  v26 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE181D0(v30, v84);
  v89 = sub_22BE5CE4C(&qword_27D909210, &unk_22C27FE00);
  sub_22BE18000(v89);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1BC94(v34, v85);
  v35 = sub_22C272594();
  v36 = sub_22BE35868(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE38390();
  v41 = sub_22BE3E79C();
  v43 = sub_22BE5CE4C(v41, v42);
  sub_22BE19448(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A8B4();
  v47 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22C0B1A7C(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE25CD0();
  v91 = type metadata accessor for TranscriptProtoCandidate(0);
  v51 = v91[5];
  v52 = *(v4 + 56);
  sub_22C0B1CCC();
  sub_22C0B1C54();
  sub_22C0B1CCC();
  sub_22BE181B0(v3);
  if (v53)
  {
    sub_22BE181B0(v3 + v52);
    if (v53)
    {
      sub_22BE33928(v3, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    v57 = &qword_27D909130;
    v58 = &unk_22C27FD30;
    v59 = v3;
LABEL_32:
    sub_22BE33928(v59, v57, v58);
    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE181B0(v3 + v52);
  if (v53)
  {
    v54 = *(v38 + 8);
    v55 = sub_22BE2565C();
    v56(v55);
    goto LABEL_9;
  }

  sub_22BE47DF4();
  v60(v1, v3 + v52, v0);
  sub_22BE192C8();
  sub_22BE2C988(v61, v62);
  sub_22BE2C254();
  v63 = sub_22C272FD4();
  v64 = *(v38 + 8);
  v65 = sub_22BE1804C();
  v64(v65);
  v66 = sub_22BE2565C();
  v64(v66);
  sub_22BE33928(v3, &qword_27D909128, &qword_22C294AA0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (*v2 != *v92)
  {
    goto LABEL_33;
  }

  v67 = v90;
  v68 = v91[6];
  v69 = *(v89 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v70 = sub_22BE2BA98();
  sub_22BE36144(v70, v71);
  if (v53)
  {
    sub_22BE18A84();
    if (v53)
    {
      sub_22BE33928(v90, &qword_27D909208, &unk_22C2AE560);
      goto LABEL_22;
    }

LABEL_20:
    v57 = &qword_27D909210;
    v58 = &unk_22C27FE00;
LABEL_31:
    v59 = v67;
    goto LABEL_32;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v72)
  {
    sub_22BE3FEA4();
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE232C8();
  static TranscriptProtoCandidatePromptStatus.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v90, &qword_27D909208, &unk_22C2AE560);
  if ((&unk_22C2AE560 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v73 = v91[7];
  sub_22C0B1B6C();
  sub_22BE27B84();
  sub_22BE22868();
  v67 = v88;
  sub_22BE27B84();
  sub_22BE22868();
  v74 = sub_22BE26188();
  sub_22BE36144(v74, v75);
  if (v53)
  {
    sub_22BE18A84();
    if (v53)
    {
      sub_22BE33928(v88, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_36:
      sub_22C0B1D70();
      sub_22BE18E5C();
      sub_22BE2C988(v80, v81);
      sub_22C0B1968();
      sub_22BE39F74();
      v77 = sub_22C272FD4();
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE18A84();
  if (v76)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_30:
    v57 = &qword_27D909100;
    v58 = &unk_22C27FD00;
    goto LABEL_31;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v78 = sub_22BE232C8();
  static TranscriptProtoStatementID.== infix(_:_:)(v78, v79);
  sub_22BE39304();
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE33928(v88, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v77 = 0;
LABEL_34:
  sub_22BE1C1DC(v77);
  sub_22BE1AABC();
}

uint64_t sub_22BFFB15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911000, type metadata accessor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFB1DC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFB24C()
{
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);

  return sub_22C270774();
}

uint64_t sub_22BFFB2D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D068);
  sub_22BE199F4(v0, qword_27D90D068);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmed";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "picked";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)()
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
      sub_22BFFB580();
    }

    else if (v1 == 2 || v1 == 1)
    {
      sub_22BE18E2C();
      sub_22BFF2C74();
    }
  }
}

void TranscriptProtoCandidatePromptStatus.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 9))
  {
    goto LABEL_8;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      sub_22BE17D78();
      sub_22BFFB77C();
    }

    else
    {
      sub_22BE17D78();
      sub_22BFFB694();
    }
  }

  else
  {
    v2 = sub_22BE17D78();
    sub_22BFFB8A0(v2);
  }

  if (!v1)
  {
LABEL_8:
    v3 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
    sub_22BE235A8(v3);
  }
}

void sub_22BFFB694()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  if ((*(v0 + 9) & 1) != 0 || (*(v0 + 8) & 1) == 0 || *v0)
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

void sub_22BFFB77C()
{
  sub_22BE19130();
  sub_22BE37EB4();
  v1 = sub_22C270424();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE294E0();
  if ((*(v0 + 9) & 1) == 0 && (*(v0 + 8) & 1) != 0 && *v0)
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v7, v8);
    sub_22BE2565C();
    sub_22C2707D4();
    v9 = *(v4 + 8);
    v10 = sub_22BE33FCC();
    v11(v10);
    sub_22BE18478();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BFFB8A0(uint64_t result)
{
  if (*(result + 9) & 1) != 0 || (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    v1 = *result;
    return sub_22C270814();
  }

  return result;
}

uint64_t static TranscriptProtoCandidatePromptStatus.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = *(v0 + 9);
  if (*(v1 + 9))
  {
    if (*(v0 + 9))
    {
LABEL_3:
      v3 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
      sub_22BE3636C(v3);
      sub_22BE18E5C();
      sub_22BE2C988(v4, v5);
      return sub_22BE2B85C() & 1;
    }
  }

  else if ((*(v0 + 9) & 1) == 0)
  {
    sub_22C0B1DFC();
    if (v10)
    {
      if (v8)
      {
        if ((v9 & 1) != 0 && v7)
        {
          goto LABEL_3;
        }
      }

      else if ((v9 & 1) != 0 && !v7)
      {
        goto LABEL_3;
      }
    }

    else if ((v9 & 1) == 0 && v8 == v7)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_22BFFBA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FF8, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFBAB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFBB28()
{
  sub_22BE2C988(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return sub_22C270774();
}

uint64_t sub_22BFFBBB4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D080);
  sub_22BE199F4(v0, qword_27D90D080);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameters";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "clientQueryId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "planEventId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "statementId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "shimParameters";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFFBF50();
        break;
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BFFC048();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BFFC0FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFFBF50()
{
  sub_22C270464();
  sub_22C272594();
  v0 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22BE2C988(&qword_27D90E770, v0);
  return sub_22C270564();
}

uint64_t sub_22BFFC048()
{
  v0 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFFC0FC()
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters);
  sub_22BE2C988(&qword_27D90E780, type metadata accessor for TranscriptProtoShimParameters);
  return sub_22C270564();
}

void TranscriptProtoClientAction.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  v2 = v1;
  sub_22C0B149C();
  sub_22BE1B448();
  if (!v3 || (sub_22C0B1658(), sub_22C270844(), (v2 = v1) == 0))
  {
    sub_22C0B1AE4();
    if (!v4)
    {
      goto LABEL_12;
    }

    sub_22C270464();
    sub_22C0B19C8();
    sub_22C272594();
    v5 = MEMORY[0x277D727E0];
    sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
    sub_22BE46B68();
    sub_22BE2C988(v6, v5);
    v1 = v2;
    sub_22C270794();
    if (!v2)
    {
LABEL_12:
      sub_22BE2BBFC();
      sub_22C0B1E3C();
      sub_22BFFC434(v7);
      if (!v1)
      {
        sub_22BE2BBFC();
        sub_22C0B1E3C();
        sub_22BFFC470(v8);
        sub_22BE2BBFC();
        sub_22C0B1E3C();
        sub_22BFFC4AC(v9, v10, v11, v12);
        if (*(*(v0 + 24) + 16))
        {
          sub_22C270464();
          v13 = sub_22C0B19C8();
          type metadata accessor for TranscriptProtoShimParameters(v13);
          sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters);
          sub_22BE2C988(&qword_27D90E780, type metadata accessor for TranscriptProtoShimParameters);
          sub_22BE37D10();
          sub_22C0B1658();
          sub_22C270794();
        }

        v14 = v0 + *(type metadata accessor for TranscriptProtoClientAction(0) + 40);
        sub_22BE33560();
        sub_22C270494();
      }
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22BFFC434(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFFC470(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 48);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFFC4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
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

void static TranscriptProtoClientAction.== infix(_:_:)()
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
  sub_22BE18000(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20394();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22C0B1C6C();
  sub_22BEA51FC();
  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22BE46B5C();
  if (v21)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    sub_22BFB1A40();
    v24 = v18 && v22 == v23;
    if (!v24 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v20)
  {
    goto LABEL_37;
  }

  v25 = v1[7];
  v26 = v0[7];
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_25;
    }

LABEL_37:
    v39 = 0;
    goto LABEL_38;
  }

  if (!v26)
  {
    goto LABEL_37;
  }

  v27 = v1[6] == v0[6] && v25 == v26;
  if (!v27 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_25:
  v40 = type metadata accessor for TranscriptProtoClientAction(0);
  v28 = *(v40 + 36);
  v29 = *(v12 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE26A1C();
  if (v18)
  {
    sub_22BE19538();
    if (v18)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v30)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_33:
    sub_22BE33928(v2, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_37;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v31 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v31, v32);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&qword_27D9090F8 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v33 = v1[3];
  v34 = v0[3];
  sub_22BEA54D4();
  if ((v35 & 1) == 0)
  {
    goto LABEL_37;
  }

  v36 = *(v40 + 40);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v37, v38);
  v39 = sub_22BE2B85C();
LABEL_38:
  sub_22BE1C1DC(v39);
  sub_22BE1AABC();
}

uint64_t sub_22BFFC9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FF0, type metadata accessor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFCA60(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFCAD0()
{
  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);

  return sub_22C270774();
}

void TranscriptProtoShimParameters.decodeMessage<A>(decoder:)()
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

void TranscriptProtoShimParameters.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoShimParameter(0), sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoShimParameters(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFFCDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FE8, type metadata accessor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFCE24(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFCE94()
{
  sub_22BE2C988(&qword_27D90E778, type metadata accessor for TranscriptProtoShimParameters);

  return sub_22C270774();
}

uint64_t sub_22BFFCF20()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D0B0);
  sub_22BE199F4(v0, qword_27D90D0B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringQuery";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personQuery";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "photosCandidates";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22BFFD1EC()
{
  sub_22BE2BB34();
  sub_22BE26210();
  while (1)
  {
    sub_22BE180C8();
    v5 = sub_22C270584();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        sub_22BE35838();
        sub_22BE35F2C();
        v4();
        break;
      case 2:
        sub_22BE35838();
        sub_22BE35F2C();
        v3();
        break;
      case 3:
        sub_22BE35838();
        sub_22BE35F2C();
        v2();
        break;
      case 4:
        sub_22BE35838();
        sub_22BE35F2C();
        v0();
        break;
      default:
        continue;
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BFFD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v42 = a3;
  v41 = a2;
  v5 = sub_22C272594();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v34 - v25;
  sub_22BE19DC4(&v34 - v25, 1, 1, v5);
  v34 = a1;
  sub_22BE22868();
  v35 = sub_22BE1AEA8(v14, 1, v15);
  v36 = v15;
  if (v35 == 1)
  {
    sub_22BE33928(v14, &qword_27D909218, &unk_22C2CC930);
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
      sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
      v27 = *(v38 + 32);
      v27(v10, v19, v5);
      v27(v26, v10, v5);
      sub_22BE19DC4(v26, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  v28 = v39;
  sub_22C2706F4();
  if (v28)
  {
    v29 = v26;
    return sub_22BE33928(v29, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v24, 1, v5) == 1)
  {
    sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
    v29 = v24;
    return sub_22BE33928(v29, &qword_27D909128, &qword_22C294AA0);
  }

  v31 = *(v38 + 32);
  v31(v37, v24, v5);
  if (v35 != 1)
  {
    sub_22C270594();
  }

  v32 = v36;
  sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
  v33 = v34;
  sub_22BE33928(v34, &qword_27D909218, &unk_22C2CC930);
  v31(v33, v37, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v33, 0, 1, v32);
}

uint64_t sub_22BFFD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
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
  v16 = sub_22BE5CE4C(&qword_27D911558, &qword_22C2AE270);
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911558, &qword_22C2AE270);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911558, &qword_22C2AE270);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911558, &qword_22C2AE270);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911558, &qword_22C2AE270);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911558, &qword_22C2AE270);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFFDCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
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
  v16 = sub_22BE5CE4C(&qword_27D911450, &qword_22C2AE178);
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911450, &qword_22C2AE178);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911450, &qword_22C2AE178);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911450, &qword_22C2AE178);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911450, &qword_22C2AE178);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911450, &qword_22C2AE178);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}