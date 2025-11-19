uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v10 = *(v9 + 24);
  v11 = a4 + *(v9 + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a4, &qword_27C8639D0, &unk_20E33C230);
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
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

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoAction.parameterValues.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_20E1C1844(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_20E1C18A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoAction(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = (a9 + v14[7]);
  v18 = (a9 + v14[8]);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = a9 + v14[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a9 + v15, &qword_27C8639D0, &unk_20E33C230);
  *v17 = a2;
  v17[1] = a3;
  *a9 = a4;
  *(a9 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_20E05EC5C(a8, a9 + v19, &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8686A0, &unk_20E33C250);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863B58, &qword_20E323E68);
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
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E1E14FC(a2, &v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v8, &v8[v9]);
  sub_20E1E1564(&v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t sub_20E1C2260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E1E14FC(a2, &v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)(v8, &v8[v9]);
  sub_20E1E1564(&v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_20E05EC5C(a3, a5 + v11, &qword_27C868650, &qword_20E33B660);
  *(a5 + 16) = a4;
  return result;
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoParameterValue(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863B58, &qword_20E323E68);
}

uint64_t TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v9 = v8[5];
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = v8[6];
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  v13 = &a4[v8[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  sub_20E05EC5C(a2, &a4[v9], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, &a4[v11], &qword_27C863BA8, &unk_20E345F00);
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863BA8, &unk_20E345F00);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863B48, &unk_20E33C280);
}

uint64_t TranscriptProtoStatementResult.actionEventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TranscriptProtoStatementResult.actionEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementResult(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v12 - 8) + 56))(&a8[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v10[7];
  v15(&a8[v16], 1, 1, v14);
  v17 = v10[8];
  v15(&a8[v17], 1, 1, v14);
  v18 = v10[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = &a8[v10[10]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_20E05EC5C(a3, &a8[v11], &qword_27C863FB8, &unk_20E325F60);
  sub_20E05EC5C(a4, &a8[v13], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a5, &a8[v16], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a6, &a8[v17], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, &a8[v18], &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for TranscriptProtoCandidate(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = v10[7];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(&a5[v15], 1, 1, v16);
  v17 = &a5[v10[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C863B18, &qword_20E323EB0);
  *a5 = v9;
  sub_20E05EC5C(a3, &a5[v13], &qword_27C863B20, &unk_20E33C290);
  return sub_20E05EC5C(a4, &a5[v15], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
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

  return v1;
}

uint64_t TranscriptProtoClientAction.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.planEventID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoClientAction.planEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for TranscriptProtoClientAction(0);
  v19 = *(v18 + 36);
  v20 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[*(v18 + 40)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 4) = a4;
  *(a9 + 5) = a5;
  *(a9 + 6) = a6;
  *(a9 + 7) = a7;
  result = sub_20E05EC5C(a8, &a9[v19], &qword_27C8639D0, &unk_20E33C230);
  *(a9 + 3) = a10;
  return result;
}

uint64_t TranscriptProtoPersonQuery.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoPersonQuery.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_20E1C3C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195A50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = 3;
  v4 = &a2[*(type metadata accessor for TranscriptProtoPersonQuery.Handle(0) + 20)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = v3;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init(name:handle:isMe:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v14[8];
  v18 = (a7 + v14[7]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  result = sub_20E05EC5C(a3, a7 + v15, &qword_27C868600, &unk_20E33C2A0);
  *a7 = a4;
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_20E1C3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v13 = v12[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  v17 = a6 + v12[8];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a6 + v13, &qword_27C8639D0, &unk_20E33C230);
  *a6 = a2;
  *(a6 + 8) = a3;
  result = sub_20E05EC5C(a4, a6 + v15, &qword_27C8639C8, &unk_20E323870);
  *(a6 + 16) = v11;
  return result;
}

uint64_t sub_20E1C414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.minimumViableLocationAccuracy.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.minimumViableLocationAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
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
  v12 = a6 + *(type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoActionFailure(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C868560, &unk_20E33C2E0);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v13[10];
  v21 = &a9[v13[9]];
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v22 - 8) + 56))(&a9[v20], 1, 1, v22);
  v23 = &a9[v13[11]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v14], &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, &a9[v16], &qword_27C868538, &unk_20E33C2F0);
  *a9 = a3;
  sub_20E05EC5C(a4, &a9[v18], &qword_27C868528, &qword_20E33B558);
  a9[1] = a5;
  *v21 = a6;
  v21[1] = a7;
  return sub_20E05EC5C(a8, &a9[v20], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t sub_20E1C5214@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v1 = *(v0 + 16);
  sub_20E05E834(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_20E1C556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v13 = a7 + *(a6(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.init(parameterID:parameterIndex:item:ancestorValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v12 = v11[6];
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7 + v12, 1, 1, v13);
  v15 = v11[7];
  v14(a7 + v15, 1, 1, v13);
  v16 = a7 + v11[8];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  sub_20E05EC5C(a5, a7 + v12, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a6, a7 + v15, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4 & 1;
  *(a6 + 16) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t TranscriptProtoParameterNeedsValue.init(parameterID:typeInstance:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[v10[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_20E05EC5C(a3, &a5[v11], &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C868488, &unk_20E33C310);
}

uint64_t sub_20E1C5E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E18478C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_20E05EC5C(a3, a5 + v11, &qword_27C863B18, &qword_20E323EB0);
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_20E1C6034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = a4(0);
  v16 = *(v15 + 20);
  v17 = a5(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[*(v15 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_20E05EC5C(a3, &a8[v16], a6, a7);
}

uint64_t TranscriptProtoPlan.promptResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoPlan.promptResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
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

  return v1;
}

uint64_t TranscriptProtoPlan.overrideID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  *(a9 + 56) = 6;
  v18 = a9 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v17;
  return result;
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E1E14FC(a2, &v8[v9], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v8, &v8[v9]);
  sub_20E1E1564(&v8[v9], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t sub_20E1C654C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E1E14FC(a2, &v8[v9], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationError.== infix(_:_:)(v8, &v8[v9]);
  sub_20E1E1564(&v8[v9], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E1E14FC(a2, v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v8, (v8 + v9));
  sub_20E1E1564(v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t sub_20E1C67C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E1E14FC(a2, v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)(v8, (v8 + v9));
  sub_20E1E1564(v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v13], &qword_27C868418, &unk_20E33C340);
}

uint64_t TranscriptProtoQueryStep.init(statementID:context:payload:isAuthenticated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v11 = Step[5];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = Step[6];
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = Step[7];
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  (*(*(Payload - 8) + 56))(&a5[v15], 1, 1, Payload);
  v17 = &a5[Step[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, &a5[v13], &qword_27C863BC0, &unk_20E323E90);
  result = sub_20E05EC5C(a3, &a5[v15], &qword_27C863BB0, &unk_20E33C350);
  *a5 = a4;
  return result;
}

uint64_t sub_20E1C6FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = a4(0);
  v16 = *(v15 + 20);
  v17 = a5(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[*(v15 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a8[v16], a6, a7);
  *a8 = a2;
  *(a8 + 1) = a3;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v11 = *(StepResults + 24);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(StepResults + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  result = sub_20E05EC5C(a2, &a5[v11], &qword_27C8639D0, &unk_20E33C230);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = a9 + *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = *a4;
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v15 = v14[7];
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[8];
  v17(a9 + v18, 1, 1, v16);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v14[10];
  v22 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = v14[12];
  v24 = (a9 + v14[11]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, a9 + v15, &qword_27C8683B8, &qword_20E33B420);
  sub_20E05EC5C(a3, a9 + v18, &qword_27C8683B8, &qword_20E33B420);
  *(a9 + 8) = v26;
  *(a9 + 16) = a5;
  sub_20E05EC5C(a6, a9 + v19, &qword_27C8683A8, &unk_20E33C360);
  result = sub_20E05EC5C(a7, a9 + v21, &qword_27C868398, &qword_20E33B408);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t sub_20E1C7FA4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_20E1C8004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char *a10, uint64_t a11)
{
  v28 = *a10;
  v13 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v14 = v13[5];
  v15 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[6];
  v17 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v13[7]];
  v19 = &a9[v13[8]];
  v20 = v13[9];
  v21 = v13[10];
  a9[v21] = 2;
  v22 = v13[11];
  v23 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v13[12]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, &a9[v14], &qword_27C868320, &unk_20E33C380);
  sub_20E05EC5C(a3, &a9[v16], &qword_27C868310, &qword_20E33B390);
  *v18 = a4;
  *(v18 + 1) = a5;
  *v19 = a6;
  *(v19 + 1) = a7;
  a9[v20] = a8;
  a9[v21] = v28;
  return sub_20E05EC5C(a11, &a9[v22], &qword_27C868300, &unk_20E33C390);
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  sub_20E047C8C(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoResponseParameter.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.format.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t TranscriptProtoResponseParameter.format.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *(a9 + 16) = xmmword_20E323EA0;
  v19 = a9 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_20E047D10(*(a9 + 16), *(a9 + 24));
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_20E05EC5C(a3, &a4[v9], &qword_27C8682E8, &qword_20E33B378);
}

uint64_t sub_20E1C8890@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = &a3[*(a2(0) + 20)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_20E1C8A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.getter()
{
  v1 = *v0;
  sub_20E05E834(*v0, *(v0 + 8));
  return v1;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v14[8];
  v20 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v20 - 8) + 56))(&a8[v19], 1, 1, v20);
  v21 = &a8[v14[9]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a8 + 2) = a1;
  *(a8 + 3) = a2;
  sub_20E05EC5C(a3, &a8[v15], &qword_27C863F10, &unk_20E33C3B0);
  *a8 = a4;
  *(a8 + 1) = a5;
  sub_20E05EC5C(a6, &a8[v17], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, &a8[v19], &qword_27C863B80, &qword_20E323E70);
}

uint64_t TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v14 = v13[7];
  v15 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v13[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = a7 + v13[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7 + v14, &qword_27C863B30, &qword_20E323E58);
  *a7 = a2;
  *(a7 + 8) = a3;
  sub_20E05EC5C(a4, a7 + v16, &qword_27C8639D0, &unk_20E33C230);
  *(a7 + 9) = a5;
  return sub_20E05EC5C(a6, a7 + v18, &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoRetrievedContext(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C868260, &unk_20E33C3D0);
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C867FA8, &qword_20E33B078);
}

uint64_t TranscriptProtoParameter.collectionIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameter.init(key:collectionIndex:candidate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoParameter(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + *(v12 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_20E05EC5C(a5, a6 + v13, &qword_27C863B28, &unk_20E33C3E0);
}

uint64_t sub_20E1C9CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a7[v14], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_20E1C9E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  return sub_20E05EC5C(a2, &a7[v14], a5, a6);
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_20E1CA220(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_20E1CA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = a6 + *(a5(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *a4;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v10 = updated[6];
  v11 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a5 + v10, 1, 1, v11);
  v13 = updated[7];
  v12(a5 + v13, 1, 1, v11);
  v14 = a5 + updated[8];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5 + v10, &qword_27C868048, &qword_20E33B0F0);
  *a5 = a2;
  result = sub_20E05EC5C(a3, a5 + v13, &qword_27C868048, &qword_20E33B0F0);
  *(a5 + 8) = v16;
  return result;
}

uint64_t sub_20E1CAA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7, 1, 1, v13);
  v15 = a4(0);
  v16 = *(v15 + 20);
  v14(a7 + v16, 1, 1, v13);
  v17 = a7 + *(v15 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, a5, a6);
  return sub_20E05EC5C(a2, a7 + v16, a5, a6);
}

uint64_t sub_20E1CB0EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _BYTE *a8@<X8>)
{
  v12 = *a1;
  v13 = a4(0);
  v14 = v13[5];
  v15 = a5(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a8[v14], 1, 1, v15);
  v17 = v13[6];
  v16(&a8[v17], 1, 1, v15);
  v18 = &a8[v13[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = v12;
  sub_20E05EC5C(a2, &a8[v14], a6, a7);
  return sub_20E05EC5C(a3, &a8[v17], a6, a7);
}

uint64_t sub_20E1CB2F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a1;
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = v12;
  return sub_20E05EC5C(a2, &a7[v14], a5, a6);
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v15 = updated[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = updated[8];
  v18 = a7 + updated[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  result = sub_20E05EC5C(a4, a7 + v15, &qword_27C8639D0, &unk_20E33C230);
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  return result;
}

uint64_t TranscriptProtoGlobalToolIdentifier.init(toolID:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(name:type:previousAnswerReference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v13], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  result = sub_20E05EC5C(a2, &a4[v9], &qword_27C863C48, &qword_20E323F30);
  *(a4 + 1) = a3;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.init(promptForUser:confirmOption:dismissOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a4, 1, 1, v8);
  v10 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v11 = v10[5];
  v9(a4 + v11, 1, 1, v8);
  v12 = v10[6];
  v9(a4 + v12, 1, 1, v8);
  v13 = a4 + v10[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, a4 + v11, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E1E14FC(a2, v8 + v9, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = sub_20E2EC4C4(v8, (v8 + v9));
  sub_20E1E1564(v8 + v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E1E1564(v8, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t sub_20E1CC7B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_20E1E14FC(a1, &v11 - v7, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E1E14FC(a2, v8 + v9, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = static ToolKitProtoTypedValue.== infix(_:_:)(v8, (v8 + v9));
  sub_20E1E1564(v8 + v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E1E1564(v8, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.init(statementID:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C868018, &unk_20E33C430);
}

uint64_t TranscriptProtoToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.types.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v16 = a7 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[7];
  v14 = &a5[v10[6]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a5[v11], &qword_27C868008, &qword_20E33B0C0);
  *v14 = a2;
  *(v14 + 1) = a3;
  *a5 = a4;
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v11 - 8) + 56))(a9, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v13 = v12[5];
  v22 = v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9 + v13, 1, 1, v14);
  v16 = v12[6];
  v15(a9 + v16, 1, 1, v14);
  v17 = (a9 + v12[7]);
  v18 = (a9 + v12[8]);
  v19 = v12[9];
  v15(a9 + v19, 1, 1, v14);
  v20 = a9 + v12[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a9, &qword_27C863BA8, &unk_20E345F00);
  sub_20E05EC5C(a2, a9 + v22, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a3, a9 + v16, &qword_27C8639D0, &unk_20E33C230);
  *v17 = a4;
  v17[1] = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_20E05EC5C(a8, a9 + v19, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.setter(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:canonicalIndex:executionSupportType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[9];
  v18 = a7 + v12[8];
  v19 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  (*(*(v19 - 8) + 56))(a7 + v17, 1, 1, v19);
  v20 = a7 + v12[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, a7 + v13, &qword_27C864168, &unk_20E33C440);
  *(a7 + v16) = a3;
  *(a7 + v15) = a4;
  *v18 = a5;
  *(v18 + 4) = BYTE4(a5) & 1;
  return sub_20E05EC5C(a6, a7 + v17, &qword_27C867FE8, &qword_20E33B0A0);
}

uint64_t sub_20E1CD8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>)
{
  v15 = a8 + *(a7(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

uint64_t TranscriptProtoGenderSettings.init(voiceGender:userGender:)@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = &a3[*(type metadata accessor for TranscriptProtoGenderSettings(0) + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t TranscriptProtoStatementID.init(index:name:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v13 = v12[7];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a8 + v13, 1, 1, v14);
  v16 = v12[8];
  v15(a8 + v16, 1, 1, v14);
  v17 = a8 + v12[9];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 16) = v11;
  sub_20E05EC5C(a6, a8 + v13, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, a8 + v16, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v11 = v10[6];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = v10[7];
  v13(a6 + v14, 1, 1, v12);
  v15 = a6 + v10[8];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  sub_20E05EC5C(a4, a6 + v11, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a5, a6 + v14, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoTypeConversionRequest.init(value:target:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = a4 + v9[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, a4 + v10, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t sub_20E1CE75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13);
  v14 = a5(0);
  v15 = v14[5];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a8 + v15, 1, 1, v16);
  v18 = v14[6];
  v17(a8 + v18, 1, 1, v16);
  v19 = a8 + v14[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a8, a6, a7);
  sub_20E05EC5C(a2, a8 + v15, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, a8 + v18, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoQueryDecorationResult.init(spans:toolRetrievalResponse:dynamicEnumerationEntities:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v11 = *(DecorationResult + 28);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a5[v11], 1, 1, DecorationToolRetrievalResponse);
  v13 = &a5[*(DecorationResult + 32)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  result = sub_20E05EC5C(a2, &a5[v11], &qword_27C863C40, &unk_20E33C460);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v11 = DecorationPrePlannerResult[5];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = DecorationPrePlannerResult[6];
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  (*(*(DecorationPrePlannerResultPayload - 8) + 56))(&a5[v13], 1, 1, DecorationPrePlannerResultPayload);
  v15 = &a5[DecorationPrePlannerResult[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C8639D0, &unk_20E33C230);
  *a5 = a2;
  *(a5 + 1) = a3;
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C867F90, &qword_20E33B060);
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v75 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v2 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v73 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v4 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v72 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v71 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v8 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v70 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v69 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v12 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v68 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v15 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v16 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v18 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E80, &qword_20E342078);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &DecorationPrePlannerResultPayloadRepeatedStringVariant - v36;
  v38 = *(v35 + 56);
  sub_20E1E14FC(v74, &DecorationPrePlannerResultPayloadRepeatedStringVariant - v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E1E14FC(v75, &v37[v38], type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_20E1E14FC(v37, v21, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v44 = v72;
          sub_20E1EF280(&v37[v38], v72, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          if (sub_20E147918(*v21, *v44))
          {
            v45 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant + 20);
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
              sub_20E1E1564(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
              v43 = v21;
              goto LABEL_37;
            }
          }

          v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
          sub_20E1E1564(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          v60 = v21;
          goto LABEL_44;
        }

        v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
        v47 = v21;
      }

      else
      {
        sub_20E1E14FC(v37, v18, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v52 = v73;
          sub_20E1EF280(&v37[v38], v73, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          if (sub_20E149570(*v18, *v52))
          {
            v53 = *(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant + 20);
            sub_20E3221C0();
            sub_20E1EF2E8();
            v54 = sub_20E322850();
            sub_20E1E1564(v52, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
            if (v54)
            {
              v55 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
              v43 = v18;
LABEL_38:
              sub_20E1E1564(v43, v55);
              sub_20E1E1564(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
              return 1;
            }
          }

          else
          {
            sub_20E1E1564(v52, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          }

          v61 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
          v60 = v18;
          goto LABEL_45;
        }

        v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
        v47 = v18;
      }

      goto LABEL_33;
    }

    sub_20E1E14FC(v37, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
      v47 = v24;
      goto LABEL_33;
    }

    v48 = v71;
    sub_20E1EF280(&v37[v38], v71, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (sub_20E1463E0(*v24, *v48))
    {
      v49 = *(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
        sub_20E1E1564(v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
        v43 = v24;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
    sub_20E1E1564(v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    v60 = v24;
LABEL_44:
    v61 = v59;
LABEL_45:
    sub_20E1E1564(v60, v61);
    sub_20E1E1564(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v37, v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
      v47 = v32;
      goto LABEL_33;
    }

    v56 = v68;
    sub_20E1EF280(&v37[v38], v68, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (sub_20E1494E0(*v32, *v56))
    {
      v57 = *(DecorationPrePlannerResultPayloadRepeatedStringVariant + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
        sub_20E1E1564(v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
        v43 = v32;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
    sub_20E1E1564(v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    v60 = v32;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20E1E14FC(v37, v27, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
      v47 = v27;
      goto LABEL_33;
    }

    v50 = v70;
    sub_20E1EF280(&v37[v38], v70, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (sub_20E147724(*v27, *v50))
    {
      v51 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
        sub_20E1E1564(v50, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
        v43 = v27;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
    sub_20E1E1564(v50, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    v60 = v27;
    goto LABEL_44;
  }

  sub_20E1E14FC(v37, v30, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v69;
    sub_20E1EF280(&v37[v38], v69, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (sub_20E1484A4(*v30, *v40))
    {
      v41 = *(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
        sub_20E1E1564(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
        v43 = v30;
LABEL_37:
        v55 = v42;
        goto LABEL_38;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
    sub_20E1E1564(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    v60 = v30;
    goto LABEL_44;
  }

  v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v47 = v30;
LABEL_33:
  sub_20E1E1564(v47, v46);
  sub_20E04875C(v37, &qword_27C868E80, &qword_20E342078);
  return 0;
}

uint64_t _s23LighthouseDataProcessor46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v32 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EB0, &qword_20E3420A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - v22;
  v24 = *(v21 + 56);
  sub_20E1E14FC(a1, &v32 - v22, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E1E14FC(a2, &v23[v24], type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v23, v16, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
        v27 = v16;
        goto LABEL_13;
      }

      sub_20E1EF280(&v23[v24], v7, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v28 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)(v16, v7);
      sub_20E1E1564(v7, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v29 = v16;
      v30 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    }

    else
    {
      sub_20E1E14FC(v23, v18, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TranscriptProtoRequestContentTextContent;
        v27 = v18;
LABEL_13:
        sub_20E1E1564(v27, v26);
        goto LABEL_14;
      }

      sub_20E1EF280(&v23[v24], v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v28 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)(v18, v11);
      sub_20E1E1564(v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v29 = v18;
      v30 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    }

    sub_20E1E1564(v29, v30);
    sub_20E1E1564(v23, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    return v28 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_14;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_20E04875C(v23, &qword_27C868EB0, &qword_20E3420A8);
    v28 = 0;
    return v28 & 1;
  }

  sub_20E1E1564(v23, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v28 = 1;
  return v28 & 1;
}

uint64_t _s23LighthouseDataProcessor43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v41 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EF8, &qword_20E3420F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v41 - v26;
  v28 = *(v25 + 56);
  sub_20E1E14FC(v43, &v41 - v26, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E1E14FC(v44, &v27[v28], type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_34;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_34;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v30 = v20;
  v31 = v42;
  if (!EnumCaseMultiPayload)
  {
    v35 = v22;
    sub_20E1E14FC(v27, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v27[v28], v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v38 = *v22 == *v12 && v22[1] == v12[1];
      if (v38 || (sub_20E322D60() & 1) != 0)
      {
        v39 = *(v9 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
LABEL_34:
          sub_20E1E1564(v27, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
          v32 = 1;
          return v32 & 1;
        }
      }

      sub_20E1E1564(v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E1E1564(v35, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E1E1564(v27, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      goto LABEL_26;
    }

    v36 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
    v37 = v22;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20E1E14FC(v27, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E1EF280(&v27[v28], v31, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v32 = static TranscriptProtoSystemRequirementUserLocationForSystemRequest.== infix(_:_:)(v17, v31);
      sub_20E1E1564(v31, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v33 = v17;
      v34 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
      goto LABEL_17;
    }

    v36 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
    v37 = v17;
LABEL_24:
    sub_20E1E1564(v37, v36);
LABEL_25:
    sub_20E04875C(v27, &qword_27C868EF8, &qword_20E3420F8);
LABEL_26:
    v32 = 0;
    return v32 & 1;
  }

  sub_20E1E14FC(v27, v30, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
    v37 = v30;
    goto LABEL_24;
  }

  sub_20E1EF280(&v27[v28], v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v32 = _s23LighthouseDataProcessor53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(v30, v8);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v33 = v30;
  v34 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
LABEL_17:
  sub_20E1E1564(v33, v34);
  sub_20E1E1564(v27, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = *(*(v42 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v42);
  v41 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v40 = (&v39 - v8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v39 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F18, &qword_20E342118);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v39 - v24;
  v26 = *(v23 + 56);
  sub_20E1E14FC(a1, &v39 - v24, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E1E14FC(a2, &v25[v26], type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1E14FC(v25, v18, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v40;
        sub_20E1EF280(&v25[v26], v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v29 = *v18 == *v28 && v18[1] == v28[1];
        if (v29 || (sub_20E322D60()) && v18[2] == v28[2])
        {
          v30 = *(v42 + 24);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v31 = v18;
LABEL_35:
            sub_20E1E1564(v31, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v25, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
            return 1;
          }
        }

        sub_20E1E1564(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v35 = v18;
        goto LABEL_37;
      }

      v15 = v18;
    }

    else
    {
      sub_20E1E14FC(v25, v15, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v41;
        sub_20E1EF280(&v25[v26], v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v33 = *v15 == *v32 && v15[1] == v32[1];
        if (v33 || (sub_20E322D60()) && v15[2] == v32[2])
        {
          v34 = *(v42 + 24);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v32, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v31 = v15;
            goto LABEL_35;
          }
        }

        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v35 = v15;
        goto LABEL_37;
      }
    }
  }

  else
  {
    sub_20E1E14FC(v25, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v25[v26], v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v36 = *v20 == *v10 && v20[1] == v10[1];
      if (v36 || (sub_20E322D60()) && v20[2] == v10[2])
      {
        v37 = *(v42 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v31 = v20;
          goto LABEL_35;
        }
      }

      sub_20E1E1564(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v35 = v20;
LABEL_37:
      sub_20E1E1564(v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v25, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      return 0;
    }

    v15 = v20;
  }

  sub_20E1E1564(v15, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E04875C(v25, &qword_27C868F18, &qword_20E342118);
  return 0;
}

uint64_t _s23LighthouseDataProcessor40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  v81 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v2 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v90 = (&v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v19 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v21 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v92 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v79 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v79 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v79 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v79 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v91 = (&v79 - v43);
  MEMORY[0x28223BE20](v42);
  v45 = &v79 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F30, &qword_20E342130);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v79 - v49;
  v51 = *(v48 + 56);
  sub_20E1E14FC(v93, &v79 - v49, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E1E14FC(v94, &v50[v51], type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E1E14FC(v50, v45, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        if (swift_getEnumCaseMultiPayload())
        {
          v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
          v54 = v45;
LABEL_40:
          sub_20E1E1564(v54, v53);
          sub_20E04875C(v50, &qword_27C868F30, &qword_20E342130);
LABEL_41:
          v57 = 0;
          return v57 & 1;
        }

        v71 = v83;
        sub_20E1EF280(&v50[v51], v83, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        if (*v45 == *v71 && *(v45 + 1) == *(v71 + 8) || (sub_20E322D60()) && v45[16] == *(v71 + 16) && v45[17] == *(v71 + 17))
        {
          v72 = *(v80 + 28);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v73 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
            sub_20E1E1564(v71, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
            v74 = v45;
LABEL_58:
            sub_20E1E1564(v74, v73);
            sub_20E1E1564(v50, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
            v57 = 1;
            return v57 & 1;
          }
        }

        v75 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
        sub_20E1E1564(v71, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        v76 = v45;
LABEL_61:
        sub_20E1E1564(v76, v75);
        sub_20E1E1564(v50, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        goto LABEL_41;
      }

      v41 = v91;
      sub_20E1E14FC(v50, v91, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v86;
        sub_20E1EF280(&v50[v51], v86, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
        if (*v41 == *v63 && v41[1] == v63[1] || (sub_20E322D60() & 1) != 0)
        {
          v64 = *(v82 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_57:
            v73 = v65;
            sub_20E1E1564(v63, v65);
            v74 = v41;
            goto LABEL_58;
          }
        }

        v77 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_60:
        v75 = v77;
        sub_20E1E1564(v63, v77);
        v76 = v41;
        goto LABEL_61;
      }

      v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_39:
      v53 = v69;
      v54 = v41;
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v50, v41, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
        goto LABEL_39;
      }

      v60 = v84;
      sub_20E1EF280(&v50[v51], v84, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v56 = v50;
      v57 = sub_20E1613DC(v41, v60);
      v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      sub_20E1E1564(v60, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v58 = v41;
    }

    else
    {
      sub_20E1E14FC(v50, v38, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
        v54 = v38;
        goto LABEL_40;
      }

      v67 = v85;
      sub_20E1EF280(&v50[v51], v85, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v56 = v50;
      v57 = _s23LighthouseDataProcessor47TranscriptProtoRequestPrescribedPlanConvertToolV2eeoiySbAC_ACtFZ_0(v38, v67);
      v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
      sub_20E1E1564(v67, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v58 = v38;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E1E14FC(v50, v29, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
        v54 = v29;
        goto LABEL_40;
      }

      v62 = v89;
      sub_20E1EF280(&v50[v51], v89, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v56 = v50;
      v57 = _s23LighthouseDataProcessor44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(v29, v62);
      v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
      sub_20E1E1564(v62, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v58 = v29;
      goto LABEL_26;
    }

    v41 = v92;
    sub_20E1E14FC(v50, v92, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_39;
    }

    v63 = v90;
    sub_20E1EF280(&v50[v51], v90, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    v68 = *(v63 + 8);
    if (v41[1])
    {
      if (!*(v63 + 8))
      {
LABEL_59:
        v77 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        goto LABEL_60;
      }
    }

    else
    {
      if (*v41 != *v63)
      {
        v68 = 1;
      }

      if (v68)
      {
        goto LABEL_59;
      }
    }

    v78 = *(v81 + 20);
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_20E1E14FC(v50, v32, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
      v54 = v32;
      goto LABEL_40;
    }

    v66 = v88;
    sub_20E1EF280(&v50[v51], v88, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    v56 = v50;
    v57 = sub_20E1600CC(v32, v66);
    v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
    sub_20E1E1564(v66, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    v58 = v32;
LABEL_26:
    v59 = v61;
    goto LABEL_27;
  }

  sub_20E1E14FC(v50, v35, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
    v54 = v35;
    goto LABEL_40;
  }

  v55 = v87;
  sub_20E1EF280(&v50[v51], v87, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v56 = v50;
  v57 = sub_20E1607E8(v35, v55);
  sub_20E1E1564(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v58 = v35;
  v59 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
LABEL_27:
  sub_20E1E1564(v58, v59);
  sub_20E1E1564(v56, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  return v57 & 1;
}

BOOL _s23LighthouseDataProcessor45TranscriptProtoParameterNeedsValueContextEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868ED8, &qword_20E3420D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_20E1E14FC(a1, &v21 - v14, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E1E14FC(a2, &v15[v16], type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E1EF280(v15, v10, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E1EF280(&v15[v16], v8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v17 = *v10 == *v8 && v10[1] == v8[1];
  v19 = 0;
  if (v17 || (sub_20E322D60() & 1) != 0)
  {
    v18 = *(v4 + 20);
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v19 = 1;
    }
  }

  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E1E1564(v10, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  return v19;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F00, &qword_20E342100);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_20E1E14FC(a1, &v38 - v27, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E1E14FC(v39, &v28[v29], type metadata accessor for TranscriptProtoActionRequirementEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v28, v21, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v31 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v32 = v21;
        goto LABEL_14;
      }

      sub_20E1EF280(&v28[v29], v9, type metadata accessor for TranscriptProtoPermissionRequirement);
      v34 = _s23LighthouseDataProcessor36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(v21, v9);
      v35 = type metadata accessor for TranscriptProtoPermissionRequirement;
      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoPermissionRequirement);
      v36 = v21;
    }

    else
    {
      sub_20E1E14FC(v28, v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v31 = type metadata accessor for TranscriptProtoAppRequirement;
        v32 = v23;
LABEL_14:
        sub_20E1E1564(v32, v31);
        goto LABEL_15;
      }

      sub_20E1EF280(&v28[v29], v13, type metadata accessor for TranscriptProtoAppRequirement);
      v34 = static TranscriptProtoAppRequirement.== infix(_:_:)(v23, v13);
      v35 = type metadata accessor for TranscriptProtoAppRequirement;
      sub_20E1E1564(v13, type metadata accessor for TranscriptProtoAppRequirement);
      v36 = v23;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E1E14FC(v28, v18, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v32 = v18;
      goto LABEL_14;
    }

    v33 = v38;
    sub_20E1EF280(&v28[v29], v38, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v34 = _s23LighthouseDataProcessor39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(v18, v33);
    v35 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
    sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v36 = v18;
LABEL_17:
    sub_20E1E1564(v36, v35);
    sub_20E1E1564(v28, type metadata accessor for TranscriptProtoActionRequirementEnum);
    return v34 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_15:
    sub_20E04875C(v28, &qword_27C868F00, &qword_20E342100);
    v34 = 0;
    return v34 & 1;
  }

  sub_20E1E1564(v28, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v34 = 1;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = (&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v105 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoActionFailure(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v100 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v98 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v97 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v96 = (&v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v95 = (&v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v94 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v111 = (&v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40);
  v112 = (&v93 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v110 = (&v93 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v109 = (&v93 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v108 = (&v93 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v107 = (&v93 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v106 = (&v93 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v93 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v93 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = (&v93 - v61);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = (&v93 - v64);
  MEMORY[0x28223BE20](v63);
  v67 = &v93 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EE0, &qword_20E3420E0);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v68 - 8);
  v72 = &v93 - v71;
  v73 = *(v70 + 56);
  sub_20E1E14FC(a1, &v93 - v71, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E1E14FC(v113, &v72[v73], type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v65 = v107;
        sub_20E1E14FC(v72, v107, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v75 = v100;
          sub_20E1EF280(&v72[v73], v100, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
          v76 = v72;
          found = _s23LighthouseDataProcessor42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(v65, v75);
          v78 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
          goto LABEL_38;
        }

        v90 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v65 = v108;
        sub_20E1E14FC(v72, v108, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v75 = v101;
          sub_20E1EF280(&v72[v73], v101, type metadata accessor for TranscriptProtoActionRequirement);
          v76 = v72;
          found = _s23LighthouseDataProcessor32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(v65, v75);
          v78 = type metadata accessor for TranscriptProtoActionRequirement;
          goto LABEL_38;
        }

        v90 = type metadata accessor for TranscriptProtoActionRequirement;
      }

      else
      {
        v65 = v109;
        sub_20E1E14FC(v72, v109, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v75 = v102;
          sub_20E1EF280(&v72[v73], v102, type metadata accessor for TranscriptProtoToolDisambiguation);
          v76 = v72;
          found = _s23LighthouseDataProcessor33TranscriptProtoToolDisambiguationV2eeoiySbAC_ACtFZ_0(v65, v75);
          v78 = type metadata accessor for TranscriptProtoToolDisambiguation;
          goto LABEL_38;
        }

        v90 = type metadata accessor for TranscriptProtoToolDisambiguation;
      }

      goto LABEL_51;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v65 = v110;
      sub_20E1E14FC(v72, v110, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v75 = v103;
        sub_20E1EF280(&v72[v73], v103, type metadata accessor for TranscriptProtoActionFailure);
        v76 = v72;
        found = static TranscriptProtoActionFailure.== infix(_:_:)(v65, v75);
        v78 = type metadata accessor for TranscriptProtoActionFailure;
        goto LABEL_38;
      }

      v90 = type metadata accessor for TranscriptProtoActionFailure;
      goto LABEL_51;
    }

    if (EnumCaseMultiPayload != 10)
    {
      v65 = v111;
      sub_20E1E14FC(v72, v111, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v75 = v104;
        sub_20E1EF280(&v72[v73], v104, type metadata accessor for TranscriptProtoSnippetStream);
        v76 = v72;
        found = static TranscriptProtoSnippetStream.== infix(_:_:)(v65, v75);
        v78 = type metadata accessor for TranscriptProtoSnippetStream;
        goto LABEL_38;
      }

      v90 = type metadata accessor for TranscriptProtoSnippetStream;
      goto LABEL_51;
    }

    v65 = v112;
    sub_20E1E14FC(v72, v112, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      v90 = type metadata accessor for TranscriptProtoValueDisambiguation;
      goto LABEL_51;
    }

    v82 = v105;
    sub_20E1EF280(&v72[v73], v105, type metadata accessor for TranscriptProtoValueDisambiguation);
    if ((sub_20E1484A4(*v65, *v82) & 1) == 0 || (v83 = *(v93 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      sub_20E1E1564(v82, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E1E1564(v65, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E1E1564(v72, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      goto LABEL_53;
    }

    sub_20E1E1564(v82, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E1E1564(v65, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E1E1564(v72, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    found = 1;
  }

  else
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E1E14FC(v72, v67, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          v92 = v94;
          sub_20E1EF280(&v72[v73], v94, type metadata accessor for TranscriptProtoActionSuccess);
          v76 = v72;
          found = static TranscriptProtoActionSuccess.== infix(_:_:)(v67, v92);
          v80 = type metadata accessor for TranscriptProtoActionSuccess;
          sub_20E1E1564(v92, type metadata accessor for TranscriptProtoActionSuccess);
          v81 = v67;
          goto LABEL_39;
        }

        v84 = type metadata accessor for TranscriptProtoActionSuccess;
        v85 = v67;
        goto LABEL_52;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_20E1E14FC(v72, v65, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v75 = v95;
          sub_20E1EF280(&v72[v73], v95, type metadata accessor for TranscriptProtoActionConfirmation);
          v76 = v72;
          found = _s23LighthouseDataProcessor33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(v65, v75);
          v78 = type metadata accessor for TranscriptProtoActionConfirmation;
LABEL_38:
          v80 = v78;
          sub_20E1E1564(v75, v78);
          v81 = v65;
          goto LABEL_39;
        }

        v90 = type metadata accessor for TranscriptProtoActionConfirmation;
        goto LABEL_51;
      }

      sub_20E1E14FC(v72, v62, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v89 = v96;
        sub_20E1EF280(&v72[v73], v96, type metadata accessor for TranscriptProtoParameterNeedsValue);
        v76 = v72;
        found = _s23LighthouseDataProcessor34TranscriptProtoParameterNeedsValueV2eeoiySbAC_ACtFZ_0(v62, v89);
        v80 = type metadata accessor for TranscriptProtoParameterNeedsValue;
        sub_20E1E1564(v89, type metadata accessor for TranscriptProtoParameterNeedsValue);
        v81 = v62;
        goto LABEL_39;
      }

      v84 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      v85 = v62;
      goto LABEL_52;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_20E1E14FC(v72, v56, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v79 = v98;
          sub_20E1EF280(&v72[v73], v98, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v76 = v72;
          found = _s23LighthouseDataProcessor38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(v56, v79);
          v80 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          sub_20E1E1564(v79, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v81 = v56;
LABEL_39:
          sub_20E1E1564(v81, v80);
          sub_20E1E1564(v76, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return found & 1;
        }

        v84 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        v85 = v56;
LABEL_52:
        sub_20E1E1564(v85, v84);
        sub_20E04875C(v72, &qword_27C868EE0, &qword_20E3420E0);
LABEL_53:
        found = 0;
        return found & 1;
      }

      v65 = v106;
      sub_20E1E14FC(v72, v106, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v75 = v99;
        sub_20E1EF280(&v72[v73], v99, type metadata accessor for TranscriptProtoParameterNotAllowed);
        v76 = v72;
        found = _s23LighthouseDataProcessor34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(v65, v75);
        v78 = type metadata accessor for TranscriptProtoParameterNotAllowed;
        goto LABEL_38;
      }

      v90 = type metadata accessor for TranscriptProtoParameterNotAllowed;
LABEL_51:
      v84 = v90;
      v85 = v65;
      goto LABEL_52;
    }

    sub_20E1E14FC(v72, v59, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v84 = type metadata accessor for TranscriptProtoParameterConfirmation;
      v85 = v59;
      goto LABEL_52;
    }

    v86 = &v72[v73];
    v87 = v97;
    sub_20E1EF280(v86, v97, type metadata accessor for TranscriptProtoParameterConfirmation);
    v88 = v72;
    found = _s23LighthouseDataProcessor36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(v59, v87);
    sub_20E1E1564(v87, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E1E1564(v59, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E1E1564(v88, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  return found & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolKitProtoTypedValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v46 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v46 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F28, &qword_20E342128);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v46 - v31;
  v33 = *(v30 + 56);
  sub_20E1E14FC(v50, &v46 - v31, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E1E14FC(v51, &v32[v33], type metadata accessor for TranscriptProtoShimParameterEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v32, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v35 = type metadata accessor for TranscriptProtoPersonQuery;
        v36 = v22;
        goto LABEL_19;
      }

      sub_20E1EF280(&v32[v33], v8, type metadata accessor for TranscriptProtoPersonQuery);
      v37 = static TranscriptProtoPersonQuery.== infix(_:_:)(v22, v8);
      sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPersonQuery);
      v38 = v22;
      v39 = type metadata accessor for TranscriptProtoPersonQuery;
LABEL_23:
      sub_20E1E1564(v38, v39);
      sub_20E1E1564(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
      return v37 & 1;
    }

    sub_20E1E14FC(v32, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v35 = type metadata accessor for TranscriptProtoPhotosCandidates;
      v36 = v19;
      goto LABEL_19;
    }

    v43 = v48;
    sub_20E1EF280(&v32[v33], v48, type metadata accessor for TranscriptProtoPhotosCandidates);
    v37 = _s23LighthouseDataProcessor31TranscriptProtoPhotosCandidatesV2eeoiySbAC_ACtFZ_0(v19, v43);
    v44 = type metadata accessor for TranscriptProtoPhotosCandidates;
    sub_20E1E1564(v43, type metadata accessor for TranscriptProtoPhotosCandidates);
    v38 = v19;
LABEL_22:
    v39 = v44;
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v32, v27, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v35 = type metadata accessor for ToolKitProtoTypedValue;
      v36 = v27;
LABEL_19:
      sub_20E1E1564(v36, v35);
      sub_20E04875C(v32, &qword_27C868F28, &qword_20E342128);
LABEL_20:
      v37 = 0;
      return v37 & 1;
    }

    sub_20E1EF280(&v32[v33], v14, type metadata accessor for ToolKitProtoTypedValue);
    v37 = static ToolKitProtoTypedValue.== infix(_:_:)(v27, v14);
    v44 = type metadata accessor for ToolKitProtoTypedValue;
    sub_20E1E1564(v14, type metadata accessor for ToolKitProtoTypedValue);
    v38 = v27;
    goto LABEL_22;
  }

  sub_20E1E14FC(v32, v25, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for TranscriptProtoShimParameter.StringQuery;
    v36 = v25;
    goto LABEL_19;
  }

  v40 = v49;
  sub_20E1EF280(&v32[v33], v49, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((*v25 != *v40 || v25[1] != v40[1]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E1E1564(v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    goto LABEL_26;
  }

  v41 = *(v47 + 20);
  sub_20E3221C0();
  sub_20E1EF2E8();
  v42 = sub_20E322850();
  sub_20E1E1564(v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((v42 & 1) == 0)
  {
LABEL_26:
    sub_20E1E1564(v25, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_20E1E1564(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
    goto LABEL_20;
  }

  sub_20E1E1564(v25, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  sub_20E1E1564(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
  v37 = 1;
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F10, &qword_20E342110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_20E1E14FC(a1, &v23 - v16, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E1E14FC(a2, &v17[v18], type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
LABEL_3:
      sub_20E1E1564(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_20E1E14FC(v17, v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E1E1564(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868F10, &qword_20E342110);
    return 0;
  }

  sub_20E1EF280(&v17[v18], v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v21 = *v12 == *v8 && v12[1] == v8[1];
  if (v21 || (sub_20E322D60()) && v12[2] == v8[2])
  {
    v22 = *(v4 + 24);
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      sub_20E1E1564(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E1E1564(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E1E1564(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v46 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v52 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v46 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v46 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EC8, &qword_20E3420C8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v46 - v28;
  v30 = *(v27 + 56);
  sub_20E1E14FC(a1, &v46 - v28, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E1E14FC(v53, &v29[v30], type metadata accessor for TranscriptProtoVisualOutputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v29, v19, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v32 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        v33 = v19;
        goto LABEL_26;
      }

      v34 = v51;
      sub_20E1EF280(&v29[v30], v51, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      if ((sub_20E15F7B0(*v19, *(v19 + 1), *v34, *(v34 + 8)) & 1) == 0 || (v35 = *(v47 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v42 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
        v43 = v19;
        goto LABEL_37;
      }

      v36 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
      sub_20E1E1564(v34, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v37 = v19;
    }

    else
    {
      sub_20E1E14FC(v29, v16, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v32 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        v33 = v16;
        goto LABEL_26;
      }

      v40 = v52;
      sub_20E1EF280(&v29[v30], v52, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      if ((sub_20E15F7B0(*v16, v16[1], *v40, v40[1]) & 1) == 0 || (v16[2] != v40[2] || v16[3] != v40[3]) && (sub_20E322D60() & 1) == 0 || (v41 = *(v46 + 24), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v42 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        sub_20E1E1564(v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
        v43 = v16;
        goto LABEL_37;
      }

      v36 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
      sub_20E1E1564(v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v37 = v16;
    }

LABEL_33:
    sub_20E1E1564(v37, v36);
    sub_20E1E1564(v29, type metadata accessor for TranscriptProtoVisualOutputType);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v29, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      v33 = v22;
      goto LABEL_26;
    }

    v38 = v50;
    sub_20E1EF280(&v29[v30], v50, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if ((*v22 != *v38 || v22[1] != v38[1]) && (sub_20E322D60() & 1) == 0 || (v39 = *(v49 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      v42 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      sub_20E1E1564(v38, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v43 = v22;
      goto LABEL_37;
    }

    v36 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    v37 = v22;
    goto LABEL_33;
  }

  sub_20E1E14FC(v29, v24, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E1EF280(&v29[v30], v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (*v24 == *v11 && v24[1] == v11[1] || (sub_20E322D60() & 1) != 0)
    {
      v44 = *(v48 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v36 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
        sub_20E1E1564(v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
        v37 = v24;
        goto LABEL_33;
      }
    }

    v42 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
    sub_20E1E1564(v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    v43 = v24;
LABEL_37:
    sub_20E1E1564(v43, v42);
    sub_20E1E1564(v29, type metadata accessor for TranscriptProtoVisualOutputType);
    return 0;
  }

  v32 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
  v33 = v24;
LABEL_26:
  sub_20E1E1564(v33, v32);
  sub_20E04875C(v29, &qword_27C868EC8, &qword_20E3420C8);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for TranscriptProtoExecutorError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v45 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F20, &qword_20E342120);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v45 - v31;
  v33 = *(v30 + 56);
  sub_20E1E14FC(v49, &v45 - v31, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E1E14FC(v50, &v32[v33], type metadata accessor for TranscriptProtoSessionErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v32, v27, type metadata accessor for TranscriptProtoSessionErrorEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        v43 = v47;
        sub_20E1EF280(&v32[v33], v47, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        if (*v27 == *v43 && v27[1] == v43[1] || (sub_20E322D60()) && v27[2] == v43[2])
        {
          v44 = *(v46 + 24);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
            v37 = 1;
            return v37 & 1;
          }
        }

        sub_20E1E1564(v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E1E1564(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
        goto LABEL_18;
      }

      v35 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v36 = v27;
LABEL_17:
      sub_20E1E1564(v36, v35);
      sub_20E04875C(v32, &qword_27C868F20, &qword_20E342120);
LABEL_18:
      v37 = 0;
      return v37 & 1;
    }

    sub_20E1E14FC(v32, v25, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v36 = v25;
      goto LABEL_17;
    }

    sub_20E1EF280(&v32[v33], v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v37 = _s23LighthouseDataProcessor38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(v25, v12);
    v40 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
    sub_20E1E1564(v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v38 = v25;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_20E1E14FC(v32, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v35 = type metadata accessor for TranscriptProtoExecutorError;
      v36 = v19;
      goto LABEL_17;
    }

    v41 = v48;
    sub_20E1EF280(&v32[v33], v48, type metadata accessor for TranscriptProtoExecutorError);
    v37 = _s23LighthouseDataProcessor28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(v19, v41);
    v40 = type metadata accessor for TranscriptProtoExecutorError;
    sub_20E1E1564(v41, type metadata accessor for TranscriptProtoExecutorError);
    v38 = v19;
LABEL_12:
    v39 = v40;
    goto LABEL_13;
  }

  sub_20E1E14FC(v32, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v35 = type metadata accessor for TranscriptProtoPlannerError;
    v36 = v22;
    goto LABEL_17;
  }

  sub_20E1EF280(&v32[v33], v8, type metadata accessor for TranscriptProtoPlannerError);
  v37 = static TranscriptProtoPlannerError.== infix(_:_:)(v22, v8);
  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPlannerError);
  v38 = v22;
  v39 = type metadata accessor for TranscriptProtoPlannerError;
LABEL_13:
  sub_20E1E1564(v38, v39);
  sub_20E1E1564(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(*(PayloadEnum - 8) + 64);
  v17 = MEMORY[0x28223BE20](PayloadEnum);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v47 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v47 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v47 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868ED0, &qword_20E3420D0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v47 - v31;
  v33 = *(v30 + 56);
  sub_20E1E14FC(v51, &v47 - v31, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E1E14FC(v52, &v32[v33], type metadata accessor for TranscriptProtoQueryPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v32, v27, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_20E1EF280(&v32[v33], v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        if (sub_20E15D148(*v27, *v14))
        {
          v45 = *(v48 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          v46 = sub_20E322850();
          sub_20E1E1564(v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          if (v46)
          {
            sub_20E1E1564(v27, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
            sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
            v39 = 1;
            return v39 & 1;
          }
        }

        else
        {
          sub_20E1E1564(v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        }

        sub_20E1E1564(v27, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
        goto LABEL_18;
      }

      v35 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery;
      v36 = v27;
LABEL_17:
      sub_20E1E1564(v36, v35);
      sub_20E04875C(v32, &qword_27C868ED0, &qword_20E3420D0);
LABEL_18:
      v39 = 0;
      return v39 & 1;
    }

    sub_20E1E14FC(v32, v25, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for TranscriptProtoPersonQuery;
      v36 = v25;
      goto LABEL_17;
    }

    sub_20E1EF280(&v32[v33], v11, type metadata accessor for TranscriptProtoPersonQuery);
    v39 = static TranscriptProtoPersonQuery.== infix(_:_:)(v25, v11);
    v40 = type metadata accessor for TranscriptProtoPersonQuery;
    sub_20E1E1564(v11, type metadata accessor for TranscriptProtoPersonQuery);
    v41 = v25;
LABEL_10:
    v42 = v40;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E1E14FC(v32, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
      v36 = v22;
      goto LABEL_17;
    }

    v37 = &v32[v33];
    v38 = v49;
    sub_20E1EF280(v37, v49, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v39 = static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)(v22, v38);
    v40 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v41 = v22;
    goto LABEL_10;
  }

  sub_20E1E14FC(v32, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
    v36 = v19;
    goto LABEL_17;
  }

  v43 = v50;
  sub_20E1EF280(&v32[v33], v50, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v39 = static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)(v19, v43);
  sub_20E1E1564(v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v41 = v19;
  v42 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
LABEL_13:
  sub_20E1E1564(v41, v42);
  sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = *(*(v32 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v31 - v8);
  v10 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F08, &qword_20E342108);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v31 - v20;
  v22 = *(v19 + 56);
  sub_20E1E14FC(a1, &v31 - v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E1E14FC(a2, &v21[v22], type metadata accessor for TranscriptProtoPlannerErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_27:
        sub_20E1E1564(v21, type metadata accessor for TranscriptProtoPlannerErrorEnum);
        return 1;
      }

      goto LABEL_16;
    }

    sub_20E1E14FC(v21, v14, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E1EF280(&v21[v22], v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v24 = *v14 == *v7 && v14[1] == v7[1];
      if (v24 || (sub_20E322D60()) && v14[2] == v7[2])
      {
        v25 = *(v32 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v26 = v14;
LABEL_26:
          sub_20E1E1564(v26, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          goto LABEL_27;
        }
      }

      sub_20E1E1564(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v27 = v14;
LABEL_29:
      sub_20E1E1564(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v21, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      return 0;
    }
  }

  else
  {
    sub_20E1E14FC(v21, v16, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v21[v22], v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v28 = *v16 == *v9 && v16[1] == v9[1];
      if (v28 || (sub_20E322D60()) && v16[2] == v9[2])
      {
        v29 = *(v32 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v26 = v16;
          goto LABEL_26;
        }
      }

      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v27 = v16;
      goto LABEL_29;
    }

    v14 = v16;
  }

  sub_20E1E1564(v14, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_16:
  sub_20E04875C(v21, &qword_27C868F08, &qword_20E342108);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v63 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v63 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v70 = (&v63 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = (&v63 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v63 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v63 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v63 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E98, &qword_20E342090);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v63 - v37;
  v39 = (&v63 + *(v36 + 56) - v37);
  sub_20E1E14FC(v71, &v63 - v37, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E1E14FC(v72, v39, type metadata accessor for TranscriptProtoAstflatValueEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v43 = v70;
        sub_20E1E14FC(v38, v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v48 = v39;
          v49 = v67;
          sub_20E1EF280(v48, v67, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
          if (sub_20E15B558(*v43, *v49))
          {
            v50 = *(v64 + 20);
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v51 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_30:
              v56 = v51;
              sub_20E1E1564(v49, v51);
              sub_20E1E1564(v43, v56);
              goto LABEL_42;
            }
          }

          v61 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_52:
          v62 = v61;
          sub_20E1E1564(v49, v61);
          sub_20E1E1564(v43, v62);
          goto LABEL_53;
        }

        v59 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_46:
        sub_20E1E1564(v43, v59);
        goto LABEL_47;
      }

      sub_20E1E14FC(v38, v18, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v42 = *v18;
      v41 = v18[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (swift_getEnumCaseMultiPayload() != 9)
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

        v43 = v68;
        sub_20E1E14FC(v38, v68, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v59 = type metadata accessor for TranscriptProtoStatementID;
          goto LABEL_46;
        }

        v44 = v39;
        v45 = v66;
        sub_20E1EF280(v44, v66, type metadata accessor for TranscriptProtoStatementID);
        v46 = static TranscriptProtoStatementID.== infix(_:_:)(v43, v45);
        sub_20E1E1564(v45, type metadata accessor for TranscriptProtoStatementID);
        sub_20E1E1564(v43, type metadata accessor for TranscriptProtoStatementID);
        goto LABEL_38;
      }

      sub_20E1E14FC(v38, v15, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v42 = *v15;
      v41 = v15[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_6;
      }
    }

LABEL_23:
    if (v42 == *v39 && v41 == *(v39 + 1))
    {
      v53 = *(v39 + 1);

LABEL_42:
      sub_20E1E1564(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v46 = 1;
      return v46 & 1;
    }

    v57 = *(v39 + 1);
    v58 = sub_20E322D60();

    if (v58)
    {
      goto LABEL_42;
    }

LABEL_53:
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_20E1E14FC(v38, v25, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v42 = *v25;
        v41 = v25[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
LABEL_6:

LABEL_47:
          sub_20E04875C(v38, &qword_27C868E98, &qword_20E342090);
LABEL_48:
          v46 = 0;
          return v46 & 1;
        }

        goto LABEL_23;
      }

      v43 = v69;
      sub_20E1E14FC(v38, v69, type metadata accessor for TranscriptProtoAstflatValueEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v54 = v39;
        v49 = v65;
        sub_20E1EF280(v54, v65, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
        if (sub_20E14C50C(*v43, *v49))
        {
          v55 = *(v63 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v51 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
            goto LABEL_30;
          }
        }

        v61 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
        goto LABEL_52;
      }

      v59 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
      goto LABEL_46;
    }

    sub_20E1E14FC(v38, v28, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_47;
    }

    v52 = *v28 == *v39;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v38, v31, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_47;
    }

    v52 = *v31 == *v39;
LABEL_35:
    v46 = v52;
LABEL_38:
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
    return v46 & 1;
  }

  sub_20E1E14FC(v38, v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_47;
  }

  v47 = *v33 ^ *v39;
  sub_20E1E1564(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v46 = v47 ^ 1;
  return v46 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v188 = a1;
  v189 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v3 = *(*(MentionedApps - 8) + 64);
  MEMORY[0x28223BE20](MentionedApps - 8);
  v175 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v174 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v172 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v10 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v173 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v12 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v171 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v14 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v169 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v16 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v170 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v18 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v168 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v20 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v167 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v22 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v166 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v163 = (&v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v27 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v164 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v29 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v165 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v162 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v161 = (&v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v160 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v159 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v154 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v183 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v186 = &v147 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v179 = &v147 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v187 = &v147 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v185 = &v147 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v180 = &v147 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v184 = &v147 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v181 = &v147 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v182 = &v147 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v178 = &v147 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = (&v147 - v69);
  v71 = MEMORY[0x28223BE20](v68);
  v176 = &v147 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v177 = &v147 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v77 = &v147 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = (&v147 - v79);
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v147 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = &v147 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v147 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EA0, &qword_20E342098);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v89 - 8);
  v93 = &v147 - v92;
  v94 = *(v91 + 56);
  sub_20E1E14FC(v188, &v147 - v92, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v188 = v94;
  sub_20E1E14FC(v189, &v93[v94], type metadata accessor for TranscriptProtoAstflatExprEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v93, v86, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v127 = v188;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v128 = v159;
        sub_20E1EF280(&v93[v127], v159, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v109 = _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(v86, v128);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
        sub_20E1E1564(v128, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v119 = v86;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
      v97 = v86;
      goto LABEL_102;
    case 2u:
      sub_20E1E14FC(v93, v83, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v117 = v188;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v118 = v160;
        sub_20E1EF280(&v93[v117], v160, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v109 = _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(v83, v118);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
        sub_20E1E1564(v118, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v119 = v83;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
      v97 = v83;
      goto LABEL_102;
    case 3u:
      sub_20E1E14FC(v93, v80, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v122 = v188;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v123 = v161;
        sub_20E1EF280(&v93[v122], v161, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v109 = _s23LighthouseDataProcessor36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(v80, v123);
        sub_20E1E1564(v123, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v119 = v80;
        v124 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
        goto LABEL_50;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
      v97 = v80;
      goto LABEL_102;
    case 4u:
      sub_20E1E14FC(v93, v77, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v107 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v108 = v162;
        sub_20E1EF280(&v93[v107], v162, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
        v109 = _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(v77, v108);
        v110 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v111 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v112 = v108;
        goto LABEL_48;
      }

      v140 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
      goto LABEL_101;
    case 5u:
      v77 = v177;
      sub_20E1E14FC(v93, v177, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v130 = v188;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
        goto LABEL_101;
      }

      v99 = v165;
      sub_20E1EF280(&v93[v130], v165, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60()) && (sub_20E15B558(*(v77 + 2), *(v99 + 16)))
      {
        v131 = *(v149 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
      goto LABEL_120;
    case 6u:
      v77 = v176;
      sub_20E1E14FC(v93, v176, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v134 = v188;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
        goto LABEL_101;
      }

      v99 = v164;
      sub_20E1EF280(&v93[v134], v164, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      if (sub_20E1494E0(*v77, *v99))
      {
        v135 = *(v151 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
      goto LABEL_120;
    case 7u:
      sub_20E1E14FC(v93, v70, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v125 = v188;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v126 = v163;
        sub_20E1EF280(&v93[v125], v163, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v109 = _s23LighthouseDataProcessor37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(v70, v126);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
        sub_20E1E1564(v126, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v119 = v70;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
      v97 = v70;
      goto LABEL_102;
    case 8u:
      v77 = v178;
      sub_20E1E14FC(v93, v178, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v138 = v188;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
        goto LABEL_101;
      }

      v99 = v166;
      sub_20E1EF280(&v93[v138], v166, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60() & 1) != 0)
      {
        v139 = *(v155 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
      goto LABEL_120;
    case 9u:
      v77 = v182;
      sub_20E1E14FC(v93, v182, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v115 = v188;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
        goto LABEL_101;
      }

      v99 = v167;
      sub_20E1EF280(&v93[v115], v167, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60()) && v77[16] == *(v99 + 16) && v77[17] == *(v99 + 17))
      {
        v116 = *(v148 + 28);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
      goto LABEL_120;
    case 0xAu:
      v77 = v181;
      sub_20E1E14FC(v93, v181, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v136 = v188;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
        goto LABEL_101;
      }

      v99 = v168;
      sub_20E1EF280(&v93[v136], v168, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60() & 1) != 0)
      {
        v137 = *(v156 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
      goto LABEL_120;
    case 0xBu:
      v77 = v184;
      sub_20E1E14FC(v93, v184, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v104 = v188;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_101;
      }

      v99 = v170;
      sub_20E1EF280(&v93[v104], v170, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v105 = *(v77 + 1);
      v106 = *(v99 + 8);
      if (v105)
      {
        if (!v106 || (*v77 != *v99 || v105 != v106) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else if (v106)
      {
        goto LABEL_119;
      }

      v143 = *(v150 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v101 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_117;
      }

LABEL_119:
      v141 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
      goto LABEL_120;
    case 0xCu:
      v77 = v180;
      sub_20E1E14FC(v93, v180, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v113 = v188;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
        goto LABEL_101;
      }

      v99 = v169;
      sub_20E1EF280(&v93[v113], v169, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      if (sub_20E1494E0(*v77, *v99))
      {
        v114 = *(v152 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
      goto LABEL_120;
    case 0xDu:
      v77 = v185;
      sub_20E1E14FC(v93, v185, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v132 = v188;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
        goto LABEL_101;
      }

      v99 = v171;
      sub_20E1EF280(&v93[v132], v171, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60() & 1) != 0)
      {
        v133 = *(v157 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
      goto LABEL_120;
    case 0xEu:
      v77 = v187;
      sub_20E1E14FC(v93, v187, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v102 = v188;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
        goto LABEL_101;
      }

      v99 = v173;
      sub_20E1EF280(&v93[v102], v173, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_20E322D60() & 1) != 0)
      {
        v103 = *(v158 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
      goto LABEL_120;
    case 0xFu:
      v77 = v179;
      sub_20E1E14FC(v93, v179, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v120 = v188;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v121 = v172;
        sub_20E1EF280(&v93[v120], v172, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v109 = sub_20E322850();
        v110 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
        goto LABEL_47;
      }

      v140 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
      goto LABEL_101;
    case 0x10u:
      v77 = v186;
      sub_20E1E14FC(v93, v186, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v98 = v188;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
        goto LABEL_101;
      }

      v99 = v174;
      sub_20E1EF280(&v93[v98], v174, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      if (sub_20E1487B4(*v77, *v99))
      {
        v100 = *(updated + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_117:
          v144 = v101;
          sub_20E1E1564(v99, v101);
          sub_20E1E1564(v77, v144);
LABEL_118:
          sub_20E1E1564(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
          v109 = 1;
          return v109 & 1;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_120:
      v145 = v141;
      sub_20E1E1564(v99, v141);
      sub_20E1E1564(v77, v145);
      sub_20E1E1564(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
      goto LABEL_121;
    case 0x11u:
      v77 = v183;
      sub_20E1E14FC(v93, v183, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v129 = v188;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v121 = v175;
        sub_20E1EF280(&v93[v129], v175, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v109 = sub_20E322850();
        v110 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_47:
        v111 = v110;
        v112 = v121;
LABEL_48:
        sub_20E1E1564(v112, v110);
        v119 = v77;
        goto LABEL_49;
      }

      v140 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_101:
      v96 = v140;
      v97 = v77;
      goto LABEL_102;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    default:
      sub_20E1E14FC(v93, v88, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v95 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v96 = type metadata accessor for TranscriptProtoASTFlatValue;
        v97 = v88;
LABEL_102:
        sub_20E1E1564(v97, v96);
LABEL_103:
        sub_20E04875C(v93, &qword_27C868EA0, &qword_20E342098);
LABEL_121:
        v109 = 0;
      }

      else
      {
        v142 = v154;
        sub_20E1EF280(&v93[v95], v154, type metadata accessor for TranscriptProtoASTFlatValue);
        v109 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v88, v142);
        v111 = type metadata accessor for TranscriptProtoASTFlatValue;
        sub_20E1E1564(v142, type metadata accessor for TranscriptProtoASTFlatValue);
        v119 = v88;
LABEL_49:
        v124 = v111;
LABEL_50:
        sub_20E1E1564(v119, v124);
        sub_20E1E1564(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
      }

      return v109 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v70 = type metadata accessor for TranscriptProtoCATDialog(0);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v75 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoSuppressed(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v74 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for TranscriptProtoSonicText(0);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for TranscriptProtoStaticText(0);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v66 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v66 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = (&v66 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EC0, &qword_20E3420C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v66 - v38;
  v40 = *(v37 + 56);
  sub_20E1E14FC(v76, &v66 - v38, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E1E14FC(v77, &v39[v40], type metadata accessor for TranscriptProtoDialogFormat);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_20E1E14FC(v39, v32, type metadata accessor for TranscriptProtoDialogFormat);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v72;
          sub_20E1EF280(&v39[v40], v72, type metadata accessor for TranscriptProtoSonicText);
          if (*v32 == *v42 && v32[1] == v42[1] || (sub_20E322D60() & 1) != 0)
          {
            v43 = *(v68 + 20);
            sub_20E3221C0();
            sub_20E1EF2E8();
            v44 = sub_20E322850();
            sub_20E1E1564(v42, type metadata accessor for TranscriptProtoSonicText);
            if (v44)
            {
              v45 = type metadata accessor for TranscriptProtoSonicText;
              v46 = v32;
LABEL_43:
              sub_20E1E1564(v46, v45);
              sub_20E1E1564(v39, type metadata accessor for TranscriptProtoDialogFormat);
              v48 = 1;
              return v48 & 1;
            }
          }

          else
          {
            sub_20E1E1564(v42, type metadata accessor for TranscriptProtoSonicText);
          }

          v64 = type metadata accessor for TranscriptProtoSonicText;
          v63 = v32;
          goto LABEL_51;
        }

        v51 = type metadata accessor for TranscriptProtoSonicText;
        v52 = v32;
LABEL_36:
        sub_20E1E1564(v52, v51);
        sub_20E04875C(v39, &qword_27C868EC0, &qword_20E3420C0);
LABEL_52:
        v48 = 0;
        return v48 & 1;
      }

      sub_20E1E14FC(v39, v29, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v51 = type metadata accessor for TranscriptProtoGeneratedText;
        v52 = v29;
        goto LABEL_36;
      }

      v54 = v74;
      sub_20E1EF280(&v39[v40], v74, type metadata accessor for TranscriptProtoGeneratedText);
      if (*v29 == *v54 && v29[1] == v54[1] || (sub_20E322D60() & 1) != 0)
      {
        v55 = *(v69 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v56 = type metadata accessor for TranscriptProtoGeneratedText;
          sub_20E1E1564(v54, type metadata accessor for TranscriptProtoGeneratedText);
          v46 = v29;
LABEL_42:
          v45 = v56;
          goto LABEL_43;
        }
      }

      v62 = type metadata accessor for TranscriptProtoGeneratedText;
      sub_20E1E1564(v54, type metadata accessor for TranscriptProtoGeneratedText);
      v63 = v29;
    }

    else
    {
      sub_20E1E14FC(v39, v34, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload())
      {
        v51 = type metadata accessor for TranscriptProtoStaticText;
        v52 = v34;
        goto LABEL_36;
      }

      v60 = v67;
      sub_20E1EF280(&v39[v40], v67, type metadata accessor for TranscriptProtoStaticText);
      if (*v34 == *v60 && v34[1] == v60[1] || (sub_20E322D60() & 1) != 0)
      {
        v61 = *(v66 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v56 = type metadata accessor for TranscriptProtoStaticText;
          sub_20E1E1564(v60, type metadata accessor for TranscriptProtoStaticText);
          v46 = v34;
          goto LABEL_42;
        }
      }

      v62 = type metadata accessor for TranscriptProtoStaticText;
      sub_20E1E1564(v60, type metadata accessor for TranscriptProtoStaticText);
      v63 = v34;
    }

    v64 = v62;
LABEL_51:
    sub_20E1E1564(v63, v64);
    sub_20E1E1564(v39, type metadata accessor for TranscriptProtoDialogFormat);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_20E1E14FC(v39, v26, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v51 = type metadata accessor for TranscriptProtoUnableToGenerate;
      v52 = v26;
      goto LABEL_36;
    }

    v53 = v71;
    sub_20E1EF280(&v39[v40], v71, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v48 = sub_20E322850();
    v49 = type metadata accessor for TranscriptProtoUnableToGenerate;
    sub_20E1E1564(v53, type metadata accessor for TranscriptProtoUnableToGenerate);
    v50 = v26;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_20E1E14FC(v39, v20, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v57 = v75;
        sub_20E1EF280(&v39[v40], v75, type metadata accessor for TranscriptProtoCATDialog);
        if (*v20 == *v57 && v20[1] == v57[1] || (sub_20E322D60() & 1) != 0)
        {
          v58 = *(v70 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          v59 = sub_20E322850();
          sub_20E1E1564(v57, type metadata accessor for TranscriptProtoCATDialog);
          if (v59)
          {
            v45 = type metadata accessor for TranscriptProtoCATDialog;
            v46 = v20;
            goto LABEL_43;
          }
        }

        else
        {
          sub_20E1E1564(v57, type metadata accessor for TranscriptProtoCATDialog);
        }

        v64 = type metadata accessor for TranscriptProtoCATDialog;
        v63 = v20;
        goto LABEL_51;
      }

      v51 = type metadata accessor for TranscriptProtoCATDialog;
      v52 = v20;
      goto LABEL_36;
    }

    sub_20E1E14FC(v39, v23, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v51 = type metadata accessor for TranscriptProtoSuppressed;
      v52 = v23;
      goto LABEL_36;
    }

    v47 = v73;
    sub_20E1EF280(&v39[v40], v73, type metadata accessor for TranscriptProtoSuppressed);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v48 = sub_20E322850();
    v49 = type metadata accessor for TranscriptProtoSuppressed;
    sub_20E1E1564(v47, type metadata accessor for TranscriptProtoSuppressed);
    v50 = v23;
  }

  sub_20E1E1564(v50, v49);
  sub_20E1E1564(v39, type metadata accessor for TranscriptProtoDialogFormat);
  return v48 & 1;
}

uint64_t _s23LighthouseDataProcessor51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v52 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v49 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v49 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EA8, &qword_20E3420A0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v49 - v32;
  v34 = *(v31 + 56);
  sub_20E1E14FC(v53, &v49 - v32, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E1E14FC(v54, &v33[v34], type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E1E14FC(v33, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v36 = *v20 == *&v33[v34];
LABEL_21:
        sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        return v36 & 1;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v39 = v52;
      sub_20E1E14FC(v33, v52, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v40 = v50;
        sub_20E1EF280(&v33[v34], v50, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        if (*v39 == *v40)
        {
          v47 = *(v49 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          v48 = sub_20E322850();
          sub_20E1E1564(v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v48)
          {
            sub_20E1E1564(v39, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
            sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
            v36 = 1;
            return v36 & 1;
          }
        }

        else
        {
          sub_20E1E1564(v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        }

        sub_20E1E1564(v39, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        goto LABEL_27;
      }

      v44 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution;
      v45 = v39;
    }

    else
    {
      sub_20E1E14FC(v33, v15, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v43 = v51;
        sub_20E1EF280(&v33[v34], v51, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v36 = sub_20E322850();
        sub_20E1E1564(v43, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        v37 = v15;
        v38 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
        goto LABEL_20;
      }

      v44 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
      v45 = v15;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1E14FC(v33, v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E1EF280(&v33[v34], v10, type metadata accessor for ToolKitProtoTypedValue);
        v36 = static ToolKitProtoTypedValue.== infix(_:_:)(v26, v10);
        sub_20E1E1564(v10, type metadata accessor for ToolKitProtoTypedValue);
        v37 = v26;
        v38 = type metadata accessor for ToolKitProtoTypedValue;
LABEL_20:
        sub_20E1E1564(v37, v38);
        goto LABEL_21;
      }

      v44 = type metadata accessor for ToolKitProtoTypedValue;
      v45 = v26;
LABEL_25:
      sub_20E1E1564(v45, v44);
      goto LABEL_26;
    }

    sub_20E1E14FC(v33, v23, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = *v23;
      goto LABEL_17;
    }

LABEL_26:
    sub_20E04875C(v33, &qword_27C868EA8, &qword_20E3420A0);
LABEL_27:
    v36 = 0;
    return v36 & 1;
  }

  sub_20E1E14FC(v33, v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v41 = *v28;
LABEL_17:
  v42 = v41 ^ v33[v34];
  sub_20E1E1564(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v36 = v42 ^ 1;
  return v36 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v46 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v46 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = (&v46 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F38, &qword_20E342138);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v46 - v32;
  v34 = *(v31 + 56);
  sub_20E1E14FC(v48, &v46 - v32, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E1E14FC(v49, &v33[v34], type metadata accessor for TranscriptProtoRequestContentEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v33, v23, type metadata accessor for TranscriptProtoRequestContentEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for TranscriptProtoSystemPromptResolution;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v46;
      sub_20E1EF280(v38, v46, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v40 = _s23LighthouseDataProcessor37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(v23, v39);
      sub_20E1E1564(v39, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v41 = v23;
      v42 = type metadata accessor for TranscriptProtoSystemPromptResolution;
LABEL_18:
      sub_20E1E1564(v41, v42);
      sub_20E1E1564(v33, type metadata accessor for TranscriptProtoRequestContentEnum);
      return v40 & 1;
    }

    sub_20E1E14FC(v33, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for TranscriptProtoRequestContentStopContent;
      v37 = v20;
      goto LABEL_15;
    }

    v44 = v47;
    sub_20E1EF280(&v33[v34], v47, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_20E3221C0();
    sub_20E1EF2E8();
    v40 = sub_20E322850();
    v43 = type metadata accessor for TranscriptProtoRequestContentStopContent;
    sub_20E1E1564(v44, type metadata accessor for TranscriptProtoRequestContentStopContent);
    v41 = v20;
LABEL_17:
    v42 = v43;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v33, v26, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
      v37 = v26;
      goto LABEL_15;
    }

    sub_20E1EF280(&v33[v34], v11, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v40 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)(v26, v11);
    v43 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    sub_20E1E1564(v11, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v41 = v26;
    goto LABEL_17;
  }

  sub_20E1E14FC(v33, v28, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E1EF280(&v33[v34], v15, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v40 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)(v28, v15);
    v43 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    sub_20E1E1564(v15, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v41 = v28;
    goto LABEL_17;
  }

  v36 = type metadata accessor for TranscriptProtoRequestContentTextContent;
  v37 = v28;
LABEL_15:
  sub_20E1E1564(v37, v36);
  sub_20E04875C(v33, &qword_27C868F38, &qword_20E342138);
  v40 = 0;
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v49 = type metadata accessor for TranscriptProtoControlPayload(0);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v53 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v47 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v47 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v47 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EB8, &qword_20E3420B8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v47 - v29;
  v31 = *(v28 + 56);
  sub_20E1E14FC(a1, &v47 - v29, type metadata accessor for TranscriptProtoUitype);
  sub_20E1E14FC(v54, &v30[v31], type metadata accessor for TranscriptProtoUitype);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v30, v20, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v33 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
        v34 = v20;
        goto LABEL_27;
      }

      v35 = v53;
      sub_20E1EF280(&v30[v31], v53, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      if (sub_20E15F7B0(*v20, v20[1], *v35, v35[1]) & 1) != 0 && (v20[2] == v35[2] && v20[3] == v35[3] || (sub_20E322D60()))
      {
        v36 = *(v48 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v37 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoPluginSnippetPayload);
          v38 = v20;
LABEL_23:
          sub_20E1E1564(v38, v37);
          sub_20E1E1564(v30, type metadata accessor for TranscriptProtoUitype);
          v43 = 1;
          return v43 & 1;
        }
      }

      v44 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
      sub_20E1E1564(v35, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v45 = v20;
    }

    else
    {
      sub_20E1E14FC(v30, v17, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v33 = type metadata accessor for TranscriptProtoControlPayload;
        v34 = v17;
        goto LABEL_27;
      }

      v41 = v52;
      sub_20E1EF280(&v30[v31], v52, type metadata accessor for TranscriptProtoControlPayload);
      if (sub_20E15F7B0(*v17, *(v17 + 1), *v41, *(v41 + 8)))
      {
        v42 = *(v49 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v37 = type metadata accessor for TranscriptProtoControlPayload;
          sub_20E1E1564(v41, type metadata accessor for TranscriptProtoControlPayload);
          v38 = v17;
          goto LABEL_23;
        }
      }

      v44 = type metadata accessor for TranscriptProtoControlPayload;
      sub_20E1E1564(v41, type metadata accessor for TranscriptProtoControlPayload);
      v45 = v17;
    }

LABEL_32:
    sub_20E1E1564(v45, v44);
    sub_20E1E1564(v30, type metadata accessor for TranscriptProtoUitype);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v30, v23, type metadata accessor for TranscriptProtoUitype);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = type metadata accessor for TranscriptProtoLiveActivityPayload;
      v34 = v23;
      goto LABEL_27;
    }

    v39 = v51;
    sub_20E1EF280(&v30[v31], v51, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (*v23 == *v39 && v23[1] == v39[1] || (sub_20E322D60() & 1) != 0)
    {
      v40 = *(v50 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v37 = type metadata accessor for TranscriptProtoLiveActivityPayload;
        sub_20E1E1564(v39, type metadata accessor for TranscriptProtoLiveActivityPayload);
        v38 = v23;
        goto LABEL_23;
      }
    }

    v44 = type metadata accessor for TranscriptProtoLiveActivityPayload;
    sub_20E1E1564(v39, type metadata accessor for TranscriptProtoLiveActivityPayload);
    v45 = v23;
    goto LABEL_32;
  }

  sub_20E1E14FC(v30, v25, type metadata accessor for TranscriptProtoUitype);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = type metadata accessor for TranscriptProtoArchiveViewPayload;
    v34 = v25;
LABEL_27:
    sub_20E1E1564(v34, v33);
    sub_20E04875C(v30, &qword_27C868EB8, &qword_20E3420B8);
LABEL_33:
    v43 = 0;
    return v43 & 1;
  }

  sub_20E1EF280(&v30[v31], v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v43 = _s23LighthouseDataProcessor33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(v25, v12);
  sub_20E1E1564(v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_20E1E1564(v25, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_20E1E1564(v30, type metadata accessor for TranscriptProtoUitype);
  return v43 & 1;
}

BOOL _s23LighthouseDataProcessor20TranscriptProtoLabelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F8, &qword_20E3420B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_20E1E14FC(a1, &v22 - v14, type metadata accessor for TranscriptProtoLabel);
  sub_20E1E14FC(a2, &v15[v16], type metadata accessor for TranscriptProtoLabel);
  sub_20E1EF280(v15, v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E1EF280(&v15[v16], v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v17 = *v10 == *v8 && v10[1] == v8[1];
  v20 = 0;
  if (v17 || (sub_20E322D60() & 1) != 0)
  {
    v18 = v10[2] == v8[2] && v10[3] == v8[3];
    if (v18 || (sub_20E322D60() & 1) != 0)
    {
      v19 = *(v4 + 24);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v20 = 1;
      }
    }
  }

  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E1E1564(v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return v20;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v43 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v45 = (&v43 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v43 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v43 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v43 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E88, &qword_20E342080);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v43 - v26;
  v28 = (&v43 + *(v25 + 56) - v26);
  sub_20E1E14FC(a1, &v43 - v26, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E1E14FC(v46, v28, type metadata accessor for TranscriptProtoValueExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_20E1E14FC(v27, v9, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v31 = *v9;
        v30 = v9[1];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
LABEL_5:
          if (v31 == *v28 && v30 == *(v28 + 1))
          {
            v41 = *(v28 + 1);
          }

          else
          {
            v33 = *(v28 + 1);
            v34 = sub_20E322D60();

            if ((v34 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_33;
        }

        goto LABEL_17;
      }

      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_33:
        sub_20E1E1564(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v37 = 1;
        return v37 & 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_20E1E14FC(v27, v14, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v31 = *v14;
        v30 = v14[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_35;
      }

      v38 = v45;
      sub_20E1E14FC(v27, v45, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v39 = v44;
        sub_20E1EF280(v28, v44, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        if ((sub_20E14A924(*v38, *v39) & 1) == 0 || (v40 = *(v43 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          sub_20E1E1564(v39, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          sub_20E1E1564(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
LABEL_39:
          sub_20E1E1564(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
          goto LABEL_36;
        }

        sub_20E1E1564(v39, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        sub_20E1E1564(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        goto LABEL_33;
      }

      sub_20E1E1564(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    }

LABEL_35:
    sub_20E04875C(v27, &qword_27C868E88, &qword_20E342080);
LABEL_36:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1E14FC(v27, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v35 = *v20 == *v28;
    }

    else
    {
      sub_20E1E14FC(v27, v17, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v35 = *v17 == *v28;
    }

    v37 = v35;
    sub_20E1E1564(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
  }

  else
  {
    sub_20E1E14FC(v27, v22, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_35;
    }

    v36 = *v22 ^ *v28;
    sub_20E1E1564(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v37 = v36 ^ 1;
  }

  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v287 = a1;
  v288 = a2;
  v2 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v261 = (&v226 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v260 = (&v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v259 = (&v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v12 = *(*(ToolsExpression - 8) + 64);
  MEMORY[0x28223BE20](ToolsExpression - 8);
  v258 = (&v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v15 = *(*(SpansExpression - 8) + 64);
  MEMORY[0x28223BE20](SpansExpression - 8);
  v257 = (&v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v18 = *(*(ContextExpression - 8) + 64);
  MEMORY[0x28223BE20](ContextExpression - 8);
  v256 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v20 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v255 = (&v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v22 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v254 = (&v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v253 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v252 = (&v226 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v31 = *(*(MentionedAppsExpression - 8) + 64);
  MEMORY[0x28223BE20](MentionedAppsExpression - 8);
  v251 = &v226 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v250 = &v226 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v249 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v248 = &v226 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v247 = (&v226 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v246 = (&v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v244 = (&v226 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v228 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v51 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v245 = (&v226 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v243 = (&v226 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v242 = (&v226 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v241 = (&v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v240 = (&v226 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for TranscriptProtoPickExpression(0);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v238 = (&v226 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = type metadata accessor for TranscriptProtoSayExpression(0);
  v68 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v239 = (&v226 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for TranscriptProtoCallExpression(0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v237 = (&v226 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v74 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v236 = (&v226 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v235 = (&v226 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v234 = &v226 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v233 = &v226 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TranscriptProtoStatementID(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v232 = &v226 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TranscriptProtoValueExpression(0);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v231 = &v226 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v91 = *(*(v286 - 8) + 64);
  v92 = MEMORY[0x28223BE20](v286);
  v285 = (&v226 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = MEMORY[0x28223BE20](v92);
  v284 = (&v226 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v282 = (&v226 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v280 = (&v226 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v278 = (&v226 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v279 = &v226 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v283 = &v226 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v281 = &v226 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v277 = &v226 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v275 = (&v226 - v111);
  v112 = MEMORY[0x28223BE20](v110);
  v276 = &v226 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v274 = &v226 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v273 = &v226 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v272 = &v226 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v270 = (&v226 - v121);
  v122 = MEMORY[0x28223BE20](v120);
  v269 = (&v226 - v123);
  v124 = MEMORY[0x28223BE20](v122);
  v268 = (&v226 - v125);
  v126 = MEMORY[0x28223BE20](v124);
  v271 = &v226 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v267 = (&v226 - v129);
  v130 = MEMORY[0x28223BE20](v128);
  v265 = (&v226 - v131);
  v132 = MEMORY[0x28223BE20](v130);
  v264 = (&v226 - v133);
  v134 = MEMORY[0x28223BE20](v132);
  v263 = (&v226 - v135);
  v136 = MEMORY[0x28223BE20](v134);
  v262 = (&v226 - v137);
  v138 = MEMORY[0x28223BE20](v136);
  v266 = &v226 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v142 = (&v226 - v141);
  v143 = MEMORY[0x28223BE20](v140);
  v145 = (&v226 - v144);
  v146 = MEMORY[0x28223BE20](v143);
  v148 = (&v226 - v147);
  v149 = MEMORY[0x28223BE20](v146);
  v151 = &v226 - v150;
  v152 = MEMORY[0x28223BE20](v149);
  v154 = &v226 - v153;
  v155 = MEMORY[0x28223BE20](v152);
  v157 = &v226 - v156;
  MEMORY[0x28223BE20](v155);
  v159 = &v226 - v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E90, &qword_20E342088);
  v161 = *(*(v160 - 8) + 64);
  v162 = MEMORY[0x28223BE20](v160 - 8);
  v164 = &v226 - v163;
  v165 = *(v162 + 56);
  sub_20E1E14FC(v287, &v226 - v163, type metadata accessor for TranscriptProtoExpressionEnum);
  v287 = v165;
  sub_20E1E14FC(v288, &v164[v165], type metadata accessor for TranscriptProtoExpressionEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v164, v157, type metadata accessor for TranscriptProtoExpressionEnum);
      v197 = v287;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v198 = v232;
        sub_20E1EF280(&v164[v197], v232, type metadata accessor for TranscriptProtoStatementID);
        v171 = static TranscriptProtoStatementID.== infix(_:_:)(v157, v198);
        v188 = type metadata accessor for TranscriptProtoStatementID;
        sub_20E1E1564(v198, type metadata accessor for TranscriptProtoStatementID);
        v193 = v157;
        goto LABEL_76;
      }

      v167 = type metadata accessor for TranscriptProtoStatementID;
      v168 = v157;
      goto LABEL_110;
    case 2u:
      sub_20E1E14FC(v164, v154, type metadata accessor for TranscriptProtoExpressionEnum);
      v186 = v287;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v187 = v233;
        sub_20E1EF280(&v164[v186], v233, type metadata accessor for TranscriptProtoPrefixExpression);
        v171 = _s23LighthouseDataProcessor31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(v154, v187);
        v181 = type metadata accessor for TranscriptProtoPrefixExpression;
        v188 = type metadata accessor for TranscriptProtoPrefixExpression;
        v189 = v187;
        goto LABEL_63;
      }

      v221 = type metadata accessor for TranscriptProtoPrefixExpression;
      goto LABEL_105;
    case 3u:
      sub_20E1E14FC(v164, v151, type metadata accessor for TranscriptProtoExpressionEnum);
      v191 = v287;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v192 = v234;
        sub_20E1EF280(&v164[v191], v234, type metadata accessor for TranscriptProtoInfixExpression);
        v171 = _s23LighthouseDataProcessor30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(v151, v192);
        sub_20E1E1564(v192, type metadata accessor for TranscriptProtoInfixExpression);
        v193 = v151;
        v194 = type metadata accessor for TranscriptProtoInfixExpression;
        goto LABEL_77;
      }

      v167 = type metadata accessor for TranscriptProtoInfixExpression;
      v168 = v151;
      goto LABEL_110;
    case 4u:
      sub_20E1E14FC(v164, v148, type metadata accessor for TranscriptProtoExpressionEnum);
      v176 = v287;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v170 = v235;
        sub_20E1EF280(&v164[v176], v235, type metadata accessor for TranscriptProtoIndexExpression);
        v171 = sub_20E170670(v148, v170);
        v172 = type metadata accessor for TranscriptProtoIndexExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoIndexExpression;
      goto LABEL_109;
    case 5u:
      sub_20E1E14FC(v164, v145, type metadata accessor for TranscriptProtoExpressionEnum);
      v201 = v287;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v202 = v236;
        sub_20E1EF280(&v164[v201], v236, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v171 = sub_20E1626E4(v145, v202);
        v188 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
        sub_20E1E1564(v202, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v193 = v145;
        goto LABEL_76;
      }

      v167 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v168 = v145;
      goto LABEL_110;
    case 6u:
      sub_20E1E14FC(v164, v142, type metadata accessor for TranscriptProtoExpressionEnum);
      v206 = v287;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v207 = v237;
        sub_20E1EF280(&v164[v206], v237, type metadata accessor for TranscriptProtoCallExpression);
        v171 = _s23LighthouseDataProcessor29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(v142, v207);
        v188 = type metadata accessor for TranscriptProtoCallExpression;
        sub_20E1E1564(v207, type metadata accessor for TranscriptProtoCallExpression);
        v193 = v142;
        goto LABEL_76;
      }

      v167 = type metadata accessor for TranscriptProtoCallExpression;
      v168 = v142;
      goto LABEL_110;
    case 7u:
      v154 = v266;
      sub_20E1E14FC(v164, v266, type metadata accessor for TranscriptProtoExpressionEnum);
      v195 = v287;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v221 = type metadata accessor for TranscriptProtoSayExpression;
        goto LABEL_105;
      }

      v183 = v239;
      sub_20E1EF280(&v164[v195], v239, type metadata accessor for TranscriptProtoSayExpression);
      if (sub_20E14A924(*v154, *v183))
      {
        v196 = *(v227 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v185 = type metadata accessor for TranscriptProtoSayExpression;
          goto LABEL_68;
        }
      }

      v223 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_118;
    case 8u:
      v148 = v262;
      sub_20E1E14FC(v164, v262, type metadata accessor for TranscriptProtoExpressionEnum);
      v210 = v287;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v170 = v238;
        sub_20E1EF280(&v164[v210], v238, type metadata accessor for TranscriptProtoPickExpression);
        v171 = _s23LighthouseDataProcessor29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(v148, v170);
        v172 = type metadata accessor for TranscriptProtoPickExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoPickExpression;
      goto LABEL_109;
    case 9u:
      v148 = v263;
      sub_20E1E14FC(v164, v263, type metadata accessor for TranscriptProtoExpressionEnum);
      v178 = v287;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v170 = v240;
        sub_20E1EF280(&v164[v178], v240, type metadata accessor for TranscriptProtoConfirmExpression);
        v171 = sub_20E16BE2C(v148, v170);
        v172 = type metadata accessor for TranscriptProtoConfirmExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_109;
    case 0xAu:
      v148 = v264;
      sub_20E1E14FC(v164, v264, type metadata accessor for TranscriptProtoExpressionEnum);
      v209 = v287;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v170 = v241;
        sub_20E1EF280(&v164[v209], v241, type metadata accessor for TranscriptProtoSearchExpression);
        v171 = _s23LighthouseDataProcessor31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(v148, v170);
        v172 = type metadata accessor for TranscriptProtoSearchExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoSearchExpression;
      goto LABEL_109;
    case 0xBu:
      v148 = v265;
      sub_20E1E14FC(v164, v265, type metadata accessor for TranscriptProtoExpressionEnum);
      v175 = v287;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v170 = v242;
        sub_20E1EF280(&v164[v175], v242, type metadata accessor for TranscriptProtoStructuredSearchExpression);
        v171 = _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(v148, v170);
        v172 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_109;
    case 0xCu:
      v148 = v267;
      sub_20E1E14FC(v164, v267, type metadata accessor for TranscriptProtoExpressionEnum);
      v177 = v287;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v170 = v243;
        sub_20E1EF280(&v164[v177], v243, type metadata accessor for TranscriptProtoPickOneExpression);
        v171 = sub_20E16BE14(v148, v170);
        v172 = type metadata accessor for TranscriptProtoPickOneExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_109;
    case 0xDu:
      v154 = v271;
      sub_20E1E14FC(v164, v271, type metadata accessor for TranscriptProtoExpressionEnum);
      v204 = v287;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v221 = type metadata accessor for TranscriptProtoResolveToolExpression;
        goto LABEL_105;
      }

      v183 = v245;
      sub_20E1EF280(&v164[v204], v245, type metadata accessor for TranscriptProtoResolveToolExpression);
      if (sub_20E14D9A0(*v154, *v183))
      {
        v205 = *(v228 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v185 = type metadata accessor for TranscriptProtoResolveToolExpression;
          goto LABEL_68;
        }
      }

      v223 = type metadata accessor for TranscriptProtoResolveToolExpression;
      goto LABEL_118;
    case 0xEu:
      v148 = v268;
      sub_20E1E14FC(v164, v268, type metadata accessor for TranscriptProtoExpressionEnum);
      v174 = v287;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v170 = v244;
        sub_20E1EF280(&v164[v174], v244, type metadata accessor for TranscriptProtoUndoExpression);
        v171 = sub_20E171320(v148, v170);
        v172 = type metadata accessor for TranscriptProtoUndoExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_109;
    case 0xFu:
      v148 = v269;
      sub_20E1E14FC(v164, v269, type metadata accessor for TranscriptProtoExpressionEnum);
      v190 = v287;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v170 = v246;
        sub_20E1EF280(&v164[v190], v246, type metadata accessor for TranscriptProtoRejectExpression);
        v171 = sub_20E16C6C4(v148, v170);
        v172 = type metadata accessor for TranscriptProtoRejectExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_109;
    case 0x10u:
      v148 = v270;
      sub_20E1E14FC(v164, v270, type metadata accessor for TranscriptProtoExpressionEnum);
      v173 = v287;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v170 = v247;
        sub_20E1EF280(&v164[v173], v247, type metadata accessor for TranscriptProtoCancelExpression);
        v171 = sub_20E16DB7C(v148, v170);
        v172 = type metadata accessor for TranscriptProtoCancelExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_109;
    case 0x11u:
      v154 = v272;
      sub_20E1E14FC(v164, v272, type metadata accessor for TranscriptProtoExpressionEnum);
      v199 = v287;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v180 = v248;
        sub_20E1EF280(&v164[v199], v248, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
        goto LABEL_62;
      }

      v221 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
      goto LABEL_105;
    case 0x12u:
      v154 = v273;
      sub_20E1E14FC(v164, v273, type metadata accessor for TranscriptProtoExpressionEnum);
      v208 = v287;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v180 = v249;
        sub_20E1EF280(&v164[v208], v249, type metadata accessor for TranscriptProtoContinuePlanningExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
        goto LABEL_62;
      }

      v221 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
      goto LABEL_105;
    case 0x13u:
      v154 = v274;
      sub_20E1E14FC(v164, v274, type metadata accessor for TranscriptProtoExpressionEnum);
      v213 = v287;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v180 = v250;
        sub_20E1EF280(&v164[v213], v250, type metadata accessor for TranscriptProtoEndOfPlanExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
        goto LABEL_62;
      }

      v221 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
      goto LABEL_105;
    case 0x14u:
      v154 = v276;
      sub_20E1E14FC(v164, v276, type metadata accessor for TranscriptProtoExpressionEnum);
      v200 = v287;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v180 = v251;
        sub_20E1EF280(&v164[v200], v251, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
        goto LABEL_62;
      }

      v221 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
      goto LABEL_105;
    case 0x15u:
      v148 = v275;
      sub_20E1E14FC(v164, v275, type metadata accessor for TranscriptProtoExpressionEnum);
      v203 = v287;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v170 = v252;
        sub_20E1EF280(&v164[v203], v252, type metadata accessor for TranscriptProtoOpenExpression);
        v171 = sub_20E174CA0(v148, v170);
        v172 = type metadata accessor for TranscriptProtoOpenExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoOpenExpression;
      goto LABEL_109;
    case 0x16u:
      v154 = v277;
      sub_20E1E14FC(v164, v277, type metadata accessor for TranscriptProtoExpressionEnum);
      v212 = v287;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v180 = v253;
        sub_20E1EF280(&v164[v212], v253, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
        goto LABEL_62;
      }

      v221 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
      goto LABEL_105;
    case 0x17u:
      v154 = v281;
      sub_20E1E14FC(v164, v281, type metadata accessor for TranscriptProtoExpressionEnum);
      v214 = v287;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        v221 = type metadata accessor for TranscriptProtoPayloadExpression;
        goto LABEL_105;
      }

      v183 = v254;
      sub_20E1EF280(&v164[v214], v254, type metadata accessor for TranscriptProtoPayloadExpression);
      if (sub_20E14A924(*v154, *v183))
      {
        v215 = *(v229 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v185 = type metadata accessor for TranscriptProtoPayloadExpression;
          goto LABEL_68;
        }
      }

      v223 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_118;
    case 0x18u:
      v154 = v283;
      sub_20E1E14FC(v164, v283, type metadata accessor for TranscriptProtoExpressionEnum);
      v182 = v287;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v221 = type metadata accessor for TranscriptProtoFormatExpression;
        goto LABEL_105;
      }

      v183 = v255;
      sub_20E1EF280(&v164[v182], v255, type metadata accessor for TranscriptProtoFormatExpression);
      if (sub_20E14A924(*v154, *v183))
      {
        v184 = *(v230 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v185 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_68:
          v216 = v185;
          sub_20E1E1564(v183, v185);
          sub_20E1E1564(v154, v216);
          sub_20E1E1564(v164, type metadata accessor for TranscriptProtoExpressionEnum);
          v171 = 1;
          return v171 & 1;
        }
      }

      v223 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_118:
      v225 = v223;
      sub_20E1E1564(v183, v223);
      sub_20E1E1564(v154, v225);
      sub_20E1E1564(v164, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_111;
    case 0x19u:
      v154 = v279;
      sub_20E1E14FC(v164, v279, type metadata accessor for TranscriptProtoExpressionEnum);
      v179 = v287;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v180 = v256;
        sub_20E1EF280(&v164[v179], v256, type metadata accessor for TranscriptProtoRetrieveContextExpression);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v171 = sub_20E322850();
        v181 = type metadata accessor for TranscriptProtoRetrieveContextExpression;
LABEL_62:
        v188 = v181;
        v189 = v180;
LABEL_63:
        sub_20E1E1564(v189, v181);
        v193 = v154;
        goto LABEL_76;
      }

      v221 = type metadata accessor for TranscriptProtoRetrieveContextExpression;
LABEL_105:
      v167 = v221;
      v168 = v154;
      goto LABEL_110;
    case 0x1Au:
      v148 = v278;
      sub_20E1E14FC(v164, v278, type metadata accessor for TranscriptProtoExpressionEnum);
      v219 = v287;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v170 = v257;
        sub_20E1EF280(&v164[v219], v257, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
        v171 = sub_20E164EBC(v148, v170);
        v172 = type metadata accessor for TranscriptProtoRetrieveSpansExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoRetrieveSpansExpression;
      goto LABEL_109;
    case 0x1Bu:
      v148 = v280;
      sub_20E1E14FC(v164, v280, type metadata accessor for TranscriptProtoExpressionEnum);
      v169 = v287;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v170 = v258;
        sub_20E1EF280(&v164[v169], v258, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
        v171 = sub_20E164EA4(v148, v170);
        v172 = type metadata accessor for TranscriptProtoRetrieveToolsExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoRetrieveToolsExpression;
      goto LABEL_109;
    case 0x1Cu:
      v148 = v282;
      sub_20E1E14FC(v164, v282, type metadata accessor for TranscriptProtoExpressionEnum);
      v217 = v287;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v170 = v259;
        sub_20E1EF280(&v164[v217], v259, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
        v171 = sub_20E164B48(v148, v170);
        v172 = type metadata accessor for TranscriptProtoSiriXFallbackExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoSiriXFallbackExpression;
      goto LABEL_109;
    case 0x1Du:
      v148 = v284;
      sub_20E1E14FC(v164, v284, type metadata accessor for TranscriptProtoExpressionEnum);
      v218 = v287;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v170 = v260;
        sub_20E1EF280(&v164[v218], v260, type metadata accessor for TranscriptProtoUserConfirmExpression);
        v171 = _s23LighthouseDataProcessor36TranscriptProtoUserConfirmExpressionV2eeoiySbAC_ACtFZ_0(v148, v170);
        v172 = type metadata accessor for TranscriptProtoUserConfirmExpression;
        goto LABEL_75;
      }

      v220 = type metadata accessor for TranscriptProtoUserConfirmExpression;
      goto LABEL_109;
    case 0x1Eu:
      v148 = v285;
      sub_20E1E14FC(v164, v285, type metadata accessor for TranscriptProtoExpressionEnum);
      v211 = v287;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v170 = v261;
        sub_20E1EF280(&v164[v211], v261, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
        v171 = sub_20E1626B8(v148, v170);
        v172 = type metadata accessor for TranscriptProtoUserDisambiguateExpression;
LABEL_75:
        v188 = v172;
        sub_20E1E1564(v170, v172);
        v193 = v148;
        goto LABEL_76;
      }

      v220 = type metadata accessor for TranscriptProtoUserDisambiguateExpression;
LABEL_109:
      v167 = v220;
      v168 = v148;
      goto LABEL_110;
    default:
      sub_20E1E14FC(v164, v159, type metadata accessor for TranscriptProtoExpressionEnum);
      v166 = v287;
      if (swift_getEnumCaseMultiPayload())
      {
        v167 = type metadata accessor for TranscriptProtoValueExpression;
        v168 = v159;
LABEL_110:
        sub_20E1E1564(v168, v167);
        sub_20E04875C(v164, &qword_27C868E90, &qword_20E342088);
LABEL_111:
        v171 = 0;
      }

      else
      {
        v224 = v231;
        sub_20E1EF280(&v164[v166], v231, type metadata accessor for TranscriptProtoValueExpression);
        v171 = _s23LighthouseDataProcessor30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(v159, v224);
        v188 = type metadata accessor for TranscriptProtoValueExpression;
        sub_20E1E1564(v224, type metadata accessor for TranscriptProtoValueExpression);
        v193 = v159;
LABEL_76:
        v194 = v188;
LABEL_77:
        sub_20E1E1564(v193, v194);
        sub_20E1E1564(v164, type metadata accessor for TranscriptProtoExpressionEnum);
      }

      return v171 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoClientAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E78, &qword_20E342070);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_20E1E14FC(a1, &v31 - v22, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E1E14FC(a2, &v23[v24], type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E1E14FC(v23, v16, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E1EF280(&v23[v24], v7, type metadata accessor for TranscriptProtoClientAction);
      v25 = _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v16, v7);
      sub_20E1E1564(v7, type metadata accessor for TranscriptProtoClientAction);
      v26 = v16;
      v27 = type metadata accessor for TranscriptProtoClientAction;
LABEL_9:
      sub_20E1E1564(v26, v27);
      sub_20E1E1564(v23, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
      return v25 & 1;
    }

    v28 = type metadata accessor for TranscriptProtoClientAction;
    v29 = v16;
  }

  else
  {
    sub_20E1E14FC(v23, v18, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E1EF280(&v23[v24], v11, type metadata accessor for TranscriptProtoAction);
      v25 = static TranscriptProtoAction.== infix(_:_:)(v18, v11);
      sub_20E1E1564(v11, type metadata accessor for TranscriptProtoAction);
      v26 = v18;
      v27 = type metadata accessor for TranscriptProtoAction;
      goto LABEL_9;
    }

    v28 = type metadata accessor for TranscriptProtoAction;
    v29 = v18;
  }

  sub_20E1E1564(v29, v28);
  sub_20E04875C(v23, &qword_27C868E78, &qword_20E342070);
  v25 = 0;
  return v25 & 1;
}

BOOL _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EE8, &qword_20E3420E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_20E1E14FC(a1, &v21 - v14, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E1E14FC(a2, &v15[v16], type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E1EF280(v15, v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E1EF280(&v15[v16], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v17 = *v10 == *v8 && v10[1] == v8[1];
  v19 = 0;
  if (v17 || (sub_20E322D60()) && (sub_20E15F7B0(v10[2], v10[3], v8[2], v8[3]) & 1) != 0 && v10[4] == v8[4])
  {
    v18 = *(v4 + 28);
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v19 = 1;
    }
  }

  sub_20E1E1564(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E1E1564(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return v19;
}

uint64_t _s23LighthouseDataProcessor028TranscriptProtoActionFailureG4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v40 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v39 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v39 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EF0, &qword_20E3420F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v39 - v20;
  v22 = *(v19 + 56);
  sub_20E1E14FC(a1, &v39 - v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E1E14FC(a2, &v21[v22], type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v21, v14, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v23 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        v24 = v14;
        goto LABEL_50;
      }

      v25 = v40;
      sub_20E1EF280(&v21[v22], v40, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      v26 = v14[1];
      v27 = v25[1];
      if (v26)
      {
        if (!v27)
        {
          goto LABEL_72;
        }

        v28 = *v14 == *v25 && v26 == v27;
        if (!v28 && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (v27)
      {
LABEL_72:
        v36 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_20E1E1564(v25, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
        v37 = v14;
        goto LABEL_73;
      }

      v38 = *(v4 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v34 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest;
        sub_20E1E1564(v25, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
        v35 = v14;
        goto LABEL_70;
      }

      goto LABEL_72;
    case 2u:
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_71;
      }

      goto LABEL_51;
    default:
      sub_20E1E14FC(v21, v16, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v23 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        v24 = v16;
LABEL_50:
        sub_20E1E1564(v24, v23);
LABEL_51:
        sub_20E04875C(v21, &qword_27C868EF0, &qword_20E3420F0);
        return 0;
      }

      v30 = v39;
      sub_20E1EF280(&v21[v22], v39, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v31 = *v16 == *v30 && v16[1] == v30[1];
      if (!v31 && (sub_20E322D60() & 1) == 0 || (v16[2] == v30[2] ? (v32 = v16[3] == v30[3]) : (v32 = 0), !v32 && (sub_20E322D60() & 1) == 0 || v16[4] != v30[4] || (v33 = *(v7 + 28), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0)))
      {
        v36 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
        sub_20E1E1564(v30, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        v37 = v16;
LABEL_73:
        sub_20E1E1564(v37, v36);
        sub_20E1E1564(v21, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        return 0;
      }

      v34 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError;
      sub_20E1E1564(v30, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v35 = v16;
LABEL_70:
      sub_20E1E1564(v35, v34);
LABEL_71:
      sub_20E1E1564(v21, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      return 1;
  }
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v341 = a2;
  v342 = a1;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v2 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v309 = (&v266 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v307 = &v266 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v7 = *(*(v272 - 8) + 64);
  MEMORY[0x28223BE20](v272);
  v308 = (&v266 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v306 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v305 = &v266 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v304 = &v266 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v19 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v303 = &v266 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v302 = &v266 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v25 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v301 = &v266 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v300 = &v266 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v299 = &v266 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v297 = &v266 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v296 = &v266 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoToolResolution(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v295 = &v266 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v42 = *(*(v267 - 8) + 64);
  MEMORY[0x28223BE20](v267);
  v298 = (&v266 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v294 = &v266 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v293 = &v266 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TranscriptProtoStatementResult(0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v292 = &v266 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v291 = &v266 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v289 = &v266 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v288 = &v266 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v62 = *(*(v266 - 8) + 64);
  MEMORY[0x28223BE20](v266);
  v290 = (&v266 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v64 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v287 = (&v266 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v66 = *(*(v269 - 8) + 64);
  MEMORY[0x28223BE20](v269);
  v285 = (&v266 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v68 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268);
  v286 = (&v266 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v284 = &v266 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v283 = &v266 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v77 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults - 8);
  v282 = &v266 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v281 = &v266 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TranscriptProtoSessionError(0);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v280 = &v266 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TranscriptProtoVariableStep(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v279 = (&v266 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v89 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step - 8);
  v278 = &v266 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TranscriptProtoClientAction(0);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v277 = (&v266 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for TranscriptProtoAction(0);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v276 = &v266 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TranscriptProtoPlan(0);
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97 - 8);
  v275 = &v266 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TranscriptProtoRequest(0);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100 - 8);
  v274 = &v266 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TranscriptProtoSessionStart(0);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103 - 8);
  v271 = &v266 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v106 = *(*(v340 - 8) + 64);
  v107 = MEMORY[0x28223BE20](v340);
  v339 = (&v266 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = MEMORY[0x28223BE20](v107);
  v337 = (&v266 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v338 = (&v266 - v112);
  v113 = MEMORY[0x28223BE20](v111);
  v336 = &v266 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v335 = &v266 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v334 = &v266 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v331 = &v266 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v333 = (&v266 - v122);
  v123 = MEMORY[0x28223BE20](v121);
  v330 = &v266 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v329 = &v266 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v328 = &v266 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v327 = &v266 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v326 = &v266 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v325 = &v266 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v332 = (&v266 - v136);
  v137 = MEMORY[0x28223BE20](v135);
  v323 = &v266 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v321 = &v266 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v320 = &v266 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v318 = &v266 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v316 = &v266 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v315 = &v266 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v324 = (&v266 - v150);
  v151 = MEMORY[0x28223BE20](v149);
  v319 = (&v266 - v152);
  v153 = MEMORY[0x28223BE20](v151);
  v317 = (&v266 - v154);
  v155 = MEMORY[0x28223BE20](v153);
  v322 = (&v266 - v156);
  v157 = MEMORY[0x28223BE20](v155);
  v314 = (&v266 - v158);
  v159 = MEMORY[0x28223BE20](v157);
  v313 = &v266 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v312 = &v266 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v311 = &v266 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v310 = &v266 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v169 = (&v266 - v168);
  v170 = MEMORY[0x28223BE20](v167);
  v172 = &v266 - v171;
  v173 = MEMORY[0x28223BE20](v170);
  v175 = (&v266 - v174);
  v176 = MEMORY[0x28223BE20](v173);
  v178 = &v266 - v177;
  v179 = MEMORY[0x28223BE20](v176);
  v181 = &v266 - v180;
  v182 = MEMORY[0x28223BE20](v179);
  v184 = &v266 - v183;
  MEMORY[0x28223BE20](v182);
  v186 = &v266 - v185;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F40, &unk_20E342140);
  v188 = *(*(v187 - 8) + 64);
  v189 = MEMORY[0x28223BE20](v187 - 8);
  v191 = &v266 - v190;
  v192 = *(v189 + 56);
  sub_20E1E14FC(v342, &v266 - v190, type metadata accessor for TranscriptProtoPayloadEnum);
  v342 = v192;
  sub_20E1E14FC(v341, &v191[v192], type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v191, v184, type metadata accessor for TranscriptProtoPayloadEnum);
      v232 = v342;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v233 = v274;
        sub_20E1EF280(&v191[v232], v274, type metadata accessor for TranscriptProtoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(v184, v233);
        v217 = type metadata accessor for TranscriptProtoRequest;
        sub_20E1E1564(v233, type metadata accessor for TranscriptProtoRequest);
        v218 = v184;
        goto LABEL_108;
      }

      v194 = type metadata accessor for TranscriptProtoRequest;
      v195 = v184;
      goto LABEL_147;
    case 2u:
      sub_20E1E14FC(v191, v181, type metadata accessor for TranscriptProtoPayloadEnum);
      v225 = v342;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v226 = v275;
        sub_20E1EF280(&v191[v225], v275, type metadata accessor for TranscriptProtoPlan);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(v181, v226);
        v217 = type metadata accessor for TranscriptProtoPlan;
        sub_20E1E1564(v226, type metadata accessor for TranscriptProtoPlan);
        v218 = v181;
        goto LABEL_108;
      }

      v194 = type metadata accessor for TranscriptProtoPlan;
      v195 = v181;
      goto LABEL_147;
    case 3u:
      sub_20E1E14FC(v191, v178, type metadata accessor for TranscriptProtoPayloadEnum);
      v229 = v342;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v230 = v276;
        sub_20E1EF280(&v191[v229], v276, type metadata accessor for TranscriptProtoAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v178, v230);
        v217 = type metadata accessor for TranscriptProtoAction;
        sub_20E1E1564(v230, type metadata accessor for TranscriptProtoAction);
        v218 = v178;
        goto LABEL_108;
      }

      v194 = type metadata accessor for TranscriptProtoAction;
      v195 = v178;
      goto LABEL_147;
    case 4u:
      sub_20E1E14FC(v191, v175, type metadata accessor for TranscriptProtoPayloadEnum);
      v215 = v342;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v216 = v277;
        sub_20E1EF280(&v191[v215], v277, type metadata accessor for TranscriptProtoClientAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v175, v216);
        v217 = type metadata accessor for TranscriptProtoClientAction;
        sub_20E1E1564(v216, type metadata accessor for TranscriptProtoClientAction);
        v218 = v175;
        goto LABEL_108;
      }

      v194 = type metadata accessor for TranscriptProtoClientAction;
      v195 = v175;
      goto LABEL_147;
    case 5u:
      sub_20E1E14FC(v191, v172, type metadata accessor for TranscriptProtoPayloadEnum);
      v237 = v342;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v206 = v278;
        sub_20E1EF280(&v191[v237], v278, type metadata accessor for TranscriptProtoQueryStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoQueryStep;
      goto LABEL_146;
    case 6u:
      sub_20E1E14FC(v191, v169, type metadata accessor for TranscriptProtoPayloadEnum);
      v241 = v342;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v242 = v279;
        sub_20E1EF280(&v191[v241], v279, type metadata accessor for TranscriptProtoVariableStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(v169, v242);
        v217 = type metadata accessor for TranscriptProtoVariableStep;
        sub_20E1E1564(v242, type metadata accessor for TranscriptProtoVariableStep);
        v218 = v169;
        goto LABEL_108;
      }

      v258 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_144;
    case 7u:
      v172 = v310;
      sub_20E1E14FC(v191, v310, type metadata accessor for TranscriptProtoPayloadEnum);
      v231 = v342;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v206 = v280;
        sub_20E1EF280(&v191[v231], v280, type metadata accessor for TranscriptProtoSessionError);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoSessionError;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoSessionError;
      goto LABEL_146;
    case 8u:
      v172 = v311;
      sub_20E1E14FC(v191, v311, type metadata accessor for TranscriptProtoPayloadEnum);
      v245 = v342;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v206 = v281;
        sub_20E1EF280(&v191[v245], v281, type metadata accessor for TranscriptProtoRecoverableError);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoRecoverableError;
      goto LABEL_146;
    case 9u:
      v172 = v312;
      sub_20E1E14FC(v191, v312, type metadata accessor for TranscriptProtoPayloadEnum);
      v222 = v342;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v206 = v282;
        sub_20E1EF280(&v191[v222], v282, type metadata accessor for TranscriptProtoQueryStepResults);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoQueryStepResults;
      goto LABEL_146;
    case 0xAu:
      v172 = v313;
      sub_20E1E14FC(v191, v313, type metadata accessor for TranscriptProtoPayloadEnum);
      v244 = v342;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v206 = v283;
        sub_20E1EF280(&v191[v244], v283, type metadata accessor for TranscriptProtoActionResolverRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoActionResolverRequest;
      goto LABEL_146;
    case 0xBu:
      v169 = v314;
      sub_20E1E14FC(v191, v314, type metadata accessor for TranscriptProtoPayloadEnum);
      v214 = v342;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v197 = v284;
        sub_20E1EF280(&v191[v214], v284, type metadata accessor for TranscriptProtoSafetyModeRelease);
        sub_20E3221C0();
        v198 = v191;
        sub_20E1EF2E8();
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
        v200 = type metadata accessor for TranscriptProtoSafetyModeRelease;
        goto LABEL_101;
      }

      v258 = type metadata accessor for TranscriptProtoSafetyModeRelease;
      goto LABEL_144;
    case 0xCu:
      v169 = v322;
      sub_20E1E14FC(v191, v322, type metadata accessor for TranscriptProtoPayloadEnum);
      v219 = v342;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v258 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_144;
      }

      v202 = v286;
      sub_20E1EF280(&v191[v219], v286, type metadata accessor for TranscriptProtoSafetyModeException);
      v220 = v169[1];
      v221 = v202[1];
      if (v220)
      {
        if (!v221 || (*v169 != *v202 || v220 != v221) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_163;
        }
      }

      else if (v221)
      {
        goto LABEL_163;
      }

      v263 = *(v268 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v204 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_161;
      }

LABEL_163:
      v261 = type metadata accessor for TranscriptProtoSafetyModeException;
      goto LABEL_164;
    case 0xDu:
      v169 = v317;
      sub_20E1E14FC(v191, v317, type metadata accessor for TranscriptProtoPayloadEnum);
      v239 = v342;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v258 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        goto LABEL_144;
      }

      v202 = v285;
      sub_20E1EF280(&v191[v239], v285, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      if (sub_20E14C4B8(*v169, *v202))
      {
        v240 = *(v269 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          goto LABEL_161;
        }
      }

      v261 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
      goto LABEL_164;
    case 0xEu:
      v169 = v319;
      sub_20E1E14FC(v191, v319, type metadata accessor for TranscriptProtoPayloadEnum);
      v211 = v342;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v258 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
        goto LABEL_144;
      }

      v202 = v287;
      sub_20E1EF280(&v191[v211], v287, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      if (sub_20E14EC10(*v169, *v202))
      {
        v212 = *(v270 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
          goto LABEL_161;
        }
      }

      v261 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_164;
    case 0xFu:
      v169 = v324;
      sub_20E1E14FC(v191, v324, type metadata accessor for TranscriptProtoPayloadEnum);
      v227 = v342;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v258 = type metadata accessor for TranscriptProtoContextRetrieved;
        goto LABEL_144;
      }

      v202 = v290;
      sub_20E1EF280(&v191[v227], v290, type metadata accessor for TranscriptProtoContextRetrieved);
      if (sub_20E14E2F8(*v169, *v202) & 1) != 0 && (sub_20E14E2F8(v169[1], v202[1]))
      {
        v228 = *(v266 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoContextRetrieved;
          goto LABEL_161;
        }
      }

      v261 = type metadata accessor for TranscriptProtoContextRetrieved;
      goto LABEL_164;
    case 0x10u:
      v172 = v315;
      sub_20E1E14FC(v191, v315, type metadata accessor for TranscriptProtoPayloadEnum);
      v210 = v342;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v206 = v288;
        sub_20E1EF280(&v191[v210], v288, type metadata accessor for TranscriptProtoActionCancellation);
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E16BDFC(v172, v206);
        v207 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoActionCancellation;
      goto LABEL_146;
    case 0x11u:
      v172 = v316;
      sub_20E1E14FC(v191, v316, type metadata accessor for TranscriptProtoPayloadEnum);
      v235 = v342;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v206 = v289;
        sub_20E1EF280(&v191[v235], v289, type metadata accessor for TranscriptProtoToolRetrievalResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
      goto LABEL_146;
    case 0x12u:
      v172 = v318;
      sub_20E1E14FC(v191, v318, type metadata accessor for TranscriptProtoPayloadEnum);
      v243 = v342;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v206 = v291;
        sub_20E1EF280(&v191[v243], v291, type metadata accessor for TranscriptProtoSystemResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoSystemResponse;
      goto LABEL_146;
    case 0x13u:
      v172 = v320;
      sub_20E1E14FC(v191, v320, type metadata accessor for TranscriptProtoPayloadEnum);
      v250 = v342;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v206 = v292;
        sub_20E1EF280(&v191[v250], v292, type metadata accessor for TranscriptProtoStatementResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoStatementResult;
      goto LABEL_146;
    case 0x14u:
      v172 = v321;
      sub_20E1E14FC(v191, v321, type metadata accessor for TranscriptProtoPayloadEnum);
      v236 = v342;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v206 = v293;
        sub_20E1EF280(&v191[v236], v293, type metadata accessor for TranscriptProtoExternalAgentRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoExternalAgentRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoExternalAgentRequest;
      goto LABEL_146;
    case 0x15u:
      v172 = v323;
      sub_20E1E14FC(v191, v323, type metadata accessor for TranscriptProtoPayloadEnum);
      v238 = v342;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v206 = v294;
        sub_20E1EF280(&v191[v238], v294, type metadata accessor for TranscriptProtoExternalAgentOutcome);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
      goto LABEL_146;
    case 0x16u:
      v169 = v332;
      sub_20E1E14FC(v191, v332, type metadata accessor for TranscriptProtoPayloadEnum);
      v248 = v342;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v258 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
        goto LABEL_144;
      }

      v202 = v298;
      sub_20E1EF280(&v191[v248], v298, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      if (*v169 == *v202 && v169[1] == v202[1] || (sub_20E322D60()) && (sub_20E1494E0(v169[2], v202[2]))
      {
        v249 = *(v267 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
          goto LABEL_161;
        }
      }

      v261 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
      goto LABEL_164;
    case 0x17u:
      v172 = v325;
      sub_20E1E14FC(v191, v325, type metadata accessor for TranscriptProtoPayloadEnum);
      v251 = v342;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v206 = v295;
        sub_20E1EF280(&v191[v251], v295, type metadata accessor for TranscriptProtoToolResolution);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoToolResolution;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoToolResolution;
      goto LABEL_146;
    case 0x18u:
      v172 = v326;
      sub_20E1E14FC(v191, v326, type metadata accessor for TranscriptProtoPayloadEnum);
      v224 = v342;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v206 = v296;
        sub_20E1EF280(&v191[v224], v296, type metadata accessor for TranscriptProtoUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoUndoRedoRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoUndoRedoRequest;
      goto LABEL_146;
    case 0x19u:
      v172 = v327;
      sub_20E1E14FC(v191, v327, type metadata accessor for TranscriptProtoPayloadEnum);
      v223 = v342;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v206 = v297;
        sub_20E1EF280(&v191[v223], v297, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
      goto LABEL_146;
    case 0x1Au:
      v172 = v328;
      sub_20E1E14FC(v191, v328, type metadata accessor for TranscriptProtoPayloadEnum);
      v257 = v342;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v206 = v299;
        sub_20E1EF280(&v191[v257], v299, type metadata accessor for TranscriptProtoTypeConversionRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoTypeConversionRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoTypeConversionRequest;
      goto LABEL_146;
    case 0x1Bu:
      v172 = v329;
      sub_20E1E14FC(v191, v329, type metadata accessor for TranscriptProtoPayloadEnum);
      v205 = v342;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v206 = v300;
        sub_20E1EF280(&v191[v205], v300, type metadata accessor for TranscriptProtoTypeConversionResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoTypeConversionResult;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoTypeConversionResult;
      goto LABEL_146;
    case 0x1Cu:
      v172 = v330;
      sub_20E1E14FC(v191, v330, type metadata accessor for TranscriptProtoPayloadEnum);
      v252 = v342;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v206 = v301;
        sub_20E1EF280(&v191[v252], v301, type metadata accessor for TranscriptProtoQueryDecorationResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoQueryDecorationResult;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoQueryDecorationResult;
      goto LABEL_146;
    case 0x1Du:
      v169 = v333;
      sub_20E1E14FC(v191, v333, type metadata accessor for TranscriptProtoPayloadEnum);
      v253 = v342;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v197 = v302;
        sub_20E1EF280(&v191[v253], v302, type metadata accessor for TranscriptProtoContinuePlanning);
        sub_20E3221C0();
        v198 = v191;
        sub_20E1EF2E8();
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
        v200 = type metadata accessor for TranscriptProtoContinuePlanning;
        goto LABEL_101;
      }

      v258 = type metadata accessor for TranscriptProtoContinuePlanning;
      goto LABEL_144;
    case 0x1Eu:
      v172 = v331;
      sub_20E1E14FC(v191, v331, type metadata accessor for TranscriptProtoPayloadEnum);
      v246 = v342;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v206 = v303;
        sub_20E1EF280(&v191[v246], v303, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
      goto LABEL_146;
    case 0x1Fu:
      v172 = v334;
      sub_20E1E14FC(v191, v334, type metadata accessor for TranscriptProtoPayloadEnum);
      v234 = v342;
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        v206 = v304;
        sub_20E1EF280(&v191[v234], v304, type metadata accessor for TranscriptProtoSkipStatement);
        StepV2eeoiySbAC_ACtFZ_0 = sub_20E175878(v172, v206);
        v207 = type metadata accessor for TranscriptProtoSkipStatement;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoSkipStatement;
      goto LABEL_146;
    case 0x20u:
      v172 = v335;
      sub_20E1E14FC(v191, v335, type metadata accessor for TranscriptProtoPayloadEnum);
      v247 = v342;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v206 = v305;
        sub_20E1EF280(&v191[v247], v305, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor52TranscriptProtoExecutionPreconditionEvaluatorRequestV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
        goto LABEL_107;
      }

      v259 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
      goto LABEL_146;
    case 0x21u:
      v172 = v336;
      sub_20E1E14FC(v191, v336, type metadata accessor for TranscriptProtoPayloadEnum);
      v213 = v342;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        v206 = v306;
        sub_20E1EF280(&v191[v213], v306, type metadata accessor for TranscriptProtoRequestAmendment);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoRequestAmendmentV2eeoiySbAC_ACtFZ_0(v172, v206);
        v207 = type metadata accessor for TranscriptProtoRequestAmendment;
LABEL_107:
        v217 = v207;
        sub_20E1E1564(v206, v207);
        v218 = v172;
LABEL_108:
        sub_20E1E1564(v218, v217);
        sub_20E1E1564(v191, type metadata accessor for TranscriptProtoPayloadEnum);
        return StepV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v259 = type metadata accessor for TranscriptProtoRequestAmendment;
LABEL_146:
      v194 = v259;
      v195 = v172;
      goto LABEL_147;
    case 0x22u:
      v169 = v338;
      sub_20E1E14FC(v191, v338, type metadata accessor for TranscriptProtoPayloadEnum);
      v208 = v342;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        v258 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
        goto LABEL_144;
      }

      v202 = v308;
      sub_20E1EF280(&v191[v208], v308, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      if (*v169 == *v202 && v169[1] == v202[1] || (sub_20E322D60() & 1) != 0)
      {
        v209 = *(v272 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
          goto LABEL_161;
        }
      }

      v261 = type metadata accessor for TranscriptProtoToolRetrievalRequest;
      goto LABEL_164;
    case 0x23u:
      v169 = v337;
      sub_20E1E14FC(v191, v337, type metadata accessor for TranscriptProtoPayloadEnum);
      v196 = v342;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        v258 = type metadata accessor for TranscriptProtoContextRetrievalRequest;
        goto LABEL_144;
      }

      v197 = v307;
      sub_20E1EF280(&v191[v196], v307, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      sub_20E3221C0();
      v198 = v191;
      sub_20E1EF2E8();
      StepV2eeoiySbAC_ACtFZ_0 = sub_20E322850();
      v200 = type metadata accessor for TranscriptProtoContextRetrievalRequest;
LABEL_101:
      v254 = v200;
      sub_20E1E1564(v197, v200);
      v255 = v169;
      v256 = v254;
      goto LABEL_102;
    case 0x24u:
      v169 = v339;
      sub_20E1E14FC(v191, v339, type metadata accessor for TranscriptProtoPayloadEnum);
      v201 = v342;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        v258 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_144:
        v194 = v258;
        v195 = v169;
        goto LABEL_147;
      }

      v202 = v309;
      sub_20E1EF280(&v191[v201], v309, type metadata accessor for TranscriptProtoSpanMatchRequest);
      if (*v169 == *v202 && v169[1] == v202[1] || (sub_20E322D60() & 1) != 0)
      {
        v203 = *(matched + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v204 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_161:
          v264 = v204;
          sub_20E1E1564(v202, v204);
          sub_20E1E1564(v169, v264);
LABEL_162:
          sub_20E1E1564(v191, type metadata accessor for TranscriptProtoPayloadEnum);
          StepV2eeoiySbAC_ACtFZ_0 = 1;
          return StepV2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

      v261 = type metadata accessor for TranscriptProtoSpanMatchRequest;
LABEL_164:
      v265 = v261;
      sub_20E1E1564(v202, v261);
      sub_20E1E1564(v169, v265);
      sub_20E1E1564(v191, type metadata accessor for TranscriptProtoPayloadEnum);
      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() == 37)
      {
        goto LABEL_162;
      }

      goto LABEL_148;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_162;
      }

      goto LABEL_148;
    default:
      sub_20E1E14FC(v191, v186, type metadata accessor for TranscriptProtoPayloadEnum);
      v193 = v342;
      if (swift_getEnumCaseMultiPayload())
      {
        v194 = type metadata accessor for TranscriptProtoSessionStart;
        v195 = v186;
LABEL_147:
        sub_20E1E1564(v195, v194);
LABEL_148:
        sub_20E04875C(v191, &qword_27C868F40, &unk_20E342140);
LABEL_149:
        StepV2eeoiySbAC_ACtFZ_0 = 0;
      }

      else
      {
        v262 = v271;
        sub_20E1EF280(&v191[v193], v271, type metadata accessor for TranscriptProtoSessionStart);
        StepV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(v186, v262);
        v198 = v191;
        sub_20E1E1564(v262, type metadata accessor for TranscriptProtoSessionStart);
        v255 = v186;
        v256 = type metadata accessor for TranscriptProtoSessionStart;
LABEL_102:
        sub_20E1E1564(v255, v256);
        sub_20E1E1564(v198, type metadata accessor for TranscriptProtoPayloadEnum);
      }

      return StepV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_20E1E14FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1E1564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E1E15C8()
{
  result = qword_27C868AF8;
  if (!qword_27C868AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868AF8);
  }

  return result;
}

unint64_t sub_20E1E1650()
{
  result = qword_27C868B10;
  if (!qword_27C868B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B10);
  }

  return result;
}

unint64_t sub_20E1E16D8()
{
  result = qword_27C868B28;
  if (!qword_27C868B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B28);
  }

  return result;
}

unint64_t sub_20E1E1760()
{
  result = qword_27C868B40;
  if (!qword_27C868B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B40);
  }

  return result;
}

unint64_t sub_20E1E17E8()
{
  result = qword_27C868B58;
  if (!qword_27C868B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B58);
  }

  return result;
}

unint64_t sub_20E1E1870()
{
  result = qword_27C868B70;
  if (!qword_27C868B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B70);
  }

  return result;
}

unint64_t sub_20E1E18F8()
{
  result = qword_27C868B88;
  if (!qword_27C868B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868B88);
  }

  return result;
}

unint64_t sub_20E1E1980()
{
  result = qword_27C868BA0;
  if (!qword_27C868BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BA0);
  }

  return result;
}

unint64_t sub_20E1E1A08()
{
  result = qword_27C868BB8;
  if (!qword_27C868BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BB8);
  }

  return result;
}

unint64_t sub_20E1E1A90()
{
  result = qword_27C868BD0;
  if (!qword_27C868BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BD0);
  }

  return result;
}

unint64_t sub_20E1E1B18()
{
  result = qword_27C868BE8;
  if (!qword_27C868BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868BE8);
  }

  return result;
}

unint64_t sub_20E1E1BA0()
{
  result = qword_27C868C00;
  if (!qword_27C868C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C00);
  }

  return result;
}

unint64_t sub_20E1E1C28()
{
  result = qword_27C868C18;
  if (!qword_27C868C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C18);
  }

  return result;
}

unint64_t sub_20E1E1CB0()
{
  result = qword_27C868C30;
  if (!qword_27C868C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C30);
  }

  return result;
}

unint64_t sub_20E1E1D08()
{
  result = qword_27C868C38;
  if (!qword_27C868C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C38);
  }

  return result;
}

unint64_t sub_20E1E1D90()
{
  result = qword_27C868C50;
  if (!qword_27C868C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C50);
  }

  return result;
}

unint64_t sub_20E1E1DE8()
{
  result = qword_27C868C58;
  if (!qword_27C868C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C58);
  }

  return result;
}

unint64_t sub_20E1E1E40()
{
  result = qword_27C868C60;
  if (!qword_27C868C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C60);
  }

  return result;
}

unint64_t sub_20E1E1E98()
{
  result = qword_27C868C68;
  if (!qword_27C868C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C68);
  }

  return result;
}

unint64_t sub_20E1E1F20()
{
  result = qword_27C868C80;
  if (!qword_27C868C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868C80);
  }

  return result;
}

uint64_t sub_20E1E1FE4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20E1E2074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E1E21AC()
{
  sub_20E1E23AC();
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0F148, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E0E930, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0C8F8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E1E240C(319, qword_280E0FD80, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E3221C0();
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

void sub_20E1E23AC()
{
  if (!qword_280E12B80)
  {
    v0 = sub_20E322810();
    if (!v1)
    {
      atomic_store(v0, &qword_280E12B80);
    }
  }
}

void sub_20E1E240C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20E1E24CC()
{
  result = type metadata accessor for TranscriptProtoSessionStart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPlan(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoAction(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoClientAction(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryStep(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoVariableStep(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSessionError(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoRecoverableError(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoQueryStepResults(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoActionResolverRequest(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSafetyModeRelease(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoSafetyModeException(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResponseGenerationRequest(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoEntitySpanMatchResult(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoContextRetrieved(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoActionCancellation(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoToolRetrievalResponse(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoSystemResponse(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoStatementResult(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoExternalAgentRequest(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoExternalAgentOutcome(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoToolResolution(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoUndoRedoRequest(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoClientUndoRedoRequest(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoTypeConversionRequest(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoTypeConversionResult(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoQueryDecorationResult(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoContinuePlanning(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoSkipStatement(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for TranscriptProtoRequestAmendment(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for TranscriptProtoToolRetrievalRequest(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for TranscriptProtoContextRetrievalRequest(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for TranscriptProtoSpanMatchRequest(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                            return 0;
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
  }

  return result;
}

void sub_20E1E2884()
{
  sub_20E1E240C(319, &qword_280E04048, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E29AC()
{
  sub_20E1E240C(319, &qword_280E12B10, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E2AA8()
{
  sub_20E1E240C(319, qword_280E0BDD0, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0CAC0, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0BE70, type metadata accessor for TranscriptProtoGenderSettings, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E2CA0()
{
  sub_20E1E240C(319, qword_280E0BB68, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E073C8, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E04A20, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E11358, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E1E240C(319, qword_280E05DB0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E1E240C(319, qword_280E0AE38, type metadata accessor for TranscriptProtoDateTimeContext, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E3221C0();
                if (v7 <= 0x3F)
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

void sub_20E1E30A0()
{
  sub_20E1E240C(319, qword_280E0C3E0, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E32EC()
{
  result = sub_20E3221C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20E1E33AC()
{
  sub_20E1E240C(319, qword_280E0BB68, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E04A20, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E1ECF10(319, a5, MEMORY[0x277D837D0], a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20E1E362C()
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E1E37B8()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E3898()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E39A0()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E3AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E1ECF10(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E3B98()
{
  sub_20E1E3F48(319, &qword_280E040B0, type metadata accessor for TranscriptProtoActionParameterValue);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E3D4C()
{
  sub_20E1E240C(319, qword_280E08958, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0AC70, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_20E1E3F48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20E322810();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20E1E4010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03A198);
}

uint64_t sub_20E1E4068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03A1AC);
}

void sub_20E1E41C0()
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0AC70, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E42E4()
{
  sub_20E1E240C(319, &qword_280E04070, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E43FC()
{
  sub_20E1ECF10(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E455C()
{
  sub_20E1E240C(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E09E38, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E4680()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E06E48, type metadata accessor for TranscriptProtoStatementResultPayload, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20E1E488C()
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E07800, type metadata accessor for TranscriptProtoCandidatePromptStatus, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E4A68()
{
  sub_20E1E3F48(319, &unk_280E040D0, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_20E1E3F48(319, &qword_280E040B8, type metadata accessor for TranscriptProtoShimParameters);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E3221C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20E1E4D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_20E1E4E04()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D8D0, type metadata accessor for TranscriptProtoPersonQuery.Handle, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E4F90()
{
  sub_20E1E240C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E50A8()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E07DA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E5304()
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1E53EC()
{
  v0 = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_20E1E54A0()
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20E1E5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_637Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_20E3221C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_638Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E1E5998()
{
  sub_20E1ECF10(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E1E5C54()
{
  sub_20E1E240C(319, qword_280E10EC8, type metadata accessor for TranscriptProtoActionFailureFailure, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E5E64()
{
  sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D6E0, type metadata accessor for TranscriptProtoUndoContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0BF10, type metadata accessor for TranscriptProtoFollowUpAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E3221C0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20E1E6178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_170Tm_5);
}

uint64_t sub_20E1E61D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_171Tm_5);
}

uint64_t sub_20E1E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_20E1E635C()
{
  sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E6484()
{
  sub_20E1E240C(319, &qword_280E04038, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E6608()
{
  result = type metadata accessor for TranscriptProtoActionSuccess(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoActionConfirmation(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoParameterNeedsValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoParameterConfirmation(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoParameterDisambiguation(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoParameterNotAllowed(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoActionRequirement(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoToolDisambiguation(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoActionFailure(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoValueDisambiguation(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSnippetStream(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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

  return result;
}

void sub_20E1E676C()
{
  sub_20E1E240C(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E05EE0, type metadata accessor for TranscriptProtoParameterNeedsValueContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E1E68D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_233Tm);
}

uint64_t sub_20E1E692C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_234Tm);
}

void sub_20E1E6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_20E1E240C(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E6BB8()
{
  sub_20E1E240C(319, &qword_280E03F50, type metadata accessor for TranscriptProtoProgramStatement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1ECF10(319, qword_280E0E278, &type metadata for TranscriptProtoPlanSource, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E1E6D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03C19C);
}

uint64_t sub_20E1E6DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03C1B0);
}

uint64_t sub_20E1E6E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_20E03C1C4);
}

uint64_t sub_20E1E6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_20E03C1D8);
}

void sub_20E1E7030()
{
  sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E06EE8, type metadata accessor for TranscriptProtoActionParameterContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0D040, type metadata accessor for TranscriptProtoQueryPayload, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E1E72A0()
{
  sub_20E1ECF10(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E740C()
{
  sub_20E1E240C(319, &qword_280E03FC8, type metadata accessor for TranscriptProtoQueryResults, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0D780, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E1E7538()
{
  sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1E7618()
{
  sub_20E1E240C(319, &qword_280E03FC0, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, &qword_280E03FE8, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0E370, type metadata accessor for TranscriptProtoDialogType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1E240C(319, qword_280E080C8, type metadata accessor for TranscriptProtoVisualOutputOptions, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1E240C(319, qword_280E0CD50, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E3221C0();
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

uint64_t sub_20E1E7A04()
{
  result = type metadata accessor for TranscriptProtoStaticText(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSonicText(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoGeneratedText(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoUnableToGenerate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoSuppressed(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoCATDialog(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E1E7C20()
{
  sub_20E1E240C(319, &qword_280E03F48, type metadata accessor for TranscriptProtoResponseParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E1E240C(319, qword_280E0BAC0, type metadata accessor for TranscriptProtoResponseDialog, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E1E240C(319, qword_280E0B968, type metadata accessor for TranscriptProtoResponseVisual, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E1ECF10(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E1ECF10(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E1ECF10(319, qword_280E052F0, &type metadata for TranscriptProtoResponseDialogPresentationHint, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E1E240C(319, qword_280E0FCE8, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E3221C0();
                if (v7 <= 0x3F)
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