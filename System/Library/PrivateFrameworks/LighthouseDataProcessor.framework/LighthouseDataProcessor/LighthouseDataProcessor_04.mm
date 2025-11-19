uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 <= 1)
  {
    if (!*v0)
    {
      result = sub_20E0C21E0(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = sub_20E0C232C(v0);
    if (!v1)
    {
LABEL_10:
      v4 = &v0[*(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0) + 20)];
      return sub_20E3221A0();
    }
  }

  else
  {
    if (v2 == 2)
    {
      result = sub_20E0C247C(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v2 != 3)
    {
      goto LABEL_10;
    }

    result = sub_20E0C3710(v0);
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_20E0A8908@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 4;
  v2 = &a2[*(a1 + 20)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0A897C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D38, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A8A1C()
{
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_20E322470();
}

uint64_t sub_20E0A8A88()
{
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_20E322480();
}

uint64_t sub_20E0A8B24()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864640);
  __swift_project_value_buffer(v0, qword_27C864640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterValue.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0A8E10();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A8E10()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_20E322430();
}

uint64_t sub_20E0A8F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameterValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B58, &qword_20E323E68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B58, &qword_20E323E68);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_20E0A91F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D30, type metadata accessor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A9298()
{
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue);

  return sub_20E322470();
}

uint64_t sub_20E0A9304()
{
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue);

  return sub_20E322480();
}

uint64_t sub_20E0A93A0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864658);
  __swift_project_value_buffer(v0, qword_27C864658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoToolDisambiguation.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      sub_20E195B0C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_20E322570();
    }

    v4 = v0 + *(type metadata accessor for TranscriptProtoToolDisambiguation(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A9788(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D28, type metadata accessor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A9828()
{
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0A9894()
{
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation);

  return sub_20E322480();
}

uint64_t sub_20E0A9930()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864670);
  __swift_project_value_buffer(v0, qword_27C864670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "statementOutcome";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_20E0A9CCC();
        break;
      case 3:
        sub_20E0A9C18();
        break;
      case 2:
        sub_20E3223A0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A9C18()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A9CCC()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_20E322430();
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_20E322520(), !v4))
  {
    result = sub_20E0A9E38(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0AA054(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0AA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BA8, &unk_20E345F00);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_20E0AA2BC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0AA3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D20, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AA474()
{
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return sub_20E322470();
}

uint64_t sub_20E0AA4E0()
{
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return sub_20E322480();
}

uint64_t sub_20E0AA57C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864688);
  __swift_project_value_buffer(v0, qword_27C864688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0AA868();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0AA868()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_20E322430();
}

uint64_t sub_20E0AA970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B48, &unk_20E33C280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B48, &unk_20E33C280);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_20E0AAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D18, type metadata accessor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AACF0()
{
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload);

  return sub_20E322470();
}

uint64_t sub_20E0AAD5C()
{
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload);

  return sub_20E322480();
}

uint64_t sub_20E0AADF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646A0);
  __swift_project_value_buffer(v0, qword_27C8646A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          sub_20E0AB37C();
          break;
        case 6:
          sub_20E0AB430();
          break;
        case 7:
          sub_20E0AB4E4();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E3223D0();
          break;
        case 3:
          sub_20E0AB214();
          break;
        case 4:
          sub_20E0AB2C8();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0AB214()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload);
  return sub_20E322430();
}

uint64_t sub_20E0AB2C8()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB37C()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB430()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB4E4()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E0AB698(v3, v7, a2, a3);
    sub_20E0AB8B4(v3, v7, a2, a3);
    sub_20E0ABAD0(v3, v7, a2, a3);
    sub_20E0ABCEC(v3, v7, a2, a3);
    sub_20E0ABF08(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoStatementResult(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0AB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863FB8, &unk_20E325F60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863FB8, &unk_20E325F60);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementResultPayload);
}

uint64_t sub_20E0AB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0ABAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0ABCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0ABF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C8639C8, &unk_20E323870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639C8, &unk_20E323870);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_20E0AC170@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a2[v6], 1, 1, v7);
  v8(&a2[a1[7]], 1, 1, v7);
  v8(&a2[a1[8]], 1, 1, v7);
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = &a2[a1[10]];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0AC310(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D10, type metadata accessor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AC3B0()
{
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult);

  return sub_20E322470();
}

uint64_t sub_20E0AC41C()
{
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult);

  return sub_20E322480();
}

uint64_t TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementResult(0), sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoResponseGenerationRequest(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoResponseGenerationRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1534D8(*a1, *a2, type metadata accessor for TranscriptProtoStatementResult, type metadata accessor for TranscriptProtoStatementResult, _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoStatementResult) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoResponseGenerationRequest(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0AC7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D08, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AC868()
{
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return sub_20E322470();
}

uint64_t sub_20E0AC8D4()
{
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return sub_20E322480();
}

uint64_t sub_20E0AC9C0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646D0);
  __swift_project_value_buffer(v0, qword_27C8646D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0ACDF0();
        }

        else if (result == 4)
        {
          sub_20E0ACEA4();
        }
      }

      else if (result == 1)
      {
        sub_20E0ACD3C();
      }

      else if (result == 2)
      {
        sub_20E1846E4();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0ACD3C()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0ACDF0()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 24);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  return sub_20E322430();
}

uint64_t sub_20E0ACEA4()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0AD050(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      sub_20E1846E4();
      sub_20E3224D0();
    }

    sub_20E0AD26C(v3, a1, a2, a3);
    sub_20E0AD488(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoCandidate(0) + 32)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0AD050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0AD26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863B20, &unk_20E33C290);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B20, &unk_20E33C290);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoCandidatePromptStatus);
}

uint64_t sub_20E0AD488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0AD77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D00, type metadata accessor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AD81C()
{
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate);

  return sub_20E322470();
}

uint64_t sub_20E0AD888()
{
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate);

  return sub_20E322480();
}

uint64_t sub_20E0AD924()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646E8);
  __swift_project_value_buffer(v0, qword_27C8646E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmed";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "picked";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E0ADC1C();
        break;
      case 2:
        sub_20E0A5FD4(a1, v5, a2, a3, 1);
        break;
      case 1:
        sub_20E0A5FD4(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoCandidatePromptStatus.traverse<A>(visitor:)()
{
  if (*(v0 + 9))
  {
    goto LABEL_2;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      result = sub_20E0ADEE4(v0);
      if (!v1)
      {
LABEL_2:
        v2 = v0 + *(type metadata accessor for TranscriptProtoCandidatePromptStatus(0) + 20);
        return sub_20E3221A0();
      }
    }

    else
    {
      result = sub_20E0ADD88(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E322510();
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E0ADD88(uint64_t a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) != 0 || (*(a1 + 8) & 1) == 0 || *a1)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_20E0ADEE4(uint64_t a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 8) & 1) != 0 && *a1)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0AE09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v2 = a2 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0AE114(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CF8, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AE1B4()
{
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return sub_20E322470();
}

uint64_t sub_20E0AE220()
{
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return sub_20E322480();
}

uint64_t sub_20E0AE2BC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864700);
  __swift_project_value_buffer(v0, qword_27C864700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 2;
  *v4 = "toolId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 3;
  *v8 = "parameters";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "planEventId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "shimParameters";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          goto LABEL_14;
        case 7:
          sub_20E0AE7A8();
          break;
        case 8:
          sub_20E0AE85C();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          sub_20E3223E0();
          break;
        case 3:
          sub_20E0AE6B0();
          break;
        case 4:
LABEL_14:
          sub_20E3223D0();
          break;
      }
    }
  }
}

uint64_t sub_20E0AE6B0()
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t sub_20E0AE7A8()
{
  v0 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AE85C()
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters);
  sub_20E195B0C(&qword_27C865B00, type metadata accessor for TranscriptProtoShimParameters);
  return sub_20E322290();
}

uint64_t TranscriptProtoClientAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = *v5;
  v10 = v5[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_20E322540(), !v4))
  {
    if (*(v5[2] + 16))
    {
      sub_20E322170();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_20E322490();
      if (v4)
      {
        return result;
      }

      if (!v5[5])
      {
        goto LABEL_9;
      }
    }

    else if (!v5[5])
    {
LABEL_9:
      if (!v4)
      {
        if (v5[7])
        {
          v13 = v5[6];
          sub_20E322540();
        }

        sub_20E0AEC08(v5, a1, a2, a3);
        if (*(v5[3] + 16))
        {
          sub_20E322170();
          type metadata accessor for TranscriptProtoShimParameters(0);
          sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters);
          sub_20E195B0C(&qword_27C865B00, type metadata accessor for TranscriptProtoShimParameters);
          sub_20E322490();
        }

        v14 = v5 + *(type metadata accessor for TranscriptProtoClientAction(0) + 40);
        return sub_20E3221A0();
      }

      return result;
    }

    v12 = v5[4];
    result = sub_20E322540();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20E0AEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoClientAction(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

unint64_t sub_20E0AEE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v4 = *(a1 + 36);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 40);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a2 + 16) = sub_20E04916C(MEMORY[0x277D84F90]);
  result = sub_20E049354(v7);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_20E0AEF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CF0, type metadata accessor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AF008()
{
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);

  return sub_20E322470();
}

uint64_t sub_20E0AF074()
{
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);

  return sub_20E322480();
}

uint64_t TranscriptProtoShimParameters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoShimParameter(0), sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoShimParameters(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0AF350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CE8, type metadata accessor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AF3F0()
{
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters);

  return sub_20E322470();
}

uint64_t sub_20E0AF45C()
{
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters);

  return sub_20E322480();
}

uint64_t sub_20E0AF50C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864730);
  __swift_project_value_buffer(v0, qword_27C864730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t sub_20E0AF7E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = v7;
  while (1)
  {
    result = sub_20E3222B0();
    if (v8 || (v18 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        a6(v13, a1, a2, a3);
      }

      else if (result == 4)
      {
        a7(v13, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(v13, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v13, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0AF8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B18, &qword_20E326398);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195B54(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v36, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0AFEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868618, &qword_20E33B628);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B18, &qword_20E326398);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868618, &qword_20E33B628);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868618, &qword_20E33B628);
  }

  sub_20E0486F4(v28, v36, &qword_27C868618, &qword_20E33B628);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868618, &qword_20E33B628);
    return sub_20E04875C(v36, &qword_27C868618, &qword_20E33B628);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868618, &qword_20E33B628);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B0468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683F0, &qword_20E33B450);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B18, &qword_20E326398);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8683F0, &qword_20E33B450);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPersonQuery);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPersonQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8683F0, &qword_20E33B450);
  }

  sub_20E0486F4(v28, v36, &qword_27C8683F0, &qword_20E33B450);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8683F0, &qword_20E33B450);
    return sub_20E04875C(v36, &qword_27C8683F0, &qword_20E33B450);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPersonQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8683F0, &qword_20E33B450);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B0A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868620, &qword_20E33B630);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B18, &qword_20E326398);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C868620, &qword_20E33B630);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPhotosCandidates);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPhotosCandidates);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868620, &qword_20E33B630);
  }

  sub_20E0486F4(v28, v36, &qword_27C868620, &qword_20E33B630);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868620, &qword_20E33B630);
    return sub_20E04875C(v36, &qword_27C868620, &qword_20E33B630);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPhotosCandidates);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868620, &qword_20E33B630);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPhotosCandidates);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoShimParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865B18, &qword_20E326398);
  v12 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0B1620(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B1858(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0B13E8(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0B11B4(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoShimParameter(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B11B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B18, &qword_20E326398);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B18, &qword_20E326398);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B18, &qword_20E326398);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B18, &qword_20E326398);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPhotosCandidates);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CE0, type metadata accessor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B1BE0()
{
  sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter);

  return sub_20E322470();
}

uint64_t sub_20E0B1C4C()
{
  sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter);

  return sub_20E322480();
}

uint64_t sub_20E0B1CCC()
{
  result = MEMORY[0x20F32BF40](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27C864748 = 0xD000000000000018;
  unk_27C864750 = 0x800000020E35B290;
  return result;
}

uint64_t sub_20E0B1E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CD8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B1F14()
{
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return sub_20E322470();
}

uint64_t sub_20E0B1F80()
{
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return sub_20E322480();
}

uint64_t sub_20E0B2018()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864770);
  __swift_project_value_buffer(v0, qword_27C864770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20E3262F0;
  v4 = v15 + v3;
  v5 = v15 + v3 + v1[14];
  *(v15 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handle";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "isMe";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "id";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E3222F0();
      }

      else if (result == 4)
      {
        v4 = v0 + *(type metadata accessor for TranscriptProtoPersonQuery(0) + 28);
LABEL_12:
        sub_20E3223D0();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_12;
      }

      if (result == 2)
      {
        sub_20E0B235C();
      }
    }
  }
}

uint64_t sub_20E0B235C()
{
  v0 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 24);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  return sub_20E322430();
}

uint64_t TranscriptProtoPersonQuery.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = *(v3 + 8);
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E0B2508(v3, v7, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E1333E8(v3, v7, a2, a3, type metadata accessor for TranscriptProtoPersonQuery);
    v9 = v3 + *(type metadata accessor for TranscriptProtoPersonQuery(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868600, &unk_20E33C2A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868600, &unk_20E33C2A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868600, &unk_20E33C2A0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoPersonQuery.Handle);
}

uint64_t sub_20E0B2770@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0B2848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CD0, type metadata accessor for TranscriptProtoPersonQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B28E8()
{
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery);

  return sub_20E322470();
}

uint64_t sub_20E0B2954()
{
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery);

  return sub_20E322480();
}

uint64_t sub_20E0B29D4()
{
  result = MEMORY[0x20F32BF40](0x656C646E61482ELL, 0xE700000000000000);
  qword_27C864788 = 0xD000000000000016;
  unk_27C864790 = 0x800000020E35B2B0;
  return result;
}

uint64_t TranscriptProtoPersonQuery.Handle.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E195A50();
        sub_20E322300();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0B2B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

_BYTE *sub_20E0B2C10(_BYTE *result)
{
  if (*result != 3)
  {
    sub_20E195A50();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0B2D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CC8, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B2DF8()
{
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return sub_20E322470();
}

uint64_t sub_20E0B2E64()
{
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return sub_20E322480();
}

uint64_t sub_20E0B2F10()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647B0);
  __swift_project_value_buffer(v0, qword_27C8647B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "phone";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "email";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "facetime";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B3188()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647C8);
  __swift_project_value_buffer(v0, qword_27C8647C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "searchQuery";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetEntities";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B33D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223D0();
    }

    else if (result == 2)
    {
      a4(0);
      sub_20E195B0C(a5, a6);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t TranscriptProtoPhotosCandidates.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E322570();
    }

    v4 = v0 + *(type metadata accessor for TranscriptProtoPhotosCandidates(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B366C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CC0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B370C()
{
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates);

  return sub_20E322470();
}

uint64_t sub_20E0B3778()
{
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates);

  return sub_20E322480();
}

uint64_t sub_20E0B3814()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647E0);
  __swift_project_value_buffer(v0, qword_27C8647E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionParameterContext.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 4)
      {
        if (result == 5)
        {
          sub_20E0B3C44();
        }

        else if (result == 6)
        {
          sub_20E184738();
          sub_20E322310();
        }
      }

      else if (result == 3)
      {
        sub_20E3223E0();
      }

      else if (result == 4)
      {
        sub_20E0B3B90();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0B3B90()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0B3C44()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 28);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionParameterContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0B3E04(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0B4020(v3, a1, a2, a3);
      if (*(v3 + 16))
      {
        v13 = *(v3 + 16);
        sub_20E184738();
        sub_20E3224D0();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0B3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0B4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C8639C8, &unk_20E323870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639C8, &unk_20E323870);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_20E0B4288@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + a1[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0B43A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CB8, type metadata accessor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B4440()
{
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext);

  return sub_20E322470();
}

uint64_t sub_20E0B44AC()
{
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext);

  return sub_20E322480();
}

uint64_t sub_20E0B4548()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647F8);
  __swift_project_value_buffer(v0, qword_27C8647F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B4760(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t TranscriptProtoIntelligenceFlowError.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (!v0[2] || (result = sub_20E322510(), !v1))
    {
      v6 = v0 + *(type metadata accessor for TranscriptProtoIntelligenceFlowError(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static TranscriptProtoIntelligenceFlowError.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoIntelligenceFlowError(0) + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0B49D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = a3 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_20E0B4A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CB0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B4AF8()
{
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return sub_20E322470();
}

uint64_t sub_20E0B4B64()
{
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return sub_20E322480();
}

uint64_t sub_20E0B4BE0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0B4CC8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864810);
  __swift_project_value_buffer(v0, qword_27C864810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t sub_20E0B4F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863EE0, &qword_20E325D18);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685E0, &qword_20E33B600);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863EE0, &qword_20E325D18);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C8685E0, &qword_20E33B600);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685E0, &qword_20E33B600);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685E0, &qword_20E33B600);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685E0, &qword_20E33B600);
    return sub_20E04875C(v36, &qword_27C8685E0, &qword_20E33B600);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685E0, &qword_20E33B600);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B5B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685E8, &qword_20E33B608);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863EE0, &qword_20E325D18);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8685E8, &qword_20E33B608);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPlannerError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPlannerError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685E8, &qword_20E33B608);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685E8, &qword_20E33B608);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685E8, &qword_20E33B608);
    return sub_20E04875C(v36, &qword_27C8685E8, &qword_20E33B608);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPlannerError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685E8, &qword_20E33B608);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPlannerError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B60C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExecutorError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685F0, &qword_20E33B610);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863EE0, &qword_20E325D18);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C8685F0, &qword_20E33B610);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExecutorError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExecutorError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685F0, &qword_20E33B610);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685F0, &qword_20E33B610);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685F0, &qword_20E33B610);
    return sub_20E04875C(v36, &qword_27C8685F0, &qword_20E33B610);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExecutorError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685F0, &qword_20E33B610);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExecutorError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSessionError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863EE0, &qword_20E325D18);
  v12 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0B6CC0(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B6EF8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0B6A88(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0B6854(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSessionError(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B6854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863EE0, &qword_20E325D18);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863EE0, &qword_20E325D18);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlannerError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863EE0, &qword_20E325D18);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPlannerError);
    sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlannerError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExecutorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863EE0, &qword_20E325D18);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExecutorError);
    sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutorError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B71E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CA8, type metadata accessor for TranscriptProtoSessionError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B7280()
{
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);

  return sub_20E322470();
}

uint64_t sub_20E0B72EC()
{
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);

  return sub_20E322480();
}

uint64_t sub_20E0B7388()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864828);
  __swift_project_value_buffer(v0, qword_27C864828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToWriteTranscript";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "failedToConvertClientEvent";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSessionCoordinatorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E0B81E4(v5, a1, a2, a3);
        break;
      case 2:
        sub_20E0B7C28(v5, a1, a2, a3);
        break;
      case 1:
        sub_20E0B7678(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_20E0B7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863ED8, &unk_20E33C2B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863ED8, &unk_20E33C2B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863ED8, &unk_20E33C2B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863ED8, &unk_20E33C2B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0B81E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863ED8, &unk_20E33C2B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863ED8, &unk_20E33C2B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSessionCoordinatorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863ED8, &unk_20E33C2B0);
  v12 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0B8B84(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B8DBC(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0B8950(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSessionCoordinatorError(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B8950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863ED8, &unk_20E33C2B0);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863ED8, &unk_20E33C2B0);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863ED8, &unk_20E33C2B0);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B90A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CA0, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B9144()
{
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return sub_20E322470();
}

uint64_t sub_20E0B91B0()
{
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return sub_20E322480();
}

uint64_t sub_20E0B924C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864840);
  __swift_project_value_buffer(v0, qword_27C864840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToExecute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExecutorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E0B94CC(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0B9A8C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0B94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v42 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v43 = *(v6 + 56);
  v44 = v6 + 56;
  v43(&v36 - v27, 1, 1, v5);
  v39 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863EC8, &unk_20E359E90);
  v37 = v16;
  v38 = v15;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_20E04875C(v14, &qword_27C863EC8, &unk_20E359E90);
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if ((*(v6 + 48))(v20, 1, v5) == 1)
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v30 = v41;
      sub_20E195B54(v20, v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v30, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v43(v28, 0, 1, v5);
    }
  }

  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v31 = v45;
  sub_20E322430();
  if (v31)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  v33 = v42;
  sub_20E0486F4(v28, v42, &qword_27C868418, &unk_20E33C340);
  if ((*(v6 + 48))(v33, 1, v5) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v33, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v34 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v35 = v39;
    sub_20E04875C(v39, &qword_27C863EC8, &unk_20E359E90);
    sub_20E195B54(v34, v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v43(v35, 0, 1, v5);
    return (*(v37 + 56))(v35, 0, 1, v38);
  }
}

uint64_t sub_20E0B9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_20E322110();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v4)
  {
    return sub_20E04875C(v17, &qword_27C867FE0, &qword_20E33B098);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_20E0486F4(v17, v15, &qword_27C867FE0, &qword_20E33B098);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_20E04875C(v15, &qword_27C867FE0, &qword_20E33B098);
  if (v20 == 1)
  {
    return sub_20E04875C(v17, &qword_27C867FE0, &qword_20E33B098);
  }

  sub_20E0486F4(v28, v10, &qword_27C863EC8, &unk_20E359E90);
  v21 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_20E04875C(v10, &qword_27C863EC8, &unk_20E359E90);
  if (v23 != 1)
  {
    sub_20E3222C0();
  }

  sub_20E04875C(v17, &qword_27C867FE0, &qword_20E33B098);
  v25 = v28;
  sub_20E04875C(v28, &qword_27C863EC8, &unk_20E359E90);
  v26 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t TranscriptProtoExecutorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863EC8, &unk_20E359E90);
  v12 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      result = sub_20E0BA240(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_20E0B9FCC(v3, a1, a2, a3);
      result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for TranscriptProtoExecutorError(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E0B9FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863EC8, &unk_20E359E90);
  v14 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_20E04875C(v8, &qword_27C863EC8, &unk_20E359E90);
    __break(1u);
  }

  else if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_20E0486F4(a1, v18 - v12, &qword_27C863EC8, &unk_20E359E90);
  v14 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863EC8, &unk_20E359E90);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 1, v15);
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if (v16 == 1)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0BA568(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C98, type metadata accessor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BA608()
{
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);

  return sub_20E322470();
}

uint64_t sub_20E0BA674()
{
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);

  return sub_20E322480();
}

uint64_t sub_20E0BA710()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864858);
  __swift_project_value_buffer(v0, qword_27C864858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToPlan";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "networkError";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlannerError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E0BAFF0(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E07FF88(a1, v5, a2, a3, &qword_27C863ED0, &unk_20E33C2C0, type metadata accessor for TranscriptProtoPlannerErrorEnum, 2);
          break;
        case 1:
          sub_20E0BAA40(v5, a1, a2, a3);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863ED0, &unk_20E33C2C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863ED0, &unk_20E33C2C0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863ED0, &unk_20E33C2C0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0BAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863ED0, &unk_20E33C2C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863ED0, &unk_20E33C2C0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v28, v36, &qword_27C868418, &unk_20E33C340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v36, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868418, &unk_20E33C340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863ED0, &unk_20E33C2C0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoPlannerError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863ED0, &unk_20E33C2C0);
  v12 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        result = sub_20E0BB994(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_9;
      }

      sub_20E0BBBE0(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0BB760(v3, a1, a2, a3);
    }

    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_9:
  v15 = v3 + *(type metadata accessor for TranscriptProtoPlannerError(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E0BB760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863ED0, &unk_20E33C2C0);
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863ED0, &unk_20E33C2C0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863ED0, &unk_20E33C2C0);
  v14 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863ED0, &unk_20E33C2C0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0BBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863ED0, &unk_20E33C2C0);
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863ED0, &unk_20E33C2C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BBEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C90, type metadata accessor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BBF68()
{
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);

  return sub_20E322470();
}

uint64_t sub_20E0BBFD4()
{
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);

  return sub_20E322480();
}

uint64_t sub_20E0BC070()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864870);
  __swift_project_value_buffer(v0, qword_27C864870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unsupported";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_20E0BC9B8(v5, a1, a2, a3);
        }

        else if (result == 5)
        {
          sub_20E0BCF74(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_20E07FF88(a1, v5, a2, a3, &qword_27C865B80, &qword_20E3263A0, type metadata accessor for TranscriptProtoActionRequirementEnum, 3);
      }

      else if (result == 3)
      {
        sub_20E0BC408(v5, a1, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BC408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685A8, &qword_20E33B5C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B80, &qword_20E3263A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B80, &qword_20E3263A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C8685A8, &qword_20E33B5C8);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoAppRequirement);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoAppRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685A8, &qword_20E33B5C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685A8, &qword_20E33B5C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685A8, &qword_20E33B5C8);
    return sub_20E04875C(v36, &qword_27C8685A8, &qword_20E33B5C8);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoAppRequirement);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685A8, &qword_20E33B5C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoAppRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685B0, &qword_20E33B5D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B80, &qword_20E3263A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B80, &qword_20E3263A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C8685B0, &qword_20E33B5D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPermissionRequirement);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPermissionRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685B0, &qword_20E33B5D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685B0, &qword_20E33B5D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685B0, &qword_20E33B5D0);
    return sub_20E04875C(v36, &qword_27C8685B0, &qword_20E33B5D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPermissionRequirement);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685B0, &qword_20E33B5D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPermissionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0BCF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685B8, &qword_20E33B5D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865B80, &qword_20E3263A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865B80, &qword_20E3263A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8685B8, &qword_20E33B5D8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8685B8, &qword_20E33B5D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8685B8, &qword_20E33B5D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8685B8, &qword_20E33B5D8);
    return sub_20E04875C(v36, &qword_27C8685B8, &qword_20E33B5D8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8685B8, &qword_20E33B5D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoActionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865B80, &qword_20E3263A0);
  v12 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_20E0BD708(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_20E0BDDC0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E0BDB88(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0BD954(v3, a1, a2, a3);
    }

    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  v15 = v3 + *(type metadata accessor for TranscriptProtoActionRequirement(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E0BD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865B80, &qword_20E3263A0);
  v14 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865B80, &qword_20E3263A0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0BD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B80, &qword_20E3263A0);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoAppRequirement);
    sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoAppRequirement);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BDB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B80, &qword_20E3263A0);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPermissionRequirement);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865B80, &qword_20E3263A0);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BE0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C88, type metadata accessor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BE148()
{
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0BE1B4()
{
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0BE250()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864888);
  __swift_project_value_buffer(v0, qword_27C864888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceUnlockRequired";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemRequirementMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
LABEL_5:
            sub_20E07FF88(v11, v12, v13, v14, &qword_27C863AA8, &unk_20E33C2D0, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, v15);
            break;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
            goto LABEL_5;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
            goto LABEL_5;
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          sub_20E0BED14(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E0BF2D0(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        }

        if (result == 5)
        {
          sub_20E0BE764(v5, a1, a2, a3);
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868588, &qword_20E33B5A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863AA8, &unk_20E33C2D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863AA8, &unk_20E33C2D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868588, &qword_20E33B5A8);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868588, &qword_20E33B5A8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868588, &qword_20E33B5A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868588, &qword_20E33B5A8);
    return sub_20E04875C(v36, &qword_27C868588, &qword_20E33B5A8);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868588, &qword_20E33B5A8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0BED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868590, &qword_20E33B5B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863AA8, &unk_20E33C2D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863AA8, &unk_20E33C2D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868590, &qword_20E33B5B0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868590, &qword_20E33B5B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868590, &qword_20E33B5B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868590, &qword_20E33B5B0);
    return sub_20E04875C(v36, &qword_27C868590, &qword_20E33B5B0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868590, &qword_20E33B5B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0BF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868598, &qword_20E33B5B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863AA8, &unk_20E33C2D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863AA8, &unk_20E33C2D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C868598, &qword_20E33B5B8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868598, &qword_20E33B5B8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868598, &qword_20E33B5B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868598, &qword_20E33B5B8);
    return sub_20E04875C(v36, &qword_27C868598, &qword_20E33B5B8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868598, &qword_20E33B5B8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSystemRequirementMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863AA8, &unk_20E33C2D0);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_20;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        result = sub_20E0BFF74(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_20E0C01C0(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      result = sub_20E0BFADC(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E0BFD28(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0C0640(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0C0878(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0C040C(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (!v4)
  {
LABEL_20:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSystemRequirementMessage(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0BFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863AA8, &unk_20E33C2D0);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0BFD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863AA8, &unk_20E33C2D0);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0BFF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863AA8, &unk_20E33C2D0);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 5)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C01C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863AA8, &unk_20E33C2D0);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863AA8, &unk_20E33C2D0);
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863AA8, &unk_20E33C2D0);
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863AA8, &unk_20E33C2D0);
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C80, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C0C00()
{
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return sub_20E322470();
}

uint64_t sub_20E0C0C6C()
{
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return sub_20E322480();
}

uint64_t sub_20E0C0E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C78, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C0EA8()
{
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C0F14()
{
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868570, &qword_20E33B590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868570, &qword_20E33B590);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
}

uint64_t sub_20E0C1348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C70, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C13E8()
{
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C1454()
{
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C14F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8648D0);
  __swift_project_value_buffer(v0, qword_27C8648D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alternativeAuthenticationPermitted";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originDeviceAuthenticationRequired";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0C16F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_20E322110();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v21 = a2;
  sub_20E0486F4(v13, v11, &qword_27C867FE0, &qword_20E33B098);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_20E04875C(v11, &qword_27C867FE0, &qword_20E33B098);
  if (v16 == 1)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v17 = v21;
  if (*v21 != 2)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  return result;
}

uint64_t sub_20E0C1A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C68, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C1AB8()
{
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_20E322470();
}

uint64_t sub_20E0C1B24()
{
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_20E322480();
}

uint64_t sub_20E0C1BEC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8648E8);
  __swift_project_value_buffer(v0, qword_27C8648E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signInRequired";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountSetupRequired";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userConfirmationRequired";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoAppRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v15 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 2;
LABEL_3:
        sub_20E0C1EDC(v9, v10, v11, v12, v13);
        break;
      case 2:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 1;
        goto LABEL_3;
      case 1:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 0;
        goto LABEL_3;
    }
  }
}

uint64_t sub_20E0C1EDC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_20E322110();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v21 = a2;
  sub_20E0486F4(v13, v11, &qword_27C867FE0, &qword_20E33B098);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_20E04875C(v11, &qword_27C867FE0, &qword_20E33B098);
  if (v16 == 1)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v17 = v21;
  if (*v21 != 3)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoAppRequirement.traverse<A>(visitor:)()
{
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      goto LABEL_7;
    }

    result = sub_20E0C247C(v0);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!*v0)
    {
      result = sub_20E0C21E0(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = sub_20E0C232C(v0);
    if (!v1)
    {
LABEL_7:
      v3 = &v0[*(type metadata accessor for TranscriptProtoAppRequirement(0) + 20)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0C21E0(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_20E0C232C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C247C(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C2690(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C60, type metadata accessor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C2730()
{
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0C279C()
{
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0C2864()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864900);
  __swift_project_value_buffer(v0, qword_27C864900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isPreciseLocationRequired";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minimumViableLocationAccuracy";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "timeoutForLocationFetch";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E322380();
        break;
      case 2:
        sub_20E3223B0();
        break;
      case 1:
        sub_20E3222F0();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_20E3224C0(), !v1))
  {
    if ((*(v0 + 16) & 1) == 0)
    {
      v3 = *(v0 + 8);
      result = sub_20E322530();
    }

    if (!v1)
    {
      if ((*(v0 + 32) & 1) == 0)
      {
        v4 = *(v0 + 24);
        sub_20E322510();
      }

      v5 = v0 + *(type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0C2C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0C2CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C58, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C2D98()
{
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C2E04()
{
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C2EA0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864918);
  __swift_project_value_buffer(v0, qword_27C864918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriPermissionRequired";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPermissionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 6;
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_21;
            }

            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 7;
          }
        }

        else if (result == 5)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
        }
      }

      else if (result == 1)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 0;
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_21;
        }

        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 1;
      }

      sub_20E0C3388(v11, v12, v13, v14, v15);
LABEL_21:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C3388(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_20E322110();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v21 = a2;
  sub_20E0486F4(v13, v11, &qword_27C867FE0, &qword_20E33B098);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_20E04875C(v11, &qword_27C867FE0, &qword_20E33B098);
  if (v16 == 1)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v17 = v21;
  if (*v21 != 8)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoPermissionRequirement.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v2 == 2)
      {
        result = sub_20E0C247C(v0);
        if (v1)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_20E0C3710(v0);
      if (v1)
      {
        return result;
      }
    }

    else
    {
      if (!*v0)
      {
        result = sub_20E0C21E0(v0);
        if (v1)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_20E0C232C(v0);
      if (v1)
      {
        return result;
      }
    }

LABEL_18:
    v4 = &v0[*(type metadata accessor for TranscriptProtoPermissionRequirement(0) + 20)];
    return sub_20E3221A0();
  }

  if (*v0 <= 5u)
  {
    if (v2 == 4)
    {
      result = sub_20E0C3860(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_18;
    }

    result = sub_20E0C39B0(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v2 == 6)
  {
    result = sub_20E0C3B00(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v2 != 7)
  {
    goto LABEL_18;
  }

  result = sub_20E0C3C50(v0);
  if (!v1)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_20E0C3710(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3860(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C39B0(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3B00(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3C50(_BYTE *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 7)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 8;
  v2 = &a2[*(a1 + 20)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0C3E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C50, type metadata accessor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C3F00()
{
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0C3F6C()
{
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0C4008()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864930);
  __swift_project_value_buffer(v0, qword_27C864930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "failure";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "concludesStreamingStatementID";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailure.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoActionFailureFailure(0);
        sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure);
        sub_20E322430();
      }

      else if (result == 8)
      {
        sub_20E0C42F8();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C42F8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0C4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868560, &unk_20E33C2E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868560, &unk_20E33C2E0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailure);
}

uint64_t sub_20E0C4610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionFailure(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0C48F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C48, type metadata accessor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C4990()
{
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure);

  return sub_20E322470();
}

uint64_t sub_20E0C49FC()
{
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure);

  return sub_20E322480();
}

uint64_t sub_20E0C4A98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864948);
  __swift_project_value_buffer(v0, qword_27C864948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20E326340;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "preflightCheckFailure";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
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
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "featureCurrentlyRestricted";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entityNotFound";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "actionNotAllowed";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "unableToUndo";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "actionCanceled";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "valueDisambiguationRejected";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "noMatchingTool";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "developerDefinedError";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "unableToCancel";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchSucceededNoMatchingTool";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "valueSelectionRequired";
  *(v41 + 1) = 22;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "unableToHandleRequest";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailureFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
          goto LABEL_24;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_24;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_24;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_24;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_24;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_24;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_24;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_24;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_24;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_24;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_24;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_24;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_24;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
          goto LABEL_24;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
          goto LABEL_24;
        case 16:
          sub_20E0C5550(v5, a1, a2, a3);
          break;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 17;
          goto LABEL_24;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_24;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
LABEL_24:
          sub_20E07FF88(v11, v12, v13, v14, &qword_27C865BD0, &qword_20E3263A8, type metadata accessor for TranscriptProtoActionFailureFailureEnum, v15);
          break;
        case 20:
          sub_20E0C5B00(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868550, &qword_20E33B578);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865BD0, &qword_20E3263A8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865BD0, &qword_20E3263A8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868550, &qword_20E33B578);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868550, &qword_20E33B578);
  }

  sub_20E0486F4(v28, v36, &qword_27C868550, &qword_20E33B578);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868550, &qword_20E33B578);
    return sub_20E04875C(v36, &qword_27C868550, &qword_20E33B578);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868550, &qword_20E33B578);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0C5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868558, &qword_20E33B580);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C865BD0, &qword_20E3263A8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865BD0, &qword_20E3263A8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868558, &qword_20E33B580);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868558, &qword_20E33B580);
  }

  sub_20E0486F4(v28, v36, &qword_27C868558, &qword_20E33B580);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868558, &qword_20E33B580);
    return sub_20E04875C(v36, &qword_27C868558, &qword_20E33B580);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868558, &qword_20E33B580);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoActionFailureFailure.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E0C8E20(v3, a1, a2, a3);
        goto LABEL_25;
      case 2u:
        result = sub_20E0F45C4(v3, a1, a2, a3, &qword_27C865BD0, &qword_20E3263A8, type metadata accessor for TranscriptProtoActionFailureFailureEnum, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        result = sub_20E0C64E0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_20E0C672C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_20E0C6978(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_20E0C6BC4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_20E0C6E10(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_20E0C705C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_20E0C72A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E0C74F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E0C7740(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E0C798C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E0C7BD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E0C7E24(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E0C8070(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_20E0C82BC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_20E0C873C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_20E0C8988(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_20E0C8BD4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E0C8508(v3, a1, a2, a3);
LABEL_25:
        result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for TranscriptProtoActionFailureFailure(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E0C64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 5)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C6BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 7)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 8)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C72A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 9)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 10)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C7740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 11)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 12)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 16)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C8508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865BD0, &qword_20E3263A8);
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865BD0, &qword_20E3263A8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 17)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 18)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C8BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C865BD0, &qword_20E3263A8);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 19)
    {
      sub_20E322100();
      sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E0C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865BD0, &qword_20E3263A8);
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865BD0, &qword_20E3263A8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C9108(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C40, type metadata accessor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C91A8()
{
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure);

  return sub_20E322470();
}

uint64_t sub_20E0C9214()
{
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure);

  return sub_20E322480();
}

uint64_t sub_20E0C92B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864960);
  __swift_project_value_buffer(v0, qword_27C864960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedString";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "code";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_20E322540(), !v1))
    {
      if (!v0[4] || (result = sub_20E322510(), !v1))
      {
        v8 = v0 + *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0C9658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  return result;
}

uint64_t sub_20E0C96E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C38, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C9780()
{
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_20E322470();
}

uint64_t sub_20E0C97EC()
{
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_20E322480();
}

uint64_t sub_20E0C99A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C30, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C9A40()
{
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C9AAC()
{
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C9B74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864990);
  __swift_project_value_buffer(v0, qword_27C864990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "returnValue";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionSuccess.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          sub_20E0C9FF4();
          break;
        case 3:
          sub_20E0CA0A8();
          break;
        case 4:
          goto LABEL_12;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36);
        sub_20E3223D0();
      }

      else if (result == 8)
      {
        sub_20E0CA210();
      }
    }

    else if (result == 5)
    {
      sub_20E0CA15C();
    }

    else
    {
LABEL_12:
      sub_20E3222F0();
    }
  }
}

uint64_t sub_20E0C9FF4()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0CA0A8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 28);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext);
  return sub_20E322430();
}

uint64_t sub_20E0CA15C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 32);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction);
  return sub_20E322430();
}

uint64_t sub_20E0CA210()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 40);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0CA3F0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E0CA60C(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0CA828(v3, a1, a2, a3);
    if (v3[1] == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0CAA44(v3);
    sub_20E0CAABC(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoActionSuccess(0) + 44)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0CA3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0CA60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868538, &unk_20E33C2F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C868538, &unk_20E33C2F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868538, &unk_20E33C2F0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_20E0CA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C868528, &qword_20E33B558);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868528, &qword_20E33B558);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoFollowUpAction);
}

uint64_t sub_20E0CAA44(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E0CAABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0CAD24@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a2[v10], 1, 1, v12);
  v13 = &a2[a1[11]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0CAE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E0CAF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E0CAF7C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_20E0CAFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C28, type metadata accessor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB070()
{
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess);

  return sub_20E322470();
}

uint64_t sub_20E0CB0DC()
{
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess);

  return sub_20E322480();
}

uint64_t sub_20E0CB214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_20E195B0C(a5, a6);
      sub_20E322430();
    }
  }

  return result;
}

uint64_t sub_20E0CB3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C20, type metadata accessor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB480()
{
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream);

  return sub_20E322470();
}

uint64_t sub_20E0CB4EC()
{
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream);

  return sub_20E322480();
}

uint64_t sub_20E0CB588()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8649C0);
  __swift_project_value_buffer(v0, qword_27C8649C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "actionDescription";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0CB8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C18, type metadata accessor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB978()
{
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext);

  return sub_20E322470();
}

uint64_t sub_20E0CB9E4()
{
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext);

  return sub_20E322480();
}

uint64_t sub_20E0CBB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868518, &unk_20E33C300);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868518, &unk_20E33C300);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
}

uint64_t sub_20E0CBE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C10, type metadata accessor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CBEE8()
{
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction);

  return sub_20E322470();
}

uint64_t sub_20E0CBF54()
{
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction);

  return sub_20E322480();
}

uint64_t sub_20E0CC05C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0CC0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868500, &qword_20E33B538);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868500, &qword_20E33B538);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_20E04875C(v27, &qword_27C868510, &qword_20E33B548);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868510, &qword_20E33B548);
  }

  sub_20E0486F4(v27, v43, &qword_27C868510, &qword_20E33B548);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C868510, &qword_20E33B548);
    return sub_20E04875C(v33, &qword_27C868510, &qword_20E33B548);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868510, &qword_20E33B548);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868500, &qword_20E33B538);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0CC66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868500, &qword_20E33B538);
  v13 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868500, &qword_20E33B538);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_20E0CC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C08, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CC9BC()
{
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_20E322470();
}

uint64_t sub_20E0CCA28()
{
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_20E322480();
}

uint64_t sub_20E0CCAC4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A08);
  __swift_project_value_buffer(v0, qword_27C864A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkAction";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkShowOutputActionOptions";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0CCD3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(v5 + 32, a2, a3);
        break;
      case 2:
        a4(v5 + 16, a2, a3);
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_20E3224E0();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v0[4] || (result = sub_20E322560(), !v1))
    {
      v11 = v0 + *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}