double sub_20E0CCF58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = xmmword_20E326350;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E0CCFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C00, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CD088()
{
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_20E322470();
}

uint64_t sub_20E0CD0F4()
{
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_20E322480();
}

uint64_t sub_20E0CD190()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A20);
  __swift_project_value_buffer(v0, qword_27C864A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterConfirmation.decodeMessage<A>(decoder:)()
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
      if (result == 5)
      {
        sub_20E322380();
      }

      else if (result == 6)
      {
        sub_20E0CD58C();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E0CD4D8();
    }
  }

  return result;
}

uint64_t sub_20E0CD4D8()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0CD58C()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 28);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_20E0CD728(v3, a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 24) & 1) == 0)
      {
        v12 = *(v3 + 16);
        sub_20E322510();
      }

      sub_20E0CD944(v3, a1, a2, a3);
      v13 = v3 + *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0CD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
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

uint64_t sub_20E0CD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0CDBAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  v7 = a2 + a1[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0CDCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BF8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CDD54()
{
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation);

  return sub_20E322470();
}

uint64_t sub_20E0CDDC0()
{
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation);

  return sub_20E322480();
}

uint64_t sub_20E0CDE5C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A38);
  __swift_project_value_buffer(v0, qword_27C864A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "items";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterDisambiguation.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_20E322380();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E322420();
          break;
        case 1:
          sub_20E3223E0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(*(v0 + 16) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_20E322570();
      if (v1)
      {
        return result;
      }

      if (*(v0 + 32))
      {
        goto LABEL_9;
      }
    }

    else if (*(v0 + 32))
    {
LABEL_9:
      if (!v1)
      {
        v6 = v0 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
        return sub_20E3221A0();
      }

      return result;
    }

    v5 = *(v0 + 24);
    result = sub_20E322510();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20E0CE340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0CE3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BF0, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CE478()
{
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0CE4E4()
{
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return sub_20E322480();
}

uint64_t TranscriptProtoValueDisambiguation.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoValueDisambiguation(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0CE7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BE8, type metadata accessor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CE848()
{
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0CE8B4()
{
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation);

  return sub_20E322480();
}

uint64_t sub_20E0CE94C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A68);
  __swift_project_value_buffer(v0, qword_27C864A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionConfirmation";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parameterNeedsValue";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameterConfirmation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "parameterDisambiguation";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parameterNotAllowed";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parameterCandidatesNotFound";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "actionRequirement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "toolDisambiguation";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "failure";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "valueDisambiguation";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "snippetStream";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            sub_20E0D234C(v5, a1, a2, a3);
            break;
          case 11:
            sub_20E0D2908(v5, a1, a2, a3);
            break;
          case 12:
            sub_20E0D2EC4(v5, a1, a2, a3);
            break;
        }
      }

      else if (result == 7)
      {
        sub_20E0D1218(v5, a1, a2, a3);
      }

      else if (result == 8)
      {
        sub_20E0D17D4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E0D1D90(v5, a1, a2, a3);
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        sub_20E0D00E4(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0D06A0(v5, a1, a2, a3);
      }

      else
      {
        sub_20E0D0C5C(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E0CEFBC(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E0CF56C(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E0CFB28(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0CEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684A0, &qword_20E33B4D8);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C8684A0, &qword_20E33B4D8);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoActionSuccess);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionSuccess);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684A0, &qword_20E33B4D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684A0, &qword_20E33B4D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684A0, &qword_20E33B4D8);
    return sub_20E04875C(v36, &qword_27C8684A0, &qword_20E33B4D8);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoActionSuccess);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684A0, &qword_20E33B4D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionSuccess);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0CF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684A8, &qword_20E33B4E0);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C8684A8, &qword_20E33B4E0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionConfirmation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionConfirmation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684A8, &qword_20E33B4E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684A8, &qword_20E33B4E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684A8, &qword_20E33B4E0);
    return sub_20E04875C(v36, &qword_27C8684A8, &qword_20E33B4E0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684A8, &qword_20E33B4E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0CFB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684B0, &qword_20E33B4E8);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8684B0, &qword_20E33B4E8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoParameterNeedsValue);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoParameterNeedsValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684B0, &qword_20E33B4E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684B0, &qword_20E33B4E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684B0, &qword_20E33B4E8);
    return sub_20E04875C(v36, &qword_27C8684B0, &qword_20E33B4E8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoParameterNeedsValue);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684B0, &qword_20E33B4E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoParameterNeedsValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684B8, &qword_20E33B4F0);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C8684B8, &qword_20E33B4F0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoParameterConfirmation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoParameterConfirmation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684B8, &qword_20E33B4F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684B8, &qword_20E33B4F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684B8, &qword_20E33B4F0);
    return sub_20E04875C(v36, &qword_27C8684B8, &qword_20E33B4F0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684B8, &qword_20E33B4F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoParameterConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684C0, &qword_20E33B4F8);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C8684C0, &qword_20E33B4F8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoParameterDisambiguation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoParameterDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684C0, &qword_20E33B4F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684C0, &qword_20E33B4F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684C0, &qword_20E33B4F8);
    return sub_20E04875C(v36, &qword_27C8684C0, &qword_20E33B4F8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoParameterDisambiguation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684C0, &qword_20E33B4F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoParameterDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D0C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684C8, &qword_20E33B500);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C8684C8, &qword_20E33B500);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoParameterNotAllowed);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoParameterNotAllowed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684C8, &qword_20E33B500);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684C8, &qword_20E33B500);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684C8, &qword_20E33B500);
    return sub_20E04875C(v36, &qword_27C8684C8, &qword_20E33B500);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684C8, &qword_20E33B500);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoParameterNotAllowed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684D0, &qword_20E33B508);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C8684D0, &qword_20E33B508);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684D0, &qword_20E33B508);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684D0, &qword_20E33B508);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684D0, &qword_20E33B508);
    return sub_20E04875C(v36, &qword_27C8684D0, &qword_20E33B508);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684D0, &qword_20E33B508);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D17D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684D8, &qword_20E33B510);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C8684D8, &qword_20E33B510);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionRequirement);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684D8, &qword_20E33B510);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684D8, &qword_20E33B510);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684D8, &qword_20E33B510);
    return sub_20E04875C(v36, &qword_27C8684D8, &qword_20E33B510);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionRequirement);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684D8, &qword_20E33B510);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D1D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684E0, &qword_20E33B518);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v28, &qword_27C8684E0, &qword_20E33B518);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoToolDisambiguation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoToolDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684E0, &qword_20E33B518);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684E0, &qword_20E33B518);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684E0, &qword_20E33B518);
    return sub_20E04875C(v36, &qword_27C8684E0, &qword_20E33B518);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoToolDisambiguation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684E0, &qword_20E33B518);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoToolDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailure(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684E8, &qword_20E33B520);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v28, &qword_27C8684E8, &qword_20E33B520);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionFailure);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionFailure);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684E8, &qword_20E33B520);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684E8, &qword_20E33B520);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684E8, &qword_20E33B520);
    return sub_20E04875C(v36, &qword_27C8684E8, &qword_20E33B520);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionFailure);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684E8, &qword_20E33B520);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionFailure);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684F0, &qword_20E33B528);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v28, &qword_27C8684F0, &qword_20E33B528);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoValueDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684F0, &qword_20E33B528);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684F0, &qword_20E33B528);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684F0, &qword_20E33B528);
    return sub_20E04875C(v36, &qword_27C8684F0, &qword_20E33B528);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoValueDisambiguation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684F0, &qword_20E33B528);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoValueDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0D2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684F8, &qword_20E33B530);
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
  sub_20E0486F4(a1, v14, &qword_27C863BA0, &unk_20E325F20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C8684F8, &qword_20E33B530);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSnippetStream);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSnippetStream);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8684F8, &qword_20E33B530);
  }

  sub_20E0486F4(v28, v36, &qword_27C8684F8, &qword_20E33B530);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8684F8, &qword_20E33B530);
    return sub_20E04875C(v36, &qword_27C8684F8, &qword_20E33B530);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSnippetStream);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8684F8, &qword_20E33B530);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSnippetStream);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoStatementOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863BA0, &unk_20E325F20);
  v12 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_20E0D4BC4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_20E0D4DFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_20E0D5034(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E0D451C(v3, a1, a2, a3);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_20E0D4754(v3, a1, a2, a3);
        goto LABEL_28;
      }

      sub_20E0D498C(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_31:
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_2:
        v13 = v3 + *(type metadata accessor for TranscriptProtoStatementOutcome(0) + 20);
        return sub_20E3221A0();
      }
    }

    return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E0D3E74(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0D40AC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0D42E4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0D3A04(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0D3C3C(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0D37D0(v3, a1, a2, a3);
  }

LABEL_28:
  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (!v4)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_20E0D37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionSuccess);
    sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionSuccess);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterDisambiguation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionRequirement);
    sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionRequirement);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoToolDisambiguation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailure(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionFailure);
    sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailure);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoValueDisambiguation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BA0, &unk_20E325F20);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BA0, &unk_20E325F20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSnippetStream);
    sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSnippetStream);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0D531C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BE0, type metadata accessor for TranscriptProtoStatementOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D53BC()
{
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);

  return sub_20E322470();
}

uint64_t sub_20E0D5428()
{
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);

  return sub_20E322480();
}

uint64_t sub_20E0D54C4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A80);
  __swift_project_value_buffer(v0, qword_27C864A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "context";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterNeedsValue.decodeMessage<A>(decoder:)()
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
        sub_20E0D5864();
        break;
      case 3:
        sub_20E0D57B0();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0D57B0()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterNeedsValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E0D5864()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterNeedsValue(0) + 24);
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterNeedsValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0D59DC(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0D5BF8(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoParameterNeedsValue(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D59DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E0D5BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868488, &unk_20E33C310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868488, &unk_20E33C310);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868488, &unk_20E33C310);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
}

uint64_t sub_20E0D5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BD8, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D5F78()
{
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return sub_20E322470();
}

uint64_t sub_20E0D5FE4()
{
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return sub_20E322480();
}

uint64_t sub_20E0D60EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868480, &qword_20E33B4C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868470, &qword_20E33B4B0);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868470, &qword_20E33B4B0);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
    sub_20E04875C(v27, &qword_27C868480, &qword_20E33B4C0);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868480, &qword_20E33B4C0);
  }

  sub_20E0486F4(v27, v43, &qword_27C868480, &qword_20E33B4C0);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C868480, &qword_20E33B4C0);
    return sub_20E04875C(v33, &qword_27C868480, &qword_20E33B4C0);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868480, &qword_20E33B4C0);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868470, &qword_20E33B4B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0D6678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868470, &qword_20E33B4B0);
  v13 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868470, &qword_20E33B4B0);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
}

uint64_t sub_20E0D6928(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BD0, type metadata accessor for TranscriptProtoParameterNeedsValueContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D69C8()
{
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext);

  return sub_20E322470();
}

uint64_t sub_20E0D6A34()
{
  sub_20E195B0C(&qword_27C8669A0, type metadata accessor for TranscriptProtoParameterNeedsValueContext);

  return sub_20E322480();
}

uint64_t sub_20E0D6BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BC8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D6C70()
{
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return sub_20E322470();
}

uint64_t sub_20E0D6CDC()
{
  sub_20E195B0C(&qword_27C8669B8, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);

  return sub_20E322480();
}

uint64_t sub_20E0D6D74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AC8);
  __swift_project_value_buffer(v0, qword_27C864AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "reason";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterNotAllowed.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E18478C();
          sub_20E322310();
          break;
        case 2:
          sub_20E0D708C();
          break;
        case 1:
          sub_20E3223E0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0D708C()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterNotAllowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_20E0D7234(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        v13 = *(v3 + 16);
        sub_20E18478C();
        sub_20E3224D0();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D7234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
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

uint64_t sub_20E0D74B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  v7 = a3 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_20E0D758C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BC0, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D762C()
{
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return sub_20E322470();
}

uint64_t sub_20E0D7698()
{
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return sub_20E322480();
}

uint64_t sub_20E0D7718()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AE0);
  __swift_project_value_buffer(v0, qword_27C864AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "missingRequiredPhoneNumber";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "missingRequiredEmailAddress";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0D7990()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864AF8);
  __swift_project_value_buffer(v0, qword_27C864AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0D7BA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0D7C48()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0D7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_20E322540(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      v16 = v5 + *(a5(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0D7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
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

uint64_t sub_20E0D80CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BB8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D816C()
{
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return sub_20E322470();
}

uint64_t sub_20E0D81D8()
{
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return sub_20E322480();
}

uint64_t sub_20E0D8374(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BB0, type metadata accessor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D8414()
{
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);

  return sub_20E322470();
}

uint64_t sub_20E0D8480()
{
  sub_20E195B0C(qword_280E0C940, type metadata accessor for TranscriptProtoParticipantID);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_20E322560(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpanID(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoSpanID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoSpanID(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0D86FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0D8778(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BA8, type metadata accessor for TranscriptProtoSpanID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D8818()
{
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID);

  return sub_20E322470();
}

uint64_t sub_20E0D8884()
{
  sub_20E195B0C(qword_280E0FDC8, type metadata accessor for TranscriptProtoSpanID);

  return sub_20E322480();
}

uint64_t sub_20E0D8900(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0D89C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864B40);
  __swift_project_value_buffer(v0, qword_27C864B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "promptResponse";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "statements";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "overrideId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 11;
  *v15 = "planSource";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlan.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 8)
      {
        if (result == 3 || result == 4)
        {
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 9:
            type metadata accessor for TranscriptProtoProgramStatement(0);
            sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement);
            sub_20E322420();
            break;
          case 10:
            sub_20E3223D0();
            break;
          case 11:
            sub_20E1959FC();
            sub_20E322300();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoPlan.traverse<A>(visitor:)()
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
    result = v0[2];
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_20E322540(), !v1))
    {
      if (*(v0[4] + 16))
      {
        type metadata accessor for TranscriptProtoProgramStatement(0);
        sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement);
        result = sub_20E322570();
        if (v1)
        {
          return result;
        }

        if (!v0[6])
        {
          goto LABEL_13;
        }
      }

      else if (!v0[6])
      {
LABEL_13:
        if (!v1)
        {
          sub_20E0D8F90(v0);
          v9 = v0 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
          return sub_20E3221A0();
        }

        return result;
      }

      v8 = v0[5];
      result = sub_20E322540();
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_20E0D8F90(uint64_t result)
{
  if (*(result + 56) != 6)
  {
    sub_20E1959FC();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0D9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 6;
  v3 = a2 + *(a1 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0D90F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BA0, type metadata accessor for TranscriptProtoPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D9198()
{
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan);

  return sub_20E322470();
}

uint64_t sub_20E0D9204()
{
  sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan);

  return sub_20E322480();
}

uint64_t sub_20E0D930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868460, &qword_20E33B4A8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868450, &unk_20E33C320);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868450, &unk_20E33C320);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_20E04875C(v27, &qword_27C868460, &qword_20E33B4A8);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoPlanGenerationError);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoPlanGenerationError);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868460, &qword_20E33B4A8);
  }

  sub_20E0486F4(v27, v43, &qword_27C868460, &qword_20E33B4A8);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C868460, &qword_20E33B4A8);
    return sub_20E04875C(v33, &qword_27C868460, &qword_20E33B4A8);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoPlanGenerationError);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868460, &qword_20E33B4A8);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868450, &unk_20E33C320);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPlanGenerationError);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0D9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868450, &unk_20E33C320);
  v13 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868450, &unk_20E33C320);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlanGenerationError);
}

uint64_t sub_20E0D9B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B98, type metadata accessor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0D9BE8()
{
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError);

  return sub_20E322470();
}

uint64_t sub_20E0D9C54()
{
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError);

  return sub_20E322480();
}

uint64_t sub_20E0D9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868440, &qword_20E33B490);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868430, &unk_20E33C330);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868430, &unk_20E33C330);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_20E04875C(v27, &qword_27C868440, &qword_20E33B490);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868440, &qword_20E33B490);
  }

  sub_20E0486F4(v27, v43, &qword_27C868440, &qword_20E33B490);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C868440, &qword_20E33B490);
    return sub_20E04875C(v33, &qword_27C868440, &qword_20E33B490);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868440, &qword_20E33B490);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868430, &unk_20E33C330);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0DA2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868430, &unk_20E33C330);
  v13 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868430, &unk_20E33C330);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
}

uint64_t sub_20E0DA598(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B90, type metadata accessor for TranscriptProtoPlanGenerationError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DA638()
{
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError);

  return sub_20E322470();
}

uint64_t sub_20E0DA6A4()
{
  sub_20E195B0C(&qword_27C866A50, type metadata accessor for TranscriptProtoPlanGenerationError);

  return sub_20E322480();
}

uint64_t sub_20E0DA740()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864B88);
  __swift_project_value_buffer(v0, qword_27C864B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawModelOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "error";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_20E0DAA18();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E0DAA18()
{
  v0 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  return sub_20E322430();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      result = sub_20E0DABA8(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3 + *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0DABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868418, &unk_20E33C340);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_20E0DAE10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0DAEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B88, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DAF84()
{
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_20E322470();
}

uint64_t sub_20E0DAFF0()
{
  sub_20E195B0C(&qword_27C866A68, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryResults.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for TranscriptProtoCandidate(0);
        sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoQueryResults.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoCandidate(0), sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryResults(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoQueryResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1534D8(*a1, *a2, type metadata accessor for TranscriptProtoCandidate, type metadata accessor for TranscriptProtoCandidate, _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoCandidate) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoQueryResults(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0DB420(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B80, type metadata accessor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DB4C0()
{
  sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults);

  return sub_20E322470();
}

uint64_t sub_20E0DB52C()
{
  sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults);

  return sub_20E322480();
}

uint64_t sub_20E0DB5FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *, char *), uint64_t (*a8)(void))
{
  if ((sub_20E1534D8(*a1, *a2, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0DB6D0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864BB8);
  __swift_project_value_buffer(v0, qword_27C864BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "context";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "payload";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "isAuthenticated";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryStep.decodeMessage<A>(decoder:)()
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
      if (result == 5)
      {
        sub_20E0DBB8C();
      }

      else if (result == 6)
      {
        sub_20E3222F0();
      }
    }

    else if (result == 2)
    {
      sub_20E0DBA24();
    }

    else if (result == 4)
    {
      sub_20E0DBAD8();
    }
  }

  return result;
}

uint64_t sub_20E0DBA24()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStep(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0DBAD8()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStep(0) + 24);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext);
  return sub_20E322430();
}

uint64_t sub_20E0DBB8C()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStep(0) + 28);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0DBD14(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E0DBF30(v3, a1, a2, a3);
    sub_20E0DC14C(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    v9 = &v3[*(type metadata accessor for TranscriptProtoQueryStep(0) + 32)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DBD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 20), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0DBF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 24), v8, &qword_27C863BC0, &unk_20E323E90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BC0, &unk_20E323E90);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionParameterContext);
}

uint64_t sub_20E0DC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v10 = *(Payload - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](Payload);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_20E0486F4(a1 + *(Step + 28), v8, &qword_27C863BB0, &unk_20E33C350);
  if ((*(v10 + 48))(v8, 1, Payload) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BB0, &unk_20E33C350);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoQueryPayload);
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoQueryPayload);
}

uint64_t sub_20E0DC3F4@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, _BYTE *a5@<X8>)
{
  v9 = a1[5];
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(&a5[v9], 1, 1, v10);
  v11 = a1[6];
  v12 = a3(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = a1[7];
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[a1[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = 0;
  return result;
}

uint64_t sub_20E0DC564(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B78, type metadata accessor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DC604()
{
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep);

  return sub_20E322470();
}

uint64_t sub_20E0DC670()
{
  sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep);

  return sub_20E322480();
}

uint64_t sub_20E0DC70C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864BD0);
  __swift_project_value_buffer(v0, qword_27C864BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0DC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683E8, &qword_20E33B448);
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
  sub_20E0486F4(a1, v14, &qword_27C863BB8, &qword_20E323E88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C8683E8, &qword_20E33B448);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8683E8, &qword_20E33B448);
  }

  sub_20E0486F4(v28, v36, &qword_27C8683E8, &qword_20E33B448);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8683E8, &qword_20E33B448);
    return sub_20E04875C(v36, &qword_27C8683E8, &qword_20E33B448);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8683E8, &qword_20E33B448);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0DCF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
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
  sub_20E0486F4(a1, v14, &qword_27C863BB8, &qword_20E323E88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
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
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
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
    sub_20E04875C(v42, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0DD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683F8, &qword_20E33B458);
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
  sub_20E0486F4(a1, v14, &qword_27C863BB8, &qword_20E323E88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8683F8, &qword_20E33B458);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8683F8, &qword_20E33B458);
  }

  sub_20E0486F4(v28, v36, &qword_27C8683F8, &qword_20E33B458);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8683F8, &qword_20E33B458);
    return sub_20E04875C(v36, &qword_27C8683F8, &qword_20E33B458);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8683F8, &qword_20E33B458);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0DDB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868400, &qword_20E33B460);
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
  sub_20E0486F4(a1, v14, &qword_27C863BB8, &qword_20E323E88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C868400, &qword_20E33B460);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868400, &qword_20E33B460);
  }

  sub_20E0486F4(v28, v36, &qword_27C868400, &qword_20E33B460);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868400, &qword_20E33B460);
    return sub_20E04875C(v36, &qword_27C868400, &qword_20E33B460);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868400, &qword_20E33B460);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863BB8, &qword_20E323E88);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoQueryPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v11, 1, PayloadEnum) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0DE700(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0DE938(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0DE4C8(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0DE294(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoQueryPayload(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863BB8, &qword_20E323E88);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C863BB8, &qword_20E323E88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0DEC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B70, type metadata accessor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DECC0()
{
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload);

  return sub_20E322470();
}

uint64_t sub_20E0DED2C()
{
  sub_20E195B0C(&qword_27C866AA8, type metadata accessor for TranscriptProtoQueryPayload);

  return sub_20E322480();
}

uint64_t sub_20E0DEDAC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E35DBD0);
  qword_27C864BE8 = 0xD000000000000017;
  unk_27C864BF0 = 0x800000020E35B970;
  return result;
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_20E0DEEFC();
    }
  }

  return result;
}

uint64_t sub_20E0DEEFC()
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_20E322170(), type metadata accessor for ToolKitProtoTypedValue(0), sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322490(), !v3))
  {
    v2 = v0 + *(type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DF214(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B68, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DF2B4()
{
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_20E322470();
}

uint64_t sub_20E0DF320()
{
  sub_20E195B0C(&qword_27C866AC0, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_20E322480();
}

uint64_t sub_20E0DF3B4()
{
  result = MEMORY[0x20F32BF40](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27C864C10 = 0xD000000000000017;
  *algn_27C864C18 = 0x800000020E35B970;
  return result;
}

uint64_t sub_20E0DF450()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C20);
  __swift_project_value_buffer(v0, qword_27C864C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0DF668(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(a1, v7, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E0DF708()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E0DF7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = *v5;
    v10 = v5[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_20E322540();
    }

    v12 = v5 + *(a5(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0DF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E0DFB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B60, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0DFC38()
{
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return sub_20E322470();
}

uint64_t sub_20E0DFCA4()
{
  sub_20E195B0C(&qword_27C866AD8, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return sub_20E322480();
}

uint64_t sub_20E0DFD24()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E35DBB0);
  qword_27C864C38 = 0xD000000000000017;
  unk_27C864C40 = 0x800000020E35B970;
  return result;
}

uint64_t sub_20E0DFDC0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C48);
  __swift_project_value_buffer(v0, qword_27C864C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ids";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0DFFEC()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0E0140(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_20E322520();
    }

    v6 = v3 + *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195B0C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E0E0420(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B58, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E04C0()
{
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_20E322470();
}

uint64_t sub_20E0E052C()
{
  sub_20E195B0C(&qword_27C866AF0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_20E322480();
}

uint64_t sub_20E0E05C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C60);
  __swift_project_value_buffer(v0, qword_27C864C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryResults";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originStatementId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rawQueryEventId";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryStepResults.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E3223E0();
          break;
        case 2:
          sub_20E0E0920();
          break;
        case 1:
          type metadata accessor for TranscriptProtoQueryResults(0);
          sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults);
          sub_20E322420();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0E0920()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryStepResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoQueryResults(0), sub_20E195B0C(&qword_27C865CE0, type metadata accessor for TranscriptProtoQueryResults), result = sub_20E322570(), !v4))
  {
    result = sub_20E0E0B00(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3[2];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_20E322540();
      }

      v11 = v3 + *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E0B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  sub_20E0486F4(a1 + *(StepResults + 24), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0E0D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0E0E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B50, type metadata accessor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E0EE4()
{
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults);

  return sub_20E322470();
}

uint64_t sub_20E0E0F50()
{
  sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults);

  return sub_20E322480();
}

uint64_t sub_20E0E0FEC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C78);
  __swift_project_value_buffer(v0, qword_27C864C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fullPrint";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fullSpeak";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportingPrint";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportingSpeak";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseDialog.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t TranscriptProtoResponseDialog.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (v0[3])
    {
      v5 = v0[2];
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (v0[5])
      {
        v6 = v0[4];
        sub_20E322540();
      }

      if (v0[7])
      {
        v7 = v0[6];
        sub_20E322540();
      }

      v8 = v0 + *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E1460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v3 = a2 + *(a1 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0E14EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B48, type metadata accessor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E158C()
{
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog);

  return sub_20E322470();
}

uint64_t sub_20E0E15F8()
{
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog);

  return sub_20E322480();
}

uint64_t sub_20E0E1694()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864C90);
  __swift_project_value_buffer(v0, qword_27C864C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "visualOutput";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "printedDialogOutput";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "spokenDialogOutput";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "resultStatementIds";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "options";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dialogIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseOutput.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_20E0E1DBC();
            goto LABEL_5;
          }

          v4 = v0;
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
          goto LABEL_22;
        }

        if (result == 7)
        {
          sub_20E0E1E70();
        }

        else if (result == 8)
        {
          v3 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44);
          sub_20E3223D0();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0E1D08();
        }

        else
        {
          sub_20E1847E0();
          sub_20E322310();
        }
      }

      else
      {
        if (result == 1)
        {
          v4 = v0;
          type metadata accessor for TranscriptProtoVisualOutput(0);
          sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput);
LABEL_22:
          v0 = v4;
          sub_20E322420();
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_20E0E1C54();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0E1C54()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 28);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);
  return sub_20E322430();
}

uint64_t sub_20E0E1D08()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 32);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);
  return sub_20E322430();
}

uint64_t sub_20E0E1DBC()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 36);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions);
  return sub_20E322430();
}

uint64_t sub_20E0E1E70()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 40);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVisualOutput(0), sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput), result = sub_20E322570(), !v4))
  {
    result = sub_20E0E213C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0E2358(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        v10 = *(v3 + 8);
        sub_20E1847E0();
        sub_20E3224D0();
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
        sub_20E322570();
      }

      sub_20E0E2574(v3, a1, a2, a3);
      sub_20E0E2790(v3, a1, a2, a3);
      sub_20E0E29AC(v3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 48);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0E213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDialogType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C8683B8, &qword_20E33B420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8683B8, &qword_20E33B420);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_20E0E2358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDialogType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C8683B8, &qword_20E33B420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8683B8, &qword_20E33B420);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_20E0E2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A8, &unk_20E33C360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C8683A8, &unk_20E33C360);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8683A8, &unk_20E33C360);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoVisualOutputOptions);
}

uint64_t sub_20E0E2790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868398, &qword_20E33B408);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C868398, &qword_20E33B408);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868398, &qword_20E33B408);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoVisualOutput);
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoVisualOutput);
}

uint64_t sub_20E0E29AC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E0E2A70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoDialogType(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[12];
  v12 = (a2 + a1[11]);
  *v12 = 0;
  v12[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v14 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_20E0E2C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B40, type metadata accessor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E2CA8()
{
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput);

  return sub_20E322470();
}

uint64_t sub_20E0E2D14()
{
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput);

  return sub_20E322480();
}

uint64_t sub_20E0E2EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B38, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E2F50()
{
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return sub_20E322470();
}

uint64_t sub_20E0E2FBC()
{
  sub_20E195B0C(&qword_27C866B50, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return sub_20E322480();
}

uint64_t sub_20E0E3054()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864CC0);
  __swift_project_value_buffer(v0, qword_27C864CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "liveActivity";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inAppResponse";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "pluginSnippet";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoVisualOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E0E3F10(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0E44CC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E0E33A4(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0E3954(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0E33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868378, &qword_20E33B3E8);
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
  sub_20E0486F4(a1, v14, &qword_27C865D18, &unk_20E33C370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868378, &qword_20E33B3E8);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868378, &qword_20E33B3E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868378, &qword_20E33B3E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868378, &qword_20E33B3E8);
    return sub_20E04875C(v36, &qword_27C868378, &qword_20E33B3E8);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868378, &qword_20E33B3E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E3954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868380, &qword_20E33B3F0);
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
  sub_20E0486F4(a1, v14, &qword_27C865D18, &unk_20E33C370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868380, &qword_20E33B3F0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868380, &qword_20E33B3F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868380, &qword_20E33B3F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868380, &qword_20E33B3F0);
    return sub_20E04875C(v36, &qword_27C868380, &qword_20E33B3F0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868380, &qword_20E33B3F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E3F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868388, &qword_20E33B3F8);
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
  sub_20E0486F4(a1, v14, &qword_27C865D18, &unk_20E33C370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C868388, &qword_20E33B3F8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868388, &qword_20E33B3F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868388, &qword_20E33B3F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868388, &qword_20E33B3F8);
    return sub_20E04875C(v36, &qword_27C868388, &qword_20E33B3F8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868388, &qword_20E33B3F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E44CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868390, &qword_20E33B400);
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
  sub_20E0486F4(a1, v14, &qword_27C865D18, &unk_20E33C370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C868390, &qword_20E33B400);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868390, &qword_20E33B400);
  }

  sub_20E0486F4(v28, v36, &qword_27C868390, &qword_20E33B400);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868390, &qword_20E33B400);
    return sub_20E04875C(v36, &qword_27C868390, &qword_20E33B400);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868390, &qword_20E33B400);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D18, &unk_20E33C370);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoVisualOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865D18, &unk_20E33C370);
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0E50C8(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E5300(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0E4E90(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0E4C5C(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoVisualOutput(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E4C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D18, &unk_20E33C370);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E4E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D18, &unk_20E33C370);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E50C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D18, &unk_20E33C370);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E5300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D18, &unk_20E33C370);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D18, &unk_20E33C370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_20E0E55E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B30, type metadata accessor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5688()
{
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput);

  return sub_20E322470();
}

uint64_t sub_20E0E56F4()
{
  sub_20E195B0C(&qword_27C865CF8, type metadata accessor for TranscriptProtoVisualOutput);

  return sub_20E322480();
}

uint64_t sub_20E0E5890(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B28, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5930()
{
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E599C()
{
  sub_20E195B0C(&qword_27C866B78, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B20, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5BD4()
{
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E5C40()
{
  sub_20E195B0C(&qword_27C866B90, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B18, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E5E78()
{
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E5EE4()
{
  sub_20E195B0C(&qword_27C866BA8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E5F7C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864D20);
  __swift_project_value_buffer(v0, qword_27C864D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0E6228(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E62C8()
{
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_20E322470();
}

uint64_t sub_20E0E6334()
{
  sub_20E195B0C(&qword_27C866BC0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_20E322480();
}

uint64_t sub_20E0E63CC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864D38);
  __swift_project_value_buffer(v0, qword_27C864D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "staticText";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sonicText";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generatedText";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unableToGenerate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suppressed";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "catDialog";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoDialogType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E0E7910(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E0E7ECC(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E0E8488(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E0E67E8(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E0E6D98(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E0E7354(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0E67E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStaticText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868340, &qword_20E33B3B0);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868340, &qword_20E33B3B0);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoStaticText);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoStaticText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868340, &qword_20E33B3B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868340, &qword_20E33B3B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868340, &qword_20E33B3B0);
    return sub_20E04875C(v36, &qword_27C868340, &qword_20E33B3B0);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoStaticText);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868340, &qword_20E33B3B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoStaticText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSonicText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868348, &qword_20E33B3B8);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868348, &qword_20E33B3B8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSonicText);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSonicText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868348, &qword_20E33B3B8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868348, &qword_20E33B3B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868348, &qword_20E33B3B8);
    return sub_20E04875C(v36, &qword_27C868348, &qword_20E33B3B8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSonicText);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868348, &qword_20E33B3B8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSonicText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E7354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868350, &qword_20E33B3C0);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C868350, &qword_20E33B3C0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoGeneratedText);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoGeneratedText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868350, &qword_20E33B3C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868350, &qword_20E33B3C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868350, &qword_20E33B3C0);
    return sub_20E04875C(v36, &qword_27C868350, &qword_20E33B3C0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoGeneratedText);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868350, &qword_20E33B3C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoGeneratedText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E7910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868358, &qword_20E33B3C8);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C868358, &qword_20E33B3C8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoUnableToGenerate);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoUnableToGenerate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868358, &qword_20E33B3C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868358, &qword_20E33B3C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868358, &qword_20E33B3C8);
    return sub_20E04875C(v36, &qword_27C868358, &qword_20E33B3C8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoUnableToGenerate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868358, &qword_20E33B3C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoUnableToGenerate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E7ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSuppressed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868360, &qword_20E33B3D0);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C868360, &qword_20E33B3D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSuppressed);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSuppressed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868360, &qword_20E33B3D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868360, &qword_20E33B3D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868360, &qword_20E33B3D0);
    return sub_20E04875C(v36, &qword_27C868360, &qword_20E33B3D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSuppressed);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868360, &qword_20E33B3D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSuppressed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0E8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoCATDialog(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868368, &qword_20E33B3D8);
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
  sub_20E0486F4(a1, v14, &qword_27C865D48, &qword_20E3263B0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C868368, &qword_20E33B3D8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoCATDialog);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoCATDialog);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868368, &qword_20E33B3D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868368, &qword_20E33B3D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868368, &qword_20E33B3D8);
    return sub_20E04875C(v36, &qword_27C868368, &qword_20E33B3D8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoCATDialog);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868368, &qword_20E33B3D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865D48, &qword_20E3263B0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoCATDialog);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoDialogType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865D48, &qword_20E3263B0);
  v12 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E0E9304(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0E953C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E9774(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0E8E94(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0E90CC(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0E8C60(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoDialogFormat);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for TranscriptProtoDialogType(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0E8C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStaticText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoStaticText);
    sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoStaticText);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSonicText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSonicText);
    sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSonicText);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E90CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoGeneratedText);
    sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoGeneratedText);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUnableToGenerate);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSuppressed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSuppressed);
    sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSuppressed);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCATDialog(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865D48, &qword_20E3263B0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865D48, &qword_20E3263B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoCATDialog);
    sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoCATDialog);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_20E0E9A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B08, type metadata accessor for TranscriptProtoDialogType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E9AFC()
{
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);

  return sub_20E322470();
}

uint64_t sub_20E0E9B68()
{
  sub_20E195B0C(&qword_27C866BD8, type metadata accessor for TranscriptProtoDialogType);

  return sub_20E322480();
}

uint64_t sub_20E0E9D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867B00, type metadata accessor for TranscriptProtoStaticText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0E9DA4()
{
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText);

  return sub_20E322470();
}

uint64_t sub_20E0E9E10()
{
  sub_20E195B0C(&qword_27C866BF0, type metadata accessor for TranscriptProtoStaticText);

  return sub_20E322480();
}

uint64_t sub_20E0E9FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AF8, type metadata accessor for TranscriptProtoCATDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA074()
{
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog);

  return sub_20E322470();
}

uint64_t sub_20E0EA0E0()
{
  sub_20E195B0C(&qword_27C866C08, type metadata accessor for TranscriptProtoCATDialog);

  return sub_20E322480();
}

uint64_t sub_20E0EA278(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AF0, type metadata accessor for TranscriptProtoSonicText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA318()
{
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText);

  return sub_20E322470();
}

uint64_t sub_20E0EA384()
{
  sub_20E195B0C(&qword_27C866C20, type metadata accessor for TranscriptProtoSonicText);

  return sub_20E322480();
}

uint64_t sub_20E0EA51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AE8, type metadata accessor for TranscriptProtoGeneratedText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA5BC()
{
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText);

  return sub_20E322470();
}

uint64_t sub_20E0EA628()
{
  sub_20E195B0C(&qword_27C866C38, type metadata accessor for TranscriptProtoGeneratedText);

  return sub_20E322480();
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0V2eeoiySbAC_ACtFZ_0()
{
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0EA7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AE0, type metadata accessor for TranscriptProtoUnableToGenerate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EA87C()
{
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate);

  return sub_20E322470();
}

uint64_t sub_20E0EA8E8()
{
  sub_20E195B0C(&qword_27C866C50, type metadata accessor for TranscriptProtoUnableToGenerate);

  return sub_20E322480();
}

uint64_t sub_20E0EAA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AD8, type metadata accessor for TranscriptProtoSuppressed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EAAB4()
{
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed);

  return sub_20E322470();
}

uint64_t sub_20E0EAB20()
{
  sub_20E195B0C(&qword_27C866C68, type metadata accessor for TranscriptProtoSuppressed);

  return sub_20E322480();
}

uint64_t sub_20E0EABB8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864DE0);
  __swift_project_value_buffer(v0, qword_27C864DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "parameters";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dialog";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "visual";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "templateId";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "templateLocation";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "useTemplateAsFallback";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dialogPresentationHint";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "attribution";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseManifest.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            v3 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 36);
            sub_20E3222E0();
            goto LABEL_5;
          }

          v4 = v0;
          v6 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 32);
          goto LABEL_21;
        }

        if (result == 7)
        {
          sub_20E0EB290();
        }

        else if (result == 8)
        {
          sub_20E0EB304();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v4 = v0;
          v5 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 28);
LABEL_21:
          v0 = v4;
          sub_20E3223D0();
          goto LABEL_5;
        }

        sub_20E0EB1DC();
      }

      else if (result == 1)
      {
        type metadata accessor for TranscriptProtoResponseParameter(0);
        sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter);
        sub_20E322420();
      }

      else if (result == 2)
      {
        sub_20E0EB128();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0EB128()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 20);
  type metadata accessor for TranscriptProtoResponseDialog(0);
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog);
  return sub_20E322430();
}

uint64_t sub_20E0EB1DC()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 24);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual);
  return sub_20E322430();
}

uint64_t sub_20E0EB290()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 40);
  sub_20E1959A8();
  return sub_20E322300();
}

uint64_t sub_20E0EB304()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 44);
  type metadata accessor for TranscriptProtoUIType(0);
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseManifest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoResponseParameter(0), sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter), result = sub_20E322570(), !v4))
  {
    result = sub_20E0EB574(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0EB790(v3, a1, a2, a3);
      sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E13346C(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E0EB9AC(v3);
      sub_20E0EBA24(v3);
      sub_20E0EBAB4(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoResponseManifest(0) + 48);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0EB574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868320, &unk_20E33C380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868320, &unk_20E33C380);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868320, &unk_20E33C380);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E195B0C(&qword_27C866B20, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoResponseDialog);
}

uint64_t sub_20E0EB790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868310, &qword_20E33B390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868310, &qword_20E33B390);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868310, &qword_20E33B390);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoResponseVisual);
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoResponseVisual);
}

uint64_t sub_20E0EB9AC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E0EBA24(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    sub_20E1959A8();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0EBAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868300, &unk_20E33C390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoUIType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E0486F4(a1 + *(v14 + 44), v8, &qword_27C868300, &unk_20E33C390);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868300, &unk_20E33C390);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoUIType);
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoUIType);
}

uint64_t sub_20E0EBD1C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1[10];
  a2[a1[9]] = 2;
  a2[v11] = 2;
  v12 = a1[11];
  v13 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = &a2[a1[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0EBE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E0EBEE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E0EBF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AD0, type metadata accessor for TranscriptProtoResponseManifest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EC024()
{
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);

  return sub_20E322470();
}

uint64_t sub_20E0EC090()
{
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);

  return sub_20E322480();
}

uint64_t sub_20E0EC12C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864DF8);
  __swift_project_value_buffer(v0, qword_27C864DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "key";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "required";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "format";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "profanityFilter";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseParameter.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_15;
        case 6:
LABEL_13:
          sub_20E3222E0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E3223E0();
          break;
        case 2:
          sub_20E322320();
          break;
        case 3:
LABEL_15:
          sub_20E3223D0();
          break;
      }
    }
  }
}

uint64_t TranscriptProtoResponseParameter.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    result = sub_20E0EC648(v0);
    if (!v1)
    {
      if (*(v0 + 40))
      {
        v6 = *(v0 + 32);
        sub_20E322540();
      }

      if (*(v0 + 48) != 2)
      {
        sub_20E3224C0();
      }

      if (*(v0 + 64))
      {
        v7 = *(v0 + 56);
        sub_20E322540();
      }

      if (*(v0 + 72) != 2)
      {
        sub_20E3224C0();
      }

      v8 = v0 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0EC648(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E0EC720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_20E323EA0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;
  v3 = a2 + *(a1 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0EC7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AC8, type metadata accessor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EC860()
{
  sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter);

  return sub_20E322470();
}

uint64_t sub_20E0EC8CC()
{
  sub_20E195B0C(&qword_27C865D88, type metadata accessor for TranscriptProtoResponseParameter);

  return sub_20E322480();
}

uint64_t sub_20E0EC968()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E10);
  __swift_project_value_buffer(v0, qword_27C864E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "views";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoResponseVisual.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 6:
          sub_20E0ECCF8();
          goto LABEL_5;
        case 5:
          v3 = v0;
          type metadata accessor for TranscriptProtoUILabel(0);
          sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel);
          break;
        case 4:
          v3 = v0;
          type metadata accessor for TranscriptProtoUIType(0);
          sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v3;
      sub_20E322420();
LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0ECCF8()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions);
  return sub_20E322430();
}

uint64_t TranscriptProtoResponseVisual.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoUIType(0), sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType), result = sub_20E322570(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TranscriptProtoUILabel(0), sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel), result = sub_20E322570(), !v4))
    {
      result = sub_20E0ECF20(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for TranscriptProtoResponseVisual(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0ECF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E8, &qword_20E33B378);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C8682E8, &qword_20E33B378);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8682E8, &qword_20E33B378);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoResponseVisualOptions);
}

uint64_t sub_20E0ED188@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v8;
  return result;
}

uint64_t sub_20E0ED25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AC0, type metadata accessor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0ED2FC()
{
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual);

  return sub_20E322470();
}

uint64_t sub_20E0ED368()
{
  sub_20E195B0C(&qword_27C866CA8, type metadata accessor for TranscriptProtoResponseVisual);

  return sub_20E322480();
}

uint64_t sub_20E0ED488(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0ED5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AB8, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0ED654()
{
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return sub_20E322470();
}

uint64_t sub_20E0ED6C0()
{
  sub_20E195B0C(&qword_27C866CC0, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return sub_20E322480();
}

uint64_t sub_20E0ED73C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0ED7FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E40);
  __swift_project_value_buffer(v0, qword_27C864E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archiveView";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "liveActivity";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pluginSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "controlSnippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUIType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_20E0EE6B8(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0EEC74(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E0EDB4C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0EE0FC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0EDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C8, &qword_20E33B358);
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
  sub_20E0486F4(a1, v14, &qword_27C865DC0, &unk_20E33C3A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C8682C8, &qword_20E33B358);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoArchiveViewPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoArchiveViewPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8682C8, &qword_20E33B358);
  }

  sub_20E0486F4(v28, v36, &qword_27C8682C8, &qword_20E33B358);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8682C8, &qword_20E33B358);
    return sub_20E04875C(v36, &qword_27C8682C8, &qword_20E33B358);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoArchiveViewPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8682C8, &qword_20E33B358);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoArchiveViewPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0EE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682D0, &qword_20E33B360);
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
  sub_20E0486F4(a1, v14, &qword_27C865DC0, &unk_20E33C3A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C8682D0, &qword_20E33B360);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoLiveActivityPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoLiveActivityPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8682D0, &qword_20E33B360);
  }

  sub_20E0486F4(v28, v36, &qword_27C8682D0, &qword_20E33B360);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8682D0, &qword_20E33B360);
    return sub_20E04875C(v36, &qword_27C8682D0, &qword_20E33B360);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8682D0, &qword_20E33B360);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoLiveActivityPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0EE6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682D8, &qword_20E33B368);
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
  sub_20E0486F4(a1, v14, &qword_27C865DC0, &unk_20E33C3A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8682D8, &qword_20E33B368);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8682D8, &qword_20E33B368);
  }

  sub_20E0486F4(v28, v36, &qword_27C8682D8, &qword_20E33B368);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8682D8, &qword_20E33B368);
    return sub_20E04875C(v36, &qword_27C8682D8, &qword_20E33B368);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8682D8, &qword_20E33B368);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0EEC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoControlPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E0, &qword_20E33B370);
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
  sub_20E0486F4(a1, v14, &qword_27C865DC0, &unk_20E33C3A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C8682E0, &qword_20E33B370);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoControlPayload);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoControlPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8682E0, &qword_20E33B370);
  }

  sub_20E0486F4(v28, v36, &qword_27C8682E0, &qword_20E33B370);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8682E0, &qword_20E33B370);
    return sub_20E04875C(v36, &qword_27C8682E0, &qword_20E33B370);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoControlPayload);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8682E0, &qword_20E33B370);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865DC0, &unk_20E33C3A0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoControlPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoUIType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865DC0, &unk_20E33C3A0);
  v12 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0EF870(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0EFAA8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0EF638(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0EF404(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoUitype);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoUIType(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0EF404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865DC0, &unk_20E33C3A0);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
    sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865DC0, &unk_20E33C3A0);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoLiveActivityPayload);
    sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoLiveActivityPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EF870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865DC0, &unk_20E33C3A0);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoControlPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865DC0, &unk_20E33C3A0);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865DC0, &unk_20E33C3A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoControlPayload);
    sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoControlPayload);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_20E0EFD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AB0, type metadata accessor for TranscriptProtoUIType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0EFE30()
{
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType);

  return sub_20E322470();
}

uint64_t sub_20E0EFE9C()
{
  sub_20E195B0C(&qword_27C865DA0, type metadata accessor for TranscriptProtoUIType);

  return sub_20E322480();
}

uint64_t sub_20E0EFFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoLabel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B8, &qword_20E33B348);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C8682A8, &qword_20E33B338);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C8682A8, &qword_20E33B338);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoLabel);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoLabel);
    sub_20E04875C(v27, &qword_27C8682B8, &qword_20E33B348);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C8682B8, &qword_20E33B348);
  }

  sub_20E0486F4(v27, v43, &qword_27C8682B8, &qword_20E33B348);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C8682B8, &qword_20E33B348);
    return sub_20E04875C(v33, &qword_27C8682B8, &qword_20E33B348);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C8682B8, &qword_20E33B348);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C8682A8, &qword_20E33B338);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0F0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8682A8, &qword_20E33B338);
  v13 = type metadata accessor for TranscriptProtoLabel(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8682A8, &qword_20E33B338);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUIConfirmationLabel);
}

uint64_t sub_20E0F07E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AA8, type metadata accessor for TranscriptProtoUILabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F0880()
{
  sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel);

  return sub_20E322470();
}

uint64_t sub_20E0F08EC()
{
  sub_20E195B0C(&qword_27C865DA8, type metadata accessor for TranscriptProtoUILabel);

  return sub_20E322480();
}

uint64_t sub_20E0F0988()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E70);
  __swift_project_value_buffer(v0, qword_27C864E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "affirmative";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "negative";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUIConfirmationLabel.traverse<A>(visitor:)()
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
      v8 = v0 + *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0F0CC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867AA0, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F0DE8()
{
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return sub_20E322470();
}

uint64_t sub_20E0F0E54()
{
  sub_20E195B0C(&qword_27C866CF8, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return sub_20E322480();
}

uint64_t sub_20E0F0EF0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864E88);
  __swift_project_value_buffer(v0, qword_27C864E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containerBundleId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "targetBundleId";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoArchiveViewPayload.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(result + 16);
    v6 = *(result + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = result;
    v6 = result >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v0[3])
  {
    v7 = v0[2];
    result = sub_20E322540();
  }

  if (!v1)
  {
    if (v0[5])
    {
      v8 = v0[4];
      sub_20E322540();
    }

    v9 = v0 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

double sub_20E0F12B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  v3 = a2 + *(a1 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E0F1344(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A98, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F13E4()
{
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F1450()
{
  sub_20E195B0C(&qword_27C866D10, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F15EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A90, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F168C()
{
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F16F8()
{
  sub_20E195B0C(&qword_27C866D28, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F1790()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864EB8);
  __swift_project_value_buffer(v0, qword_27C864EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0F19E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_20E3224E0();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 != v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v4[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v4[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_20E322540(), !v5))
  {
    v15 = v4 + *(a4(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0F1AFC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_20E15F7B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

double sub_20E0F1C1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0F1C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A88, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F1D30()
{
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F1D9C()
{
  sub_20E195B0C(&qword_27C866D40, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F1E18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_20E15F7B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_20E3224E0();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  v11 = v4 + *(a4(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E0F2090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F21C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A80, type metadata accessor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0F2264()
{
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload);

  return sub_20E322470();
}

uint64_t sub_20E0F22D0()
{
  sub_20E195B0C(&qword_27C866D58, type metadata accessor for TranscriptProtoControlPayload);

  return sub_20E322480();
}

uint64_t sub_20E0F234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0F2414()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864EE8);
  __swift_project_value_buffer(v0, qword_27C864EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
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
  *(v5 + v2) = 2;
  *v10 = "userAction";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemResponseEventId";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "input";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemPromptResolution.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E3223D0();
      }

      else if (result == 2)
      {
        sub_20E0F27CC();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_20E3223E0();
          break;
        case 4:
          sub_20E0F2880();
          break;
        case 6:
          sub_20E0F2934();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0F27CC()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 24);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_20E195B0C(&qword_27C866E40, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  return sub_20E322430();
}

uint64_t sub_20E0F2880()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0F2934()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 32);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_20E195B0C(&qword_27C866D88, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  return sub_20E322430();
}