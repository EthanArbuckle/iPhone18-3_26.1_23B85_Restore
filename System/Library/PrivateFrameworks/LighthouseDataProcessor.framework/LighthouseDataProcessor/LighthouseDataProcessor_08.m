uint64_t sub_20E14061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F60, &qword_20E33B030);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C866200, &unk_20E33C470);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C866200, &unk_20E33C470);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C867F60, &qword_20E33B030);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867618, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F60, &qword_20E33B030);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F60, &qword_20E33B030);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F60, &qword_20E33B030);
    return sub_20E04875C(v36, &qword_27C867F60, &qword_20E33B030);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F60, &qword_20E33B030);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E140BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F68, &qword_20E33B038);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C866200, &unk_20E33C470);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C866200, &unk_20E33C470);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C867F68, &qword_20E33B038);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867630, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F68, &qword_20E33B038);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F68, &qword_20E33B038);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F68, &qword_20E33B038);
    return sub_20E04875C(v36, &qword_27C867F68, &qword_20E33B038);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F68, &qword_20E33B038);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v11, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E141A54(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E141C8C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E141EC4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1415E4(v3, a1, a2, a3);
    }

    else
    {
      sub_20E14181C(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E1413B0(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1413B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_20E195B0C(&qword_27C8675B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1415E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_20E195B0C(&qword_27C8675D0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E14181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_20E195B0C(&qword_27C8675E8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E141A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_20E195B0C(&qword_27C867600, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E141C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_20E195B0C(&qword_27C867618, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E141EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866200, &unk_20E33C470);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E04875C(v8, &qword_27C866200, &unk_20E33C470);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_20E195B0C(&qword_27C867630, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1421AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867758, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E14224C()
{
  sub_20E195B0C(&qword_27C867648, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_20E322470();
}

uint64_t sub_20E1422B8()
{
  sub_20E195B0C(&qword_27C867648, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_20E322480();
}

uint64_t sub_20E1423E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867750, type metadata accessor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E142488()
{
  sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning);

  return sub_20E322470();
}

uint64_t sub_20E1424F4()
{
  sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning);

  return sub_20E322480();
}

uint64_t sub_20E142714(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867748, type metadata accessor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1427B4()
{
  sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement);

  return sub_20E322470();
}

uint64_t sub_20E142820()
{
  sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement);

  return sub_20E322480();
}

uint64_t sub_20E1428E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8658B0);
  __swift_project_value_buffer(v0, qword_27C8658B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterStatementIds";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E142B68();
    }

    else if (result == 2)
    {
      sub_20E037F38();
    }
  }

  return result;
}

uint64_t sub_20E142B68()
{
  v0 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0) + 20);
  type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  sub_20E195B0C(&qword_27C8676A8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  return sub_20E322430();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E142D70(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      sub_20E322170();
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195B0C(&qword_27C866008, type metadata accessor for TranscriptProtoStatementID);
      sub_20E322490();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E142D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F18, &qword_20E33AFE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C867F18, &qword_20E33AFE8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867F18, &qword_20E33AFE8);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E195B0C(&qword_27C8676A8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
}

uint64_t sub_20E143004@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(a4 + v7, 1, 1, v8);
  v9 = a4 + *(a1 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_20E1430E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867740, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E143188()
{
  sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return sub_20E322470();
}

uint64_t sub_20E1431F4()
{
  sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);

  return sub_20E322480();
}

uint64_t sub_20E143290()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8658C8);
  __swift_project_value_buffer(v0, qword_27C8658C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E143510(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E143ACC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E143510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
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
  sub_20E0486F4(a1, v14, &qword_27C866228, &qword_20E33C480);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C866228, &qword_20E33C480);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoAction);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
    return sub_20E04875C(v36, &qword_27C867F10, &qword_20E33AFE0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoAction);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F10, &qword_20E33AFE0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866228, &qword_20E33C480);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E143ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
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
  sub_20E0486F4(a1, v14, &qword_27C866228, &qword_20E33C480);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C866228, &qword_20E33C480);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoClientAction);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoClientAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863F20, &unk_20E3461D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
    return sub_20E04875C(v36, &qword_27C863F20, &unk_20E3461D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoClientAction);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863F20, &unk_20E3461D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866228, &qword_20E33C480);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoClientAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C866228, &qword_20E33C480);
  v12 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E144450(v3, a1, a2, a3);
  }

  else
  {
    sub_20E144218(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E144218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866228, &qword_20E33C480);
  v13 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C866228, &qword_20E33C480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoAction);
    sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoAction);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E144450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoClientAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C866228, &qword_20E33C480);
  v13 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C866228, &qword_20E33C480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoClientAction);
    sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoClientAction);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1446EC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1447AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867738, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E14484C()
{
  sub_20E195B0C(&qword_27C8676A8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return sub_20E322470();
}

uint64_t sub_20E1448B8()
{
  sub_20E195B0C(&qword_27C8676A8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);

  return sub_20E322480();
}

uint64_t sub_20E144954()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8658E0);
  __swift_project_value_buffer(v0, qword_27C8658E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequestId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E144B6C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestAmendment(0) + 20);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);
  return sub_20E322430();
}

uint64_t sub_20E144C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C867EF8, &qword_20E33AFC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867EF8, &qword_20E33AFC8);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_20E144EE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E144F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E144FF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E14509C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867730, type metadata accessor for TranscriptProtoRequestAmendment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E14513C()
{
  sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment);

  return sub_20E322470();
}

uint64_t sub_20E1451A8()
{
  sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment);

  return sub_20E322480();
}

uint64_t sub_20E145344(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867728, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1453E4()
{
  sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return sub_20E322470();
}

uint64_t sub_20E145450()
{
  sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest);

  return sub_20E322480();
}

uint64_t sub_20E1454F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20E3225C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_20E3225B0();
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20E3221C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_20E3221C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_20E145694(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867720, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E145734()
{
  sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return sub_20E322470();
}

uint64_t sub_20E1457A0()
{
  sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest);

  return sub_20E322480();
}

uint64_t sub_20E145854(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20E3225C0();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20E326380;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_20E322590();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_20E3225A0();
}

uint64_t sub_20E1459EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_20E3225C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_20E145A84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E145B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E145C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E145CC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E145D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867718, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E145DF0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_20E3225C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_20E145E8C()
{
  sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return sub_20E322470();
}

uint64_t sub_20E145EF8()
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E145F50()
{
  sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest);

  return sub_20E322480();
}

uint64_t sub_20E145FCC()
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E146020@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_20E321EC0();
    if (v10)
    {
      v11 = sub_20E321EE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_20E321ED0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_20E321EC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_20E321EE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_20E321ED0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20E146250(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_20E15F6F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_20E05E888(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_20E146020(v14, a3, a4, &v13);
  v10 = v4;
  sub_20E05E888(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_20E1463E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v146 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C70, &qword_20E323F68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v145 = &v125 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F80, &qword_20E33B050);
  v11 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v149 = &v125 - v12;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v13 = *(matched - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](matched);
  v150 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C68, &qword_20E323F60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v152 = &v125 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F88, &qword_20E33B058);
  v19 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v155 = &v125 - v20;
  v160 = type metadata accessor for ContextProtoEntityMatch(0);
  v157 = *(v160 - 1);
  v21 = *(v157 + 64);
  v22 = MEMORY[0x28223BE20](v160);
  v159 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v125 - v24;
  v26 = type metadata accessor for ToolKitProtoTypedValue(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v148 = (&v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v153 = (&v125 - v32);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v33 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v35 = &v125 - v34;
  v36 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v156 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v161 = &v125 - v42;
  v43 = *(a1 + 16);
  if (v43 != *(a2 + 16))
  {
LABEL_95:
    v119 = 0;
    return v119 & 1;
  }

  if (!v43 || a1 == a2)
  {
    v119 = 1;
    return v119 & 1;
  }

  v140 = v26;
  v144 = v40;
  v127 = v4;
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = a1 + v44;
  v139 = a2 + v44;
  v138 = (v27 + 48);
  v134 = (v13 + 48);
  v46 = 0;
  v126 = (v5 + 48);
  v47 = *(v41 + 72);
  v48 = v156;
  v49 = v161;
  v130 = v35;
  v143 = v43;
  v129 = a1 + v44;
  v128 = v47;
  v137 = v25;
  while (1)
  {
    result = sub_20E195BBC(v45 + v47 * v46, v49, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v46 == v143)
    {
      break;
    }

    sub_20E195BBC(v139 + v47 * v46, v48, type metadata accessor for ContextProtoSpanMatchedEntity);
    v51 = *(v144 + 20);
    v52 = *(v154 + 48);
    sub_20E0486F4(v49 + v51, v35, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v48 + v51, &v35[v52], &qword_27C863B18, &qword_20E323EB0);
    v53 = *v138;
    v54 = v35;
    v55 = v35;
    v56 = v140;
    v57 = (*v138)(v54, 1, v140);
    v141 = v46;
    if (v57 == 1)
    {
      v58 = v53((v55 + v52), 1, v56);
      v49 = v161;
      if (v58 != 1)
      {
        goto LABEL_82;
      }

      result = sub_20E04875C(v55, &qword_27C863B18, &qword_20E323EB0);
      v59 = v159;
      v60 = v137;
    }

    else
    {
      v61 = v153;
      sub_20E0486F4(v55, v153, &qword_27C863B18, &qword_20E323EB0);
      if (v53((v55 + v52), 1, v56) == 1)
      {
        sub_20E195C24(v61, type metadata accessor for ToolKitProtoTypedValue);
        v49 = v161;
LABEL_82:
        sub_20E04875C(v55, &qword_27C867ED8, &qword_20E33AFA8);
        goto LABEL_94;
      }

      v62 = v148;
      sub_20E195B54(v55 + v52, v148, type metadata accessor for ToolKitProtoTypedValue);
      v63 = *v61;
      v64 = *v62;
      v49 = v161;
      if ((~v63 & 0xF000000000000007) != 0)
      {
        v163 = v63;
        v60 = v137;
        if ((~v64 & 0xF000000000000007) == 0)
        {
          sub_20E047CF8(v63);
          sub_20E047CF8(v64);
          sub_20E047CF8(v63);

LABEL_86:
          sub_20E047CA8(v63);
          sub_20E047CA8(v64);
LABEL_87:
          sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v153, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E04875C(v55, &qword_27C863B18, &qword_20E323EB0);
LABEL_94:
          sub_20E195C24(v48, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_20E195C24(v49, type metadata accessor for ContextProtoSpanMatchedEntity);
          goto LABEL_95;
        }

        v162 = v64;
        sub_20E047CF8(v63);
        sub_20E047CF8(v64);
        sub_20E047CF8(v63);
        v65 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v163, &v162);

        sub_20E047CA8(v63);
        if ((v65 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        sub_20E047CF8(v63);
        sub_20E047CF8(v64);
        v60 = v137;
        if ((~v64 & 0xF000000000000007) != 0)
        {
          goto LABEL_86;
        }

        sub_20E047CA8(v63);
      }

      v66 = *(v56 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v67 = v153;
      v68 = sub_20E322850();
      sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v67, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_20E04875C(v55, &qword_27C863B18, &qword_20E323EB0);
      v59 = v159;
      if ((v68 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    v69 = *v49;
    v70 = *v48;
    v71 = *(*v49 + 16);
    if (v71 != *(*v48 + 16))
    {
      goto LABEL_94;
    }

    if (v71 && v69 != v70)
    {
      v72 = 0;
      v73 = (*(v157 + 80) + 32) & ~*(v157 + 80);
      v136 = v69 + v73;
      v135 = v70 + v73;
      v132 = v69;
      v133 = v70;
      v131 = v71;
      do
      {
        if (v72 >= *(v69 + 16))
        {
          goto LABEL_98;
        }

        v74 = v72;
        v75 = *(v157 + 72) * v72;
        result = sub_20E195BBC(v136 + v75, v60, type metadata accessor for ContextProtoEntityMatch);
        v76 = *(v70 + 16);
        v142 = v74;
        if (v74 >= v76)
        {
          goto LABEL_99;
        }

        sub_20E195BBC(v135 + v75, v59, type metadata accessor for ContextProtoEntityMatch);
        if ((*v60 != *v59 || *(v60 + 8) != *(v59 + 8)) && (sub_20E322D60() & 1) == 0 || (*(v60 + 16) != *(v59 + 16) || *(v60 + 24) != *(v59 + 24)) && (sub_20E322D60() & 1) == 0 || *(v60 + 32) != *(v59 + 32) || *(v60 + 40) != *(v59 + 40) || *(v60 + 48) != *(v59 + 48))
        {
          goto LABEL_93;
        }

        v77 = v160[12];
        v78 = *(v151 + 48);
        v79 = v155;
        sub_20E0486F4(v60 + v77, v155, &qword_27C863C68, &qword_20E323F60);
        sub_20E0486F4(v59 + v77, v79 + v78, &qword_27C863C68, &qword_20E323F60);
        v80 = *v134;
        v81 = matched;
        if ((*v134)(v79, 1, matched) == 1)
        {
          v82 = v80(v79 + v78, 1, v81) == 1;
          v83 = v79;
          if (!v82)
          {
            goto LABEL_84;
          }

          sub_20E04875C(v79, &qword_27C863C68, &qword_20E323F60);
          v48 = v156;
          v49 = v161;
          v70 = v133;
        }

        else
        {
          v84 = v152;
          sub_20E0486F4(v79, v152, &qword_27C863C68, &qword_20E323F60);
          if (v80(v79 + v78, 1, v81) == 1)
          {
            sub_20E195C24(v84, type metadata accessor for ContextProtoMatchProperties);
            v83 = v79;
LABEL_84:
            v123 = &qword_27C867F88;
            v124 = &qword_20E33B058;
            goto LABEL_92;
          }

          v85 = v150;
          sub_20E195B54(v79 + v78, v150, type metadata accessor for ContextProtoMatchProperties);
          v86 = *(v85 + 8);
          if (*(v84 + 8))
          {
            v87 = matched;
            if (!*(v85 + 8))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*v84 != *v85)
            {
              v86 = 1;
            }

            v87 = matched;
            if (v86)
            {
              goto LABEL_91;
            }
          }

          v88 = *(v85 + 24);
          if (*(v84 + 24))
          {
            if (!*(v85 + 24))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*(v84 + 16) != *(v85 + 16))
            {
              v88 = 1;
            }

            if (v88)
            {
              goto LABEL_91;
            }
          }

          v89 = *(v87 + 24);
          v90 = *(v147 + 48);
          v91 = v149;
          sub_20E0486F4(v84 + v89, v149, &qword_27C863C70, &qword_20E323F68);
          sub_20E0486F4(v85 + v89, v91 + v90, &qword_27C863C70, &qword_20E323F68);
          v92 = *v126;
          v93 = v127;
          if ((*v126)(v91, 1, v127) == 1)
          {
            v94 = v92(v91 + v90, 1, v93);
            v84 = v152;
            v85 = v150;
            v59 = v159;
            if (v94 != 1)
            {
              goto LABEL_89;
            }

            sub_20E04875C(v91, &qword_27C863C70, &qword_20E323F68);
            v70 = v133;
          }

          else
          {
            v95 = v145;
            sub_20E0486F4(v91, v145, &qword_27C863C70, &qword_20E323F68);
            if (v92(v91 + v90, 1, v93) == 1)
            {
              sub_20E195C24(v95, type metadata accessor for ContextProtoAliasTypes);
              v85 = v150;
              v84 = v152;
              v59 = v159;
LABEL_89:
              v120 = &qword_27C867F80;
              v121 = &qword_20E33B050;
              v122 = v91;
LABEL_90:
              sub_20E04875C(v122, v120, v121);
LABEL_91:
              sub_20E195C24(v85, type metadata accessor for ContextProtoMatchProperties);
              sub_20E195C24(v84, type metadata accessor for ContextProtoMatchProperties);
              v123 = &qword_27C863C68;
              v124 = &qword_20E323F60;
              v83 = v155;
LABEL_92:
              sub_20E04875C(v83, v123, v124);
              v48 = v156;
              v49 = v161;
LABEL_93:
              sub_20E195C24(v59, type metadata accessor for ContextProtoEntityMatch);
              sub_20E195C24(v60, type metadata accessor for ContextProtoEntityMatch);
              goto LABEL_94;
            }

            v96 = v91 + v90;
            v97 = v146;
            sub_20E195B54(v96, v146, type metadata accessor for ContextProtoAliasTypes);
            v98 = *v95;
            v99 = *v97;
            v100 = *(*v95 + 16);
            v101 = v95;
            v85 = v150;
            v84 = v152;
            v87 = matched;
            v59 = v159;
            v70 = v133;
            if (v100 != *(*v97 + 16))
            {
              goto LABEL_80;
            }

            if (v100 && v98 != v99)
            {
              v102 = (v98 + 32);
              v103 = (v99 + 32);
              while (*v102 == *v103)
              {
                ++v102;
                ++v103;
                if (!--v100)
                {
                  goto LABEL_58;
                }
              }

LABEL_80:
              sub_20E195C24(v146, type metadata accessor for ContextProtoAliasTypes);
              sub_20E195C24(v101, type metadata accessor for ContextProtoAliasTypes);
              v120 = &qword_27C863C70;
              v121 = &qword_20E323F68;
              v122 = v149;
              goto LABEL_90;
            }

LABEL_58:
            v104 = *(v127 + 20);
            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
            v105 = v85;
            v106 = v146;
            v107 = sub_20E322850();
            v108 = v106;
            v85 = v105;
            v59 = v159;
            v84 = v152;
            sub_20E195C24(v108, type metadata accessor for ContextProtoAliasTypes);
            sub_20E195C24(v101, type metadata accessor for ContextProtoAliasTypes);
            sub_20E04875C(v149, &qword_27C863C70, &qword_20E323F68);
            if ((v107 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          v109 = *(v87 + 28);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v110 = sub_20E322850();
          sub_20E195C24(v85, type metadata accessor for ContextProtoMatchProperties);
          sub_20E195C24(v84, type metadata accessor for ContextProtoMatchProperties);
          sub_20E04875C(v155, &qword_27C863C68, &qword_20E323F60);
          v48 = v156;
          v49 = v161;
          if ((v110 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        if (*(v60 + 52) != *(v59 + 52) || (*(v60 + 56) != *(v59 + 56) || *(v60 + 64) != *(v59 + 64)) && (sub_20E322D60() & 1) == 0 || (*(v60 + 72) != *(v59 + 72) || *(v60 + 80) != *(v59 + 80)) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_93;
        }

        v111 = v160[13];
        v112 = (v60 + v111);
        v113 = *(v60 + v111 + 8);
        v114 = (v59 + v111);
        v115 = v114[1];
        if (v113)
        {
          if (!v115 || (*v112 != *v114 || v113 != v115) && (sub_20E322D60() & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else if (v115)
        {
          goto LABEL_93;
        }

        v116 = v160[14];
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v117 = sub_20E322850();
        sub_20E195C24(v59, type metadata accessor for ContextProtoEntityMatch);
        result = sub_20E195C24(v60, type metadata accessor for ContextProtoEntityMatch);
        v69 = v132;
        if ((v117 & 1) == 0)
        {
          goto LABEL_94;
        }

        v72 = v142 + 1;
      }

      while (v142 + 1 != v131);
    }

    v118 = *(v144 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v119 = sub_20E322850();
    sub_20E195C24(v48, type metadata accessor for ContextProtoSpanMatchedEntity);
    sub_20E195C24(v49, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v119)
    {
      v46 = v141 + 1;
      v45 = v129;
      v47 = v128;
      v35 = v130;
      if (v141 + 1 != v143)
      {
        continue;
      }
    }

    return v119 & 1;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_20E147778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_20E195BBC(v21, v18, a4);
        sub_20E195BBC(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_20E195C24(v15, a6);
        sub_20E195C24(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_20E147918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v83 - v10;
  v12 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v83 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F70, &qword_20E33B040);
  v21 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v23 = &v83 - v22;
  v99 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v24 = *(v99 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v97 = &v83 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F78, &qword_20E33B048);
  v30 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v83 - v31;
  v100 = type metadata accessor for ContextProtoRetrievedTool(0);
  v32 = *(*(v100 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v100);
  v105 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v104 = &v83 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_42:
    v82 = 0;
    return v82 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v82 = 1;
    return v82 & 1;
  }

  v85 = v20;
  v84 = v16;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v93 = a2 + v38;
  v94 = v37;
  v40 = 0;
  v92 = (v24 + 48);
  v88 = (v13 + 48);
  v89 = v23;
  v41 = *(v35 + 72);
  v42 = v104;
  v90 = v12;
  v86 = v41;
  v87 = a1 + v38;
  while (1)
  {
    result = sub_20E195BBC(v39 + v41 * v40, v42, type metadata accessor for ContextProtoRetrievedTool);
    if (v40 == v94)
    {
      goto LABEL_51;
    }

    v91 = v40;
    v44 = v105;
    sub_20E195BBC(v93 + v41 * v40, v105, type metadata accessor for ContextProtoRetrievedTool);
    v45 = *(v100 + 32);
    v46 = *(v98 + 48);
    v47 = v42 + v45;
    v48 = v101;
    sub_20E0486F4(v47, v101, &qword_27C863C50, &qword_20E323F38);
    v49 = v44 + v45;
    v50 = v48;
    sub_20E0486F4(v49, v48 + v46, &qword_27C863C50, &qword_20E323F38);
    v51 = *v92;
    v52 = v99;
    if ((*v92)(v48, 1, v99) == 1)
    {
      if (v51(v48 + v46, 1, v52) != 1)
      {
        goto LABEL_45;
      }

      result = sub_20E04875C(v48, &qword_27C863C50, &qword_20E323F38);
      goto LABEL_16;
    }

    v53 = v97;
    sub_20E0486F4(v48, v97, &qword_27C863C50, &qword_20E323F38);
    v54 = v52;
    if (v51(v48 + v46, 1, v52) == 1)
    {
      sub_20E195C24(v53, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v50 = v48;
LABEL_45:
      sub_20E04875C(v50, &qword_27C867F78, &qword_20E33B048);
      goto LABEL_41;
    }

    v55 = v96;
    sub_20E195B54(v48 + v46, v96, type metadata accessor for ContextProtoRetrievedTool.Definition);
    v56 = *(v95 + 48);
    v57 = v89;
    sub_20E0486F4(v53, v89, &qword_27C863C58, &unk_20E323F40);
    sub_20E0486F4(v55, v57 + v56, &qword_27C863C58, &unk_20E323F40);
    v58 = *v88;
    v59 = v90;
    if ((*v88)(v57, 1, v90) == 1)
    {
      if (v58(v57 + v56, 1, v59) != 1)
      {
        goto LABEL_47;
      }

      sub_20E04875C(v57, &qword_27C863C58, &unk_20E323F40);
      goto LABEL_15;
    }

    v60 = v85;
    sub_20E0486F4(v57, v85, &qword_27C863C58, &unk_20E323F40);
    if (v58(v57 + v56, 1, v59) == 1)
    {
      sub_20E195C24(v60, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
LABEL_47:
      sub_20E04875C(v57, &qword_27C867F70, &qword_20E33B040);
LABEL_48:
      sub_20E195C24(v96, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E195C24(v97, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E04875C(v101, &qword_27C863C50, &qword_20E323F38);
LABEL_41:
      sub_20E195C24(v105, type metadata accessor for ContextProtoRetrievedTool);
      sub_20E195C24(v104, type metadata accessor for ContextProtoRetrievedTool);
      goto LABEL_42;
    }

    v61 = v84;
    sub_20E195B54(v57 + v56, v84, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v62 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v60, v61);
    sub_20E195C24(v61, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E195C24(v60, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E04875C(v57, &qword_27C863C58, &unk_20E323F40);
    if ((v62 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_15:
    v63 = *(v54 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v65 = v96;
    v64 = v97;
    LOBYTE(v63) = sub_20E322850();
    sub_20E195C24(v65, type metadata accessor for ContextProtoRetrievedTool.Definition);
    sub_20E195C24(v64, type metadata accessor for ContextProtoRetrievedTool.Definition);
    result = sub_20E04875C(v101, &qword_27C863C50, &qword_20E323F38);
    if ((v63 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_16:
    if (*v104 != *v105)
    {
      goto LABEL_41;
    }

    v66 = *(v104 + 8);
    v67 = *(v105 + 8);
    v68 = *(v66 + 16);
    if (v68 != *(v67 + 16))
    {
      goto LABEL_41;
    }

    if (v68 && v66 != v67)
    {
      break;
    }

LABEL_29:
    if (*(v104 + 16) != *(v105 + 16))
    {
      goto LABEL_41;
    }

    v75 = *(v104 + 24);
    v76 = *(v105 + 24);
    v77 = *(v75 + 16);
    if (v77 != *(v76 + 16))
    {
      goto LABEL_41;
    }

    if (v77 && v75 != v76)
    {
      v78 = (v75 + 32);
      v79 = (v76 + 32);
      while (*v78 == *v79)
      {
        ++v78;
        ++v79;
        if (!--v77)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

LABEL_36:
    v80 = *(v100 + 36);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v42 = v104;
    v81 = v105;
    v82 = sub_20E322850();
    sub_20E195C24(v81, type metadata accessor for ContextProtoRetrievedTool);
    sub_20E195C24(v42, type metadata accessor for ContextProtoRetrievedTool);
    if (v82)
    {
      v40 = v91 + 1;
      v41 = v86;
      v39 = v87;
      if (v91 + 1 != v94)
      {
        continue;
      }
    }

    return v82 & 1;
  }

  v69 = 0;
  v70 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v71 = v66 + v70;
  v72 = v67 + v70;
  while (v69 < *(v66 + 16))
  {
    v73 = *(v103 + 72) * v69;
    result = sub_20E195BBC(v71 + v73, v11, type metadata accessor for ContextProtoSampleInvocation);
    if (v69 >= *(v67 + 16))
    {
      goto LABEL_50;
    }

    sub_20E195BBC(v72 + v73, v9, type metadata accessor for ContextProtoSampleInvocation);
    if ((*v11 != *v9 || *(v11 + 1) != *(v9 + 1)) && (sub_20E322D60() & 1) == 0 || *(v11 + 4) != *(v9 + 4))
    {
      sub_20E195C24(v9, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E195C24(v11, type metadata accessor for ContextProtoSampleInvocation);
      goto LABEL_41;
    }

    v74 = *(v102 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    LOBYTE(v74) = sub_20E322850();
    sub_20E195C24(v9, type metadata accessor for ContextProtoSampleInvocation);
    result = sub_20E195C24(v11, type metadata accessor for ContextProtoSampleInvocation);
    if ((v74 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v68 == ++v69)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_20E1484A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_20E195BBC(v14, v11, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195BBC(v15, v8, type metadata accessor for ToolKitProtoTypedValue);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v11);
    sub_20E047CF8(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v21 = sub_20E322850();
    sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_20E047CF8(v17);
    sub_20E047CF8(v18);
    sub_20E047CF8(v17);
    v19 = _s23LighthouseDataProcessor26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(&v24, &v23);

    sub_20E047CA8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v17);
  sub_20E047CF8(v18);
  sub_20E047CF8(v17);

LABEL_15:
  sub_20E047CA8(v17);
  sub_20E047CA8(v18);
LABEL_16:
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20E1487B4(uint64_t a1, uint64_t a2)
{
  v104 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v104);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v91 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v14 = *(*(v103 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v103);
  v98 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v91 - v17;
  v107 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v107);
  v102 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v109 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = &v91 - v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v28 = *(*(v112 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v112);
  v108 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v111 = &v91 - v31;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v32 = *(*(updated - 1) + 64);
  v33 = MEMORY[0x28223BE20](updated);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v38 = &v91 - v37;
  v39 = *(a1 + 16);
  if (v39 != *(a2 + 16))
  {
LABEL_44:
    v87 = 0;
    return v87 & 1;
  }

  if (!v39 || a1 == a2)
  {
    v87 = 1;
    return v87 & 1;
  }

  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = a1 + v40;
  v106 = (v18 + 48);
  v42 = a2 + v40;
  v95 = (v4 + 48);
  v43 = *(v36 + 72);
  v93 = v7;
  v94 = v43;
  v45 = v107;
  v44 = v108;
  v92 = v12;
  while (1)
  {
    v101 = v41;
    result = sub_20E195BBC(v41, v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (!v39)
    {
      break;
    }

    v99 = v39;
    v100 = v42;
    sub_20E195BBC(v42, v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    v47 = updated[6];
    v48 = *(v112 + 48);
    v49 = v111;
    sub_20E0486F4(&v38[v47], v111, &qword_27C868048, &qword_20E33B0F0);
    sub_20E0486F4(&v35[v47], v49 + v48, &qword_27C868048, &qword_20E33B0F0);
    v50 = *v106;
    if ((*v106)(v49, 1, v45) == 1)
    {
      if (v50(v49 + v48, 1, v45) != 1)
      {
        goto LABEL_33;
      }

      sub_20E04875C(v49, &qword_27C868048, &qword_20E33B0F0);
    }

    else
    {
      sub_20E0486F4(v49, v110, &qword_27C868048, &qword_20E33B0F0);
      if (v50(v49 + v48, 1, v45) == 1)
      {
        sub_20E195C24(v110, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_33:
        v88 = &qword_27C868050;
        v89 = &qword_20E33B0F8;
        v90 = v49;
LABEL_42:
        sub_20E04875C(v90, v88, v89);
LABEL_43:
        sub_20E195C24(v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        sub_20E195C24(v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        goto LABEL_44;
      }

      v51 = v105;
      sub_20E195B54(v49 + v48, v105, type metadata accessor for TranscriptProtoASTFlatValue);
      v52 = *(v103 + 48);
      v53 = v97;
      sub_20E0486F4(v110, v97, &qword_27C865F58, &qword_20E3263B8);
      sub_20E0486F4(v51, v53 + v52, &qword_27C865F58, &qword_20E3263B8);
      v54 = *v95;
      v55 = v104;
      if ((*v95)(v53, 1, v104) == 1)
      {
        if (v54(v53 + v52, 1, v55) != 1)
        {
          goto LABEL_37;
        }

        sub_20E04875C(v53, &qword_27C865F58, &qword_20E3263B8);
      }

      else
      {
        v56 = v96;
        sub_20E0486F4(v53, v96, &qword_27C865F58, &qword_20E3263B8);
        if (v54(v53 + v52, 1, v55) == 1)
        {
          sub_20E195C24(v56, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_37:
          sub_20E04875C(v53, &qword_27C868160, &qword_20E33B208);
LABEL_38:
          sub_20E195C24(v105, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_20E195C24(v110, type metadata accessor for TranscriptProtoASTFlatValue);
          v88 = &qword_27C868048;
          v89 = &qword_20E33B0F0;
          v90 = v111;
          goto LABEL_42;
        }

        v57 = v93;
        sub_20E195B54(v53 + v52, v93, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v58 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v56, v57);
        sub_20E195C24(v57, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E195C24(v56, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E04875C(v53, &qword_27C865F58, &qword_20E3263B8);
        if ((v58 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v45 = v107;
      v59 = *(v107 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v60 = v110;
      v61 = v105;
      v62 = sub_20E322850();
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v60, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v111, &qword_27C868048, &qword_20E33B0F0);
      v44 = v108;
      if ((v62 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((sub_20E14C50C(*v38, *v35) & 1) == 0)
    {
      goto LABEL_43;
    }

    v63 = updated[7];
    v64 = *(v112 + 48);
    sub_20E0486F4(&v38[v63], v44, &qword_27C868048, &qword_20E33B0F0);
    sub_20E0486F4(&v35[v63], v44 + v64, &qword_27C868048, &qword_20E33B0F0);
    if (v50(v44, 1, v45) == 1)
    {
      if (v50(v44 + v64, 1, v45) != 1)
      {
        goto LABEL_35;
      }

      sub_20E04875C(v44, &qword_27C868048, &qword_20E33B0F0);
    }

    else
    {
      sub_20E0486F4(v44, v109, &qword_27C868048, &qword_20E33B0F0);
      v65 = v50(v44 + v64, 1, v45);
      v66 = v104;
      if (v65 == 1)
      {
        sub_20E195C24(v109, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_35:
        v88 = &qword_27C868050;
        v89 = &qword_20E33B0F8;
        v90 = v44;
        goto LABEL_42;
      }

      v67 = v102;
      sub_20E195B54(v44 + v64, v102, type metadata accessor for TranscriptProtoASTFlatValue);
      v68 = *(v103 + 48);
      v69 = v98;
      sub_20E0486F4(v109, v98, &qword_27C865F58, &qword_20E3263B8);
      sub_20E0486F4(v67, v69 + v68, &qword_27C865F58, &qword_20E3263B8);
      v70 = *v95;
      if ((*v95)(v69, 1, v66) == 1)
      {
        if (v70(v69 + v68, 1, v66) != 1)
        {
          goto LABEL_40;
        }

        sub_20E04875C(v69, &qword_27C865F58, &qword_20E3263B8);
      }

      else
      {
        v71 = v92;
        sub_20E0486F4(v69, v92, &qword_27C865F58, &qword_20E3263B8);
        if (v70(v69 + v68, 1, v66) == 1)
        {
          sub_20E195C24(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_40:
          sub_20E04875C(v69, &qword_27C868160, &qword_20E33B208);
LABEL_41:
          sub_20E195C24(v102, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_20E195C24(v109, type metadata accessor for TranscriptProtoASTFlatValue);
          v88 = &qword_27C868048;
          v89 = &qword_20E33B0F0;
          v90 = v108;
          goto LABEL_42;
        }

        v72 = v69 + v68;
        v73 = v93;
        sub_20E195B54(v72, v93, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v74 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v71, v73);
        v75 = v73;
        v76 = v98;
        sub_20E195C24(v75, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E195C24(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E04875C(v76, &qword_27C865F58, &qword_20E3263B8);
        if ((v74 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v77 = v38;
      v78 = v35;
      v79 = v109;
      v80 = v107;
      v81 = *(v107 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v82 = v102;
      v83 = sub_20E322850();
      v84 = v82;
      v45 = v80;
      v85 = v79;
      v35 = v78;
      v38 = v77;
      sub_20E195C24(v84, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v85, type metadata accessor for TranscriptProtoASTFlatValue);
      v44 = v108;
      sub_20E04875C(v108, &qword_27C868048, &qword_20E33B0F0);
      if ((v83 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v38[8] != v35[8])
    {
      goto LABEL_43;
    }

    v86 = updated[8];
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v87 = sub_20E322850();
    sub_20E195C24(v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    sub_20E195C24(v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (v87)
    {
      v39 = v99 - 1;
      v42 = v100 + v94;
      v41 = v101 + v94;
      if (v99 != 1)
      {
        continue;
      }
    }

    return v87 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1494E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20E149570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F70, &qword_20E33B040);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v59 - v14;
  v67 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v59 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F78, &qword_20E33B048);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v23 = &v59 - v22;
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v24 = *(*(Output - 8) + 64);
  v25 = MEMORY[0x28223BE20](Output);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v74 = &v59 - v29;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_26:
    v58 = 0;
    return v58 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v59 = v8;
  v60 = v12;
  v62 = v4;
  v63 = v27;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v34 = (v15 + 48);
  v61 = (v5 + 48);
  v65 = *(v28 + 72);
  v66 = v34;
  v35 = v67;
  while (1)
  {
    v36 = v74;
    result = sub_20E195BBC(v32, v74, type metadata accessor for ContextProtoToolQueryOutput);
    if (!v30)
    {
      break;
    }

    v73 = v30;
    sub_20E195BBC(v33, v27, type metadata accessor for ContextProtoToolQueryOutput);
    v38 = *(v71 + 48);
    v39 = v23;
    sub_20E0486F4(v36, v23, &qword_27C863C50, &qword_20E323F38);
    sub_20E0486F4(v27, &v23[v38], &qword_27C863C50, &qword_20E323F38);
    v40 = *v34;
    if ((*v34)(v23, 1, v35) == 1)
    {
      if (v40(&v23[v38], 1, v35) != 1)
      {
        goto LABEL_21;
      }

      sub_20E04875C(v23, &qword_27C863C50, &qword_20E323F38);
    }

    else
    {
      v41 = v70;
      sub_20E0486F4(v23, v70, &qword_27C863C50, &qword_20E323F38);
      if (v40(&v23[v38], 1, v35) == 1)
      {
        sub_20E195C24(v41, type metadata accessor for ContextProtoRetrievedTool.Definition);
        v27 = v63;
LABEL_21:
        sub_20E04875C(v23, &qword_27C867F78, &qword_20E33B048);
        goto LABEL_25;
      }

      v42 = v69;
      sub_20E195B54(&v23[v38], v69, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v43 = *(v64 + 48);
      v44 = v72;
      sub_20E0486F4(v41, v72, &qword_27C863C58, &unk_20E323F40);
      sub_20E0486F4(v42, v44 + v43, &qword_27C863C58, &unk_20E323F40);
      v45 = *v61;
      v46 = v44;
      v47 = v62;
      if ((*v61)(v46, 1, v62) == 1)
      {
        if (v45(v72 + v43, 1, v47) != 1)
        {
          goto LABEL_23;
        }

        sub_20E04875C(v72, &qword_27C863C58, &unk_20E323F40);
      }

      else
      {
        v48 = v72;
        v49 = v60;
        sub_20E0486F4(v72, v60, &qword_27C863C58, &unk_20E323F40);
        if (v45(v48 + v43, 1, v47) == 1)
        {
          sub_20E195C24(v49, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
          v23 = v39;
LABEL_23:
          sub_20E04875C(v72, &qword_27C867F70, &qword_20E33B040);
LABEL_24:
          sub_20E195C24(v69, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_20E195C24(v70, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_20E04875C(v23, &qword_27C863C50, &qword_20E323F38);
          v27 = v63;
LABEL_25:
          sub_20E195C24(v27, type metadata accessor for ContextProtoToolQueryOutput);
          sub_20E195C24(v74, type metadata accessor for ContextProtoToolQueryOutput);
          goto LABEL_26;
        }

        v50 = v59;
        sub_20E195B54(v48 + v43, v59, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        v51 = _s23LighthouseDataProcessor25ContextProtoRetrievedToolV0dE14DefinitionEnumO2eeoiySbAE_AEtFZ_0(v49, v50);
        sub_20E195C24(v50, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_20E195C24(v49, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_20E04875C(v48, &qword_27C863C58, &unk_20E323F40);
        v23 = v39;
        if ((v51 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v35 = v67;
      v52 = *(v67 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v53 = v69;
      v54 = v70;
      v55 = sub_20E322850();
      sub_20E195C24(v53, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E195C24(v54, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E04875C(v23, &qword_27C863C50, &qword_20E323F38);
      v27 = v63;
      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v56 = *(Output + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v57 = v74;
    v58 = sub_20E322850();
    sub_20E195C24(v27, type metadata accessor for ContextProtoToolQueryOutput);
    sub_20E195C24(v57, type metadata accessor for ContextProtoToolQueryOutput);
    if (v58)
    {
      v30 = v73 - 1;
      v34 = v66;
      v33 += v65;
      v32 += v65;
      if (v73 != 1)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E149E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = (&v73 - v10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v85 = &v73 - v12;
  v87 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v73 - v18);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v20 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v88 = &v73 - v21;
  v89 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v22 = *(*(v89 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v89);
  v25 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v28 = (&v73 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_48:
    v68 = 0;
    return v68 & 1;
  }

  if (v29 && a1 != a2)
  {
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = a1 + v30;
    v77 = v4;
    v78 = v19;
    v32 = a2 + v30;
    v75 = v25;
    v76 = (v13 + 48);
    v73 = *(v26 + 72);
    v74 = (v5 + 48);
    while (1)
    {
      v82 = v31;
      sub_20E195BBC(v31, v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195BBC(v32, v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v33 = *v28 == *v25 && v28[1] == v25[1];
      if (!v33 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v34 = v25;
      v84 = v32;
      v35 = v88;
      v36 = v89[5];
      v37 = *(v83 + 48);
      sub_20E0486F4(v28 + v36, v88, &qword_27C863C48, &qword_20E323F30);
      sub_20E0486F4(v34 + v36, v35 + v37, &qword_27C863C48, &qword_20E323F30);
      v38 = *v76;
      v39 = v87;
      if ((*v76)(v35, 1, v87) == 1)
      {
        v33 = v38(v35 + v37, 1, v39) == 1;
        v40 = v35;
        if (!v33)
        {
          goto LABEL_36;
        }

        sub_20E04875C(v35, &qword_27C863C48, &qword_20E323F30);
        v42 = v84;
        v41 = v85;
        v43 = v74;
        v25 = v75;
      }

      else
      {
        v44 = v78;
        sub_20E0486F4(v35, v78, &qword_27C863C48, &qword_20E323F30);
        if (v38(v35 + v37, 1, v39) == 1)
        {
          sub_20E195C24(v44, type metadata accessor for ToolKitProtoTypeInstance);
          v40 = v35;
LABEL_36:
          sub_20E04875C(v40, &qword_27C867E98, &qword_20E33AF70);
          v25 = v75;
          break;
        }

        v45 = v81;
        sub_20E195B54(v35 + v37, v81, type metadata accessor for ToolKitProtoTypeInstance);
        v46 = *v44;
        v47 = *v45;
        if ((~*v44 & 0xF000000000000007) != 0)
        {
          v91[0] = *v44;
          v42 = v84;
          if ((~v47 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v46);
            sub_20E047CF8(v47);
            sub_20E047CF8(v46);

            v25 = v75;
LABEL_40:
            sub_20E047CA8(v46);
            sub_20E047CA8(v47);
LABEL_41:
            sub_20E195C24(v81, type metadata accessor for ToolKitProtoTypeInstance);
            sub_20E195C24(v78, type metadata accessor for ToolKitProtoTypeInstance);
            v69 = &qword_27C863C48;
            v70 = &qword_20E323F30;
            v71 = v88;
            goto LABEL_46;
          }

          v90 = v47;
          sub_20E047CF8(v46);
          sub_20E047CF8(v47);
          sub_20E047CF8(v46);
          v48 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(v91, &v90);

          sub_20E047CA8(v46);
          v25 = v75;
          if ((v48 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_20E047CF8(*v44);
          sub_20E047CF8(v47);
          v42 = v84;
          v25 = v75;
          if ((~v47 & 0xF000000000000007) != 0)
          {
            goto LABEL_40;
          }

          sub_20E047CA8(v46);
        }

        v49 = *(v87 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v50 = v81;
        v51 = sub_20E322850();
        sub_20E195C24(v50, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E195C24(v78, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E04875C(v88, &qword_27C863C48, &qword_20E323F30);
        v43 = v74;
        v41 = v85;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      v84 = v29;
      v52 = v89[6];
      v53 = *(v80 + 48);
      sub_20E0486F4(v28 + v52, v41, &qword_27C863B18, &qword_20E323EB0);
      sub_20E0486F4(v25 + v52, v41 + v53, &qword_27C863B18, &qword_20E323EB0);
      v54 = *v43;
      v55 = v77;
      if ((*v43)(v41, 1, v77) == 1)
      {
        if (v54(v41 + v53, 1, v55) != 1)
        {
          goto LABEL_38;
        }

        sub_20E04875C(v41, &qword_27C863B18, &qword_20E323EB0);
        v56 = v84;
      }

      else
      {
        sub_20E0486F4(v41, v86, &qword_27C863B18, &qword_20E323EB0);
        if (v54(v41 + v53, 1, v55) == 1)
        {
          sub_20E195C24(v86, type metadata accessor for ToolKitProtoTypedValue);
LABEL_38:
          v69 = &qword_27C867ED8;
          v70 = &qword_20E33AFA8;
          goto LABEL_45;
        }

        v57 = v79;
        sub_20E195B54(v41 + v53, v79, type metadata accessor for ToolKitProtoTypedValue);
        v58 = *v86;
        v59 = *v57;
        if ((~*v86 & 0xF000000000000007) != 0)
        {
          v91[0] = *v86;
          if ((~v59 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v58);
            sub_20E047CF8(v59);
            sub_20E047CF8(v58);

LABEL_43:
            sub_20E047CA8(v58);
            sub_20E047CA8(v59);
LABEL_44:
            sub_20E195C24(v79, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v86, type metadata accessor for ToolKitProtoTypedValue);
            v69 = &qword_27C863B18;
            v70 = &qword_20E323EB0;
LABEL_45:
            v71 = v41;
LABEL_46:
            sub_20E04875C(v71, v69, v70);
            break;
          }

          v90 = v59;
          sub_20E047CF8(v58);
          sub_20E047CF8(v59);
          sub_20E047CF8(v58);
          v60 = static ToolKitProtoTypedValueKind.== infix(_:_:)(v91, &v90);

          sub_20E047CA8(v58);
          if ((v60 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_20E047CF8(*v86);
          sub_20E047CF8(v59);
          if ((~v59 & 0xF000000000000007) != 0)
          {
            goto LABEL_43;
          }

          sub_20E047CA8(v58);
        }

        v61 = *(v77 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v62 = v86;
        v63 = v79;
        v64 = sub_20E322850();
        v65 = v63;
        v66 = v85;
        sub_20E195C24(v65, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E04875C(v66, &qword_27C863B18, &qword_20E323EB0);
        v56 = v84;
        if ((v64 & 1) == 0)
        {
          break;
        }
      }

      v67 = v89[7];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v68 = sub_20E322850();
      sub_20E195C24(v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195C24(v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      if (v68)
      {
        v32 = v42 + v73;
        v31 = v82 + v73;
        v29 = v56 - 1;
        if (v29)
        {
          continue;
        }
      }

      return v68 & 1;
    }

    sub_20E195C24(v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    sub_20E195C24(v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    goto LABEL_48;
  }

  v68 = 1;
  return v68 & 1;
}

uint64_t sub_20E14A924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_18:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_20E195BBC(v14, v11, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195BBC(v15, v8, type metadata accessor for TranscriptProtoStatementID);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = *(v11 + 2);
      v18 = *(v8 + 2);
      if (v17)
      {
        if (!v18 || (*(v11 + 1) != *(v8 + 1) || v17 != v18) && (sub_20E322D60() & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_18;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_20E14ABB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - v14;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v16 = *(*(updated - 1) + 64);
  v17 = MEMORY[0x28223BE20](updated);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_40:
    v48 = 0;
    return v48 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = v5;
    v27 = a2 + v24;
    v55 = (v26 + 48);
    v56 = v4;
    v53 = *(v20 + 72);
    v54 = updated;
    v52 = v8;
    while (1)
    {
      v57 = v25;
      sub_20E195BBC(v25, v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_20E195BBC(v27, v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      v28 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
      if (!v28 && (sub_20E322D60() & 1) == 0 || v22[16] != v19[16])
      {
        break;
      }

      v59 = v23;
      v60 = v27;
      v29 = updated[6];
      v30 = *(v58 + 48);
      v31 = v61;
      sub_20E0486F4(&v22[v29], v61, &qword_27C8639D0, &unk_20E33C230);
      sub_20E0486F4(&v19[v29], v31 + v30, &qword_27C8639D0, &unk_20E33C230);
      v32 = v56;
      v33 = *v55;
      if ((*v55)(v31, 1, v56) == 1)
      {
        v28 = v33(v31 + v30, 1, v32) == 1;
        v34 = v31;
        if (!v28)
        {
          goto LABEL_37;
        }

        sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
        updated = v54;
        v35 = v59;
        v36 = v60;
      }

      else
      {
        sub_20E0486F4(v31, v12, &qword_27C8639D0, &unk_20E33C230);
        if (v33(v31 + v30, 1, v32) == 1)
        {
          sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
          v34 = v31;
LABEL_37:
          v49 = &qword_27C867F30;
          v50 = &qword_20E33B000;
LABEL_38:
          sub_20E04875C(v34, v49, v50);
          break;
        }

        v37 = v52;
        sub_20E195B54(v31 + v30, v52, type metadata accessor for TranscriptProtoStatementID);
        updated = v54;
        v35 = v59;
        v36 = v60;
        if (*v12 != *v37)
        {
          goto LABEL_35;
        }

        v38 = *(v12 + 2);
        v39 = *(v37 + 16);
        if (v38)
        {
          if (!v39 || (*(v12 + 1) != *(v37 + 8) || v38 != v39) && (sub_20E322D60() & 1) == 0)
          {
LABEL_35:
            sub_20E195C24(v37, type metadata accessor for TranscriptProtoStatementID);
            sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
            v49 = &qword_27C8639D0;
            v50 = &unk_20E33C230;
            v34 = v61;
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_35;
        }

        v40 = *(v56 + 24);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v41 = sub_20E322850();
        sub_20E195C24(v37, type metadata accessor for TranscriptProtoStatementID);
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
        sub_20E04875C(v61, &qword_27C8639D0, &unk_20E33C230);
        if ((v41 & 1) == 0)
        {
          break;
        }
      }

      v42 = updated[7];
      v43 = &v22[v42];
      v44 = v22[v42 + 8];
      v45 = &v19[v42];
      v46 = v19[v42 + 8];
      if (v44)
      {
        if (!v46)
        {
          break;
        }
      }

      else
      {
        if (*v43 != *v45)
        {
          LOBYTE(v46) = 1;
        }

        if (v46)
        {
          break;
        }
      }

      v47 = updated[8];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v48 = sub_20E322850();
      sub_20E195C24(v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_20E195C24(v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      if (v48)
      {
        v27 = v36 + v53;
        v25 = v57 + v53;
        v23 = v35 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v48 & 1;
    }

    sub_20E195C24(v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    sub_20E195C24(v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    goto LABEL_40;
  }

  v48 = 1;
  return v48 & 1;
}

uint64_t sub_20E14B224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v13 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v50 - v14;
  v15 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = (&v50 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_41:
    v47 = 0;
    return v47 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v24 = *(a1 + 16);
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v53 = (v5 + 48);
  v54 = v4;
  v51 = *(v20 + 72);
  v52 = v15;
  v28 = v24;
  v50 = v8;
  while (1)
  {
    v56 = v26;
    result = sub_20E195BBC(v26, v22, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    if (!v28)
    {
      break;
    }

    sub_20E195BBC(v27, v19, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    v30 = *v22 == *v19 && v22[1] == v19[1];
    if (!v30 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_40;
    }

    v31 = v22[3];
    v32 = v19[3];
    if (v31)
    {
      if (!v32 || (v22[2] != v19[2] || v31 != v32) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v32)
    {
      goto LABEL_40;
    }

    v57 = v28;
    v58 = v27;
    v33 = *(v15 + 24);
    v34 = *(v55 + 48);
    v35 = v59;
    sub_20E0486F4(v22 + v33, v59, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v19 + v33, v35 + v34, &qword_27C8639D0, &unk_20E33C230);
    v36 = v54;
    v37 = *v53;
    if ((*v53)(v35, 1, v54) == 1)
    {
      v30 = v37(v35 + v34, 1, v36) == 1;
      v38 = v35;
      if (!v30)
      {
        goto LABEL_38;
      }

      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
      v15 = v52;
      v40 = v57;
      v39 = v58;
    }

    else
    {
      sub_20E0486F4(v35, v12, &qword_27C8639D0, &unk_20E33C230);
      if (v37(v35 + v34, 1, v36) == 1)
      {
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
        v38 = v35;
LABEL_38:
        v48 = &qword_27C867F30;
        v49 = &qword_20E33B000;
        goto LABEL_39;
      }

      v41 = v50;
      sub_20E195B54(v35 + v34, v50, type metadata accessor for TranscriptProtoStatementID);
      v15 = v52;
      v40 = v57;
      v39 = v58;
      if (*v12 != *v41)
      {
        goto LABEL_36;
      }

      v42 = *(v12 + 2);
      v43 = *(v41 + 16);
      if (v42)
      {
        if (!v43 || (*(v12 + 1) != *(v41 + 8) || v42 != v43) && (sub_20E322D60() & 1) == 0)
        {
LABEL_36:
          sub_20E195C24(v41, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
          v48 = &qword_27C8639D0;
          v49 = &unk_20E33C230;
          v38 = v59;
LABEL_39:
          sub_20E04875C(v38, v48, v49);
LABEL_40:
          sub_20E195C24(v19, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          sub_20E195C24(v22, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          goto LABEL_41;
        }
      }

      else if (v43)
      {
        goto LABEL_36;
      }

      v44 = *(v54 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v45 = sub_20E322850();
      sub_20E195C24(v41, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v59, &qword_27C8639D0, &unk_20E33C230);
      if ((v45 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v46 = *(v15 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v47 = sub_20E322850();
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    sub_20E195C24(v22, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    if (v47)
    {
      v28 = v40 - 1;
      v27 = v39 + v51;
      v26 = v56 + v51;
      if (v40 != 1)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14B888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = (&v47 - v10);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v47 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_36:
    v43 = 0;
    return v43 & 1;
  }

  if (v22 && a1 != a2)
  {
    v48 = v14;
    v49 = v13;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v50 = (v5 + 48);
    v51 = v4;
    v47 = *(v19 + 72);
    while (1)
    {
      sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v55 = v25;
      sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v27 = v21[2] == v18[2] && v21[3] == v18[3];
      if (!v27 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v54 = v24;
      v28 = *(v14 + 24);
      v29 = *(v53 + 48);
      v30 = v49;
      sub_20E0486F4(v21 + v28, v49, &qword_27C863C48, &qword_20E323F30);
      sub_20E0486F4(v18 + v28, v30 + v29, &qword_27C863C48, &qword_20E323F30);
      v31 = v51;
      v32 = *v50;
      if ((*v50)(v30, 1, v51) == 1)
      {
        if (v32(v30 + v29, 1, v31) != 1)
        {
          goto LABEL_30;
        }

        sub_20E04875C(v30, &qword_27C863C48, &qword_20E323F30);
        v14 = v48;
        v33 = v54;
      }

      else
      {
        sub_20E0486F4(v30, v56, &qword_27C863C48, &qword_20E323F30);
        if (v32(v30 + v29, 1, v31) == 1)
        {
          sub_20E195C24(v56, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_30:
          v44 = &qword_27C867E98;
          v45 = &qword_20E33AF70;
          goto LABEL_34;
        }

        v34 = v30 + v29;
        v35 = v52;
        sub_20E195B54(v34, v52, type metadata accessor for ToolKitProtoTypeInstance);
        v36 = *v56;
        v37 = *v35;
        if ((~*v56 & 0xF000000000000007) != 0)
        {
          v58 = *v56;
          if ((~v37 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v36);
            sub_20E047CF8(v37);
            sub_20E047CF8(v36);

LABEL_32:
            sub_20E047CA8(v36);
            sub_20E047CA8(v37);
LABEL_33:
            sub_20E195C24(v52, type metadata accessor for ToolKitProtoTypeInstance);
            sub_20E195C24(v56, type metadata accessor for ToolKitProtoTypeInstance);
            v44 = &qword_27C863C48;
            v45 = &qword_20E323F30;
LABEL_34:
            sub_20E04875C(v30, v44, v45);
            break;
          }

          v57 = v37;
          sub_20E047CF8(v36);
          sub_20E047CF8(v37);
          sub_20E047CF8(v36);
          v38 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v58, &v57);

          sub_20E047CA8(v36);
          if ((v38 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_20E047CF8(*v56);
          sub_20E047CF8(v37);
          if ((~v37 & 0xF000000000000007) != 0)
          {
            goto LABEL_32;
          }

          sub_20E047CA8(v36);
        }

        v39 = *(v51 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v40 = v56;
        v41 = v52;
        LOBYTE(v39) = sub_20E322850();
        sub_20E195C24(v41, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E195C24(v40, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E04875C(v30, &qword_27C863C48, &qword_20E323F30);
        v14 = v48;
        v33 = v54;
        if ((v39 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v14 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v43 = sub_20E322850();
      sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      if (v43)
      {
        v25 = v55 + v47;
        v24 = v33 + v47;
        if (--v22)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_36;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_20E14BF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v46 - v13;
  v50 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  v15 = *(*(v50 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v50);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v55 = (&v46 - v20);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_23:
    v45 = 0;
    return v45 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v22 = *(a1 + 16);
  v47 = v11;
  v51 = v18;
  v52 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v49 = *(v19 + 72);
  v27 = v50;
  v28 = v22;
  while (1)
  {
    v29 = v55;
    result = sub_20E195BBC(v24, v55, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (!v28)
    {
      break;
    }

    v54 = v28;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    v31 = *v29 == *v18 && v29[1] == v18[1];
    if (!v31 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_22;
    }

    v32 = *(v27 + 20);
    v33 = *(v53 + 48);
    sub_20E0486F4(v55 + v32, v14, &qword_27C863EB8, &qword_20E325D08);
    sub_20E0486F4(v18 + v32, &v14[v33], &qword_27C863EB8, &qword_20E325D08);
    v34 = *v26;
    v35 = v14;
    v36 = v14;
    v37 = v52;
    if ((*v26)(v35, 1, v52) == 1)
    {
      if (v34((v36 + v33), 1, v37) != 1)
      {
        goto LABEL_21;
      }

      sub_20E04875C(v36, &qword_27C863EB8, &qword_20E325D08);
      v14 = v36;
      v18 = v51;
    }

    else
    {
      v38 = v47;
      sub_20E0486F4(v36, v47, &qword_27C863EB8, &qword_20E325D08);
      if (v34((v36 + v33), 1, v37) == 1)
      {
        sub_20E195C24(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_21:
        sub_20E04875C(v36, &qword_27C867E90, &qword_20E33AF68);
        v18 = v51;
LABEL_22:
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_20E195C24(v55, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        goto LABEL_23;
      }

      v39 = v26;
      v40 = v48;
      sub_20E195B54(v36 + v33, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v41 = static ToolKitProtoDisplayRepresentation.== infix(_:_:)(v38, v40);
      v42 = v40;
      v26 = v39;
      sub_20E195C24(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E195C24(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E04875C(v36, &qword_27C863EB8, &qword_20E325D08);
      v14 = v36;
      v27 = v50;
      v18 = v51;
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v43 = *(v27 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v44 = v55;
    v45 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    sub_20E195C24(v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (v45)
    {
      v28 = v54 - 1;
      v25 += v49;
      v24 += v49;
      if (v54 != 1)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14C50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27C865F58;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for TranscriptProtoASTFlatValue);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for TranscriptProtoASTFlatValue);
    v29 = *(v47 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E3263B8);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E3263B8);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E3263B8);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_20E0486F4(v14, v42, v31, &qword_20E3263B8);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_20E04875C(v14, &qword_27C868160, &qword_20E33B208);
LABEL_17:
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_20E195C24(v21, type metadata accessor for TranscriptProtoASTFlatValue);
        goto LABEL_18;
      }

      v35 = v43;
      sub_20E195B54(&v14[v29], v43, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v36 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E195C24(v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E04875C(v14, v31, &qword_20E3263B8);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v97 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  v11 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v110 = &v97 - v12;
  v124 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v13 = *(v124 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v124);
  v115 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C60, &qword_20E323F58);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v97 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC0, &qword_20E33AF90);
  v19 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v21 = &v97 - v20;
  v113 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v122 = *(v113 - 8);
  v22 = *(v122 + 64);
  MEMORY[0x28223BE20](v113);
  v104 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v105 = &v97 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC8, &qword_20E33AF98);
  v27 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v97 - v28;
  v29 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v118 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v123 = &v97 - v35;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v36 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v38 = &v97 - v37;
  v125 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v39 = *(*(v125 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v125);
  v127 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v126 = &v97 - v43;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
LABEL_43:
    v92 = 0;
    return v92 & 1;
  }

  if (!v44 || a1 == a2)
  {
    v92 = 1;
    return v92 & 1;
  }

  v100 = v4;
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = a1 + v45;
  v107 = (v30 + 48);
  v47 = a2 + v45;
  v101 = (v122 + 48);
  v99 = (v5 + 48);
  v102 = *(v42 + 72);
  v48 = v126;
  v114 = v29;
  v49 = v123;
  v98 = v21;
  v106 = (v13 + 48);
  while (1)
  {
    v122 = v46;
    result = sub_20E195BBC(v46, v48, type metadata accessor for ContextProtoToolRetrievalType);
    if (!v44)
    {
      break;
    }

    v120 = v44;
    v121 = v47;
    v51 = v47;
    v52 = v127;
    sub_20E195BBC(v51, v127, type metadata accessor for ContextProtoToolRetrievalType);
    v53 = *(v119 + 48);
    v54 = v38;
    sub_20E0486F4(v48, v38, &qword_27C863B60, &qword_20E323F50);
    sub_20E0486F4(v52, &v38[v53], &qword_27C863B60, &qword_20E323F50);
    v55 = *v107;
    if ((*v107)(v38, 1, v29) == 1)
    {
      if (v55(&v38[v53], 1, v29) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v38, &qword_27C863B60, &qword_20E323F50);
      v56 = v106;
    }

    else
    {
      sub_20E0486F4(v38, v49, &qword_27C863B60, &qword_20E323F50);
      if (v55(&v38[v53], 1, v29) == 1)
      {
        sub_20E195C24(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_31:
        v94 = &qword_27C867ED0;
        v95 = &qword_20E33AFA0;
LABEL_37:
        v96 = v38;
        goto LABEL_41;
      }

      v57 = v118;
      sub_20E195B54(&v38[v53], v118, type metadata accessor for ToolKitProtoTypeIdentifier);
      v58 = v112;
      v59 = *(v111 + 48);
      sub_20E0486F4(v49, v112, &qword_27C863B68, &unk_20E346230);
      sub_20E0486F4(v57, v58 + v59, &qword_27C863B68, &unk_20E346230);
      v60 = *v101;
      v61 = v113;
      if ((*v101)(v58, 1, v113) == 1)
      {
        if (v60(v58 + v59, 1, v61) != 1)
        {
          goto LABEL_35;
        }

        sub_20E04875C(v58, &qword_27C863B68, &unk_20E346230);
      }

      else
      {
        v62 = v105;
        sub_20E0486F4(v58, v105, &qword_27C863B68, &unk_20E346230);
        if (v60(v58 + v59, 1, v61) == 1)
        {
          sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypeIdentifierKind);
          v49 = v123;
          v38 = v54;
LABEL_35:
          sub_20E04875C(v58, &qword_27C867EC8, &qword_20E33AF98);
LABEL_36:
          sub_20E195C24(v118, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_20E195C24(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
          v94 = &qword_27C863B60;
          v95 = &qword_20E323F50;
          goto LABEL_37;
        }

        v63 = v104;
        sub_20E195B54(v58 + v59, v104, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        v64 = static ToolKitProtoTypeIdentifierKind.== infix(_:_:)(v62, v63);
        v65 = v63;
        v48 = v126;
        sub_20E195C24(v65, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_20E04875C(v58, &qword_27C863B68, &unk_20E346230);
        v49 = v123;
        v38 = v54;
        if ((v64 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v66 = *(v114 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v67 = v118;
      v68 = sub_20E322850();
      v69 = v67;
      v49 = v123;
      sub_20E195C24(v69, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E195C24(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v38, &qword_27C863B60, &qword_20E323F50);
      v56 = v106;
      if ((v68 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v70 = v48;
    v71 = *(v125 + 20);
    v72 = v116;
    v73 = *(v117 + 48);
    sub_20E0486F4(v70 + v71, v21, &qword_27C863C60, &qword_20E323F58);
    sub_20E0486F4(v127 + v71, &v21[v73], &qword_27C863C60, &qword_20E323F58);
    v74 = *v56;
    v75 = v124;
    if ((*v56)(v21, 1, v124) == 1)
    {
      if (v74(&v21[v73], 1, v75) != 1)
      {
        goto LABEL_33;
      }

      sub_20E04875C(v21, &qword_27C863C60, &qword_20E323F58);
      v29 = v114;
    }

    else
    {
      sub_20E0486F4(v21, v72, &qword_27C863C60, &qword_20E323F58);
      if (v74(&v21[v73], 1, v75) == 1)
      {
        sub_20E195C24(v72, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_33:
        sub_20E04875C(v21, &qword_27C867EC0, &qword_20E33AF90);
        v48 = v126;
        goto LABEL_42;
      }

      v76 = v108;
      v77 = v115;
      sub_20E195B54(&v21[v73], v115, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v78 = v110;
      v79 = *(v109 + 48);
      sub_20E0486F4(v72, v110, &qword_27C867E50, &qword_20E33AF30);
      sub_20E0486F4(v77, v78 + v79, &qword_27C867E50, &qword_20E33AF30);
      v80 = *v99;
      v81 = v100;
      if ((*v99)(v78, 1, v100) == 1)
      {
        v82 = v80(v78 + v79, 1, v81);
        v83 = v72;
        v49 = v123;
        if (v82 != 1)
        {
          goto LABEL_39;
        }

        sub_20E04875C(v78, &qword_27C867E50, &qword_20E33AF30);
        v48 = v126;
      }

      else
      {
        sub_20E0486F4(v78, v76, &qword_27C867E50, &qword_20E33AF30);
        v84 = v80(v78 + v79, 1, v81);
        v49 = v123;
        if (v84 == 1)
        {
          sub_20E195C24(v76, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
          v83 = v72;
LABEL_39:
          sub_20E04875C(v78, &qword_27C867E58, &qword_20E33AF38);
          v48 = v126;
LABEL_40:
          sub_20E195C24(v115, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          sub_20E195C24(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          v94 = &qword_27C863C60;
          v95 = &qword_20E323F58;
          v96 = v98;
LABEL_41:
          sub_20E04875C(v96, v94, v95);
LABEL_42:
          sub_20E195C24(v127, type metadata accessor for ContextProtoToolRetrievalType);
          sub_20E195C24(v48, type metadata accessor for ContextProtoToolRetrievalType);
          goto LABEL_43;
        }

        v85 = v103;
        sub_20E195B54(v78 + v79, v103, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        v86 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v76, v85);
        sub_20E195C24(v85, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_20E195C24(v76, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_20E04875C(v78, &qword_27C867E50, &qword_20E33AF30);
        v83 = v72;
        v48 = v126;
        if ((v86 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v87 = *(v124 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v88 = v115;
      v89 = sub_20E322850();
      sub_20E195C24(v88, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_20E195C24(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v21 = v98;
      sub_20E04875C(v98, &qword_27C863C60, &qword_20E323F58);
      v29 = v114;
      if ((v89 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v90 = *(v125 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v91 = v127;
    v92 = sub_20E322850();
    v93 = v91;
    v48 = v126;
    sub_20E195C24(v93, type metadata accessor for ContextProtoToolRetrievalType);
    sub_20E195C24(v48, type metadata accessor for ContextProtoToolRetrievalType);
    if (v92)
    {
      v44 = v120 - 1;
      v47 = v121 + v102;
      v46 = v122 + v102;
      if (v120 != 1)
      {
        continue;
      }
    }

    return v92 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14D9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA8, &qword_20E33B078);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FB0, &qword_20E33B080);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v78 = &v61 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v22;
  v76 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v23 = *(*(v76 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v76);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_36:
    v56 = 0;
    return v56 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v26;
  v66 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v67 = (v75 + 48);
  v63 = v17;
  v64 = (v5 + 48);
  v62 = *(v27 + 72);
  v77 = &v61 - v28;
  while (1)
  {
    v74 = v32;
    result = sub_20E195BBC(v32, v29, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (!v30)
    {
      break;
    }

    v75 = v30;
    v73 = v33;
    sub_20E195BBC(v33, v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v35 = v72;
    v36 = *(v71 + 48);
    sub_20E0486F4(v29, v72, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v26, v35 + v36, &qword_27C8639D0, &unk_20E33C230);
    v37 = *v67;
    if ((*v67)(v35, 1, v14) == 1)
    {
      v38 = v14;
      if (v37(v35 + v36, 1, v14) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
      v39 = v75;
    }

    else
    {
      sub_20E0486F4(v35, v78, &qword_27C8639D0, &unk_20E33C230);
      v38 = v14;
      if (v37(v35 + v36, 1, v14) == 1)
      {
        sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v58 = &qword_27C867F30;
        v59 = &qword_20E33B000;
        v60 = v35;
LABEL_32:
        sub_20E04875C(v60, v58, v59);
LABEL_35:
        sub_20E195C24(v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_20E195C24(v77, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        goto LABEL_36;
      }

      sub_20E195B54(v35 + v36, v17, type metadata accessor for TranscriptProtoStatementID);
      v39 = v75;
      if (*v78 != *v17)
      {
        goto LABEL_29;
      }

      v40 = *(v78 + 16);
      v41 = *(v17 + 2);
      if (v40)
      {
        if (!v41 || (*(v78 + 8) != *(v17 + 1) || v40 != v41) && (sub_20E322D60() & 1) == 0)
        {
LABEL_29:
          sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
          v58 = &qword_27C8639D0;
          v59 = &unk_20E33C230;
          v60 = v35;
          goto LABEL_32;
        }
      }

      else if (v41)
      {
        goto LABEL_29;
      }

      v42 = *(v14 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v43 = v78;
      v44 = sub_20E322850();
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v43, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
      if ((v44 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v45 = v11;
    v46 = *(v76 + 20);
    v47 = *(v70 + 48);
    v48 = v26;
    v49 = v69;
    sub_20E0486F4(&v77[v46], v69, &qword_27C867FA8, &qword_20E33B078);
    sub_20E0486F4(&v48[v46], v49 + v47, &qword_27C867FA8, &qword_20E33B078);
    v50 = *v64;
    v51 = v66;
    if ((*v64)(v49, 1, v66) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_34;
      }

      sub_20E04875C(v49, &qword_27C867FA8, &qword_20E33B078);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
    }

    else
    {
      sub_20E0486F4(v49, v45, &qword_27C867FA8, &qword_20E33B078);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_20E195C24(v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_34:
        sub_20E04875C(v49, &qword_27C867FB0, &qword_20E33B080);
        v26 = v65;
        goto LABEL_35;
      }

      v52 = v68;
      sub_20E195B54(v49 + v47, v68, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v53 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)(v45, v52);
      sub_20E195C24(v52, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195C24(v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E04875C(v49, &qword_27C867FA8, &qword_20E33B078);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v54 = *(v76 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v55 = v77;
    v56 = sub_20E322850();
    sub_20E195C24(v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    sub_20E195C24(v55, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (v56)
    {
      v33 = v73 + v62;
      v32 = v74 + v62;
      v57 = v39 == 1;
      v30 = v39 - 1;
      v29 = v77;
      if (!v57)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14E2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868260, &unk_20E33C3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868268, &qword_20E33B2F8);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v78 = &v61 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v22;
  v76 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v23 = *(*(v76 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v76);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_36:
    v56 = 0;
    return v56 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v26;
  v66 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v67 = (v75 + 48);
  v63 = v17;
  v64 = (v5 + 48);
  v62 = *(v27 + 72);
  v77 = &v61 - v28;
  while (1)
  {
    v74 = v32;
    result = sub_20E195BBC(v32, v29, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (!v30)
    {
      break;
    }

    v75 = v30;
    v73 = v33;
    sub_20E195BBC(v33, v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v35 = v72;
    v36 = *(v71 + 48);
    sub_20E0486F4(v29, v72, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v26, v35 + v36, &qword_27C8639D0, &unk_20E33C230);
    v37 = *v67;
    if ((*v67)(v35, 1, v14) == 1)
    {
      v38 = v14;
      if (v37(v35 + v36, 1, v14) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
      v39 = v75;
    }

    else
    {
      sub_20E0486F4(v35, v78, &qword_27C8639D0, &unk_20E33C230);
      v38 = v14;
      if (v37(v35 + v36, 1, v14) == 1)
      {
        sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v58 = &qword_27C867F30;
        v59 = &qword_20E33B000;
        v60 = v35;
LABEL_32:
        sub_20E04875C(v60, v58, v59);
LABEL_35:
        sub_20E195C24(v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_20E195C24(v77, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        goto LABEL_36;
      }

      sub_20E195B54(v35 + v36, v17, type metadata accessor for TranscriptProtoStatementID);
      v39 = v75;
      if (*v78 != *v17)
      {
        goto LABEL_29;
      }

      v40 = *(v78 + 16);
      v41 = *(v17 + 2);
      if (v40)
      {
        if (!v41 || (*(v78 + 8) != *(v17 + 1) || v40 != v41) && (sub_20E322D60() & 1) == 0)
        {
LABEL_29:
          sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
          v58 = &qword_27C8639D0;
          v59 = &unk_20E33C230;
          v60 = v35;
          goto LABEL_32;
        }
      }

      else if (v41)
      {
        goto LABEL_29;
      }

      v42 = *(v14 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v43 = v78;
      v44 = sub_20E322850();
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v43, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
      if ((v44 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v45 = v11;
    v46 = *(v76 + 20);
    v47 = *(v70 + 48);
    v48 = v26;
    v49 = v69;
    sub_20E0486F4(&v77[v46], v69, &qword_27C868260, &unk_20E33C3D0);
    sub_20E0486F4(&v48[v46], v49 + v47, &qword_27C868260, &unk_20E33C3D0);
    v50 = *v64;
    v51 = v66;
    if ((*v64)(v49, 1, v66) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_34;
      }

      sub_20E04875C(v49, &qword_27C868260, &unk_20E33C3D0);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
    }

    else
    {
      sub_20E0486F4(v49, v45, &qword_27C868260, &unk_20E33C3D0);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_20E195C24(v45, type metadata accessor for ContextProtoRetrievedContext);
LABEL_34:
        sub_20E04875C(v49, &qword_27C868268, &qword_20E33B2F8);
        v26 = v65;
        goto LABEL_35;
      }

      v52 = v68;
      sub_20E195B54(v49 + v47, v68, type metadata accessor for ContextProtoRetrievedContext);
      v53 = static ContextProtoRetrievedContext.== infix(_:_:)(v45, v52);
      sub_20E195C24(v52, type metadata accessor for ContextProtoRetrievedContext);
      sub_20E195C24(v45, type metadata accessor for ContextProtoRetrievedContext);
      sub_20E04875C(v49, &qword_27C868260, &unk_20E33C3D0);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v54 = *(v76 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v55 = v77;
    v56 = sub_20E322850();
    sub_20E195C24(v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    sub_20E195C24(v55, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (v56)
    {
      v33 = v73 + v62;
      v32 = v74 + v62;
      v57 = v39 == 1;
      v30 = v39 - 1;
      v29 = v77;
      if (!v57)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14EC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v175 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C70, &qword_20E323F68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v174 = &v155 - v10;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F80, &qword_20E33B050);
  v11 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v177 = &v155 - v12;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v179 = *(matched - 8);
  v13 = *(v179 + 64);
  MEMORY[0x28223BE20](matched);
  v180 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C68, &qword_20E323F60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v182 = &v155 - v17;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F88, &qword_20E33B058);
  v18 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v186 = &v155 - v19;
  v193 = type metadata accessor for ContextProtoEntityMatch(0);
  v187 = *(v193 - 1);
  v20 = *(v187 + 64);
  v21 = MEMORY[0x28223BE20](v193);
  v23 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v155 - v24;
  v189 = type metadata accessor for ToolKitProtoTypedValue(0);
  v26 = *(v189 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v189);
  v183 = (&v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v184 = (&v155 - v31);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v32 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v190 = &v155 - v33;
  v195 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v34 = *(v195 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v195);
  v197 = (&v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868018, &unk_20E33C430);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v196 = &v155 - v39;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868020, &qword_20E33B0D0);
  v40 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v198 = &v155 - v41;
  v199 = type metadata accessor for TranscriptProtoStatementID(0);
  v42 = *(v199 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v199);
  v201 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v192 = &v155 - v47;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v48 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v50 = &v155 - v49;
  v200 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v51 = *(*(v200 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v200);
  v203 = &v155 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v202 = &v155 - v55;
  v56 = *(a1 + 16);
  if (v56 != *(a2 + 16))
  {
LABEL_121:
    v150 = 0;
    return v150 & 1;
  }

  if (!v56 || a1 == a2)
  {
    v150 = 1;
    return v150 & 1;
  }

  v159 = v4;
  v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v173 = a1 + v57;
  v171 = a2 + v57;
  v58 = 0;
  v170 = (v42 + 48);
  v168 = (v34 + 48);
  v165 = (v26 + 48);
  v162 = (v179 + 48);
  v158 = (v5 + 48);
  v172 = *(v54 + 72);
  v59 = v202;
  v60 = v199;
  v178 = v56;
  v164 = v23;
  v167 = v50;
  v166 = v25;
  while (1)
  {
    v61 = v172 * v58;
    result = sub_20E195BBC(v173 + v172 * v58, v59, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    if (v58 == v178)
    {
      break;
    }

    v179 = v58;
    v63 = v203;
    sub_20E195BBC(v171 + v61, v203, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    v64 = *(v194 + 48);
    sub_20E0486F4(v59, v50, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v63, &v50[v64], &qword_27C8639D0, &unk_20E33C230);
    v65 = *v170;
    if ((*v170)(v50, 1, v60) == 1)
    {
      if (v65(&v50[v64], 1, v60) != 1)
      {
        goto LABEL_103;
      }

      sub_20E04875C(v50, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v66 = v192;
      sub_20E0486F4(v50, v192, &qword_27C8639D0, &unk_20E33C230);
      if (v65(&v50[v64], 1, v60) == 1)
      {
        sub_20E195C24(v66, type metadata accessor for TranscriptProtoStatementID);
        v59 = v202;
LABEL_103:
        v151 = &qword_27C867F30;
        v152 = &qword_20E33B000;
        v153 = v50;
        goto LABEL_119;
      }

      v67 = &v50[v64];
      v68 = v201;
      sub_20E195B54(v67, v201, type metadata accessor for TranscriptProtoStatementID);
      if (*v66 != *v68)
      {
        goto LABEL_100;
      }

      v69 = *(v66 + 16);
      v70 = *(v201 + 16);
      if (v69)
      {
        if (!v70 || (*(v66 + 8) != *(v201 + 8) || v69 != v70) && (sub_20E322D60() & 1) == 0)
        {
LABEL_100:
          sub_20E195C24(v201, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v66, type metadata accessor for TranscriptProtoStatementID);
          sub_20E04875C(v50, &qword_27C8639D0, &unk_20E33C230);
          v59 = v202;
          goto LABEL_120;
        }
      }

      else if (v70)
      {
        goto LABEL_100;
      }

      v71 = *(v199 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v72 = v201;
      LOBYTE(v71) = sub_20E322850();
      sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v192, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v50, &qword_27C8639D0, &unk_20E33C230);
      v59 = v202;
      if ((v71 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v73 = *(v200 + 20);
    v74 = *(v191 + 48);
    v75 = v59;
    v76 = v59 + v73;
    v77 = v198;
    sub_20E0486F4(v76, v198, &qword_27C868018, &unk_20E33C430);
    sub_20E0486F4(v203 + v73, v77 + v74, &qword_27C868018, &unk_20E33C430);
    v78 = *v168;
    v79 = v195;
    if ((*v168)(v77, 1, v195) == 1)
    {
      if (v78(v77 + v74, 1, v79) != 1)
      {
        goto LABEL_105;
      }

      sub_20E04875C(v77, &qword_27C868018, &unk_20E33C430);
      v80 = v167;
    }

    else
    {
      v81 = v196;
      sub_20E0486F4(v77, v196, &qword_27C868018, &unk_20E33C430);
      if (v78(v77 + v74, 1, v79) == 1)
      {
        sub_20E195C24(v81, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_105:
        sub_20E04875C(v77, &qword_27C868020, &qword_20E33B0D0);
        v59 = v75;
LABEL_120:
        sub_20E195C24(v203, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
        sub_20E195C24(v59, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
        goto LABEL_121;
      }

      v82 = v197;
      sub_20E195B54(v77 + v74, v197, type metadata accessor for ContextProtoSpanMatchedEntity);
      v83 = *(v79 + 20);
      v84 = *(v185 + 48);
      v85 = v190;
      sub_20E0486F4(v81 + v83, v190, &qword_27C863B18, &qword_20E323EB0);
      sub_20E0486F4(v82 + v83, v85 + v84, &qword_27C863B18, &qword_20E323EB0);
      v86 = *v165;
      v87 = v189;
      if ((*v165)(v85, 1, v189) == 1)
      {
        v88 = v86(v85 + v84, 1, v87) == 1;
        v89 = v85;
        v90 = v166;
        if (!v88)
        {
          goto LABEL_107;
        }

        result = sub_20E04875C(v89, &qword_27C863B18, &qword_20E323EB0);
        v59 = v202;
        v91 = v164;
        v92 = v196;
      }

      else
      {
        v93 = v184;
        sub_20E0486F4(v85, v184, &qword_27C863B18, &qword_20E323EB0);
        v94 = v86(v85 + v84, 1, v87);
        v95 = v85;
        v90 = v166;
        if (v94 == 1)
        {
          v154 = v95;
          sub_20E195C24(v93, type metadata accessor for ToolKitProtoTypedValue);
          v89 = v154;
LABEL_107:
          sub_20E04875C(v89, &qword_27C867ED8, &qword_20E33AFA8);
          v59 = v202;
LABEL_113:
          v92 = v196;
LABEL_118:
          sub_20E195C24(v197, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_20E195C24(v92, type metadata accessor for ContextProtoSpanMatchedEntity);
          v151 = &qword_27C868018;
          v152 = &unk_20E33C430;
          v153 = v198;
LABEL_119:
          sub_20E04875C(v153, v151, v152);
          goto LABEL_120;
        }

        v96 = v183;
        sub_20E195B54(v95 + v84, v183, type metadata accessor for ToolKitProtoTypedValue);
        v97 = *v93;
        v98 = *v96;
        if ((~*v93 & 0xF000000000000007) != 0)
        {
          v205 = *v93;
          if ((~v98 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v97);
            sub_20E047CF8(v98);
            sub_20E047CF8(v97);

            v59 = v202;
LABEL_111:
            sub_20E047CA8(v97);
            sub_20E047CA8(v98);
LABEL_112:
            sub_20E195C24(v183, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v184, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E04875C(v190, &qword_27C863B18, &qword_20E323EB0);
            goto LABEL_113;
          }

          v204 = v98;
          sub_20E047CF8(v97);
          sub_20E047CF8(v98);
          sub_20E047CF8(v97);
          v99 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v205, &v204);

          sub_20E047CA8(v97);
          v59 = v202;
          if ((v99 & 1) == 0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          sub_20E047CF8(*v93);
          sub_20E047CF8(v98);
          v59 = v202;
          if ((~v98 & 0xF000000000000007) != 0)
          {
            goto LABEL_111;
          }

          sub_20E047CA8(v97);
        }

        v100 = *(v189 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v101 = v184;
        v102 = v183;
        LOBYTE(v100) = sub_20E322850();
        sub_20E195C24(v102, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E195C24(v101, type metadata accessor for ToolKitProtoTypedValue);
        result = sub_20E04875C(v190, &qword_27C863B18, &qword_20E323EB0);
        v91 = v164;
        v92 = v196;
        if ((v100 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      v103 = *v92;
      v104 = *(*v92 + 16);
      v169 = *v197;
      if (v104 != *(v169 + 16))
      {
        goto LABEL_118;
      }

      if (v104 && v103 != v169)
      {
        v105 = 0;
        v106 = (*(v187 + 80) + 32) & ~*(v187 + 80);
        v161 = v103 + v106;
        v160 = v169 + v106;
        v157 = v103;
        v156 = v104;
        do
        {
          if (v105 >= *(v103 + 16))
          {
            goto LABEL_124;
          }

          v107 = v105;
          v108 = *(v187 + 72) * v105;
          result = sub_20E195BBC(v161 + v108, v90, type metadata accessor for ContextProtoEntityMatch);
          v109 = *(v169 + 16);
          v163 = v107;
          if (v107 >= v109)
          {
            goto LABEL_125;
          }

          sub_20E195BBC(v160 + v108, v91, type metadata accessor for ContextProtoEntityMatch);
          if ((*v90 != *v91 || *(v90 + 8) != *(v91 + 8)) && (sub_20E322D60() & 1) == 0 || (*(v90 + 16) != *(v91 + 16) || *(v90 + 24) != *(v91 + 24)) && (sub_20E322D60() & 1) == 0 || *(v90 + 32) != *(v91 + 32) || *(v90 + 40) != *(v91 + 40) || *(v90 + 48) != *(v91 + 48))
          {
            goto LABEL_117;
          }

          v110 = v193[12];
          v111 = *(v181 + 48);
          v112 = v186;
          sub_20E0486F4(v90 + v110, v186, &qword_27C863C68, &qword_20E323F60);
          sub_20E0486F4(v91 + v110, v112 + v111, &qword_27C863C68, &qword_20E323F60);
          v113 = *v162;
          v114 = matched;
          if ((*v162)(v112, 1, matched) == 1)
          {
            v88 = v113(v112 + v111, 1, v114) == 1;
            v115 = v112;
            if (!v88)
            {
              goto LABEL_109;
            }

            sub_20E04875C(v112, &qword_27C863C68, &qword_20E323F60);
            v92 = v196;
          }

          else
          {
            v116 = v182;
            sub_20E0486F4(v112, v182, &qword_27C863C68, &qword_20E323F60);
            if (v113(v112 + v111, 1, v114) == 1)
            {
              sub_20E195C24(v116, type metadata accessor for ContextProtoMatchProperties);
              v115 = v112;
LABEL_109:
              sub_20E04875C(v115, &qword_27C867F88, &qword_20E33B058);
              v92 = v196;
              goto LABEL_117;
            }

            v117 = v180;
            sub_20E195B54(v112 + v111, v180, type metadata accessor for ContextProtoMatchProperties);
            v118 = *(v117 + 8);
            if (*(v116 + 8))
            {
              v119 = matched;
              if (!*(v117 + 8))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (*v116 != *v117)
              {
                v118 = 1;
              }

              v119 = matched;
              if (v118)
              {
                goto LABEL_116;
              }
            }

            v120 = *(v117 + 24);
            if (*(v116 + 24))
            {
              if (!*(v117 + 24))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (*(v116 + 16) != *(v117 + 16))
              {
                v120 = 1;
              }

              if (v120)
              {
                goto LABEL_116;
              }
            }

            v121 = v117;
            v122 = *(v119 + 24);
            v123 = v116 + v122;
            v124 = *(v176 + 48);
            v125 = v177;
            sub_20E0486F4(v123, v177, &qword_27C863C70, &qword_20E323F68);
            sub_20E0486F4(v121 + v122, v125 + v124, &qword_27C863C70, &qword_20E323F68);
            v126 = *v158;
            v127 = v159;
            if ((*v158)(v125, 1, v159) == 1)
            {
              v88 = v126(v125 + v124, 1, v127) == 1;
              v116 = v182;
              v117 = v180;
              v128 = v125;
              if (!v88)
              {
                goto LABEL_115;
              }

              sub_20E04875C(v125, &qword_27C863C70, &qword_20E323F68);
            }

            else
            {
              v129 = v174;
              sub_20E0486F4(v125, v174, &qword_27C863C70, &qword_20E323F68);
              if (v126(v125 + v124, 1, v127) == 1)
              {
                sub_20E195C24(v129, type metadata accessor for ContextProtoAliasTypes);
                v128 = v125;
                v117 = v180;
                v116 = v182;
LABEL_115:
                sub_20E04875C(v128, &qword_27C867F80, &qword_20E33B050);
                goto LABEL_116;
              }

              v130 = v175;
              sub_20E195B54(v125 + v124, v175, type metadata accessor for ContextProtoAliasTypes);
              v131 = *v129;
              v132 = *v130;
              v133 = *(*v129 + 16);
              v134 = v180;
              v116 = v182;
              if (v133 != *(*v130 + 16))
              {
                goto LABEL_101;
              }

              if (v133 && v131 != v132)
              {
                v135 = (v131 + 32);
                v136 = (v132 + 32);
                while (*v135 == *v136)
                {
                  ++v135;
                  ++v136;
                  if (!--v133)
                  {
                    goto LABEL_77;
                  }
                }

LABEL_101:
                sub_20E195C24(v175, type metadata accessor for ContextProtoAliasTypes);
                sub_20E195C24(v129, type metadata accessor for ContextProtoAliasTypes);
                sub_20E04875C(v177, &qword_27C863C70, &qword_20E323F68);
                v117 = v134;
LABEL_116:
                sub_20E195C24(v117, type metadata accessor for ContextProtoMatchProperties);
                sub_20E195C24(v116, type metadata accessor for ContextProtoMatchProperties);
                sub_20E04875C(v186, &qword_27C863C68, &qword_20E323F60);
                v92 = v196;
                v59 = v202;
LABEL_117:
                sub_20E195C24(v91, type metadata accessor for ContextProtoEntityMatch);
                sub_20E195C24(v90, type metadata accessor for ContextProtoEntityMatch);
                goto LABEL_118;
              }

LABEL_77:
              v137 = *(v159 + 20);
              sub_20E3221C0();
              sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
              v138 = v175;
              LOBYTE(v137) = sub_20E322850();
              v116 = v182;
              sub_20E195C24(v138, type metadata accessor for ContextProtoAliasTypes);
              sub_20E195C24(v129, type metadata accessor for ContextProtoAliasTypes);
              sub_20E04875C(v177, &qword_27C863C70, &qword_20E323F68);
              v119 = matched;
              v117 = v134;
              if ((v137 & 1) == 0)
              {
                goto LABEL_116;
              }
            }

            v139 = *(v119 + 28);
            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
            LOBYTE(v139) = sub_20E322850();
            sub_20E195C24(v117, type metadata accessor for ContextProtoMatchProperties);
            sub_20E195C24(v116, type metadata accessor for ContextProtoMatchProperties);
            sub_20E04875C(v186, &qword_27C863C68, &qword_20E323F60);
            v92 = v196;
            v59 = v202;
            if ((v139 & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          if (*(v90 + 52) != *(v91 + 52) || (*(v90 + 56) != *(v91 + 56) || *(v90 + 64) != *(v91 + 64)) && (sub_20E322D60() & 1) == 0 || (*(v90 + 72) != *(v91 + 72) || *(v90 + 80) != *(v91 + 80)) && (sub_20E322D60() & 1) == 0)
          {
            goto LABEL_117;
          }

          v140 = v193[13];
          v141 = (v90 + v140);
          v142 = *(v90 + v140 + 8);
          v143 = (v91 + v140);
          v144 = v143[1];
          if (v142)
          {
            if (!v144 || (*v141 != *v143 || v142 != v144) && (sub_20E322D60() & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          else if (v144)
          {
            goto LABEL_117;
          }

          v145 = v193[14];
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          LOBYTE(v145) = sub_20E322850();
          sub_20E195C24(v91, type metadata accessor for ContextProtoEntityMatch);
          result = sub_20E195C24(v90, type metadata accessor for ContextProtoEntityMatch);
          v103 = v157;
          if ((v145 & 1) == 0)
          {
            goto LABEL_118;
          }

          v105 = v163 + 1;
        }

        while (v163 + 1 != v156);
      }

      v146 = *(v195 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v147 = v197;
      LOBYTE(v146) = sub_20E322850();
      sub_20E195C24(v147, type metadata accessor for ContextProtoSpanMatchedEntity);
      sub_20E195C24(v92, type metadata accessor for ContextProtoSpanMatchedEntity);
      sub_20E04875C(v198, &qword_27C868018, &unk_20E33C430);
      v80 = v167;
      if ((v146 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v50 = v80;
    v148 = *(v200 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v149 = v203;
    v150 = sub_20E322850();
    v59 = v202;
    sub_20E195C24(v149, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    sub_20E195C24(v59, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    if (v150)
    {
      v58 = v179 + 1;
      v60 = v199;
      if (v179 + 1 != v178)
      {
        continue;
      }
    }

    return v150 & 1;
  }

  __break(1u);
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_20E150768(uint64_t a1, uint64_t a2)
{
  v173 = type metadata accessor for TranscriptProtoStatementID(0);
  v179 = *(v173 - 8);
  v4 = *(v179 + 64);
  MEMORY[0x28223BE20](v173);
  v174 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v163 = (&v142 - v8);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v9 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v171 = &v142 - v10;
  v11 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v170 = (&v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v160 = &v142 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  v18 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v172 = &v142 - v19;
  v175 = type metadata accessor for ToolKitProtoTypedValue(0);
  v20 = *(v175 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v175);
  v166 = (&v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v167 = (&v142 - v25);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v26 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v176 = &v142 - v27;
  v28 = type metadata accessor for TranscriptProtoCandidate(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v183 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v182 = &v142 - v34;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  v35 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v37 = &v142 - v36;
  v184 = type metadata accessor for TranscriptProtoParameter(0);
  v180 = *(v184 - 8);
  v38 = *(v180 + 64);
  v39 = MEMORY[0x28223BE20](v184);
  v41 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v142 - v42;
  v44 = type metadata accessor for TranscriptProtoParameterSet(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v181 = (&v142 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = MEMORY[0x28223BE20](v46);
  v177 = &v142 - v50;
  v51 = *(a1 + 16);
  if (v51 != *(a2 + 16))
  {
LABEL_96:
    v139 = 0;
    return v139 & 1;
  }

  if (!v51 || a1 == a2)
  {
    v139 = 1;
    return v139 & 1;
  }

  v162 = v28;
  v147 = v48;
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = a1 + v52;
  v151 = a2 + v52;
  v156 = (v29 + 48);
  v149 = (v20 + 48);
  v148 = (v12 + 48);
  v54 = 0;
  v144 = (v179 + 48);
  v55 = *(v49 + 72);
  v56 = v173;
  v57 = v182;
  v58 = v177;
  v150 = v11;
  v159 = v51;
  v146 = a1 + v52;
  v145 = v55;
  while (1)
  {
    v59 = v55 * v54;
    result = sub_20E195BBC(v53 + v55 * v54, v58, type metadata accessor for TranscriptProtoParameterSet);
    if (v54 == v159)
    {
      break;
    }

    v61 = v151 + v59;
    v62 = v181;
    result = sub_20E195BBC(v61, v181, type metadata accessor for TranscriptProtoParameterSet);
    v63 = *v58;
    v64 = *(*v58 + 16);
    v179 = *v62;
    if (v64 != *(v179 + 16))
    {
LABEL_95:
      sub_20E195C24(v181, type metadata accessor for TranscriptProtoParameterSet);
      sub_20E195C24(v177, type metadata accessor for TranscriptProtoParameterSet);
      goto LABEL_96;
    }

    v65 = v56;
    if (v64 && v63 != v179)
    {
      v66 = 0;
      v67 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v158 = v63 + v67;
      v157 = v179 + v67;
      v143 = v54;
      v161 = v41;
      v155 = v43;
      v152 = v37;
      v154 = v63;
      v153 = v64;
      while (v66 < *(v63 + 16))
      {
        v68 = *(v180 + 72) * v66;
        result = sub_20E195BBC(v158 + v68, v43, type metadata accessor for TranscriptProtoParameter);
        if (v66 >= *(v179 + 16))
        {
          goto LABEL_99;
        }

        sub_20E195BBC(v157 + v68, v41, type metadata accessor for TranscriptProtoParameter);
        if ((*v43 != *v41 || *(v43 + 1) != *(v41 + 1)) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_94;
        }

        v69 = v41[24];
        if (v43[24])
        {
          if (!v41[24])
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (*(v43 + 2) != *(v41 + 2))
          {
            v69 = 1;
          }

          if (v69)
          {
            goto LABEL_94;
          }
        }

        v169 = v66;
        v70 = *(v184 + 24);
        v71 = *(v178 + 48);
        sub_20E0486F4(&v43[v70], v37, &qword_27C863B28, &unk_20E33C3E0);
        sub_20E0486F4(&v41[v70], &v37[v71], &qword_27C863B28, &unk_20E33C3E0);
        v72 = v162;
        v73 = *v156;
        if ((*v156)(v37, 1, v162) == 1)
        {
          if (v73(&v37[v71], 1, v72) != 1)
          {
            goto LABEL_78;
          }

          sub_20E04875C(v37, &qword_27C863B28, &unk_20E33C3E0);
          v41 = v161;
          v43 = v155;
          v74 = v169;
        }

        else
        {
          sub_20E0486F4(v37, v57, &qword_27C863B28, &unk_20E33C3E0);
          if (v73(&v37[v71], 1, v72) == 1)
          {
            sub_20E195C24(v57, type metadata accessor for TranscriptProtoCandidate);
LABEL_78:
            sub_20E04875C(v37, &qword_27C868250, &qword_20E33B2F0);
            v41 = v161;
            goto LABEL_93;
          }

          v75 = v37;
          v76 = &v37[v71];
          v77 = v183;
          sub_20E195B54(v76, v183, type metadata accessor for TranscriptProtoCandidate);
          v78 = v72[5];
          v79 = *(v168 + 48);
          v80 = v176;
          sub_20E0486F4(&v57[v78], v176, &qword_27C863B18, &qword_20E323EB0);
          sub_20E0486F4(v77 + v78, v80 + v79, &qword_27C863B18, &qword_20E323EB0);
          v81 = *v149;
          v82 = v175;
          if ((*v149)(v80, 1, v175) == 1)
          {
            v83 = v81(v80 + v79, 1, v82) == 1;
            v84 = v80;
            if (!v83)
            {
              goto LABEL_82;
            }

            sub_20E04875C(v80, &qword_27C863B18, &qword_20E323EB0);
            v57 = v182;
            v85 = v183;
            v37 = v75;
            v86 = v162;
            v41 = v161;
          }

          else
          {
            v87 = v167;
            sub_20E0486F4(v80, v167, &qword_27C863B18, &qword_20E323EB0);
            if (v81(v80 + v79, 1, v82) == 1)
            {
              sub_20E195C24(v87, type metadata accessor for ToolKitProtoTypedValue);
              v84 = v80;
LABEL_82:
              sub_20E04875C(v84, &qword_27C867ED8, &qword_20E33AFA8);
              v57 = v182;
              v37 = v75;
              v41 = v161;
              goto LABEL_91;
            }

            v88 = v166;
            sub_20E195B54(v80 + v79, v166, type metadata accessor for ToolKitProtoTypedValue);
            v89 = *v87;
            v90 = *v88;
            if ((~*v87 & 0xF000000000000007) != 0)
            {
              v186 = *v87;
              v57 = v182;
              v37 = v75;
              if ((~v90 & 0xF000000000000007) == 0)
              {
                sub_20E047CF8(v89);
                sub_20E047CF8(v90);
                sub_20E047CF8(v89);

                v41 = v161;
LABEL_88:
                sub_20E047CA8(v89);
                sub_20E047CA8(v90);
                v57 = v182;
LABEL_89:
                sub_20E195C24(v166, type metadata accessor for ToolKitProtoTypedValue);
                sub_20E195C24(v167, type metadata accessor for ToolKitProtoTypedValue);
                v140 = &qword_27C863B18;
                v141 = &qword_20E323EB0;
                v117 = v80;
                goto LABEL_90;
              }

              v185 = v90;
              sub_20E047CF8(v89);
              sub_20E047CF8(v90);
              sub_20E047CF8(v89);
              v91 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v186, &v185);

              sub_20E047CA8(v89);
              v41 = v161;
              if ((v91 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {
              sub_20E047CF8(*v87);
              sub_20E047CF8(v90);
              v37 = v75;
              v41 = v161;
              if ((~v90 & 0xF000000000000007) != 0)
              {
                goto LABEL_88;
              }

              sub_20E047CA8(v89);
              v57 = v182;
            }

            v92 = *(v175 + 20);
            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
            v93 = v166;
            v94 = v167;
            v95 = sub_20E322850();
            sub_20E195C24(v93, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v94, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E04875C(v176, &qword_27C863B18, &qword_20E323EB0);
            v86 = v162;
            v85 = v183;
            if ((v95 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (*v57 != *v85)
          {
            goto LABEL_92;
          }

          v96 = v86[6];
          v97 = *(v165 + 48);
          v98 = v172;
          sub_20E0486F4(&v57[v96], v172, &qword_27C863B20, &unk_20E33C290);
          sub_20E0486F4(&v85[v96], v98 + v97, &qword_27C863B20, &unk_20E33C290);
          v99 = *v148;
          v100 = v150;
          if ((*v148)(v98, 1, v150) == 1)
          {
            v101 = v99(v98 + v97, 1, v100);
            v37 = v152;
            v85 = v183;
            if (v101 != 1)
            {
              goto LABEL_84;
            }

            sub_20E04875C(v98, &qword_27C863B20, &unk_20E33C290);
            v41 = v161;
            v65 = v173;
          }

          else
          {
            v102 = v160;
            sub_20E0486F4(v98, v160, &qword_27C863B20, &unk_20E33C290);
            if (v99(v98 + v97, 1, v100) == 1)
            {
              sub_20E195C24(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              v57 = v182;
              v85 = v183;
              v37 = v152;
LABEL_84:
              sub_20E04875C(v98, &qword_27C868278, &qword_20E33B308);
              v41 = v161;
              goto LABEL_92;
            }

            v103 = v98 + v97;
            v104 = v170;
            sub_20E195B54(v103, v170, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v105 = *(v104 + 9);
            v37 = v152;
            if (*(v102 + 9))
            {
              v41 = v161;
              v65 = v173;
              if ((*(v104 + 9) & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v41 = v161;
              v65 = v173;
              if (*(v104 + 9))
              {
                goto LABEL_80;
              }

              v106 = *v102;
              v107 = *v170;
              v108 = *(v170 + 8);
              if (*(v102 + 8))
              {
                if (v106)
                {
                  if ((v170[1] & 1) == 0 || !v107)
                  {
                    goto LABEL_80;
                  }
                }

                else if ((v170[1] & 1) == 0 || v107)
                {
                  goto LABEL_80;
                }
              }

              else if ((v170[1] & 1) != 0 || v106 != v107)
              {
LABEL_80:
                sub_20E195C24(v170, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_20E195C24(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_20E04875C(v172, &qword_27C863B20, &unk_20E33C290);
                v57 = v182;
                goto LABEL_91;
              }
            }

            v109 = *(v150 + 20);
            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
            v110 = v170;
            v111 = sub_20E322850();
            sub_20E195C24(v110, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_20E195C24(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_20E04875C(v172, &qword_27C863B20, &unk_20E33C290);
            v57 = v182;
            v85 = v183;
            if ((v111 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v112 = v86[7];
          v113 = *(v164 + 48);
          v114 = &v57[v112];
          v115 = v171;
          sub_20E0486F4(v114, v171, &qword_27C8639D0, &unk_20E33C230);
          sub_20E0486F4(&v85[v112], v115 + v113, &qword_27C8639D0, &unk_20E33C230);
          v116 = *v144;
          if ((*v144)(v115, 1, v65) == 1)
          {
            v83 = v116(v115 + v113, 1, v65) == 1;
            v117 = v115;
            v57 = v182;
            v37 = v152;
            if (!v83)
            {
              goto LABEL_86;
            }

            sub_20E04875C(v117, &qword_27C8639D0, &unk_20E33C230);
            v85 = v183;
          }

          else
          {
            v118 = v86;
            v119 = v65;
            v120 = v163;
            sub_20E0486F4(v115, v163, &qword_27C8639D0, &unk_20E33C230);
            v121 = v119;
            if (v116(v115 + v113, 1, v119) == 1)
            {
              sub_20E195C24(v120, type metadata accessor for TranscriptProtoStatementID);
              v117 = v115;
              v57 = v182;
              v37 = v152;
LABEL_86:
              v140 = &qword_27C867F30;
              v141 = &qword_20E33B000;
LABEL_90:
              sub_20E04875C(v117, v140, v141);
LABEL_91:
              v85 = v183;
LABEL_92:
              sub_20E195C24(v85, type metadata accessor for TranscriptProtoCandidate);
              sub_20E195C24(v57, type metadata accessor for TranscriptProtoCandidate);
              sub_20E04875C(v37, &qword_27C863B28, &unk_20E33C3E0);
LABEL_93:
              v43 = v155;
LABEL_94:
              sub_20E195C24(v41, type metadata accessor for TranscriptProtoParameter);
              sub_20E195C24(v43, type metadata accessor for TranscriptProtoParameter);
              goto LABEL_95;
            }

            v122 = v115 + v113;
            v123 = v174;
            sub_20E195B54(v122, v174, type metadata accessor for TranscriptProtoStatementID);
            v57 = v182;
            v124 = v120;
            if (*v120 != *v123)
            {
              goto LABEL_79;
            }

            v65 = v119;
            v86 = v118;
            v125 = *(v124 + 16);
            v126 = *(v174 + 16);
            if (v125)
            {
              if (!v126 || (*(v124 + 8) != *(v174 + 8) || v125 != v126) && (sub_20E322D60() & 1) == 0)
              {
LABEL_79:
                sub_20E195C24(v174, type metadata accessor for TranscriptProtoStatementID);
                sub_20E195C24(v124, type metadata accessor for TranscriptProtoStatementID);
                sub_20E04875C(v171, &qword_27C8639D0, &unk_20E33C230);
                v85 = v183;
                v37 = v152;
                goto LABEL_92;
              }
            }

            else if (v126)
            {
              goto LABEL_79;
            }

            v127 = *(v121 + 24);
            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
            v128 = v57;
            v129 = v174;
            v130 = sub_20E322850();
            v131 = v129;
            v57 = v128;
            sub_20E195C24(v131, type metadata accessor for TranscriptProtoStatementID);
            sub_20E195C24(v163, type metadata accessor for TranscriptProtoStatementID);
            sub_20E04875C(v171, &qword_27C8639D0, &unk_20E33C230);
            v85 = v183;
            v37 = v152;
            if ((v130 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v132 = v86[8];
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v133 = sub_20E322850();
          sub_20E195C24(v85, type metadata accessor for TranscriptProtoCandidate);
          sub_20E195C24(v57, type metadata accessor for TranscriptProtoCandidate);
          sub_20E04875C(v37, &qword_27C863B28, &unk_20E33C3E0);
          v54 = v143;
          v43 = v155;
          v74 = v169;
          if ((v133 & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        v134 = *(v184 + 28);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v135 = sub_20E322850();
        sub_20E195C24(v41, type metadata accessor for TranscriptProtoParameter);
        result = sub_20E195C24(v43, type metadata accessor for TranscriptProtoParameter);
        v63 = v154;
        if ((v135 & 1) == 0)
        {
          goto LABEL_95;
        }

        v66 = v74 + 1;
        if (v153 == v66)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      break;
    }

LABEL_73:
    v56 = v65;
    v136 = v54;
    v137 = *(v147 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v58 = v177;
    v138 = v181;
    v139 = sub_20E322850();
    sub_20E195C24(v138, type metadata accessor for TranscriptProtoParameterSet);
    sub_20E195C24(v58, type metadata accessor for TranscriptProtoParameterSet);
    if (v139)
    {
      v54 = v136 + 1;
      v53 = v146;
      v55 = v145;
      if (v136 + 1 != v159)
      {
        continue;
      }
    }

    return v139 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E151DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v45 - v14;
  v50 = type metadata accessor for TranscriptProtoParameter(0);
  v16 = *(*(v50 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v50);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_29:
    v44 = 0;
    return v44 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v46 = v8;
  v47 = v12;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v54 = a2 + v24;
  v26 = (v5 + 48);
  v48 = *(v20 + 72);
  v49 = v4;
  v27 = v50;
  while (1)
  {
    v53 = v23;
    result = sub_20E195BBC(v25, v22, type metadata accessor for TranscriptProtoParameter);
    if (!v53)
    {
      break;
    }

    sub_20E195BBC(v54, v19, type metadata accessor for TranscriptProtoParameter);
    v29 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
    if (!v29 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }

    v30 = v19[24];
    if (v22[24])
    {
      if (!v19[24])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v22 + 2) != *(v19 + 2))
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_28;
      }
    }

    v52 = v25;
    v31 = *(v27 + 24);
    v32 = *(v51 + 48);
    sub_20E0486F4(&v22[v31], v15, &qword_27C863B28, &unk_20E33C3E0);
    sub_20E0486F4(&v19[v31], &v15[v32], &qword_27C863B28, &unk_20E33C3E0);
    v33 = *v26;
    v34 = v15;
    v35 = v15;
    v36 = v49;
    if ((*v26)(v34, 1, v49) == 1)
    {
      if (v33((v35 + v32), 1, v36) != 1)
      {
        goto LABEL_27;
      }

      sub_20E04875C(v35, &qword_27C863B28, &unk_20E33C3E0);
      v15 = v35;
      v37 = v52;
    }

    else
    {
      v38 = v47;
      sub_20E0486F4(v35, v47, &qword_27C863B28, &unk_20E33C3E0);
      if (v33((v35 + v32), 1, v36) == 1)
      {
        sub_20E195C24(v38, type metadata accessor for TranscriptProtoCandidate);
LABEL_27:
        sub_20E04875C(v35, &qword_27C868250, &qword_20E33B2F0);
LABEL_28:
        sub_20E195C24(v19, type metadata accessor for TranscriptProtoParameter);
        sub_20E195C24(v22, type metadata accessor for TranscriptProtoParameter);
        goto LABEL_29;
      }

      v39 = v26;
      v40 = v46;
      sub_20E195B54(v35 + v32, v46, type metadata accessor for TranscriptProtoCandidate);
      v41 = _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v38, v40);
      v42 = v40;
      v26 = v39;
      sub_20E195C24(v42, type metadata accessor for TranscriptProtoCandidate);
      sub_20E195C24(v38, type metadata accessor for TranscriptProtoCandidate);
      sub_20E04875C(v35, &qword_27C863B28, &unk_20E33C3E0);
      v27 = v50;
      v15 = v35;
      v37 = v52;
      if ((v41 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v43 = *(v27 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v44 = sub_20E322850();
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoParameter);
    sub_20E195C24(v22, type metadata accessor for TranscriptProtoParameter);
    if (v44)
    {
      v54 += v48;
      v25 = v37 + v48;
      v23 = v53 - 1;
      if (v53 != 1)
      {
        continue;
      }
    }

    return v44 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E152338(uint64_t a1, uint64_t a2)
{
  v150 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v150 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v150);
  v154 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = &v123 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v10 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v158 = &v123 - v11;
  v153 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v12 = *(v153 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v153);
  v149 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v142 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v152 = &v123 - v20;
  v156 = type metadata accessor for ToolKitProtoTypedValue(0);
  v21 = *(v156 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v156);
  v143 = (&v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v147 = (&v123 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v157 = &v123 - v29;
  v30 = type metadata accessor for TranscriptProtoCandidate(0);
  v151 = *(v30 - 8);
  v31 = *(v151 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v123 - v35;
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v38 = *(*(Results - 8) + 64);
  v39 = MEMORY[0x28223BE20](Results);
  v155 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v148 = &v123 - v43;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
LABEL_76:
    v119 = 0;
    return v119 & 1;
  }

  if (!v44 || a1 == a2)
  {
    v119 = 1;
    return v119 & 1;
  }

  v128 = v41;
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = a1 + v45;
  v47 = 0;
  v129 = a2 + v45;
  v141 = (v21 + 48);
  v136 = (v12 + 48);
  v134 = (v4 + 48);
  v48 = *(v42 + 72);
  v49 = v148;
  v133 = v27;
  v159 = v30;
  v139 = v44;
  v127 = v46;
  v126 = v48;
  while (1)
  {
    v50 = v48 * v47;
    result = sub_20E195BBC(v46 + v48 * v47, v49, type metadata accessor for TranscriptProtoQueryResults);
    if (v47 == v139)
    {
      break;
    }

    v135 = v47;
    v52 = v129 + v50;
    v53 = v155;
    result = sub_20E195BBC(v52, v155, type metadata accessor for TranscriptProtoQueryResults);
    v54 = *v49;
    v55 = *v53;
    v56 = *(*v49 + 16);
    if (v56 != *(*v53 + 16))
    {
LABEL_75:
      sub_20E195C24(v155, type metadata accessor for TranscriptProtoQueryResults);
      sub_20E195C24(v148, type metadata accessor for TranscriptProtoQueryResults);
      goto LABEL_76;
    }

    v57 = v18;
    if (v56 && v54 != v55)
    {
      v58 = 0;
      v59 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v138 = v54 + v59;
      v137 = v55 + v59;
      v125 = v36;
      v144 = v57;
      v124 = v34;
      v132 = v54;
      v131 = v55;
      v130 = v56;
      while (v58 < *(v54 + 16))
      {
        v60 = *(v151 + 72) * v58;
        result = sub_20E195BBC(v138 + v60, v36, type metadata accessor for TranscriptProtoCandidate);
        if (v58 >= *(v55 + 16))
        {
          goto LABEL_79;
        }

        v140 = v58;
        sub_20E195BBC(v137 + v60, v34, type metadata accessor for TranscriptProtoCandidate);
        v61 = *(v159 + 20);
        v62 = *(v27 + 48);
        v63 = v157;
        sub_20E0486F4(&v36[v61], v157, &qword_27C863B18, &qword_20E323EB0);
        sub_20E0486F4(&v34[v61], v63 + v62, &qword_27C863B18, &qword_20E323EB0);
        v64 = *v141;
        v65 = v156;
        if ((*v141)(v63, 1, v156) == 1)
        {
          if (v64(v63 + v62, 1, v65) != 1)
          {
            goto LABEL_65;
          }

          sub_20E04875C(v63, &qword_27C863B18, &qword_20E323EB0);
          v67 = v158;
          v66 = v159;
          v68 = v144;
        }

        else
        {
          v69 = v65;
          v70 = v147;
          sub_20E0486F4(v63, v147, &qword_27C863B18, &qword_20E323EB0);
          if (v64(v63 + v62, 1, v69) == 1)
          {
            sub_20E195C24(v70, type metadata accessor for ToolKitProtoTypedValue);
LABEL_65:
            v121 = &qword_27C867ED8;
            v122 = &qword_20E33AFA8;
            v87 = v63;
LABEL_73:
            sub_20E04875C(v87, v121, v122);
            goto LABEL_74;
          }

          v71 = v143;
          sub_20E195B54(v63 + v62, v143, type metadata accessor for ToolKitProtoTypedValue);
          v72 = *v70;
          v73 = *v71;
          if ((~*v70 & 0xF000000000000007) != 0)
          {
            v161 = *v70;
            v74 = v156;
            if ((~v73 & 0xF000000000000007) == 0)
            {
              sub_20E047CF8(v72);
              sub_20E047CF8(v73);
              sub_20E047CF8(v72);

LABEL_71:
              sub_20E047CA8(v72);
              sub_20E047CA8(v73);
LABEL_72:
              sub_20E195C24(v71, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v147, type metadata accessor for ToolKitProtoTypedValue);
              v121 = &qword_27C863B18;
              v122 = &qword_20E323EB0;
              v87 = v157;
              goto LABEL_73;
            }

            v160 = v73;
            sub_20E047CF8(v72);
            sub_20E047CF8(v73);
            sub_20E047CF8(v72);
            v75 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v161, &v160);

            sub_20E047CA8(v72);
            if ((v75 & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_20E047CF8(v72);
            sub_20E047CF8(v73);
            if ((~v73 & 0xF000000000000007) != 0)
            {
              goto LABEL_71;
            }

            sub_20E047CA8(v72);
            v74 = v156;
          }

          v76 = *(v74 + 20);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v77 = v147;
          LOBYTE(v76) = sub_20E322850();
          sub_20E195C24(v71, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v77, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E04875C(v157, &qword_27C863B18, &qword_20E323EB0);
          v67 = v158;
          v66 = v159;
          v68 = v144;
          if ((v76 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*v36 != *v34)
        {
          goto LABEL_74;
        }

        v78 = *(v66 + 24);
        v79 = *(v68 + 48);
        v80 = &v36[v78];
        v81 = v36;
        v82 = v34;
        v83 = v152;
        sub_20E0486F4(v80, v152, &qword_27C863B20, &unk_20E33C290);
        sub_20E0486F4(&v82[v78], v83 + v79, &qword_27C863B20, &unk_20E33C290);
        v84 = *v136;
        v85 = v153;
        if ((*v136)(v83, 1, v153) == 1)
        {
          v86 = v84(v83 + v79, 1, v85) == 1;
          v87 = v83;
          v34 = v82;
          v36 = v81;
          if (!v86)
          {
            goto LABEL_67;
          }

          sub_20E04875C(v87, &qword_27C863B20, &unk_20E33C290);
          v88 = v67;
          v89 = v159;
        }

        else
        {
          v90 = v67;
          v91 = v142;
          sub_20E0486F4(v83, v142, &qword_27C863B20, &unk_20E33C290);
          if (v84(v83 + v79, 1, v85) == 1)
          {
            sub_20E195C24(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v87 = v83;
            v34 = v124;
            v36 = v125;
LABEL_67:
            v121 = &qword_27C868278;
            v122 = &qword_20E33B308;
            goto LABEL_73;
          }

          v92 = v83 + v79;
          v93 = v149;
          sub_20E195B54(v92, v149, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          v94 = *(v93 + 9);
          if (*(v91 + 9))
          {
            v95 = v153;
            if ((*(v93 + 9) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v95 = v153;
            if (*(v93 + 9))
            {
              goto LABEL_63;
            }

            v96 = *v91;
            v97 = *v149;
            v98 = *(v149 + 8);
            if (*(v91 + 8))
            {
              if (v96)
              {
                if ((v149[1] & 1) == 0 || !v97)
                {
                  goto LABEL_63;
                }
              }

              else if ((v149[1] & 1) == 0 || v97)
              {
                goto LABEL_63;
              }
            }

            else if ((v149[1] & 1) != 0 || v96 != v97)
            {
LABEL_63:
              sub_20E195C24(v149, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_20E195C24(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_20E04875C(v152, &qword_27C863B20, &unk_20E33C290);
              v34 = v124;
              v36 = v125;
LABEL_74:
              sub_20E195C24(v34, type metadata accessor for TranscriptProtoCandidate);
              sub_20E195C24(v36, type metadata accessor for TranscriptProtoCandidate);
              goto LABEL_75;
            }
          }

          v99 = *(v95 + 20);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v100 = v149;
          LOBYTE(v99) = sub_20E322850();
          sub_20E195C24(v100, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_20E195C24(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_20E04875C(v152, &qword_27C863B20, &unk_20E33C290);
          v88 = v90;
          v34 = v124;
          v36 = v125;
          v89 = v159;
          if ((v99 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v101 = *(v89 + 28);
        v102 = *(v146 + 48);
        v103 = v158;
        sub_20E0486F4(&v36[v101], v88, &qword_27C8639D0, &unk_20E33C230);
        sub_20E0486F4(&v34[v101], v103 + v102, &qword_27C8639D0, &unk_20E33C230);
        v104 = *v134;
        v105 = v150;
        if ((*v134)(v103, 1, v150) == 1)
        {
          if (v104(v103 + v102, 1, v105) != 1)
          {
            goto LABEL_69;
          }

          sub_20E04875C(v103, &qword_27C8639D0, &unk_20E33C230);
          v106 = v159;
          v57 = v144;
        }

        else
        {
          v107 = v145;
          sub_20E0486F4(v103, v145, &qword_27C8639D0, &unk_20E33C230);
          if (v104(v103 + v102, 1, v105) == 1)
          {
            sub_20E195C24(v107, type metadata accessor for TranscriptProtoStatementID);
LABEL_69:
            v121 = &qword_27C867F30;
            v122 = &qword_20E33B000;
            v87 = v103;
            goto LABEL_73;
          }

          v108 = v103 + v102;
          v109 = v154;
          sub_20E195B54(v108, v154, type metadata accessor for TranscriptProtoStatementID);
          v110 = v144;
          if (*v107 != *v109)
          {
            goto LABEL_62;
          }

          v111 = *(v107 + 16);
          v112 = *(v154 + 16);
          if (v111)
          {
            if (!v112 || (*(v107 + 8) != *(v154 + 8) || v111 != v112) && (sub_20E322D60() & 1) == 0)
            {
LABEL_62:
              sub_20E195C24(v154, type metadata accessor for TranscriptProtoStatementID);
              sub_20E195C24(v107, type metadata accessor for TranscriptProtoStatementID);
              v121 = &qword_27C8639D0;
              v122 = &unk_20E33C230;
              v87 = v158;
              goto LABEL_73;
            }
          }

          else if (v112)
          {
            goto LABEL_62;
          }

          v113 = *(v150 + 24);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v114 = v154;
          LOBYTE(v113) = sub_20E322850();
          v57 = v110;
          sub_20E195C24(v114, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v145, type metadata accessor for TranscriptProtoStatementID);
          sub_20E04875C(v158, &qword_27C8639D0, &unk_20E33C230);
          v106 = v159;
          if ((v113 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v115 = *(v106 + 32);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        LOBYTE(v115) = sub_20E322850();
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoCandidate);
        result = sub_20E195C24(v36, type metadata accessor for TranscriptProtoCandidate);
        v27 = v133;
        v54 = v132;
        v55 = v131;
        if ((v115 & 1) == 0)
        {
          goto LABEL_75;
        }

        v58 = v140 + 1;
        if (v130 == v140 + 1)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      break;
    }

LABEL_58:
    v18 = v57;
    v116 = *(v128 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v117 = v148;
    v118 = v155;
    v119 = sub_20E322850();
    v120 = v118;
    v49 = v117;
    sub_20E195C24(v120, type metadata accessor for TranscriptProtoQueryResults);
    sub_20E195C24(v117, type metadata accessor for TranscriptProtoQueryResults);
    if (v119)
    {
      v47 = v135 + 1;
      v46 = v127;
      v48 = v126;
      if (v135 + 1 != v139)
      {
        continue;
      }
    }

    return v119 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1534D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_20E195BBC(v21, v18, a4);
        sub_20E195BBC(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_20E195C24(v15, a6);
        sub_20E195C24(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_20E153678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868610, &qword_20E33B620);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoShimParameter(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27C865B18;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for TranscriptProtoShimParameter);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for TranscriptProtoShimParameter);
    v29 = *(v47 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E326398);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E326398);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E326398);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_20E0486F4(v14, v42, v31, &qword_20E326398);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoShimParameterEnum);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_20E04875C(v14, &qword_27C868610, &qword_20E33B620);
LABEL_17:
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoShimParameter);
        sub_20E195C24(v21, type metadata accessor for TranscriptProtoShimParameter);
        goto LABEL_18;
      }

      v35 = v43;
      sub_20E195B54(&v14[v29], v43, type metadata accessor for TranscriptProtoShimParameterEnum);
      v36 = static TranscriptProtoShimParameterEnum.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_20E195C24(v34, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_20E04875C(v14, v31, &qword_20E326398);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoShimParameter);
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoShimParameter);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E153BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C0, &qword_20E33B350);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoUIType(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27C865DC0;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for TranscriptProtoUIType);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for TranscriptProtoUIType);
    v29 = *(v47 + 48);
    sub_20E0486F4(v21, v14, v27, &unk_20E33C3A0);
    sub_20E0486F4(v18, &v14[v29], v27, &unk_20E33C3A0);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &unk_20E33C3A0);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_20E0486F4(v14, v42, v31, &unk_20E33C3A0);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoUitype);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_20E04875C(v14, &qword_27C8682C0, &qword_20E33B350);
LABEL_17:
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoUIType);
        sub_20E195C24(v21, type metadata accessor for TranscriptProtoUIType);
        goto LABEL_18;
      }

      v35 = v43;
      sub_20E195B54(&v14[v29], v43, type metadata accessor for TranscriptProtoUitype);
      v36 = static TranscriptProtoUitype.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoUitype);
      sub_20E195C24(v34, type metadata accessor for TranscriptProtoUitype);
      sub_20E04875C(v14, v31, &unk_20E33C3A0);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoUIType);
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoUIType);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1540D0(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v56);
  v64 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = (&v54 - v7);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F8, &qword_20E3420B0);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v54 - v10;
  v68 = type metadata accessor for TranscriptProtoLabel(0);
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v68);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v54 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B0, &qword_20E33B340);
  v17 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - v18;
  v60 = type metadata accessor for TranscriptProtoUILabel(0);
  v19 = *(*(v60 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v60);
  v69 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_26:
    v50 = 0;
    return v50 & 1;
  }

  if (!v25 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v29 = (v11 + 48);
  v30 = *(v22 + 72);
  v31 = v59;
  v63 = &v54 - v23;
  v54 = v30;
  v55 = (v11 + 48);
  while (1)
  {
    v66 = v27;
    result = sub_20E195BBC(v27, v24, type metadata accessor for TranscriptProtoUILabel);
    if (!v25)
    {
      break;
    }

    v65 = v25;
    v33 = v69;
    sub_20E195BBC(v28, v69, type metadata accessor for TranscriptProtoUILabel);
    v34 = *(v62 + 48);
    sub_20E0486F4(v24, v31, &qword_27C8682A8, &qword_20E33B338);
    sub_20E0486F4(v33, v31 + v34, &qword_27C8682A8, &qword_20E33B338);
    v35 = *v29;
    if ((*v29)(v31, 1, v68) == 1)
    {
      if (v35(v31 + v34, 1, v68) != 1)
      {
        goto LABEL_22;
      }

      sub_20E04875C(v31, &qword_27C8682A8, &qword_20E33B338);
    }

    else
    {
      sub_20E0486F4(v31, v67, &qword_27C8682A8, &qword_20E33B338);
      if (v35(v31 + v34, 1, v68) == 1)
      {
        sub_20E195C24(v67, type metadata accessor for TranscriptProtoLabel);
LABEL_22:
        v52 = &qword_27C8682B0;
        v53 = &qword_20E33B340;
        goto LABEL_24;
      }

      v36 = v61;
      sub_20E195B54(v31 + v34, v61, type metadata accessor for TranscriptProtoLabel);
      v37 = v57;
      v38 = *(v58 + 48);
      sub_20E195BBC(v67, v57, type metadata accessor for TranscriptProtoLabel);
      sub_20E195BBC(v36, v37 + v38, type metadata accessor for TranscriptProtoLabel);
      sub_20E195B54(v37, v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      v39 = v37 + v38;
      v40 = v64;
      sub_20E195B54(v39, v64, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      if ((*v8 != *v40 || v8[1] != v40[1]) && (sub_20E322D60() & 1) == 0 || (v8[2] != v64[2] || v8[3] != v64[3]) && (sub_20E322D60() & 1) == 0)
      {
        sub_20E195C24(v64, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_20E195C24(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_20E195C24(v61, type metadata accessor for TranscriptProtoLabel);
        sub_20E195C24(v67, type metadata accessor for TranscriptProtoLabel);
        v52 = &qword_27C8682A8;
        v53 = &qword_20E33B338;
LABEL_24:
        sub_20E04875C(v31, v52, v53);
LABEL_25:
        sub_20E195C24(v69, type metadata accessor for TranscriptProtoUILabel);
        sub_20E195C24(v24, type metadata accessor for TranscriptProtoUILabel);
        goto LABEL_26;
      }

      v41 = *(v56 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v42 = v8;
      v43 = v64;
      v44 = sub_20E322850();
      v45 = v43;
      v8 = v42;
      v24 = v63;
      v46 = v61;
      v47 = v67;
      v31 = v59;
      sub_20E195C24(v45, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_20E195C24(v46, type metadata accessor for TranscriptProtoLabel);
      sub_20E195C24(v47, type metadata accessor for TranscriptProtoLabel);
      sub_20E04875C(v31, &qword_27C8682A8, &qword_20E33B338);
      v30 = v54;
      v29 = v55;
      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v48 = *(v60 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v49 = v69;
    v50 = sub_20E322850();
    v51 = v49;
    v24 = v63;
    sub_20E195C24(v51, type metadata accessor for TranscriptProtoUILabel);
    sub_20E195C24(v24, type metadata accessor for TranscriptProtoUILabel);
    if (v50)
    {
      v25 = v65 - 1;
      v28 += v30;
      v27 = v66 + v30;
      if (v65 != 1)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E154880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868370, &qword_20E33B3E0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27C865D18;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for TranscriptProtoVisualOutput);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for TranscriptProtoVisualOutput);
    v29 = *(v47 + 48);
    sub_20E0486F4(v21, v14, v27, &unk_20E33C370);
    sub_20E0486F4(v18, &v14[v29], v27, &unk_20E33C370);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &unk_20E33C370);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_20E0486F4(v14, v42, v31, &unk_20E33C370);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoVisualOutputType);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_20E04875C(v14, &qword_27C868370, &qword_20E33B3E0);
LABEL_17:
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoVisualOutput);
        sub_20E195C24(v21, type metadata accessor for TranscriptProtoVisualOutput);
        goto LABEL_18;
      }

      v35 = v43;
      sub_20E195B54(&v14[v29], v43, type metadata accessor for TranscriptProtoVisualOutputType);
      v36 = static TranscriptProtoVisualOutputType.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_20E195C24(v34, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_20E04875C(v14, v31, &unk_20E33C370);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoVisualOutput);
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoVisualOutput);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E154E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_20E195BBC(v14, v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195BBC(v15, v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if ((sub_20E155054(*v11, *v8) & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v18 = sub_20E322850();
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_20E155054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_20E195BBC(v14, v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195BBC(v15, v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_20E322D60() & 1) == 0 || *(v11 + 2) != *(v8 + 2) || *(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5))
      {
        break;
      }

      v18 = *(v4 + 36);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v19 = sub_20E322850();
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    goto LABEL_19;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_20E1552F8(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = (&v42 - v9);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v12 = &v42 - v11;
  v48 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v13 = *(*(v48 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v48);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v19 = (&v42 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_29:
    v38 = 0;
    return v38 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v42 = *(v17 + 72);
  v43 = (v4 + 48);
  v46 = (&v42 - v18);
  while (1)
  {
    result = sub_20E195BBC(v22, v19, type metadata accessor for TranscriptProtoVariableSetter);
    if (!v20)
    {
      break;
    }

    sub_20E195BBC(v23, v16, type metadata accessor for TranscriptProtoVariableSetter);
    v25 = *(v48 + 20);
    v26 = *(v45 + 48);
    sub_20E0486F4(v19 + v25, v12, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v16 + v25, &v12[v26], &qword_27C863B18, &qword_20E323EB0);
    v27 = *v43;
    if ((*v43)(v12, 1, v49) == 1)
    {
      if (v27(&v12[v26], 1, v49) != 1)
      {
        goto LABEL_23;
      }

      sub_20E04875C(v12, &qword_27C863B18, &qword_20E323EB0);
      v28 = v46;
    }

    else
    {
      sub_20E0486F4(v12, v47, &qword_27C863B18, &qword_20E323EB0);
      if (v27(&v12[v26], 1, v49) == 1)
      {
        sub_20E195C24(v47, type metadata accessor for ToolKitProtoTypedValue);
LABEL_23:
        v40 = &qword_27C867ED8;
        v41 = &qword_20E33AFA8;
LABEL_27:
        sub_20E04875C(v12, v40, v41);
        v28 = v46;
LABEL_28:
        sub_20E195C24(v16, type metadata accessor for TranscriptProtoVariableSetter);
        sub_20E195C24(v28, type metadata accessor for TranscriptProtoVariableSetter);
        goto LABEL_29;
      }

      v29 = &v12[v26];
      v30 = v44;
      sub_20E195B54(v29, v44, type metadata accessor for ToolKitProtoTypedValue);
      v31 = *v47;
      v32 = *v30;
      if ((~*v47 & 0xF000000000000007) != 0)
      {
        v51 = *v47;
        if ((~v32 & 0xF000000000000007) == 0)
        {
          sub_20E047CF8(v31);
          sub_20E047CF8(v32);
          sub_20E047CF8(v31);

LABEL_25:
          sub_20E047CA8(v31);
          sub_20E047CA8(v32);
LABEL_26:
          sub_20E195C24(v44, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v47, type metadata accessor for ToolKitProtoTypedValue);
          v40 = &qword_27C863B18;
          v41 = &qword_20E323EB0;
          goto LABEL_27;
        }

        v50 = v32;
        sub_20E047CF8(v31);
        sub_20E047CF8(v32);
        sub_20E047CF8(v31);
        v33 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v51, &v50);

        sub_20E047CA8(v31);
        if ((v33 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_20E047CF8(*v47);
        sub_20E047CF8(v32);
        if ((~v32 & 0xF000000000000007) != 0)
        {
          goto LABEL_25;
        }

        sub_20E047CA8(v31);
      }

      v34 = *(v49 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v35 = v47;
      v36 = v44;
      LOBYTE(v34) = sub_20E322850();
      sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v12, &qword_27C863B18, &qword_20E323EB0);
      v28 = v46;
      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if ((sub_20E15CB48(*v28, *v16) & 1) == 0)
    {
      goto LABEL_28;
    }

    v37 = *(v48 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v16, type metadata accessor for TranscriptProtoVariableSetter);
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoVariableSetter);
    if (v38)
    {
      v23 += v42;
      v22 += v42;
      v39 = v20-- == 1;
      v19 = v46;
      if (!v39)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1559DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v35 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_43:
    v34 = 0;
    return v34 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v36 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_20E195BBC(v15 + v16 * v13, v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if (v13 == v12)
    {
      break;
    }

    result = sub_20E195BBC(v36 + v16 * v13, v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    v18 = *v11;
    v19 = *v8;
    v20 = *(*v11 + 16);
    if (v20 != *(*v8 + 16))
    {
      goto LABEL_42;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v24 = (v18 + 40);
      v25 = (v19 + 40);
      while (v20)
      {
        result = *(v24 - 1);
        if (result != *(v25 - 1) || *v24 != *v25)
        {
          result = sub_20E322D60();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v24 += 2;
        v25 += 2;
        if (!--v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

LABEL_12:
    v22 = v11[3];
    v23 = v8[3];
    if (v22)
    {
      if (!v23 || (v11[2] != v8[2] || v22 != v23) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v23)
    {
      goto LABEL_42;
    }

    v27 = v11[1];
    v28 = v8[1];
    v29 = *(v27 + 16);
    if (v29 != *(v28 + 16))
    {
      goto LABEL_42;
    }

    if (v29 && v27 != v28)
    {
      v30 = (v27 + 40);
      v31 = (v28 + 40);
      while (1)
      {
        v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
        if (!v32 && (sub_20E322D60() & 1) == 0)
        {
          break;
        }

        v30 += 2;
        v31 += 2;
        if (!--v29)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      sub_20E195C24(v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_20E195C24(v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      goto LABEL_43;
    }

LABEL_38:
    v33 = *(v4 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v34 = sub_20E322850();
    sub_20E195C24(v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if ((v34 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E155D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB8, &qword_20E33AF88);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27C867EB0;
  v42 = v18;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
    v29 = *(v49 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E346320);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E346320);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoRuntimeRequirement;
        goto LABEL_17;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E346320);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_20E0486F4(v14, v44, v31, &qword_20E346320);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_20E195C24(v43, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v39 = type metadata accessor for ToolKitProtoRuntimeRequirementKind;
        v40 = v34;
LABEL_17:
        sub_20E195C24(v40, v39);
        sub_20E04875C(v14, &qword_27C867EB8, &qword_20E33AF88);
        goto LABEL_19;
      }

      v35 = v45;
      sub_20E195B54(&v14[v29], v45, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v36 = static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_20E04875C(v14, v31, &qword_20E346320);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1562C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA8, &qword_20E33AF80);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27C867EA0;
  v42 = v18;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    v29 = *(v49 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E33AF78);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E33AF78);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoSystemTypeProtocol;
        goto LABEL_17;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E33AF78);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_20E0486F4(v14, v44, v31, &qword_20E33AF78);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_20E195C24(v43, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v39 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind;
        v40 = v34;
LABEL_17:
        sub_20E195C24(v40, v39);
        sub_20E04875C(v14, &qword_27C867EA8, &qword_20E33AF80);
        goto LABEL_19;
      }

      v35 = v45;
      sub_20E195B54(&v14[v29], v45, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v36 = static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_20E04875C(v14, v31, &qword_20E33AF78);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E156844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = (&v44 - v10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v11 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v13 = &v44 - v12;
  v14 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v22 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v49 = (v5 + 48);
  v50 = v4;
  v26 = *(v19 + 72);
  v44 = v13;
  v45 = v26;
  v46 = v14;
  v47 = v18;
  v48 = (&v44 - v20);
  while (1)
  {
    sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (*v21 != *v18)
    {
      goto LABEL_26;
    }

    v27 = *(v14 + 20);
    v28 = *(v52 + 48);
    sub_20E0486F4(v21 + v27, v13, &qword_27C863C48, &qword_20E323F30);
    sub_20E0486F4(&v18[v27], &v13[v28], &qword_27C863C48, &qword_20E323F30);
    v29 = v50;
    v30 = *v49;
    if ((*v49)(v13, 1, v50) == 1)
    {
      if (v30(&v13[v28], 1, v29) == 1)
      {
        sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
        v18 = v47;
        v21 = v48;
        goto LABEL_16;
      }

      sub_20E195C24(v47, type metadata accessor for ToolKitProtoCoercionDefinition);
      v41 = v48;
      v42 = type metadata accessor for ToolKitProtoCoercionDefinition;
LABEL_22:
      sub_20E195C24(v41, v42);
      sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
      goto LABEL_27;
    }

    sub_20E0486F4(v13, v53, &qword_27C863C48, &qword_20E323F30);
    if (v30(&v13[v28], 1, v29) == 1)
    {
      sub_20E195C24(v47, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_20E195C24(v48, type metadata accessor for ToolKitProtoCoercionDefinition);
      v42 = type metadata accessor for ToolKitProtoTypeInstance;
      v41 = v53;
      goto LABEL_22;
    }

    v31 = v51;
    sub_20E195B54(&v13[v28], v51, type metadata accessor for ToolKitProtoTypeInstance);
    v32 = *v53;
    v33 = *v31;
    if ((~*v53 & 0xF000000000000007) == 0)
    {
      sub_20E047CF8(*v53);
      sub_20E047CF8(v33);
      if ((~v33 & 0xF000000000000007) != 0)
      {
        goto LABEL_24;
      }

      sub_20E047CA8(v32);
      goto LABEL_15;
    }

    v55 = *v53;
    if ((~v33 & 0xF000000000000007) == 0)
    {
      break;
    }

    v54 = v33;
    sub_20E047CF8(v32);
    sub_20E047CF8(v33);
    sub_20E047CF8(v32);
    v34 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v55, &v54);

    sub_20E047CA8(v32);
    if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_15:
    v35 = *(v50 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v36 = v53;
    v37 = v51;
    v38 = sub_20E322850();
    sub_20E195C24(v37, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
    v18 = v47;
    v21 = v48;
    if ((v38 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    v14 = v46;
    v39 = *(v46 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v40 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (v40)
    {
      v13 = v44;
      v25 += v45;
      v24 += v45;
      if (--v22)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  sub_20E047CF8(v32);
  sub_20E047CF8(v33);
  sub_20E047CF8(v32);

LABEL_24:
  sub_20E047CA8(v32);
  sub_20E047CA8(v33);
LABEL_25:
  sub_20E195C24(v51, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v53, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
  v18 = v47;
  v21 = v48;
LABEL_26:
  sub_20E195C24(v18, type metadata accessor for ToolKitProtoCoercionDefinition);
  sub_20E195C24(v21, type metadata accessor for ToolKitProtoCoercionDefinition);
LABEL_27:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_20E156F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_20E195BBC(v14, v11, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E195BBC(v15, v8, type metadata accessor for ContextProtoSampleInvocation);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_20E322D60() & 1) == 0 || *(v11 + 4) != *(v8 + 4))
      {
        break;
      }

      v18 = *(v4 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v19 = sub_20E322850();
      sub_20E195C24(v8, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E195C24(v11, type metadata accessor for ContextProtoSampleInvocation);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_20E195C24(v8, type metadata accessor for ContextProtoSampleInvocation);
    sub_20E195C24(v11, type metadata accessor for ContextProtoSampleInvocation);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_20E1571C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_20E195BBC(v14, v11, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195BBC(v15, v8, type metadata accessor for ToolKitProtoTypeInstance);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v11);
    sub_20E047CF8(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v21 = sub_20E322850();
    sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeInstance);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_20E047CF8(v17);
    sub_20E047CF8(v18);
    sub_20E047CF8(v17);
    v19 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v24, &v23);

    sub_20E047CA8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v17);
  sub_20E047CF8(v18);
  sub_20E047CF8(v17);

LABEL_15:
  sub_20E047CA8(v17);
  sub_20E047CA8(v18);
LABEL_16:
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20E1574D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_20E195BBC(v14, v11, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_20E195BBC(v15, v8, type metadata accessor for ToolKitProtoRestrictionContext);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v11);
    sub_20E047CF8(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v21 = sub_20E322850();
    sub_20E195C24(v8, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoRestrictionContext);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_20E047CF8(v17);
    sub_20E047CF8(v18);
    sub_20E047CF8(v17);
    v19 = _s23LighthouseDataProcessor34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(&v24, &v23);

    sub_20E047CA8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v17);
  sub_20E047CF8(v18);
  sub_20E047CF8(v17);

LABEL_15:
  sub_20E047CA8(v17);
  sub_20E047CA8(v18);
LABEL_16:
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoRestrictionContext);
  sub_20E195C24(v11, type metadata accessor for ToolKitProtoRestrictionContext);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20E1577E4(uint64_t a1, uint64_t a2)
{
  v56[3] = *MEMORY[0x277D85DE8];
  v54 = type metadata accessor for DillSessionEvent(0);
  v4 = *(*(v54 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v54);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v48 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v52 = 0;
      v53 = v15;
      while (1)
      {
        sub_20E195BBC(v13, v10, type metadata accessor for DillSessionEvent);
        sub_20E195BBC(v14, v7, type metadata accessor for DillSessionEvent);
        if (*v10 != *v7)
        {
LABEL_70:
          sub_20E195C24(v7, type metadata accessor for DillSessionEvent);
          sub_20E195C24(v10, type metadata accessor for DillSessionEvent);
          goto LABEL_71;
        }

        v16 = *(v10 + 1);
        v17 = *(v10 + 2);
        v18 = *(v7 + 1);
        v19 = *(v7 + 2);
        if (v17 >> 60 == 15)
        {
          if (v19 >> 60 != 15)
          {
            goto LABEL_66;
          }

          sub_20E047C8C(*(v10 + 1), *(v10 + 2));
          sub_20E047C8C(v18, v19);
          goto LABEL_62;
        }

        if (v19 >> 60 == 15)
        {
LABEL_66:
          sub_20E047C8C(*(v10 + 1), *(v10 + 2));
          sub_20E047C8C(v18, v19);
          sub_20E047D10(v16, v17);
          v44 = v18;
          v45 = v19;
LABEL_69:
          sub_20E047D10(v44, v45);
          goto LABEL_70;
        }

        v20 = v17 >> 62;
        v21 = v19 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v30 = *(v16 + 16);
            v29 = *(v16 + 24);
            v27 = __OFSUB__(v29, v30);
            v22 = v29 - v30;
            if (v27)
            {
              goto LABEL_75;
            }

            goto LABEL_26;
          }

          v22 = 0;
          if (v21 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_76;
          }

          v22 = v22;
          if (v21 <= 1)
          {
LABEL_27:
            if (v21)
            {
              LODWORD(v28) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
              }

              v28 = v28;
            }

            else
            {
              v28 = BYTE6(v19);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_67;
          }

LABEL_38:
          sub_20E047C8C(*(v10 + 1), *(v10 + 2));
          sub_20E047C8C(v18, v19);
          v23 = v18;
          v24 = v19;
LABEL_39:
          sub_20E047D10(v23, v24);
          goto LABEL_62;
        }

        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        v27 = __OFSUB__(v25, v26);
        v28 = v25 - v26;
        if (v27)
        {
          goto LABEL_74;
        }

LABEL_33:
        if (v22 != v28)
        {
LABEL_67:
          sub_20E047C8C(*(v10 + 1), *(v10 + 2));
          sub_20E047C8C(v18, v19);
          sub_20E047D10(v18, v19);
LABEL_68:
          v44 = v16;
          v45 = v17;
          goto LABEL_69;
        }

        if (v22 < 1)
        {
          goto LABEL_38;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v31 = *(v16 + 16);
            v49 = *(v16 + 24);
            v50 = v31;
            v51 = v16;
            sub_20E047C8C(v16, v17);
            sub_20E047C8C(v18, v19);
            sub_20E047C8C(v18, v19);
            v32 = sub_20E321EC0();
            if (v32)
            {
              v33 = v32;
              v34 = sub_20E321EE0();
              v35 = v50;
              if (__OFSUB__(v50, v34))
              {
                goto LABEL_79;
              }

              v48 = v50 - v34 + v33;
            }

            else
            {
              v48 = 0;
              v35 = v50;
            }

            if (__OFSUB__(v49, v35))
            {
              goto LABEL_78;
            }

            sub_20E321ED0();
            v40 = v48;
            goto LABEL_61;
          }

          memset(v56, 0, 14);
          sub_20E047C8C(v16, v17);
          sub_20E047C8C(v18, v19);
          sub_20E047C8C(v18, v19);
        }

        else
        {
          if (v20)
          {
            v50 = (v16 >> 32) - v16;
            if (v16 >> 32 < v16)
            {
              goto LABEL_77;
            }

            v51 = v16;
            sub_20E047C8C(v16, v17);
            sub_20E047C8C(v18, v19);
            sub_20E047C8C(v18, v19);
            v36 = sub_20E321EC0();
            if (v36)
            {
              v49 = v36;
              v37 = sub_20E321EE0();
              if (__OFSUB__(v16, v37))
              {
                goto LABEL_80;
              }

              v38 = v16 - v37 + v49;
            }

            else
            {
              v38 = 0;
            }

            sub_20E321ED0();
            v40 = v38;
LABEL_61:
            v41 = v52;
            sub_20E146020(v40, v18, v19, v56);
            v52 = v41;
            sub_20E047D10(v18, v19);
            sub_20E047D10(v18, v19);
            v16 = v51;
            if ((v56[0] & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_62;
          }

          v56[0] = *(v10 + 1);
          LOWORD(v56[1]) = v17;
          BYTE2(v56[1]) = BYTE2(v17);
          BYTE3(v56[1]) = BYTE3(v17);
          BYTE4(v56[1]) = BYTE4(v17);
          BYTE5(v56[1]) = BYTE5(v17);
          sub_20E047C8C(v16, v17);
          sub_20E047C8C(v18, v19);
          sub_20E047C8C(v18, v19);
        }

        v39 = v52;
        sub_20E146020(v56, v18, v19, &v55);
        v52 = v39;
        sub_20E047D10(v18, v19);
        sub_20E047D10(v18, v19);
        if (!v55)
        {
          goto LABEL_68;
        }

LABEL_62:
        sub_20E047D10(v16, v17);
        v42 = *(v54 + 24);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v43 = sub_20E322850();
        sub_20E195C24(v7, type metadata accessor for DillSessionEvent);
        sub_20E195C24(v10, type metadata accessor for DillSessionEvent);
        if (v43)
        {
          v14 += v53;
          v13 += v53;
          if (--v11)
          {
            continue;
          }
        }

        goto LABEL_72;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          sub_20E047C8C(0, 0xC000000000000000);
          sub_20E047C8C(0, 0xC000000000000000);
          v23 = 0;
          v24 = 0xC000000000000000;
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v21 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v43 = 1;
  }

  else
  {
LABEL_71:
    v43 = 0;
  }

LABEL_72:
  v46 = *MEMORY[0x277D85DE8];
  return v43 & 1;
}

uint64_t sub_20E157F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = (&v55 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_36:
    v54 = 0;
    return v54 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v54 = 1;
    return v54 & 1;
  }

  v69 = *(a1 + 16);
  v70 = v4;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = 0;
  v67 = v24;
  v68 = a2 + v30;
  v33 = *(v26 + 72);
  v66 = (&v55 - v27);
  v59 = v31;
  v60 = v25;
  v58 = v33;
  while (1)
  {
    v34 = v33 * v32;
    result = sub_20E195BBC(v31 + v33 * v32, v28, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v32 == v69)
    {
      __break(1u);
      goto LABEL_39;
    }

    result = sub_20E195BBC(v68 + v34, v24, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    v36 = *v28;
    v37 = *v24;
    v38 = *(v36 + 16);
    if (v38 != *(*v24 + 16))
    {
LABEL_35:
      sub_20E195C24(v67, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      sub_20E195C24(v66, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      goto LABEL_36;
    }

    if (v38 && v36 != v37)
    {
      break;
    }

LABEL_29:
    v53 = *(v60 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v28 = v66;
    v24 = v67;
    v54 = sub_20E322850();
    sub_20E195C24(v24, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v54)
    {
      ++v32;
      v33 = v58;
      v31 = v59;
      if (v32 != v69)
      {
        continue;
      }
    }

    return v54 & 1;
  }

  v39 = 0;
  v40 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v63 = v37 + v40;
  v64 = v36 + v40;
  v65 = v5;
  v61 = v19;
  v62 = v17;
  v56 = v36;
  v57 = v32;
  v55 = v38;
  while (v39 < *(v36 + 16))
  {
    v41 = *(v72 + 72) * v39;
    result = sub_20E195BBC(v64 + v41, v19, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    if (v39 >= *(v37 + 16))
    {
      goto LABEL_40;
    }

    sub_20E195BBC(v63 + v41, v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v42 = *v19;
    v43 = *v17;
    v44 = *(*v19 + 16);
    if (v44 != *(*v17 + 16))
    {
      goto LABEL_34;
    }

    if (v44 && v42 != v43)
    {
      v45 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v46 = v42 + v45;
      v47 = v43 + v45;
      v48 = *(v65 + 72);
      while (1)
      {
        sub_20E195BBC(v46, v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_20E195BBC(v47, v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        v49 = *v11 == *v9 && *(v11 + 1) == *(v9 + 1);
        if (!v49 && (sub_20E322D60() & 1) == 0 || *(v11 + 2) != *(v9 + 2) || *(v11 + 3) != *(v9 + 3) || *(v11 + 4) != *(v9 + 4) || *(v11 + 5) != *(v9 + 5))
        {
          break;
        }

        v50 = *(v70 + 36);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v51 = sub_20E322850();
        sub_20E195C24(v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        if ((v51 & 1) == 0)
        {
          goto LABEL_34;
        }

        v47 += v48;
        v46 += v48;
        if (!--v44)
        {
          goto LABEL_27;
        }
      }

      sub_20E195C24(v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
LABEL_34:
      sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      goto LABEL_35;
    }

LABEL_27:
    v52 = *(v71 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v19 = v61;
    v17 = v62;
    LOBYTE(v52) = sub_20E322850();
    sub_20E195C24(v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    result = sub_20E195C24(v19, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v5 = v65;
    v36 = v56;
    v32 = v57;
    if ((v52 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (++v39 == v55)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20E1586F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27C867E60;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    v29 = *(v47 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E33AF40);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E33AF40);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E33AF40);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_20E0486F4(v14, v42, v31, &qword_20E33AF40);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_20E04875C(v14, &qword_27C867E68, &qword_20E33AF48);
LABEL_17:
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        goto LABEL_18;
      }

      v35 = v43;
      sub_20E195B54(&v14[v29], v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v36 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_20E04875C(v14, v31, &qword_20E33AF40);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E158C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27C867E50;
  v42 = v18;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    v29 = *(v49 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E33AF30);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E33AF30);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoTypeDefinition.Version1;
        goto LABEL_17;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E33AF30);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_20E0486F4(v14, v44, v31, &qword_20E33AF30);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_20E195C24(v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v39 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind;
        v40 = v34;
LABEL_17:
        sub_20E195C24(v40, v39);
        sub_20E04875C(v14, &qword_27C867E58, &qword_20E33AF38);
        goto LABEL_19;
      }

      v35 = v45;
      sub_20E195B54(&v14[v29], v45, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v36 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV0deF12Version1KindO2eeoiySbAE_AEtFZ_0(v34, v35);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_20E04875C(v14, v31, &qword_20E33AF30);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1591A8(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  v4 = *(*(v35 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v36 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v10 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v34 = *(v7 + 72);
  while (1)
  {
    sub_20E195BBC(v12, v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v14 = v36;
    sub_20E195BBC(v13, v36, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v16 = *v9;
    v15 = *(v9 + 1);
    v17 = v9[16];
    v18 = *v14;
    v19 = *(v14 + 1);
    v20 = v14[16];
    if (v17 == 255)
    {
      if (v20 != 255)
      {
LABEL_26:
        sub_20E195904(*v9, *(v9 + 1), v9[16]);
        sub_20E195904(v18, v19, v20);
        sub_20E195924(v16, v15, v17);
        v28 = v18;
        v29 = v19;
        v30 = v20;
        goto LABEL_29;
      }

      LOBYTE(v17) = -1;
      sub_20E195904(*v9, *(v9 + 1), 255);
      sub_20E195904(v18, v19, 255);
      goto LABEL_19;
    }

    if (v20 == 255)
    {
      goto LABEL_26;
    }

    if (v17)
    {
      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v16 == v18 && v15 == v19)
      {
LABEL_18:
        sub_20E195904(*v9, *(v9 + 1), v9[16]);
        sub_20E195904(v16, v15, v20);
        sub_20E195904(v16, v15, v17);
        sub_20E19593C();
        sub_20E19593C();
      }

      else
      {
        v21 = *v9;
        v22 = *(v9 + 1);
        v33 = sub_20E322D60();
        sub_20E195904(v16, v15, v17);
        sub_20E195904(v18, v19, v20);
        sub_20E195904(v16, v15, v17);
        sub_20E19593C();
        sub_20E19593C();
        if ((v33 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_19:
      sub_20E195924(v16, v15, v17);
      goto LABEL_20;
    }

    if (v20)
    {
      break;
    }

    if (v16 == v18 && v15 == v19)
    {
      goto LABEL_18;
    }

    v26 = *v9;
    v27 = *(v9 + 1);
    v33 = sub_20E322D60();
    sub_20E195904(v16, v15, v17);
    sub_20E195904(v18, v19, v20);
    sub_20E195904(v16, v15, v17);
    sub_20E19593C();
    sub_20E19593C();
    sub_20E195924(v16, v15, v17);
    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    v23 = *(v35 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v24 = v36;
    v25 = sub_20E322850();
    sub_20E195C24(v24, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    sub_20E195C24(v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    if (v25)
    {
      v13 += v34;
      v12 += v34;
      if (--v10)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  sub_20E195904(*v9, *(v9 + 1), v9[16]);
  sub_20E195904(v18, v19, v20);
  sub_20E195904(v16, v15, v17);
  sub_20E19593C();
  sub_20E19593C();
LABEL_28:
  v28 = v16;
  v29 = v15;
  v30 = v17;
LABEL_29:
  sub_20E195924(v28, v29, v30);
LABEL_30:
  sub_20E195C24(v36, type metadata accessor for ToolKitProtoToolSummaryString.Component);
  sub_20E195C24(v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
LABEL_31:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_20E1596C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v28 = a3(0);
  v9 = *(*(v28 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v28);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v27 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_22:
    v25 = 0;
    return v25 & 1;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_20E195BBC(v18, v15, a5);
      sub_20E195BBC(v19, v12, a5);
      v21 = *v15 == *v12 && v15[1] == v12[1];
      if (!v21 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v22 = v15[3];
      v23 = v12[3];
      if (v22)
      {
        if (!v23 || (v15[2] != v12[2] || v22 != v23) && (sub_20E322D60() & 1) == 0)
        {
          break;
        }
      }

      else if (v23)
      {
        break;
      }

      v24 = *(v28 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v25 = sub_20E322850();
      sub_20E195C24(v12, a4);
      sub_20E195C24(v15, a4);
      if (v25)
      {
        v19 += v20;
        v18 += v20;
        if (--v16)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_20E195C24(v12, a4);
    sub_20E195C24(v15, a4);
    goto LABEL_22;
  }

  v25 = 1;
  return v25 & 1;
}