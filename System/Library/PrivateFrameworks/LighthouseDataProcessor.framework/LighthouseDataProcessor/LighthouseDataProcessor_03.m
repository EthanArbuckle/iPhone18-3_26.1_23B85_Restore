uint64_t sub_20E082B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_20E04875C(v28, &qword_27C863AC0, &qword_20E323C68);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoActionCancellation);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoActionCancellation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863AC0, &qword_20E323C68);
  }

  sub_20E0486F4(v28, v36, &qword_27C863AC0, &qword_20E323C68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863AC0, &qword_20E323C68);
    return sub_20E04875C(v36, &qword_27C863AC0, &qword_20E323C68);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoActionCancellation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863AC0, &qword_20E323C68);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0830F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868810, &qword_20E33B7C8);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v28, &qword_27C868810, &qword_20E33B7C8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868810, &qword_20E33B7C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868810, &qword_20E33B7C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868810, &qword_20E33B7C8);
    return sub_20E04875C(v36, &qword_27C868810, &qword_20E33B7C8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868810, &qword_20E33B7C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0836AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_20E04875C(v28, &qword_27C863F68, &unk_20E3461B0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemResponse);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863F68, &unk_20E3461B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863F68, &unk_20E3461B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863F68, &unk_20E3461B0);
    return sub_20E04875C(v36, &qword_27C863F68, &unk_20E3461B0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemResponse);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863F68, &unk_20E3461B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E083C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A98, &qword_20E323980);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_20E04875C(v28, &qword_27C863A98, &qword_20E323980);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoStatementResult);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoStatementResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863A98, &qword_20E323980);
  }

  sub_20E0486F4(v28, v36, &qword_27C863A98, &qword_20E323980);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863A98, &qword_20E323980);
    return sub_20E04875C(v36, &qword_27C863A98, &qword_20E323980);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoStatementResult);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863A98, &qword_20E323980);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoStatementResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E084224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868818, &qword_20E33B7D0);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_20E04875C(v28, &qword_27C868818, &qword_20E33B7D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868818, &qword_20E33B7D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868818, &qword_20E33B7D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868818, &qword_20E33B7D0);
    return sub_20E04875C(v36, &qword_27C868818, &qword_20E33B7D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868818, &qword_20E33B7D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0847E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_20E04875C(v28, &qword_27C868708, &qword_20E33B700);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E0486F4(v28, v36, &qword_27C868708, &qword_20E33B700);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868708, &qword_20E33B700);
    return sub_20E04875C(v36, &qword_27C868708, &qword_20E33B700);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868708, &qword_20E33B700);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E084D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_20E04875C(v28, &qword_27C863B98, &qword_20E323E80);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoToolResolution);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoToolResolution);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B98, &qword_20E323E80);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B98, &qword_20E323E80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B98, &qword_20E323E80);
    return sub_20E04875C(v36, &qword_27C863B98, &qword_20E323E80);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoToolResolution);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B98, &qword_20E323E80);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoToolResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E085358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868820, &qword_20E33B7D8);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_20E04875C(v28, &qword_27C868820, &qword_20E33B7D8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoUndoRedoRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoUndoRedoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868820, &qword_20E33B7D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868820, &qword_20E33B7D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868820, &qword_20E33B7D8);
    return sub_20E04875C(v36, &qword_27C868820, &qword_20E33B7D8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoUndoRedoRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868820, &qword_20E33B7D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E085914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868828, &qword_20E33B7E0);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_20E04875C(v28, &qword_27C868828, &qword_20E33B7E0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868828, &qword_20E33B7E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868828, &qword_20E33B7E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868828, &qword_20E33B7E0);
    return sub_20E04875C(v36, &qword_27C868828, &qword_20E33B7E0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868828, &qword_20E33B7E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E085ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C863F90, &unk_20E3461E0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863F90, &unk_20E3461E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863F90, &unk_20E3461E0);
    return sub_20E04875C(v36, &qword_27C863F90, &unk_20E3461E0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863F90, &unk_20E3461E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868830, &qword_20E33B7E8);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_20E04875C(v28, &qword_27C868830, &qword_20E33B7E8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExternalAgentRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExternalAgentRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868830, &qword_20E33B7E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868830, &qword_20E33B7E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868830, &qword_20E33B7E8);
    return sub_20E04875C(v36, &qword_27C868830, &qword_20E33B7E8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExternalAgentRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868830, &qword_20E33B7E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExternalAgentRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E086A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868838, &qword_20E33B7F0);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_20E04875C(v28, &qword_27C868838, &qword_20E33B7F0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoTypeConversionRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoTypeConversionRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868838, &qword_20E33B7F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868838, &qword_20E33B7F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868838, &qword_20E33B7F0);
    return sub_20E04875C(v36, &qword_27C868838, &qword_20E33B7F0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoTypeConversionRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868838, &qword_20E33B7F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoTypeConversionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E087004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868840, &qword_20E33B7F8);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_20E04875C(v28, &qword_27C868840, &qword_20E33B7F8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoTypeConversionResult);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoTypeConversionResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868840, &qword_20E33B7F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868840, &qword_20E33B7F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868840, &qword_20E33B7F8);
    return sub_20E04875C(v36, &qword_27C868840, &qword_20E33B7F8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoTypeConversionResult);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868840, &qword_20E33B7F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoTypeConversionResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0875C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v6 = *(DecorationResult - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationResult);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868848, &qword_20E33B800);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationResult;
  v30 = DecorationResult;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_20E04875C(v28, &qword_27C868848, &qword_20E33B800);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationResult);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868848, &qword_20E33B800);
  }

  sub_20E0486F4(v28, v36, &qword_27C868848, &qword_20E33B800);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868848, &qword_20E33B800);
    return sub_20E04875C(v36, &qword_27C868848, &qword_20E33B800);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationResult);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868848, &qword_20E33B800);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E087B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868850, &qword_20E33B808);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868850, &qword_20E33B808);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoSessionStart);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSessionStart);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868850, &qword_20E33B808);
  }

  sub_20E0486F4(v28, v36, &qword_27C868850, &qword_20E33B808);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868850, &qword_20E33B808);
    return sub_20E04875C(v36, &qword_27C868850, &qword_20E33B808);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoSessionStart);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868850, &qword_20E33B808);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSessionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08812C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868858, &qword_20E33B810);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v28, &qword_27C868858, &qword_20E33B810);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRecoverableError);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRecoverableError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868858, &qword_20E33B810);
  }

  sub_20E0486F4(v28, v36, &qword_27C868858, &qword_20E33B810);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868858, &qword_20E33B810);
    return sub_20E04875C(v36, &qword_27C868858, &qword_20E33B810);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRecoverableError);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868858, &qword_20E33B810);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRecoverableError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0886E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868860, &qword_20E33B818);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_20E04875C(v28, &qword_27C868860, &qword_20E33B818);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoContinuePlanning);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoContinuePlanning);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868860, &qword_20E33B818);
  }

  sub_20E0486F4(v28, v36, &qword_27C868860, &qword_20E33B818);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868860, &qword_20E33B818);
    return sub_20E04875C(v36, &qword_27C868860, &qword_20E33B818);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoContinuePlanning);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868860, &qword_20E33B818);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoContinuePlanning);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E088CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(DecorationPrePlannerResult - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868868, &qword_20E33B820);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResult;
  v30 = DecorationPrePlannerResult;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_20E04875C(v28, &qword_27C868868, &qword_20E33B820);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868868, &qword_20E33B820);
  }

  sub_20E0486F4(v28, v36, &qword_27C868868, &qword_20E33B820);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868868, &qword_20E33B820);
    return sub_20E04875C(v36, &qword_27C868868, &qword_20E33B820);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868868, &qword_20E33B820);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E089260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868870, &qword_20E33B828);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_20E04875C(v28, &qword_27C868870, &qword_20E33B828);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSkipStatement);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSkipStatement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868870, &qword_20E33B828);
  }

  sub_20E0486F4(v28, v36, &qword_27C868870, &qword_20E33B828);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868870, &qword_20E33B828);
    return sub_20E04875C(v36, &qword_27C868870, &qword_20E33B828);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSkipStatement);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868870, &qword_20E33B828);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSkipStatement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868878, &qword_20E33B830);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_20E04875C(v28, &qword_27C868878, &qword_20E33B830);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868878, &qword_20E33B830);
  }

  sub_20E0486F4(v28, v36, &qword_27C868878, &qword_20E33B830);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868878, &qword_20E33B830);
    return sub_20E04875C(v36, &qword_27C868878, &qword_20E33B830);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868878, &qword_20E33B830);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E089DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868880, &qword_20E33B838);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_20E04875C(v28, &qword_27C868880, &qword_20E33B838);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestAmendment);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestAmendment);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868880, &qword_20E33B838);
  }

  sub_20E0486F4(v28, v36, &qword_27C868880, &qword_20E33B838);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868880, &qword_20E33B838);
    return sub_20E04875C(v36, &qword_27C868880, &qword_20E33B838);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestAmendment);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868880, &qword_20E33B838);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestAmendment);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868888, &qword_20E33B840);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_20E04875C(v28, &qword_27C868888, &qword_20E33B840);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868888, &qword_20E33B840);
  }

  sub_20E0486F4(v28, v36, &qword_27C868888, &qword_20E33B840);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868888, &qword_20E33B840);
    return sub_20E04875C(v36, &qword_27C868888, &qword_20E33B840);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868888, &qword_20E33B840);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868890, &qword_20E33B848);
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
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_20E04875C(v28, &qword_27C868890, &qword_20E33B848);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868890, &qword_20E33B848);
  }

  sub_20E0486F4(v28, v36, &qword_27C868890, &qword_20E33B848);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868890, &qword_20E33B848);
    return sub_20E04875C(v36, &qword_27C868890, &qword_20E33B848);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868890, &qword_20E33B848);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E08AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v6 = *(matched - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](matched);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868898, &qword_20E33B850);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = matched;
  v30 = matched;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C863FC8, &unk_20E33C1D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_20E04875C(v28, &qword_27C868898, &qword_20E33B850);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSpanMatchRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSpanMatchRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868898, &qword_20E33B850);
  }

  sub_20E0486F4(v28, v36, &qword_27C868898, &qword_20E33B850);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868898, &qword_20E33B850);
    return sub_20E04875C(v36, &qword_27C868898, &qword_20E33B850);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSpanMatchRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868898, &qword_20E33B850);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSpanMatchRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C863FC8, &unk_20E33C1D0);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E08F0A0(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_10;
      case 2u:
        sub_20E08BB38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 3u:
        sub_20E08BD70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 4u:
        sub_20E08BFA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 5u:
        sub_20E08C1E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 6u:
        sub_20E08C418(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 7u:
        sub_20E08C650(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 8u:
        sub_20E08FDEC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 9u:
        sub_20E08CD20(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xAu:
        sub_20E08CF58(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xBu:
        sub_20E08D190(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xCu:
        sub_20E08D3C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xDu:
        sub_20E08D600(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xEu:
        sub_20E08D838(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xFu:
        sub_20E08DA70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x10u:
        sub_20E08DCA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x11u:
        sub_20E08DEE0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x12u:
        sub_20E08E118(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x13u:
        sub_20E08E350(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x14u:
        sub_20E08F2D8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x15u:
        sub_20E08E588(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x16u:
        sub_20E08E7C0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x17u:
        sub_20E08E9F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x18u:
        sub_20E08EC30(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x19u:
        sub_20E08EE68(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Au:
        sub_20E08F510(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Bu:
        sub_20E08F748(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Cu:
        sub_20E08F980(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Du:
        sub_20E090024(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Eu:
        sub_20E09025C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Fu:
        sub_20E090494(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x20u:
        sub_20E0906CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x21u:
        sub_20E090904(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x22u:
        sub_20E090B3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x23u:
        sub_20E090D74(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_10;
      case 0x24u:
        sub_20E090FAC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x25u:
        result = sub_20E08C888(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_20E08CAD4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E08FBB8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

LABEL_10:
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        break;
    }
  }

  v14 = v3 + *(type metadata accessor for TranscriptProtoPayload(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E08BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPlan);
    sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlan);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoAction);
    sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoAction);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08BFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoClientAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoClientAction);
    sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoClientAction);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v10 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryStep);
    sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryStep);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoVariableStep(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoVariableStep);
    sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoVariableStep);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSessionError);
    sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863FC8, &unk_20E33C1D0);
  v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863FC8, &unk_20E33C1D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 37)
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

uint64_t sub_20E08CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C863FC8, &unk_20E33C1D0);
  v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C863FC8, &unk_20E33C1D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 38)
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

uint64_t sub_20E08CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v10 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSafetyModeException);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoContextRetrieved);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionCancellation);
    sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionCancellation);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemResponse);
    sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemResponse);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementResult);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolResolution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoToolResolution);
    sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoToolResolution);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUndoRedoRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08EE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequest);
    sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v10 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionStart(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSessionStart);
    sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionStart);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRecoverableError);
    sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRecoverableError);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoContinuePlanning);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v10 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSkipStatement);
    sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSkipStatement);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0906CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 32)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 33)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestAmendment);
    sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestAmendment);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 34)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 35)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863FC8, &unk_20E33C1D0);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 36)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSpanMatchRequest);
    sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSpanMatchRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E091230(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20E322DE0();
  a1(0);
  sub_20E195B0C(a2, a3);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t (*sub_20E0912EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_20E091340(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E40, type metadata accessor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0913E0()
{
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload);

  return sub_20E322470();
}

uint64_t sub_20E09144C()
{
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload);

  return sub_20E322480();
}

uint64_t sub_20E0914E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642F8);
  __swift_project_value_buffer(v0, qword_27C8642F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "events";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTranscript.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for TranscriptProtoEvent(0);
          sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
          sub_20E322420();
          break;
        case 2:
          sub_20E3223D0();
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

uint64_t TranscriptProtoTranscript.traverse<A>(visitor:)()
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
    if (v0[4])
    {
      v5 = v0[3];
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0[2] + 16))
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent);
        sub_20E322570();
      }

      v6 = v0 + *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0919C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = 0;
  a2[4] = 0;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t (*sub_20E091A20(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_20E091A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E38, type metadata accessor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E091B14()
{
  sub_20E195B0C(&qword_27C866340, type metadata accessor for TranscriptProtoTranscript);

  return sub_20E322470();
}

uint64_t sub_20E091B80()
{
  sub_20E195B0C(&qword_27C866340, type metadata accessor for TranscriptProtoTranscript);

  return sub_20E322480();
}

uint64_t sub_20E091C1C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864310);
  __swift_project_value_buffer(v0, qword_27C864310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suspendingClockInstantNs";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "continuousClockInstantNs";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawBootSessionUUID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)()
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
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_20E3223E0();
      }
    }

    else if (result == 1)
    {
      sub_20E091F58();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_20E322410();
    }
  }
}

uint64_t sub_20E091F58()
{
  v0 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  sub_20E322150();
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570]);
  return sub_20E322430();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0920FC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_20E322560();
    }

    if (v3[1])
    {
      sub_20E322560();
    }

    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_20E322540();
    }

    v8 = v3 + *(type metadata accessor for TranscriptProtoTimepoint(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0920FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_20E322150();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C868778, &unk_20E33C000);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868778, &unk_20E33C000);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570]);
  sub_20E322580();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_20E092364@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_20E322150();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t (*sub_20E092408(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_20E09245C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E30, type metadata accessor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0924FC()
{
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint);

  return sub_20E322470();
}

uint64_t sub_20E092568()
{
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint);

  return sub_20E322480();
}

uint64_t sub_20E092604()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864328);
  __swift_project_value_buffer(v0, qword_27C864328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "originatingDevice";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "genderSettings";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldExecutePreviousActionsForUserPrompt";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSessionStart.decodeMessage<A>(decoder:)()
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
          sub_20E092A84();
        }

        else if (result == 6)
        {
          v3 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 28);
          sub_20E3222E0();
        }
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoLocaleSettings(0);
        sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings);
        sub_20E322430();
      }

      else if (result == 3)
      {
        sub_20E0929D0();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0929D0()
{
  v0 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails);
  return sub_20E322430();
}

uint64_t sub_20E092A84()
{
  v0 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 24);
  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings);
  return sub_20E322430();
}

uint64_t TranscriptProtoSessionStart.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E092C0C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E092E1C(v3, a1, a2, a3);
    sub_20E093038(v3, a1, a2, a3);
    sub_20E134408(v3, a1, a2, a3, type metadata accessor for TranscriptProtoSessionStart);
    v9 = v3 + *(type metadata accessor for TranscriptProtoSessionStart(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E092C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B0, &unk_20E33C1E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8687B0, &unk_20E33C1E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8687B0, &unk_20E33C1E0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_20E092E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C8687A0, &unk_20E3461A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8687A0, &unk_20E3461A0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_20E093038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868790, &unk_20E33C1F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868790, &unk_20E33C1F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868790, &unk_20E33C1F0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoGenderSettings);
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoGenderSettings);
}

uint64_t sub_20E0932A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  *(a2 + a1[7]) = 2;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0933F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E28, type metadata accessor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E093494()
{
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart);

  return sub_20E322470();
}

uint64_t sub_20E093500()
{
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart);

  return sub_20E322480();
}

uint64_t sub_20E09359C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864340);
  __swift_project_value_buffer(v0, qword_27C864340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dateTime";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZone";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0937B4()
{
  v0 = *(type metadata accessor for TranscriptProtoDateTimeContext(0) + 20);
  sub_20E322150();
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570]);
  return sub_20E322430();
}

uint64_t sub_20E0938A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_20E322150();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868778, &unk_20E33C000);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868778, &unk_20E33C000);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570]);
  sub_20E322580();
  return (*(v10 + 8))(v13, v9);
}

uint64_t (*sub_20E093B44(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_20E093B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E20, type metadata accessor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E093C38()
{
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext);

  return sub_20E322470();
}

uint64_t sub_20E093CA4()
{
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext);

  return sub_20E322480();
}

uint64_t sub_20E093D40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864358);
  __swift_project_value_buffer(v0, qword_27C864358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)()
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
      if (result > 6)
      {
        if (result == 7)
        {
          sub_20E09451C();
        }

        else if (result == 8)
        {
          sub_20E0945D0();
        }
      }

      else if (result == 5)
      {
        sub_20E0943B4();
      }

      else
      {
        sub_20E094468();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_20E094300();
      }

      else
      {
        v3 = *(type metadata accessor for TranscriptProtoRequest(0) + 28);
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E09424C();
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t sub_20E09424C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 20);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);
  return sub_20E322430();
}

uint64_t sub_20E094300()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 24);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  return sub_20E322430();
}

uint64_t sub_20E0943B4()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 32);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_20E322430();
}

uint64_t sub_20E094468()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 36);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_20E195B0C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  return sub_20E322430();
}

uint64_t sub_20E09451C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 40);
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  return sub_20E322430();
}

uint64_t sub_20E0945D0()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 44);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext);
  return sub_20E322430();
}

uint64_t TranscriptProtoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0947D0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0949EC(v3, a1, a2, a3);
    sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoRequest);
    sub_20E094C08(v3, a1, a2, a3);
    sub_20E094E24(v3, a1, a2, a3);
    sub_20E095040(v3, a1, a2, a3);
    sub_20E09525C(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoRequest(0) + 48)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0947D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoRequest(0);
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

uint64_t sub_20E0949EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863F88, &unk_20E33C200);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863F88, &unk_20E33C200);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
}

uint64_t sub_20E094C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C868708, &qword_20E33B700);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_20E094E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C868758, &unk_20E33C210);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868758, &unk_20E33C210);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_20E195B0C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
}

uint64_t sub_20E095040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868748, &qword_20E33B738);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C868748, &qword_20E33B738);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868748, &qword_20E33B738);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
}

uint64_t sub_20E09525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868738, &unk_20E33C220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v14 + 44), v8, &qword_27C868738, &unk_20E33C220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868738, &unk_20E33C220);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoDateTimeContext);
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoDateTimeContext);
}

uint64_t sub_20E0954C4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[10];
  v14 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  v15 = a1[11];
  v16 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  v17 = &a2[a1[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t (*sub_20E0956BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_20E095710(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E18, type metadata accessor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0957B0()
{
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest);

  return sub_20E322470();
}

uint64_t sub_20E09581C()
{
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest);

  return sub_20E322480();
}

uint64_t sub_20E0958B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864370);
  __swift_project_value_buffer(v0, qword_27C864370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t sub_20E095B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
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
  sub_20E0486F4(a1, v14, &qword_27C865978, &qword_20E326390);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C868288, &qword_20E33B318);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868288, &qword_20E33B318);
  }

  sub_20E0486F4(v28, v36, &qword_27C868288, &qword_20E33B318);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868288, &qword_20E33B318);
    return sub_20E04875C(v36, &qword_27C868288, &qword_20E33B318);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoRequestContentTextContent);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868288, &qword_20E33B318);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E096138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868290, &qword_20E33B320);
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
  sub_20E0486F4(a1, v14, &qword_27C865978, &qword_20E326390);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C868290, &qword_20E33B320);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868290, &qword_20E33B320);
  }

  sub_20E0486F4(v28, v36, &qword_27C868290, &qword_20E33B320);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868290, &qword_20E33B320);
    return sub_20E04875C(v36, &qword_27C868290, &qword_20E33B320);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868290, &qword_20E33B320);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E0966F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
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
  sub_20E0486F4(a1, v14, &qword_27C865978, &qword_20E326390);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C863B88, &qword_20E323E78);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSystemPromptResolution);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B88, &qword_20E323E78);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B88, &qword_20E323E78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B88, &qword_20E323E78);
    return sub_20E04875C(v36, &qword_27C863B88, &qword_20E323E78);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSystemPromptResolution);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B88, &qword_20E323E78);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E096CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868730, &qword_20E33B728);
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
  sub_20E0486F4(a1, v14, &qword_27C865978, &qword_20E326390);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C868730, &qword_20E33B728);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestContentStopContent);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestContentStopContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868730, &qword_20E33B728);
  }

  sub_20E0486F4(v28, v36, &qword_27C868730, &qword_20E33B728);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868730, &qword_20E33B728);
    return sub_20E04875C(v36, &qword_27C868730, &qword_20E33B728);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestContentStopContent);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868730, &qword_20E33B728);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestContentStopContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoRequestContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C865978, &qword_20E326390);
  v12 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0978AC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E097AE4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E097674(v3, a1, a2, a3);
  }

  else
  {
    sub_20E097440(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoRequestContent(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E097440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865978, &qword_20E326390);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865978, &qword_20E326390);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0978AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865978, &qword_20E326390);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C865978, &qword_20E326390);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E10, type metadata accessor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E097E6C()
{
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);

  return sub_20E322470();
}

uint64_t sub_20E097ED8()
{
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);

  return sub_20E322480();
}

uint64_t sub_20E098074(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E08, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E098114()
{
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return sub_20E322470();
}

uint64_t sub_20E098180()
{
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);

  return sub_20E322480();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_20E3222B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_20E09830C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E00, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0983AC()
{
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return sub_20E322470();
}

uint64_t sub_20E098418()
{
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return sub_20E322480();
}

uint64_t sub_20E0984B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8643B8);
  __swift_project_value_buffer(v0, qword_27C8643B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0986C8()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0987BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
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

uint64_t sub_20E098A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DF8, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E098B28()
{
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return sub_20E322470();
}

uint64_t sub_20E098B94()
{
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return sub_20E322480();
}

uint64_t sub_20E098C30()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8643D0);
  __swift_project_value_buffer(v0, qword_27C8643D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_20E099030();
      }

      else if (result == 5)
      {
        sub_20E0990E4();
      }
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }

    else if (result == 3)
    {
      sub_20E098F7C();
    }
  }

  return result;
}

uint64_t sub_20E098F7C()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 20);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_20E322430();
}

uint64_t sub_20E099030()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0990E4()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 28);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_20E322430();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_20E099274(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E099490(v3, a1, a2, a3);
      sub_20E0996AC(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E099274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868718, &qword_20E33B710);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868718, &qword_20E33B710);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_20E099490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
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

uint64_t sub_20E0996AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C868718, &qword_20E33B710);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868718, &qword_20E33B710);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_20E099914@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v6(&a2[a1[7]], 1, 1, v5);
  v9 = &a2[a1[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E099A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DF0, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E099AF4()
{
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return sub_20E322470();
}

uint64_t sub_20E099B60()
{
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpeechPackage.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E099E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DE8, type metadata accessor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E099EDC()
{
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);

  return sub_20E322470();
}

uint64_t sub_20E099F48()
{
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage);

  return sub_20E322480();
}

uint64_t sub_20E09A0C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_20E322420();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09A350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DE0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09A3F0()
{
  sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return sub_20E322470();
}

uint64_t sub_20E09A45C()
{
  sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09A794(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DD8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09A834()
{
  sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_20E322470();
}

uint64_t sub_20E09A8A0()
{
  sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_20E322480();
}

uint64_t sub_20E09A954(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000020E35AD80;
  return result;
}

uint64_t sub_20E09A9E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864460);
  __swift_project_value_buffer(v0, qword_27C864460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)()
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
        sub_20E3223E0();
      }

      else if (result == 2)
      {
        sub_20E322390();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_20E3223C0();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (!*(v0 + 2) || (result = sub_20E322510(), !v1))
    {
      if (v0[3] == 0.0 || (result = sub_20E322530(), !v1))
      {
        if (v0[4] == 0.0 || (result = sub_20E322530(), !v1))
        {
          if (v0[5] == 0.0 || (result = sub_20E322530(), !v1))
          {
            v6 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

double sub_20E09AEEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t (*sub_20E09AF50(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_20E09AFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DD0, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09B044()
{
  sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return sub_20E322470();
}

uint64_t sub_20E09B0B0()
{
  sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return sub_20E322480();
}

uint64_t sub_20E09B14C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864478);
  __swift_project_value_buffer(v0, qword_27C864478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rawRewriteMetadataEventId";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rewriteMetadataInlined";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E09B4B8();
          break;
        case 2:
          v3 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20);
          sub_20E3223D0();
          break;
        case 1:
          type metadata accessor for TranscriptProtoRequestContent(0);
          sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E09B4B8()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 24);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_20E322430();
}

uint64_t sub_20E09B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EF8, &qword_20E33AFC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867EF8, &qword_20E33AFC8);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_20E09B7E4(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E09B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868708, &qword_20E33B700);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_20E09BAC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
  v8 = a2 + a1[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E09BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DC8, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09BC74()
{
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return sub_20E322470();
}

uint64_t sub_20E09BCE0()
{
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return sub_20E322480();
}

uint64_t sub_20E09BD7C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864490);
  __swift_project_value_buffer(v0, qword_27C864490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (result = sub_20E322520(), !v1))
    {
      v6 = v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E09C130(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DC0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09C1D0()
{
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_20E322470();
}

uint64_t sub_20E09C23C()
{
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_20E322480();
}

uint64_t sub_20E09C318()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644A8);
  __swift_project_value_buffer(v0, qword_27C8644A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "searchTool";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "lowConfidenceKnowledgeTool";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "textTool";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "convertTool";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "displayTool";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 9;
  *v17 = "knowledgeTool";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "openTool";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "openSuccessValueFromLatestRequestTool";
  *(v21 + 1) = 37;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 7)
    {
      if (result > 9)
      {
        if (result == 10)
        {
          sub_20E09EA6C(v5, a1, a2, a3);
        }

        else if (result == 11)
        {
          sub_20E09F028(v5, a1, a2, a3);
        }
      }

      else if (result == 8)
      {
        sub_20E09DEF4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E09E4B0(v5, a1, a2, a3);
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_20E09D37C(v5, a1, a2, a3);
      }

      else
      {
        sub_20E09D938(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E09C810(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E09CDC0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E09C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686C8, &qword_20E33B6C0);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C8686C8, &qword_20E33B6C0);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686C8, &qword_20E33B6C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686C8, &qword_20E33B6C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686C8, &qword_20E33B6C0);
    return sub_20E04875C(v36, &qword_27C8686C8, &qword_20E33B6C0);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686C8, &qword_20E33B6C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686D0, &qword_20E33B6C8);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C8686D0, &qword_20E33B6C8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686D0, &qword_20E33B6C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686D0, &qword_20E33B6C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686D0, &qword_20E33B6C8);
    return sub_20E04875C(v36, &qword_27C8686D0, &qword_20E33B6C8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686D0, &qword_20E33B6C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09D37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686D8, &qword_20E33B6D0);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C8686D8, &qword_20E33B6D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686D8, &qword_20E33B6D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686D8, &qword_20E33B6D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686D8, &qword_20E33B6D0);
    return sub_20E04875C(v36, &qword_27C8686D8, &qword_20E33B6D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686D8, &qword_20E33B6D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686E0, &qword_20E33B6D8);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C8686E0, &qword_20E33B6D8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686E0, &qword_20E33B6D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686E0, &qword_20E33B6D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686E0, &qword_20E33B6D8);
    return sub_20E04875C(v36, &qword_27C8686E0, &qword_20E33B6D8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686E0, &qword_20E33B6D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686E8, &qword_20E33B6E0);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C8686E8, &qword_20E33B6E0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686E8, &qword_20E33B6E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686E8, &qword_20E33B6E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686E8, &qword_20E33B6E0);
    return sub_20E04875C(v36, &qword_27C8686E8, &qword_20E33B6E0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686E8, &qword_20E33B6E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09E4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686F0, &qword_20E33B6E8);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C8686F0, &qword_20E33B6E8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686F0, &qword_20E33B6E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686F0, &qword_20E33B6E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686F0, &qword_20E33B6E8);
    return sub_20E04875C(v36, &qword_27C8686F0, &qword_20E33B6E8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686F0, &qword_20E33B6E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686F8, &qword_20E33B6F0);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C8686F8, &qword_20E33B6F0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8686F8, &qword_20E33B6F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8686F8, &qword_20E33B6F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8686F8, &qword_20E33B6F0);
    return sub_20E04875C(v36, &qword_27C8686F8, &qword_20E33B6F0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8686F8, &qword_20E33B6F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E09F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868700, &qword_20E33B6F8);
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
  sub_20E0486F4(a1, v14, &qword_27C8659F8, &unk_20E33C240);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C868700, &qword_20E33B6F8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868700, &qword_20E33B6F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868700, &qword_20E33B6F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868700, &qword_20E33B6F8);
    return sub_20E04875C(v36, &qword_27C868700, &qword_20E33B6F8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868700, &qword_20E33B6F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C8659F8, &unk_20E33C240);
  v12 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E0A0594(v3, a1, a2, a3);
      }

      else
      {
        sub_20E0A07CC(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0A0124(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0A035C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E09FCB4(v3, a1, a2, a3);
    }

    else
    {
      sub_20E09FEEC(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E09FA7C(v3, a1, a2, a3);
  }

  else
  {
    sub_20E09F848(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09F848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A07CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8659F8, &unk_20E33C240);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DB8, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A0B54()
{
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return sub_20E322470();
}

uint64_t sub_20E0A0BC0()
{
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return sub_20E322480();
}

uint64_t sub_20E0A0C5C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644C0);
  __swift_project_value_buffer(v0, qword_27C8644C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldOpenResultIfApplicable";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A0F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DB0, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A100C()
{
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_20E322470();
}

uint64_t sub_20E0A1078()
{
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_20E322480();
}

uint64_t sub_20E0A11C4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0A1308(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A13A8()
{
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_20E322470();
}

uint64_t sub_20E0A1414()
{
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_20E322480();
}

uint64_t sub_20E0A1490(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0A1568()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644F0);
  __swift_project_value_buffer(v0, qword_27C8644F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A1890(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DA0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A1930()
{
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_20E322470();
}

uint64_t sub_20E0A199C()
{
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_20E322480();
}

uint64_t sub_20E0A1A64()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864508);
  __swift_project_value_buffer(v0, qword_27C864508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.traverse<A>(visitor:)()
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
    if (*(v0 + 16) != 1 || (result = sub_20E3224C0(), !v1))
    {
      if (*(v0 + 32))
      {
        v5 = *(v0 + 24);
        result = sub_20E322540();
      }

      if (!v1)
      {
        if (*(v0 + 48))
        {
          v6 = *(v0 + 40);
          sub_20E322540();
        }

        v7 = v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0A1EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v3 = a2 + *(a1 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0A1F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D98, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A2014()
{
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2080()
{
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_20E322480();
}

uint64_t sub_20E0A211C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864520);
  __swift_project_value_buffer(v0, qword_27C864520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A242C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D90, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A24CC()
{
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2538()
{
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_20E322480();
}

uint64_t sub_20E0A2600()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864538);
  __swift_project_value_buffer(v0, qword_27C864538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A2838()
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
        sub_20E3223D0();
        break;
      case 2:
        sub_20E3222F0();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *v4;
  v8 = *(v4 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = sub_20E3224C0(), !v5))
    {
      if (*(v4 + 32))
      {
        v10 = *(v4 + 24);
        result = sub_20E322540();
      }

      if (!v5)
      {
        v11 = v4 + *(a4(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0A2A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0A2AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D88, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A2B88()
{
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2BF4()
{
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_20E322480();
}

uint64_t sub_20E0A2CBC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864550);
  __swift_project_value_buffer(v0, qword_27C864550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
        sub_20E322380();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A300C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E0A30D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0A31A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D80, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A3244()
{
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_20E322470();
}

uint64_t sub_20E0A32B0()
{
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_20E322480();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)()
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
      sub_20E322380();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_20E322510();
  }

  if (!v1)
  {
    v4 = v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A34D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0A3548(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D78, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A35E8()
{
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_20E322470();
}

uint64_t sub_20E0A3654()
{
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_20E322480();
}

uint64_t sub_20E0A36F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864580);
  __swift_project_value_buffer(v0, qword_27C864580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 10;
  *v5 = "statementId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "bundleId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "isConfirmed";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "parameterValues";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "planEventId";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "tool";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      switch(result)
      {
        case 8:
          v4 = *(type metadata accessor for TranscriptProtoAction(0) + 32);
LABEL_16:
          v0 = 0;
          sub_20E3223D0();
          break;
        case 10:
          sub_20E0A3C08();
          break;
        case 11:
          sub_20E0A3CBC();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for TranscriptProtoAction(0) + 28);
          goto LABEL_16;
        case 6:
          sub_20E3222F0();
          break;
        case 7:
          sub_20E0A3B10();
          break;
      }
    }
  }
}

uint64_t sub_20E0A3B10()
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue);
  sub_20E195B0C(&qword_27C865A50, type metadata accessor for TranscriptProtoActionParameterValue);
  return sub_20E322290();
}

uint64_t sub_20E0A3C08()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A3CBC()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_20E322170();
      type metadata accessor for TranscriptProtoActionParameterValue(0);
      sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_20E195B0C(&qword_27C865A50, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_20E322490();
    }

    sub_20E13346C(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction);
    sub_20E0A3F68(v3, a1, a2, a3);
    sub_20E0A4184(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoAction(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A3F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoAction(0);
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

uint64_t sub_20E0A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoAction(0);
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

unint64_t sub_20E0A43EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a2 + a1[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  result = sub_20E048D9C(MEMORY[0x277D84F90]);
  *(a2 + 8) = result;
  return result;
}

uint64_t (*sub_20E0A44F0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_20E0A4544(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D70, type metadata accessor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A45E4()
{
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);

  return sub_20E322470();
}

uint64_t sub_20E0A4650()
{
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction);

  return sub_20E322480();
}

uint64_t sub_20E0A46EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864598);
  __swift_project_value_buffer(v0, qword_27C864598);
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

uint64_t TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoToolParameterValue(0);
        sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0A49D8();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A49D8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_20E322430();
}

uint64_t sub_20E0A4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    v14 = v6 + *(a6(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8686A0, &unk_20E33C250);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8686A0, &unk_20E33C250);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoToolParameterValue);
}

uint64_t sub_20E0A4D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionParameterValue(0);
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

uint64_t sub_20E0A5078(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D68, type metadata accessor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A5118()
{
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue);

  return sub_20E322470();
}

uint64_t sub_20E0A5184()
{
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue);

  return sub_20E322480();
}

uint64_t sub_20E0A5220()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645B0);
  __swift_project_value_buffer(v0, qword_27C8645B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 4)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 5)
      {
        sub_20E0A5510();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A5510()
{
  v0 = *(type metadata accessor for TranscriptProtoActionCancellation(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0A5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionCancellation(0);
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

uint64_t sub_20E0A5B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D60, type metadata accessor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A5BA8()
{
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation);

  return sub_20E322470();
}

uint64_t sub_20E0A5C14()
{
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation);

  return sub_20E322480();
}

uint64_t sub_20E0A5CDC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645C8);
  __swift_project_value_buffer(v0, qword_27C8645C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedInDisambiguation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "denied";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E0A5FD4(a1, v5, a2, a3, 1);
        break;
      case 2:
        sub_20E0ADC1C();
        break;
      case 1:
        sub_20E0A5FD4(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A5FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  if ((*(v21 + 9) & 1) == 0)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  *(v17 + 8) = 1;
  return result;
}

uint64_t TranscriptProtoPromptSelection.traverse<A>(visitor:)()
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
        v2 = v0 + *(type metadata accessor for TranscriptProtoPromptSelection(0) + 20);
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

uint64_t sub_20E0A6398(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D58, type metadata accessor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A6438()
{
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection);

  return sub_20E322470();
}

uint64_t sub_20E0A64A4()
{
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection);

  return sub_20E322480();
}

uint64_t sub_20E0A6540()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645E0);
  __swift_project_value_buffer(v0, qword_27C8645E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A6770()
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue);
  sub_20E195B0C(&qword_27C865A78, type metadata accessor for TranscriptProtoParameterValue);
  return sub_20E322290();
}

uint64_t sub_20E0A6868()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 20);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_20E322170(), type metadata accessor for TranscriptProtoParameterValue(0), sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue), sub_20E195B0C(&qword_27C865A78, type metadata accessor for TranscriptProtoParameterValue), v4 = v10, result = sub_20E322490(), !v10))
  {
    result = sub_20E0A6A70(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868680, &unk_20E33C260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868680, &unk_20E33C260);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
}

uint64_t sub_20E0A6D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D50, type metadata accessor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A6DF0()
{
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation);

  return sub_20E322470();
}

uint64_t sub_20E0A6E5C()
{
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation);

  return sub_20E322480();
}

uint64_t sub_20E0A6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868678, &qword_20E33B680);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868668, &qword_20E33B670);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868668, &qword_20E33B670);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_20E04875C(v27, &qword_27C868678, &qword_20E33B680);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    sub_20E195B54(v31, v27, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C868678, &qword_20E33B680);
  }

  sub_20E0486F4(v27, v43, &qword_27C868678, &qword_20E33B680);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C868678, &qword_20E33B680);
    return sub_20E04875C(v33, &qword_27C868678, &qword_20E33B680);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C868678, &qword_20E33B680);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868668, &qword_20E33B670);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E0A74F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868668, &qword_20E33B670);
  v13 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868668, &qword_20E33B670);
  }

  sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_20E0A77A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D48, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A7840()
{
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_20E322470();
}

uint64_t sub_20E0A78AC()
{
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_20E322480();
}

uint64_t sub_20E0A7948()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864610);
  __swift_project_value_buffer(v0, qword_27C864610);
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
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isExplicitRequest";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)()
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
        sub_20E3222F0();
        break;
      case 2:
        sub_20E0A7C30();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A7C30()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_20E0A7DB8(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_20E3224C0();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868650, &qword_20E33B660);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868650, &qword_20E33B660);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
}

uint64_t sub_20E0A8084(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D40, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A8124()
{
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_20E322470();
}

uint64_t sub_20E0A8190()
{
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_20E322480();
}

uint64_t sub_20E0A822C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864628);
  __swift_project_value_buffer(v0, qword_27C864628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0A8594(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          sub_20E0A8594(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        sub_20E0A8594(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        sub_20E0A8594(a1, v5, a2, a3, 1);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A8594(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v21 != 4)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  return result;
}