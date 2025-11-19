uint64_t sub_20E117F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680F0, &qword_20E33B198);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_20E04875C(v28, &qword_27C8680F0, &qword_20E33B198);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867338, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8680F0, &qword_20E33B198);
  }

  sub_20E0486F4(v28, v36, &qword_27C8680F0, &qword_20E33B198);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8680F0, &qword_20E33B198);
    return sub_20E04875C(v36, &qword_27C8680F0, &qword_20E33B198);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8680F0, &qword_20E33B198);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680F8, &qword_20E33B1A0);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_20E04875C(v28, &qword_27C8680F8, &qword_20E33B1A0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867350, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C8680F8, &qword_20E33B1A0);
  }

  sub_20E0486F4(v28, v36, &qword_27C8680F8, &qword_20E33B1A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C8680F8, &qword_20E33B1A0);
    return sub_20E04875C(v36, &qword_27C8680F8, &qword_20E33B1A0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C8680F8, &qword_20E33B1A0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E118B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v6 = *(MentionedAppsExpression - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](MentionedAppsExpression);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868100, &qword_20E33B1A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = MentionedAppsExpression;
  v30 = MentionedAppsExpression;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_20E04875C(v28, &qword_27C868100, &qword_20E33B1A8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867368, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868100, &qword_20E33B1A8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868100, &qword_20E33B1A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868100, &qword_20E33B1A8);
    return sub_20E04875C(v36, &qword_27C868100, &qword_20E33B1A8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868100, &qword_20E33B1A8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E1190C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868108, &qword_20E33B1B0);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_20E04875C(v28, &qword_27C868108, &qword_20E33B1B0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoOpenExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoOpenExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867380, type metadata accessor for TranscriptProtoOpenExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868108, &qword_20E33B1B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868108, &qword_20E33B1B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868108, &qword_20E33B1B0);
    return sub_20E04875C(v36, &qword_27C868108, &qword_20E33B1B0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoOpenExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868108, &qword_20E33B1B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoOpenExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E119680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868110, &qword_20E33B1B8);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_20E04875C(v28, &qword_27C868110, &qword_20E33B1B8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867398, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868110, &qword_20E33B1B8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868110, &qword_20E33B1B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868110, &qword_20E33B1B8);
    return sub_20E04875C(v36, &qword_27C868110, &qword_20E33B1B8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868110, &qword_20E33B1B8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E119C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868118, &qword_20E33B1C0);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C868118, &qword_20E33B1C0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867280, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868118, &qword_20E33B1C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868118, &qword_20E33B1C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868118, &qword_20E33B1C0);
    return sub_20E04875C(v36, &qword_27C868118, &qword_20E33B1C0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868118, &qword_20E33B1C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868120, &qword_20E33B1C8);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_20E04875C(v28, &qword_27C868120, &qword_20E33B1C8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoPayloadExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoPayloadExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8673B0, type metadata accessor for TranscriptProtoPayloadExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868120, &qword_20E33B1C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868120, &qword_20E33B1C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868120, &qword_20E33B1C8);
    return sub_20E04875C(v36, &qword_27C868120, &qword_20E33B1C8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoPayloadExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868120, &qword_20E33B1C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoPayloadExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868128, &qword_20E33B1D0);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_20E04875C(v28, &qword_27C868128, &qword_20E33B1D0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoFormatExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoFormatExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8673C8, type metadata accessor for TranscriptProtoFormatExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868128, &qword_20E33B1D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868128, &qword_20E33B1D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868128, &qword_20E33B1D0);
    return sub_20E04875C(v36, &qword_27C868128, &qword_20E33B1D0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoFormatExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868128, &qword_20E33B1D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoFormatExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v6 = *(ContextExpression - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ContextExpression);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868130, &qword_20E33B1D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = ContextExpression;
  v30 = ContextExpression;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_20E04875C(v28, &qword_27C868130, &qword_20E33B1D8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRetrieveContextExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRetrieveContextExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8671D8, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868130, &qword_20E33B1D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868130, &qword_20E33B1D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868130, &qword_20E33B1D8);
    return sub_20E04875C(v36, &qword_27C868130, &qword_20E33B1D8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868130, &qword_20E33B1D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v6 = *(SpansExpression - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](SpansExpression);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868138, &qword_20E33B1E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = SpansExpression;
  v30 = SpansExpression;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_20E04875C(v28, &qword_27C868138, &qword_20E33B1E0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8671F0, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868138, &qword_20E33B1E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868138, &qword_20E33B1E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868138, &qword_20E33B1E0);
    return sub_20E04875C(v36, &qword_27C868138, &qword_20E33B1E0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868138, &qword_20E33B1E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11B8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v6 = *(ToolsExpression - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](ToolsExpression);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868140, &qword_20E33B1E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = ToolsExpression;
  v30 = ToolsExpression;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_20E04875C(v28, &qword_27C868140, &qword_20E33B1E8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867208, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868140, &qword_20E33B1E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868140, &qword_20E33B1E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868140, &qword_20E33B1E8);
    return sub_20E04875C(v36, &qword_27C868140, &qword_20E33B1E8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868140, &qword_20E33B1E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868148, &qword_20E33B1F0);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_20E04875C(v28, &qword_27C868148, &qword_20E33B1F0);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8670E0, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868148, &qword_20E33B1F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C868148, &qword_20E33B1F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868148, &qword_20E33B1F0);
    return sub_20E04875C(v36, &qword_27C868148, &qword_20E33B1F0);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868148, &qword_20E33B1F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868150, &qword_20E33B1F8);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_20E04875C(v28, &qword_27C868150, &qword_20E33B1F8);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoUserConfirmExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoUserConfirmExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8673E0, type metadata accessor for TranscriptProtoUserConfirmExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868150, &qword_20E33B1F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C868150, &qword_20E33B1F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868150, &qword_20E33B1F8);
    return sub_20E04875C(v36, &qword_27C868150, &qword_20E33B1F8);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoUserConfirmExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868150, &qword_20E33B1F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoUserConfirmExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E11CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868158, &qword_20E33B200);
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
  sub_20E0486F4(a1, v14, &qword_27C864160, &unk_20E33C410);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_20E04875C(v28, &qword_27C868158, &qword_20E33B200);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8673F8, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868158, &qword_20E33B200);
  }

  sub_20E0486F4(v28, v36, &qword_27C868158, &qword_20E33B200);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868158, &qword_20E33B200);
    return sub_20E04875C(v36, &qword_27C868158, &qword_20E33B200);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868158, &qword_20E33B200);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C864160, &unk_20E33C410);
  v12 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E11D784(v3, a1, a2, a3);
        goto LABEL_37;
      case 2u:
        sub_20E11D9BC(v3, a1, a2, a3);
        goto LABEL_37;
      case 3u:
        sub_20E11DBF4(v3, a1, a2, a3);
        goto LABEL_37;
      case 4u:
        sub_20E11DE2C(v3, a1, a2, a3);
        goto LABEL_37;
      case 5u:
        sub_20E11E064(v3, a1, a2, a3);
        goto LABEL_37;
      case 6u:
        sub_20E11E29C(v3, a1, a2, a3);
        goto LABEL_37;
      case 7u:
        sub_20E11E4D4(v3, a1, a2, a3);
        goto LABEL_37;
      case 8u:
        sub_20E11E70C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 9u:
        sub_20E11E944(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xAu:
        sub_20E11EB7C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xBu:
        sub_20E12061C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xCu:
        sub_20E11EDB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xDu:
        sub_20E11EFEC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xEu:
        sub_20E11F224(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xFu:
        sub_20E11F45C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x10u:
        sub_20E11F694(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x11u:
        sub_20E11F8CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x12u:
        sub_20E11FB04(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x13u:
        sub_20E11FD3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x14u:
        sub_20E11FF74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x15u:
        sub_20E1201AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x16u:
        sub_20E1203E4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x17u:
        sub_20E120854(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x18u:
        sub_20E120A8C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x19u:
        sub_20E120CC4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Au:
        sub_20E120EFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Bu:
        sub_20E121134(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        }

        goto LABEL_7;
      case 0x1Cu:
        sub_20E12136C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Du:
        sub_20E1215A4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Eu:
        sub_20E1217DC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        }

LABEL_7:
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        break;
      default:
        sub_20E11D550(v3, a1, a2, a3);
LABEL_37:
        result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for TranscriptProtoExpression(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E11D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoValueExpression);
    sub_20E195B0C(&qword_27C8670F8, type metadata accessor for TranscriptProtoValueExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoValueExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_20E195B0C(&qword_27C867128, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPrefixExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoInfixExpression);
    sub_20E195B0C(&qword_27C867140, type metadata accessor for TranscriptProtoInfixExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoInfixExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoIndexExpression);
    sub_20E195B0C(&qword_27C867170, type metadata accessor for TranscriptProtoIndexExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoIndexExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_20E195B0C(&qword_27C867188, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCallExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoCallExpression);
    sub_20E195B0C(&qword_27C8671C0, type metadata accessor for TranscriptProtoCallExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoCallExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSayExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSayExpression);
    sub_20E195B0C(&qword_27C867220, type metadata accessor for TranscriptProtoSayExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSayExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPickExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPickExpression);
    sub_20E195B0C(&qword_27C867238, type metadata accessor for TranscriptProtoPickExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPickExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_20E195B0C(&qword_27C867250, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSearchExpression);
    sub_20E195B0C(&qword_27C867268, type metadata accessor for TranscriptProtoSearchExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSearchExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_20E195B0C(&qword_27C8672A8, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_20E195B0C(&qword_27C8672C0, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoResolveToolExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUndoExpression);
    sub_20E195B0C(&qword_27C8672D8, type metadata accessor for TranscriptProtoUndoExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUndoExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRejectExpression);
    sub_20E195B0C(&qword_27C8672F0, type metadata accessor for TranscriptProtoRejectExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRejectExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11F694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoCancelExpression);
    sub_20E195B0C(&qword_27C867308, type metadata accessor for TranscriptProtoCancelExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoCancelExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    sub_20E195B0C(&qword_27C867320, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11FB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    sub_20E195B0C(&qword_27C867338, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    sub_20E195B0C(&qword_27C867350, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11FF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v10 = *(*(MentionedAppsExpression - 8) + 64);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    sub_20E195B0C(&qword_27C867368, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1201AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoOpenExpression);
    sub_20E195B0C(&qword_27C867380, type metadata accessor for TranscriptProtoOpenExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoOpenExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1203E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    sub_20E195B0C(&qword_27C867398, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E12061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_20E195B0C(&qword_27C867280, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E120854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoPayloadExpression);
    sub_20E195B0C(&qword_27C8673B0, type metadata accessor for TranscriptProtoPayloadExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoPayloadExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E120A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoFormatExpression);
    sub_20E195B0C(&qword_27C8673C8, type metadata accessor for TranscriptProtoFormatExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoFormatExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E120CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v10 = *(*(ContextExpression - 8) + 64);
  MEMORY[0x28223BE20](ContextExpression);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    sub_20E195B0C(&qword_27C8671D8, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E120EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v10 = *(*(SpansExpression - 8) + 64);
  MEMORY[0x28223BE20](SpansExpression);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    sub_20E195B0C(&qword_27C8671F0, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E121134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v10 = *(*(ToolsExpression - 8) + 64);
  MEMORY[0x28223BE20](ToolsExpression);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    sub_20E195B0C(&qword_27C867208, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E12136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    sub_20E195B0C(&qword_27C8670E0, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1215A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUserConfirmExpression);
    sub_20E195B0C(&qword_27C8673E0, type metadata accessor for TranscriptProtoUserConfirmExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUserConfirmExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E1217DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864160, &unk_20E33C410);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    sub_20E195B0C(&qword_27C8673F8, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E121AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867948, type metadata accessor for TranscriptProtoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E121B64()
{
  sub_20E195B0C(&qword_27C8670C8, type metadata accessor for TranscriptProtoExpression);

  return sub_20E322470();
}

uint64_t sub_20E121BD0()
{
  sub_20E195B0C(&qword_27C8670C8, type metadata accessor for TranscriptProtoExpression);

  return sub_20E322480();
}

uint64_t sub_20E121D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867940, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E121E38()
{
  sub_20E195B0C(&qword_27C8670E0, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return sub_20E322470();
}

uint64_t sub_20E121EA4()
{
  sub_20E195B0C(&qword_27C8670E0, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return sub_20E322480();
}

uint64_t sub_20E121F6C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8652A8);
  __swift_project_value_buffer(v0, qword_27C8652A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "string";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "array";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "symbol";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoValueExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            sub_20E07FF88(a1, v5, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, 6);
            break;
          case 2:
            sub_20E0F99E4(a1, v5, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, 0);
            break;
          case 3:
            sub_20E10CA94(a1, v5, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, 1);
            break;
        }
      }

      else if (result > 5)
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_18;
        }

        sub_20E12268C(v5, a1, a2, a3);
      }

      else
      {
        if (result != 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
LABEL_18:
          sub_20E10D7E8(v11, v12, v13, v14, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, v15);
          goto LABEL_5;
        }

        sub_20E1224BC(a1, v5, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1224BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v23 = 0;
  v24 = 1;
  result = sub_20E3223B0();
  if (!v7 && (v24 & 1) == 0)
  {
    v22 = 0;
    v17 = v23;
    sub_20E0486F4(a2, v15, a5, a6);
    v18 = a7(0);
    v21 = *(v18 - 8);
    v19 = (*(v21 + 48))(v15, 1, v18);
    sub_20E04875C(v15, a5, a6);
    if (v19 != 1)
    {
      v20 = v22;
      result = sub_20E3222C0();
      if (v20)
      {
        return result;
      }

      v22 = 0;
    }

    sub_20E04875C(a2, a5, a6);
    *a2 = v17;
    swift_storeEnumTagMultiPayload();
    return (*(v21 + 56))(a2, 0, 1, v18);
  }

  return result;
}

uint64_t sub_20E12268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868060, &qword_20E33B108);
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
  sub_20E0486F4(a1, v14, &qword_27C864158, &qword_20E3262A8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C864158, &qword_20E3262A8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E195B54(v14, v22, type metadata accessor for TranscriptProtoValueExpressionEnum);
    sub_20E195B54(v22, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C868060, &qword_20E33B108);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C867110, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C868060, &qword_20E33B108);
  }

  sub_20E0486F4(v28, v36, &qword_27C868060, &qword_20E33B108);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C868060, &qword_20E33B108);
    return sub_20E04875C(v36, &qword_27C868060, &qword_20E33B108);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C868060, &qword_20E33B108);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C864158, &qword_20E3262A8);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoValueExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C864158, &qword_20E3262A8);
  v12 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          result = sub_20E123330(v3, a1, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_20E12348C(v3, a1, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }
      }

      else
      {
        result = sub_20E1231D8(v3, a1, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
        result = sub_20E12398C(v3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_20E122F8C(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
      result = sub_20E1235E8(v3, a1, a2, a3, &qword_27C864158, &qword_20E3262A8, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_20E123754(v3, a1, a2, a3);
      result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for TranscriptProtoValueExpression(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E122F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C864158, &qword_20E3262A8);
  v14 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C864158, &qword_20E3262A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v13, type metadata accessor for TranscriptProtoValueExpressionEnum);
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

uint64_t sub_20E1231D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  sub_20E0486F4(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_20E04875C(v15, a5, a6);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v17 = *v15;
    return sub_20E3224C0();
  }

  result = sub_20E195C24(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_20E123330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v19 - v14);
  sub_20E0486F4(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_20E04875C(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    return sub_20E322510();
  }

  result = sub_20E195C24(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_20E12348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v19 - v14);
  sub_20E0486F4(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_20E04875C(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *v15;
    return sub_20E322530();
  }

  result = sub_20E195C24(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_20E1235E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v21 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v20 - v14);
  sub_20E0486F4(a1, &v20 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_20E04875C(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v17 = *v15;
    v18 = v15[1];
    sub_20E322540();
  }

  result = sub_20E195C24(v15, v21);
  __break(1u);
  return result;
}

uint64_t sub_20E123754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C864158, &qword_20E3262A8);
  v13 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C864158, &qword_20E3262A8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v8, v12, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    sub_20E195B0C(&qword_27C867110, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    sub_20E322580();
    return sub_20E195C24(v12, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  }

  result = sub_20E195C24(v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E12398C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C864158, &qword_20E3262A8);
  v6 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C864158, &qword_20E3262A8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E195C24(v5, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E123BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867938, type metadata accessor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E123C54()
{
  sub_20E195B0C(&qword_27C8670F8, type metadata accessor for TranscriptProtoValueExpression);

  return sub_20E322470();
}

uint64_t sub_20E123CC0()
{
  sub_20E195B0C(&qword_27C8670F8, type metadata accessor for TranscriptProtoValueExpression);

  return sub_20E322480();
}

uint64_t TranscriptProtoValueExpressionArrayVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E123F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867930, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E123FC8()
{
  sub_20E195B0C(&qword_27C867110, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return sub_20E322470();
}

uint64_t sub_20E124034()
{
  sub_20E195B0C(&qword_27C867110, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return sub_20E322480();
}

uint64_t sub_20E1240CC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8652D8);
  __swift_project_value_buffer(v0, qword_27C8652D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefixOp";
  *(v6 + 8) = 8;
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

uint64_t sub_20E124300()
{
  v0 = *(type metadata accessor for TranscriptProtoPrefixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E124410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoPrefixExpression(0);
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

uint64_t sub_20E1246DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867928, type metadata accessor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12477C()
{
  sub_20E195B0C(&qword_27C867128, type metadata accessor for TranscriptProtoPrefixExpression);

  return sub_20E322470();
}

uint64_t sub_20E1247E8()
{
  sub_20E195B0C(&qword_27C867128, type metadata accessor for TranscriptProtoPrefixExpression);

  return sub_20E322480();
}

uint64_t sub_20E124884()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8652F0);
  __swift_project_value_buffer(v0, qword_27C8652F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "infixOp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lhs";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rhs";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E124B10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v7;
  while (1)
  {
    result = sub_20E3222B0();
    if (v8 || (v17 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a7(a1, v12, a2, a3);
        break;
      case 2:
        a6(a1, v12, a2, a3);
        break;
      case 1:
        a4();
        sub_20E322310();
        break;
    }
  }

  return result;
}

uint64_t sub_20E124C0C()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E124CC0()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoInfixExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_20E184930(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E124E50(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E12506C(v3, a1, a2, a3);
      v9 = &v3[*(type metadata accessor for TranscriptProtoInfixExpression(0) + 28)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E124E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInfixExpression(0);
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

uint64_t sub_20E12506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInfixExpression(0);
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

uint64_t sub_20E1252EC@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1[5];
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a3[v5], 1, 1, v6);
  v7(&a3[a1[6]], 1, 1, v6);
  v8 = &a3[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_20E1253E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867920, type metadata accessor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E125488()
{
  sub_20E195B0C(&qword_27C867140, type metadata accessor for TranscriptProtoInfixExpression);

  return sub_20E322470();
}

uint64_t sub_20E1254F4()
{
  sub_20E195B0C(&qword_27C867140, type metadata accessor for TranscriptProtoInfixExpression);

  return sub_20E322480();
}

uint64_t sub_20E125590()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865308);
  __swift_project_value_buffer(v0, qword_27C865308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1257C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  while (1)
  {
    result = sub_20E3222B0();
    if (v7 || (v15 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_20E322310();
    }

    else if (result == 2)
    {
      a6(a1, v10, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E12588C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t sub_20E12599C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  if (!*v7 || (v16 = *v7, a4(), result = sub_20E3224D0(), !v8))
  {
    result = a6(v7, a1, a2, a3);
    if (!v8)
    {
      v15 = &v7[*(a7(0) + 24)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E125A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E125CFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_20E125DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867918, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E125E6C()
{
  sub_20E195B0C(&qword_27C867158, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_20E322470();
}

uint64_t sub_20E125ED8()
{
  sub_20E195B0C(&qword_27C867158, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_20E322480();
}

uint64_t sub_20E125F74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865320);
  __swift_project_value_buffer(v0, qword_27C865320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoIndexExpression.decodeMessage<A>(decoder:)()
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
        sub_20E126260();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E126260()
{
  v0 = *(type metadata accessor for TranscriptProtoIndexExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E126368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoIndexExpression(0);
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

uint64_t sub_20E1265FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v6(a3 + *(a1 + 20), 1, 1, v5);
  v7 = a3 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1266F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867910, type metadata accessor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E126790()
{
  sub_20E195B0C(&qword_27C867170, type metadata accessor for TranscriptProtoIndexExpression);

  return sub_20E322470();
}

uint64_t sub_20E1267FC()
{
  sub_20E195B0C(&qword_27C867170, type metadata accessor for TranscriptProtoIndexExpression);

  return sub_20E322480();
}

uint64_t sub_20E1268C4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865338);
  __swift_project_value_buffer(v0, qword_27C865338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callStatementId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updates";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUpdateParametersExpression.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E126BB0();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
        sub_20E195B0C(&qword_27C865FE0, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E126BB0()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoUpdateParametersExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E126D60(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
      sub_20E195B0C(&qword_27C865FE0, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E126D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  sub_20E0486F4(a1 + *(updated + 20), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E127054(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867908, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1270F4()
{
  sub_20E195B0C(&qword_27C867188, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return sub_20E322470();
}

uint64_t sub_20E127160()
{
  sub_20E195B0C(&qword_27C867188, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return sub_20E322480();
}

uint64_t sub_20E12723C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865350);
  __swift_project_value_buffer(v0, qword_27C865350);
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
  *(v5 + v2) = 2;
  *v10 = "kind";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterIndex";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.decodeMessage<A>(decoder:)()
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
          sub_20E1275C4();
        }

        else if (result == 4)
        {
          v3 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 28);
          sub_20E322380();
        }
      }

      else if (result == 1)
      {
        sub_20E3223E0();
      }

      else if (result == 2)
      {
        sub_20E1849D8();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1275C4()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(v3 + 16) != 1 || (sub_20E1849D8(), result = sub_20E3224D0(), !v4))
    {
      result = sub_20E127788(v3, a1, a2, a3);
      if (!v4)
      {
        sub_20E1279A4(v3);
        v12 = v3 + *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 32);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E127788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_20E0486F4(a1 + *(updated + 24), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E1279A4(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E127A68@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E127B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867900, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E127BEC()
{
  sub_20E195B0C(&qword_27C865FE0, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_20E322470();
}

uint64_t sub_20E127C58()
{
  sub_20E195B0C(&qword_27C865FE0, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_20E322480();
}

uint64_t sub_20E127CF4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865368);
  __swift_project_value_buffer(v0, qword_27C865368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdsId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E127F20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t TranscriptProtoGlobalToolIdentifier.traverse<A>(visitor:)()
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
      v6 = v0 + *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E1280C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E12814C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678F8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1281EC()
{
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return sub_20E322470();
}

uint64_t sub_20E128258()
{
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return sub_20E322480();
}

uint64_t sub_20E1282F4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865380);
  __swift_project_value_buffer(v0, qword_27C865380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "tool";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoCallExpression.decodeMessage<A>(decoder:)()
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
      sub_20E037F38();
    }

    else if (result == 3)
    {
      sub_20E128574();
    }
  }

  return result;
}

uint64_t sub_20E128574()
{
  v0 = *(type metadata accessor for TranscriptProtoCallExpression(0) + 20);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoCallExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_20E322170(), type metadata accessor for TranscriptProtoStatementID(0), sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID), sub_20E195B0C(&qword_27C866008, type metadata accessor for TranscriptProtoStatementID), v4 = v10, result = sub_20E322490(), !v10))
  {
    result = sub_20E12877C(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for TranscriptProtoCallExpression(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E12877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoCallExpression(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C8639C8, &unk_20E323870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639C8, &unk_20E323870);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_20E128A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678F0, type metadata accessor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E128AFC()
{
  sub_20E195B0C(&qword_27C8671C0, type metadata accessor for TranscriptProtoCallExpression);

  return sub_20E322470();
}

uint64_t sub_20E128B68()
{
  sub_20E195B0C(&qword_27C8671C0, type metadata accessor for TranscriptProtoCallExpression);

  return sub_20E322480();
}

uint64_t sub_20E128C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678E8, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E128D38()
{
  sub_20E195B0C(&qword_27C8671D8, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return sub_20E322470();
}

uint64_t sub_20E128DA4()
{
  sub_20E195B0C(&qword_27C8671D8, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return sub_20E322480();
}

uint64_t sub_20E128F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678E0, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E129008()
{
  sub_20E195B0C(&qword_27C8671F0, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return sub_20E322470();
}

uint64_t sub_20E129074()
{
  sub_20E195B0C(&qword_27C8671F0, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return sub_20E322480();
}

uint64_t sub_20E129268(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678D8, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E129308()
{
  sub_20E195B0C(&qword_27C867208, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return sub_20E322470();
}

uint64_t sub_20E129374()
{
  sub_20E195B0C(&qword_27C867208, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return sub_20E322480();
}

uint64_t TranscriptProtoSayExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSayExpression(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E129664(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678D0, type metadata accessor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E129704()
{
  sub_20E195B0C(&qword_27C867220, type metadata accessor for TranscriptProtoSayExpression);

  return sub_20E322470();
}

uint64_t sub_20E129770()
{
  sub_20E195B0C(&qword_27C867220, type metadata accessor for TranscriptProtoSayExpression);

  return sub_20E322480();
}

uint64_t sub_20E129808()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8653F8);
  __swift_project_value_buffer(v0, qword_27C8653F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E129A34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E129ADC()
{
  v0 = *(type metadata accessor for TranscriptProtoPickExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoPickExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E129C2C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_20E322510();
    }

    v6 = v3 + *(type metadata accessor for TranscriptProtoPickExpression(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E129C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoPickExpression(0);
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

uint64_t sub_20E129EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678C8, type metadata accessor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E129F9C()
{
  sub_20E195B0C(&qword_27C867238, type metadata accessor for TranscriptProtoPickExpression);

  return sub_20E322470();
}

uint64_t sub_20E12A008()
{
  sub_20E195B0C(&qword_27C867238, type metadata accessor for TranscriptProtoPickExpression);

  return sub_20E322480();
}

uint64_t sub_20E12A1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678C0, type metadata accessor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12A270()
{
  sub_20E195B0C(&qword_27C867250, type metadata accessor for TranscriptProtoConfirmExpression);

  return sub_20E322470();
}

uint64_t sub_20E12A2DC()
{
  sub_20E195B0C(&qword_27C867250, type metadata accessor for TranscriptProtoConfirmExpression);

  return sub_20E322480();
}

uint64_t sub_20E12A3A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865428);
  __swift_project_value_buffer(v0, qword_27C865428);
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
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldOpenResultIfApplicable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSearchExpression.decodeMessage<A>(decoder:)()
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
        sub_20E3222F0();
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

uint64_t TranscriptProtoSearchExpression.traverse<A>(visitor:)()
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
    if (*(v0 + 16) != 1 || (result = sub_20E3224C0(), !v1))
    {
      if (*(v0 + 17) != 1 || (result = sub_20E3224C0(), !v1))
      {
        if (*(v0 + 18) != 1 || (result = sub_20E3224C0(), !v1))
        {
          v6 = v0 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
          return sub_20E3221A0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E12A81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 18) = 0;
  return result;
}

uint64_t sub_20E12A8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678B8, type metadata accessor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12A944()
{
  sub_20E195B0C(&qword_27C867268, type metadata accessor for TranscriptProtoSearchExpression);

  return sub_20E322470();
}

uint64_t sub_20E12A9B0()
{
  sub_20E195B0C(&qword_27C867268, type metadata accessor for TranscriptProtoSearchExpression);

  return sub_20E322480();
}

uint64_t sub_20E12AA4C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865440);
  __swift_project_value_buffer(v0, qword_27C865440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returnType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "properties";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStructuredSearchExpression.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
          sub_20E195B0C(&qword_27C866050, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          sub_20E322420();
          break;
        case 2:
          sub_20E12ADA4();
          break;
        case 1:
          sub_20E037F38();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E12ADA4()
{
  v0 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t TranscriptProtoStructuredSearchExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (*(*v3 + 16))
  {
    sub_20E322170();
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195B0C(&qword_27C866008, type metadata accessor for TranscriptProtoStatementID);
    result = sub_20E322490();
    if (v4)
    {
      return result;
    }

    v5 = v3;
  }

  result = sub_20E12B044(v5, a1, a2, a3);
  if (!v4)
  {
    if (*(*(v5 + 8) + 16))
    {
      type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
      sub_20E195B0C(&qword_27C866050, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
      sub_20E322570();
    }

    v10 = v5 + *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E12B044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

unint64_t sub_20E12B2AC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  result = sub_20E0498FC(MEMORY[0x277D84F90]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_20E12B388(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678B0, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12B428()
{
  sub_20E195B0C(&qword_27C867280, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return sub_20E322470();
}

uint64_t sub_20E12B494()
{
  sub_20E195B0C(&qword_27C867280, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return sub_20E322480();
}

uint64_t sub_20E12B514()
{
  result = MEMORY[0x20F32BF40](0xD000000000000019, 0x800000020E35D400);
  qword_27C865458 = 0xD000000000000025;
  unk_27C865460 = 0x800000020E35C6D0;
  return result;
}

uint64_t sub_20E12B5B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865468);
  __swift_project_value_buffer(v0, qword_27C865468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "previousAnswerReference";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.decodeMessage<A>(decoder:)()
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
        sub_20E12B898();
        break;
      case 2:
        sub_20E3223D0();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E12B898()
{
  v0 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    if (v3[3])
    {
      v11 = v3[2];
      result = sub_20E322540();
    }

    if (!v4)
    {
      sub_20E12BA1C(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E12BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
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

uint64_t sub_20E12BC84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E12BD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678A8, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12BE04()
{
  sub_20E195B0C(&qword_27C866050, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_20E322470();
}

uint64_t sub_20E12BE70()
{
  sub_20E195B0C(&qword_27C866050, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_20E322480();
}

uint64_t sub_20E12C038(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8678A0, type metadata accessor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12C0D8()
{
  sub_20E195B0C(&qword_27C8672A8, type metadata accessor for TranscriptProtoPickOneExpression);

  return sub_20E322470();
}

uint64_t sub_20E12C144()
{
  sub_20E195B0C(&qword_27C8672A8, type metadata accessor for TranscriptProtoPickOneExpression);

  return sub_20E322480();
}

uint64_t TranscriptProtoResolveToolExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoGlobalToolIdentifier(0), sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoResolveToolExpression(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoResolveToolExpression.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1596C4(*a1, *a2, type metadata accessor for TranscriptProtoGlobalToolIdentifier, type metadata accessor for TranscriptProtoGlobalToolIdentifier, type metadata accessor for TranscriptProtoGlobalToolIdentifier) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoResolveToolExpression(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E12C508(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867898, type metadata accessor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12C5A8()
{
  sub_20E195B0C(&qword_27C8672C0, type metadata accessor for TranscriptProtoResolveToolExpression);

  return sub_20E322470();
}

uint64_t sub_20E12C614()
{
  sub_20E195B0C(&qword_27C8672C0, type metadata accessor for TranscriptProtoResolveToolExpression);

  return sub_20E322480();
}

uint64_t sub_20E12C690(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_20E1596C4(*a1, *a2, type metadata accessor for TranscriptProtoGlobalToolIdentifier, type metadata accessor for TranscriptProtoGlobalToolIdentifier, type metadata accessor for TranscriptProtoGlobalToolIdentifier) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E12C8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867890, type metadata accessor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12C95C()
{
  sub_20E195B0C(&qword_27C8672D8, type metadata accessor for TranscriptProtoUndoExpression);

  return sub_20E322470();
}

uint64_t sub_20E12C9C8()
{
  sub_20E195B0C(&qword_27C8672D8, type metadata accessor for TranscriptProtoUndoExpression);

  return sub_20E322480();
}

uint64_t sub_20E12CBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867888, type metadata accessor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12CC5C()
{
  sub_20E195B0C(&qword_27C8672F0, type metadata accessor for TranscriptProtoRejectExpression);

  return sub_20E322470();
}

uint64_t sub_20E12CCC8()
{
  sub_20E195B0C(&qword_27C8672F0, type metadata accessor for TranscriptProtoRejectExpression);

  return sub_20E322480();
}

uint64_t sub_20E12CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867880, type metadata accessor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12CF5C()
{
  sub_20E195B0C(&qword_27C867308, type metadata accessor for TranscriptProtoCancelExpression);

  return sub_20E322470();
}

uint64_t sub_20E12CFC8()
{
  sub_20E195B0C(&qword_27C867308, type metadata accessor for TranscriptProtoCancelExpression);

  return sub_20E322480();
}

uint64_t sub_20E12D124(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867878, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12D1C4()
{
  sub_20E195B0C(&qword_27C867320, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return sub_20E322470();
}

uint64_t sub_20E12D230()
{
  sub_20E195B0C(&qword_27C867320, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return sub_20E322480();
}

uint64_t sub_20E12D35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867870, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12D3FC()
{
  sub_20E195B0C(&qword_27C867338, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return sub_20E322470();
}

uint64_t sub_20E12D468()
{
  sub_20E195B0C(&qword_27C867338, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return sub_20E322480();
}

uint64_t sub_20E12D594(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867868, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12D634()
{
  sub_20E195B0C(&qword_27C867350, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return sub_20E322470();
}

uint64_t sub_20E12D6A0()
{
  sub_20E195B0C(&qword_27C867350, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return sub_20E322480();
}

uint64_t sub_20E12D7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867860, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12D86C()
{
  sub_20E195B0C(&qword_27C867368, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return sub_20E322470();
}

uint64_t sub_20E12D8D8()
{
  sub_20E195B0C(&qword_27C867368, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return sub_20E322480();
}

uint64_t sub_20E12DA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867858, type metadata accessor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12DB3C()
{
  sub_20E195B0C(&qword_27C867380, type metadata accessor for TranscriptProtoOpenExpression);

  return sub_20E322470();
}

uint64_t sub_20E12DBA8()
{
  sub_20E195B0C(&qword_27C867380, type metadata accessor for TranscriptProtoOpenExpression);

  return sub_20E322480();
}

uint64_t sub_20E12DD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867850, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12DDA4()
{
  sub_20E195B0C(&qword_27C867398, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return sub_20E322470();
}

uint64_t sub_20E12DE10()
{
  sub_20E195B0C(&qword_27C867398, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return sub_20E322480();
}

uint64_t TranscriptProtoPayloadExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoPayloadExpression(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E12E074(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867848, type metadata accessor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12E114()
{
  sub_20E195B0C(&qword_27C8673B0, type metadata accessor for TranscriptProtoPayloadExpression);

  return sub_20E322470();
}

uint64_t sub_20E12E180()
{
  sub_20E195B0C(&qword_27C8673B0, type metadata accessor for TranscriptProtoPayloadExpression);

  return sub_20E322480();
}

uint64_t TranscriptProtoFormatExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoFormatExpression(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E12E3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867840, type metadata accessor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12E484()
{
  sub_20E195B0C(&qword_27C8673C8, type metadata accessor for TranscriptProtoFormatExpression);

  return sub_20E322470();
}

uint64_t sub_20E12E4F0()
{
  sub_20E195B0C(&qword_27C8673C8, type metadata accessor for TranscriptProtoFormatExpression);

  return sub_20E322480();
}

uint64_t sub_20E12E588()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8655B8);
  __swift_project_value_buffer(v0, qword_27C8655B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmOption";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dismissOption";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUserConfirmExpression.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E12E994();
          break;
        case 2:
          sub_20E12E8E0();
          break;
        case 1:
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E12E8E0()
{
  v0 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E12E994()
{
  v0 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E12EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    a6(v7, a1, a2, a3);
    v16 = v7 + *(a7(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E12EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
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

uint64_t sub_20E12ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
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

uint64_t sub_20E12F004@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  v5(a2 + a1[5], 1, 1, v4);
  v5(a2 + a1[6], 1, 1, v4);
  v6 = a2 + a1[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E12F114(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867838, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12F1B4()
{
  sub_20E195B0C(&qword_27C8673E0, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return sub_20E322470();
}

uint64_t sub_20E12F220()
{
  sub_20E195B0C(&qword_27C8673E0, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return sub_20E322480();
}

uint64_t sub_20E12F2BC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8655D0);
  __swift_project_value_buffer(v0, qword_27C8655D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUserDisambiguateExpression.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E12F5A8();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E12F5A8()
{
  v0 = *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoUserDisambiguateExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E12F758(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E12F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
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

uint64_t sub_20E12FA00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v7 = *(a1 + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = &a4[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a3;
  return result;
}

uint64_t sub_20E12FAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867830, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E12FB74()
{
  sub_20E195B0C(&qword_27C8673F8, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return sub_20E322470();
}

uint64_t sub_20E12FBE0()
{
  sub_20E195B0C(&qword_27C8673F8, type metadata accessor for TranscriptProtoUserDisambiguateExpression);

  return sub_20E322480();
}

uint64_t TranscriptProtoToolParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_20E12FD70(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E12FD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C868030, &unk_20E33C420);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C868030, &unk_20E33C420);
    v30 = v44;
  }

  else
  {
    sub_20E195B54(v13, v21, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_20E195B54(v21, v19, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_20E04875C(v27, &qword_27C863B18, &qword_20E323EB0);
    v31 = v42;
    sub_20E195B54(v19, v42, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195B54(v31, v27, type metadata accessor for ToolKitProtoTypedValue);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v27, v43, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v33, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v33, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C863B18, &qword_20E323EB0);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C868030, &unk_20E33C420);
    sub_20E195B54(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E1302FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C868030, &unk_20E33C420);
  v13 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868030, &unk_20E33C420);
  }

  sub_20E195B54(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E1305AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867828, type metadata accessor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13064C()
{
  sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue);

  return sub_20E322470();
}

uint64_t sub_20E1306B8()
{
  sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue);

  return sub_20E322480();
}

uint64_t sub_20E130754()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865600);
  __swift_project_value_buffer(v0, qword_27C865600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.decodeMessage<A>(decoder:)()
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
        sub_20E130A40();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E130A40()
{
  v0 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0) + 20);
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_20E195B0C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
  return sub_20E322430();
}

uint64_t sub_20E130B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868018, &unk_20E33C430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868018, &unk_20E33C430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868018, &unk_20E33C430);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E195B0C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ContextProtoSpanMatchedEntity);
}

uint64_t sub_20E130DDC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E130EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867820, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E130F90()
{
  sub_20E195B0C(&qword_27C8660F8, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return sub_20E322470();
}

uint64_t sub_20E130FFC()
{
  sub_20E195B0C(&qword_27C8660F8, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);

  return sub_20E322480();
}

uint64_t TranscriptProtoEntitySpanMatchResult.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0), sub_20E195B0C(&qword_27C8660F8, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoEntitySpanMatchResult(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1312D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867818, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E131378()
{
  sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return sub_20E322470();
}

uint64_t sub_20E1313E4()
{
  sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return sub_20E322480();
}

uint64_t sub_20E131494()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865630);
  __swift_project_value_buffer(v0, qword_27C865630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "types";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoToolRetrievalResponse.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_20E322350();
            goto LABEL_5;
          case 4:
            v3 = v0;
            type metadata accessor for ContextProtoRetrievedTool(0);
            sub_20E195B0C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_20E195B0C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_20E322420();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.traverse<A>(visitor:)()
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
    v6 = *(v0 + 3);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v0 + 2) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_20E322540(), !v1))
    {
      if (v0[8] == 0.0 || (result = sub_20E3224F0(), !v1))
      {
        if (!*(*(v0 + 5) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_20E195B0C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool), result = sub_20E322570(), !v1))
        {
          if (!*(*(v0 + 6) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_20E195B0C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType), result = sub_20E322570(), !v1))
          {
            v8 = v0 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E131B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a2 + 40) = MEMORY[0x277D84F90];
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_20E131BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867810, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E131C44()
{
  sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return sub_20E322470();
}

uint64_t sub_20E131CB0()
{
  sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return sub_20E322480();
}

uint64_t sub_20E131D4C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865648);
  __swift_project_value_buffer(v0, qword_27C865648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 5;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 8;
  *v11 = "interpretedStatementResults";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemResponse.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 8:
          type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
          sub_20E195B0C(&qword_27C866120, type metadata accessor for TranscriptProtoInterpretedStatementResult);
          sub_20E322420();
          break;
        case 7:
          v3 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24);
          sub_20E3223D0();
          break;
        case 5:
          sub_20E1320C0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1320C0()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 20);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput);
  return sub_20E322430();
}

uint64_t TranscriptProtoSystemResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E132288(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E1324A4(v3);
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
      sub_20E195B0C(&qword_27C866120, type metadata accessor for TranscriptProtoInterpretedStatementResult);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E132288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868008, &qword_20E33B0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSystemResponse(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C868008, &qword_20E33B0C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868008, &qword_20E33B0C0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoResponseOutput);
  sub_20E195B0C(&qword_27C866B38, type metadata accessor for TranscriptProtoResponseOutput);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoResponseOutput);
}

uint64_t sub_20E1324A4(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E132568@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  *(v7 + 1) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E132644(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867808, type metadata accessor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1326E4()
{
  sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse);

  return sub_20E322470();
}

uint64_t sub_20E132750()
{
  sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse);

  return sub_20E322480();
}

uint64_t sub_20E1327EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865660);
  __swift_project_value_buffer(v0, qword_27C865660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "outcome";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "resultStatementId";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionEventId";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "toolId";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "originTaskStatementId";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoInterpretedStatementResult.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 28);
LABEL_19:
            v0 = v3;
            sub_20E3223D0();
            break;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 32);
            goto LABEL_19;
          case 6:
            sub_20E132DDC();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for TranscriptProtoStatementOutcome(0);
            sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
            sub_20E322430();
            break;
          case 2:
            sub_20E132C74();
            break;
          case 3:
            sub_20E132D28();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E132C74()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E132D28()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E132DDC()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoInterpretedStatementResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E03744C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E132FB0(v3, a1, a2, a3);
    sub_20E1331CC(v3, a1, a2, a3);
    sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    sub_20E13346C(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    sub_20E1334F0(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E132FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_20E1331CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_20E1333E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E13346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E1334F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_20E133758@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + a1[6], 1, 1, v6);
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v7(a2 + a1[9], 1, 1, v6);
  v11 = a2 + a1[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1338C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867800, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E133960()
{
  sub_20E195B0C(&qword_27C866120, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return sub_20E322470();
}

uint64_t sub_20E1339CC()
{
  sub_20E195B0C(&qword_27C866120, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return sub_20E322480();
}

uint64_t sub_20E133A68()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865678);
  __swift_project_value_buffer(v0, qword_27C865678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 4;
  *v8 = "expression";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 5;
  *v10 = "isRoot";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "isExpanded";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "canonicalIndex";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "executionSupportType";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoProgramStatement.decodeMessage<A>(decoder:)()
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

      if (result > 5)
      {
        switch(result)
        {
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 28);
            goto LABEL_17;
          case 7:
            v6 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 32);
            sub_20E3223F0();
            break;
          case 8:
            sub_20E133FBC();
            break;
        }
      }

      else
      {
        v3 = v0;
        switch(result)
        {
          case 1:
            type metadata accessor for TranscriptProtoStatementID(0);
            sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
            sub_20E322430();
            break;
          case 4:
            sub_20E133F08();
            break;
          case 5:
            v4 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 24);
LABEL_17:
            v0 = v3;
            sub_20E3222E0();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E133F08()
{
  v0 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 20);
  type metadata accessor for TranscriptProtoExpression(0);
  sub_20E195B0C(&qword_27C8670C8, type metadata accessor for TranscriptProtoExpression);
  return sub_20E322430();
}

uint64_t sub_20E133FBC()
{
  v0 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 36);
  type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_20E195B0C(&qword_27C8674A0, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  return sub_20E322430();
}

uint64_t TranscriptProtoProgramStatement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E037AC4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E134174(v3, a1, a2, a3);
    sub_20E134390(v3);
    sub_20E134408(v3, a1, a2, a3, type metadata accessor for TranscriptProtoProgramStatement);
    sub_20E134484(v3);
    sub_20E1344FC(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoProgramStatement(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E134174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExpression(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C864168, &unk_20E33C440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C864168, &unk_20E33C440);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoExpression);
  sub_20E195B0C(&qword_27C8670C8, type metadata accessor for TranscriptProtoExpression);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoExpression);
}

uint64_t sub_20E134390(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E134408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_20E3224C0();
  }

  return result;
}

uint64_t sub_20E134484(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322550();
  }

  return result;
}

uint64_t sub_20E1344FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE8, &qword_20E33B0A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C867FE8, &qword_20E33B0A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867FE8, &qword_20E33B0A0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E195B0C(&qword_27C8674A0, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
}

uint64_t sub_20E134764@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  (*(*(v10 - 8) + 56))(a2 + v8, 1, 1, v10);
  v11 = a2 + a1[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1348A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E134914(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1349B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677F8, type metadata accessor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E134A58()
{
  sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement);

  return sub_20E322470();
}

uint64_t sub_20E134AC4()
{
  sub_20E195B0C(&qword_27C865C80, type metadata accessor for TranscriptProtoProgramStatement);

  return sub_20E322480();
}

uint64_t sub_20E134B44()
{
  result = MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E35D250);
  qword_27C865690 = 0xD00000000000001BLL;
  *algn_27C865698 = 0x800000020E35CA50;
  return result;
}

uint64_t sub_20E134BE0(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_20E134C3C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8656A0);
  __swift_project_value_buffer(v0, qword_27C8656A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supported";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unsupportedListValue";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E134E28(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E0C16F4(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_20E0C16F4(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_20E134EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  if (v6 != 2)
  {
    v7 = a4;
    if (v6)
    {
      result = sub_20E1350F4(v4);
      if (v5)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E134FA0(v4);
      if (v5)
      {
        return result;
      }
    }

    a4 = v7;
  }

  v9 = &v4[*(a4(0) + 20)];
  return sub_20E3221A0();
}

uint64_t sub_20E134FA0(unsigned __int8 *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) != 0)
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

uint64_t sub_20E1350F4(unsigned __int8 *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) == 0)
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

uint64_t sub_20E1352E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_20E135360(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677F0, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E135400()
{
  sub_20E195B0C(&qword_27C8674A0, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return sub_20E322470();
}

uint64_t sub_20E13546C()
{
  sub_20E195B0C(&qword_27C8674A0, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);

  return sub_20E322480();
}

uint64_t sub_20E135534()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8656B8);
  __swift_project_value_buffer(v0, qword_27C8656B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceLocale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userLocale";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "responseLocale";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E13576C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v11 = v5 + 32;
LABEL_3:
        a5(v11, a2, a3);
        break;
      case 2:
        v11 = v5 + 16;
        goto LABEL_3;
      case 1:
        a4(v5, a2, a3);
        break;
    }
  }
}

uint64_t sub_20E135850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v5))
    {
      v13 = v4[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_20E322540(), !v5))
      {
        v15 = v4 + *(a4(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E1359CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E135A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677E8, type metadata accessor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E135ADC()
{
  sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings);

  return sub_20E322470();
}

uint64_t sub_20E135B48()
{
  sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings);

  return sub_20E322480();
}

uint64_t sub_20E135BE4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8656D0);
  __swift_project_value_buffer(v0, qword_27C8656D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voiceGender";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userGender";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoGenderSettings.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        sub_20E184A2C();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t TranscriptProtoGenderSettings.traverse<A>(visitor:)()
{
  if (!*v0 || (v5 = *v0, sub_20E184A2C(), result = sub_20E3224D0(), !v1))
  {
    if (!v0[1] || (v4 = v0[1], sub_20E184A2C(), result = sub_20E3224D0(), !v1))
    {
      v3 = &v0[*(type metadata accessor for TranscriptProtoGenderSettings(0) + 24)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E135FC0@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E13603C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677E0, type metadata accessor for TranscriptProtoGenderSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1360DC()
{
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings);

  return sub_20E322470();
}

uint64_t sub_20E136148()
{
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings);

  return sub_20E322480();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.decodeMessage<A>(decoder:)()
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
      sub_20E322370();
    }
  }

  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_20E322500(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoDeviceDetailsDeviceType.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E13640C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E136488(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677D8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E136528()
{
  sub_20E195B0C(&qword_27C8674D8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_20E322470();
}

uint64_t sub_20E136594()
{
  sub_20E195B0C(&qword_27C8674D8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_20E322480();
}

uint64_t sub_20E136610(_DWORD *a1, _DWORD *a2, uint64_t a3)
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

uint64_t sub_20E1366D0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865700);
  __swift_project_value_buffer(v0, qword_27C865700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceIdsId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E1368E8()
{
  v0 = *(type metadata accessor for TranscriptProtoDeviceDetails(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_20E195B0C(&qword_27C8674D8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_20E322430();
}

uint64_t sub_20E1369DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FD0, &unk_20E33C450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C867FD0, &unk_20E33C450);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867FD0, &unk_20E33C450);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_20E195B0C(&qword_27C8674D8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
}

uint64_t sub_20E136CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677D0, type metadata accessor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E136D48()
{
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails);

  return sub_20E322470();
}

uint64_t sub_20E136DB4()
{
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails);

  return sub_20E322480();
}

uint64_t sub_20E136E50()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865718);
  __swift_project_value_buffer(v0, qword_27C865718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementID.decodeMessage<A>(decoder:)()
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
      sub_20E322400();
    }

    else if (result == 2)
    {
      sub_20E3223D0();
    }
  }

  return result;
}

uint64_t TranscriptProtoStatementID.traverse<A>(visitor:)()
{
  result = *v0;
  if (!result || (result = sub_20E322550(), !v1))
  {
    if (*(v0 + 2))
    {
      v3 = *(v0 + 1);
      result = sub_20E322540();
    }

    if (!v1)
    {
      v4 = v0 + *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E1371BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E13723C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677C8, type metadata accessor for TranscriptProtoStatementID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1372DC()
{
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);

  return sub_20E322470();
}

uint64_t sub_20E137348()
{
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);

  return sub_20E322480();
}

uint64_t sub_20E1373E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865730);
  __swift_project_value_buffer(v0, qword_27C865730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tool";
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoToolResolution.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E1377F4();
          break;
        case 2:
          sub_20E137740();
          break;
        case 1:
          type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
          sub_20E195B0C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E137740()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E1377F4()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E137910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E195B0C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E137B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoToolResolution(0);
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

uint64_t sub_20E137D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoToolResolution(0);
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

uint64_t sub_20E138008(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677C0, type metadata accessor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1380A8()
{
  sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution);

  return sub_20E322470();
}

uint64_t sub_20E138114()
{
  sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution);

  return sub_20E322480();
}

uint64_t sub_20E1381B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865748);
  __swift_project_value_buffer(v0, qword_27C865748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "statementIdToUndo";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoUndoRedoRequest.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E3223E0();
        }

        else if (result == 2)
        {
          sub_20E3223D0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_20E184A80();
            sub_20E322310();
            break;
          case 4:
            sub_20E138594();
            break;
          case 5:
            sub_20E138648();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E138594()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E138648()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v4))
  {
    if (*(v3 + 32))
    {
      v11 = *(v3 + 24);
      result = sub_20E322540();
    }

    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_20E184A80();
        sub_20E3224D0();
      }

      sub_20E138830(v3, a1, a2, a3);
      sub_20E138A4C(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 36);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E138830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

uint64_t sub_20E138A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

uint64_t sub_20E138CB4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a2 + a1[9];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E138D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E138DFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E138EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677B8, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E138F40()
{
  sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return sub_20E322470();
}

uint64_t sub_20E138FAC()
{
  sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return sub_20E322480();
}

uint64_t sub_20E139048()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865760);
  __swift_project_value_buffer(v0, qword_27C865760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoClientUndoRedoRequest.decodeMessage<A>(decoder:)()
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
          sub_20E1393C0();
        }

        else if (result == 4)
        {
          sub_20E139474();
        }
      }

      else if (result == 1)
      {
        sub_20E3223E0();
      }

      else if (result == 2)
      {
        sub_20E184A80();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1393C0()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E139474()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoClientUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(v3 + 16) != 1 || (sub_20E184A80(), result = sub_20E3224D0(), !v4))
    {
      result = sub_20E139638(v3, a1, a2, a3);
      if (!v4)
      {
        sub_20E139854(v3, a1, a2, a3);
        v12 = v3 + *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 32);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E139638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

uint64_t sub_20E139854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

uint64_t sub_20E139ABC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  v7 = a2 + a1[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E139BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677B0, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E139C5C()
{
  sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return sub_20E322470();
}

uint64_t sub_20E139CC8()
{
  sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return sub_20E322480();
}

uint64_t sub_20E139D64()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865778);
  __swift_project_value_buffer(v0, qword_27C865778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
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
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "statementId";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTypeConversionRequest.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E13A174();
          break;
        case 2:
          sub_20E13A0C0();
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E13A0C0()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E195B0C(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E13A174()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E13A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
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

uint64_t sub_20E13A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
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

uint64_t sub_20E13A714@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + a1[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E13A860(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677A8, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13A900()
{
  sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return sub_20E322470();
}

uint64_t sub_20E13A96C()
{
  sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return sub_20E322480();
}

uint64_t sub_20E13AA08()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865790);
  __swift_project_value_buffer(v0, qword_27C865790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
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
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originStatementId";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTypeConversionResult.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E13AE18();
          break;
        case 2:
          sub_20E13AD64();
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E13AD64()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E13AE18()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E13AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
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

uint64_t sub_20E13B150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
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

uint64_t sub_20E13B3D0@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a1[5];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(a3 + v6, 1, 1, v7);
  v8(a3 + a1[6], 1, 1, v7);
  v9 = a3 + a1[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E13B508(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8677A0, type metadata accessor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13B5A8()
{
  sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult);

  return sub_20E322470();
}

uint64_t sub_20E13B614()
{
  sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult);

  return sub_20E322480();
}

uint64_t sub_20E13B6B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8657A8);
  __swift_project_value_buffer(v0, qword_27C8657A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryDecorationResult.decodeMessage<A>(decoder:)()
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
        if (result == 5)
        {
          v3 = v0;
          type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
          sub_20E195B0C(&qword_27C8661A8, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
LABEL_5:
          v0 = v3;
          sub_20E322420();
          goto LABEL_6;
        }

        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
          sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_20E195B0C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_20E13BAE8();
        }
      }

LABEL_6:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E13BAE8()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 28);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_20E195B0C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryDecorationResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_20E195B0C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_20E322570(), !v4))
  {
    result = sub_20E13BD8C(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
        sub_20E195B0C(&qword_27C8661A8, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_20E322570();
      }

      if (*(v3[2] + 16))
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_20E195B0C(&qword_27C865E28, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_20E322570();
      }

      v9 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 32);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E13BD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  sub_20E0486F4(a1 + *(DecorationResult + 28), v8, &qword_27C863C40, &unk_20E33C460);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C40, &unk_20E33C460);
  }

  sub_20E195B54(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E195B0C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_20E13BFF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 28);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a2[v4], 1, 1, DecorationToolRetrievalResponse);
  v6 = &a2[*(a1 + 32)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v8;
  *(a2 + 2) = v8;
  return result;
}

uint64_t sub_20E13C09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E13C110(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E13C1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867798, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13C254()
{
  sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return sub_20E322470();
}

uint64_t sub_20E13C2C0()
{
  sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return sub_20E322480();
}

uint64_t sub_20E13C35C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8657C0);
  __swift_project_value_buffer(v0, qword_27C8657C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataSource";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "payload";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.decodeMessage<A>(decoder:)()
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
        sub_20E13C6FC();
        break;
      case 2:
        sub_20E3223E0();
        break;
      case 1:
        sub_20E13C648();
        break;
    }
  }

  return result;
}

uint64_t sub_20E13C648()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E13C6FC()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 24);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_20E195B0C(&qword_27C867648, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  return sub_20E322430();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E13C878(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_20E322540();
    }

    sub_20E13CA94(v3, a1, a2, a3);
    v12 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_20E0486F4(a1 + *(DecorationPrePlannerResult + 20), v8, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E13CA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F90, &qword_20E33B060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v10 = *(DecorationPrePlannerResultPayload - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_20E0486F4(a1 + *(DecorationPrePlannerResult + 24), v8, &qword_27C867F90, &qword_20E33B060);
  if ((*(v10 + 48))(v8, 1, DecorationPrePlannerResultPayload) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867F90, &qword_20E33B060);
  }

  sub_20E195B54(v8, v13, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E195B0C(&qword_27C867648, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E322580();
  return sub_20E195C24(v13, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
}

uint64_t sub_20E13CD28@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v7 = a1[5];
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = a1[6];
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E13CE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E13CE8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E13CF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867790, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13CFD0()
{
  sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_20E322470();
}

uint64_t sub_20E13D03C()
{
  sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_20E322480();
}

uint64_t sub_20E13D118(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_20E13D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_20E322520(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13D304(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867788, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13D3A4()
{
  sub_20E195B0C(&qword_27C8675B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_20E322470();
}

uint64_t sub_20E13D410()
{
  sub_20E195B0C(&qword_27C8675B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13D674(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867780, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13D714()
{
  sub_20E195B0C(&qword_27C8675D0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_20E322470();
}

uint64_t sub_20E13D780()
{
  sub_20E195B0C(&qword_27C8675D0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoRetrievedContext(0), sub_20E195B0C(&qword_27C8661D0, type metadata accessor for ContextProtoRetrievedContext), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E147778(*a1, *a2, type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, static ContextProtoRetrievedContext.== infix(_:_:), type metadata accessor for ContextProtoRetrievedContext) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E13DB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867778, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13DBC8()
{
  sub_20E195B0C(&qword_27C8675E8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_20E322470();
}

uint64_t sub_20E13DC34()
{
  sub_20E195B0C(&qword_27C8675E8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_20E322480();
}

uint64_t sub_20E13DCB0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_20E147778(*a1, *a2, type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, static ContextProtoRetrievedContext.== infix(_:_:), type metadata accessor for ContextProtoRetrievedContext) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_20E195B0C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13E004(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867770, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13E0A4()
{
  sub_20E195B0C(&qword_27C867600, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_20E322470();
}

uint64_t sub_20E13E110()
{
  sub_20E195B0C(&qword_27C867600, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_20E195B0C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13E400(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867768, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13E4A0()
{
  sub_20E195B0C(&qword_27C867618, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_20E322470();
}

uint64_t sub_20E13E50C()
{
  sub_20E195B0C(&qword_27C867618, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoToolQueryOutput(0), sub_20E195B0C(&qword_27C8661F0, type metadata accessor for ContextProtoToolQueryOutput), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E13E768(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E13E8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867760, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E13E954()
{
  sub_20E195B0C(&qword_27C867630, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_20E322470();
}

uint64_t sub_20E13E9C0()
{
  sub_20E195B0C(&qword_27C867630, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_20E322480();
}

uint64_t sub_20E13EA54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E13EB1C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865868);
  __swift_project_value_buffer(v0, qword_27C865868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "strings";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E140060(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E14061C(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E140BD8(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E13EF38(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E13F4E8(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E13FAA4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E13EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F40, &qword_20E33B010);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C867F40, &qword_20E33B010);
      v35 = v43;
      sub_20E195B54(v20, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E195B0C(&qword_27C8675B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F40, &qword_20E33B010);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F40, &qword_20E33B010);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F40, &qword_20E33B010);
    return sub_20E04875C(v36, &qword_27C867F40, &qword_20E33B010);
  }

  else
  {
    v39 = v44;
    sub_20E195B54(v36, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F40, &qword_20E33B010);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E13F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F48, &qword_20E33B018);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C867F48, &qword_20E33B018);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
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
  sub_20E195B0C(&qword_27C8675D0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F48, &qword_20E33B018);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F48, &qword_20E33B018);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F48, &qword_20E33B018);
    return sub_20E04875C(v36, &qword_27C867F48, &qword_20E33B018);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F48, &qword_20E33B018);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E13FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F50, &qword_20E33B020);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C867F50, &qword_20E33B020);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
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
  sub_20E195B0C(&qword_27C8675E8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F50, &qword_20E33B020);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F50, &qword_20E33B020);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F50, &qword_20E33B020);
    return sub_20E04875C(v36, &qword_27C867F50, &qword_20E33B020);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F50, &qword_20E33B020);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E140060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F58, &qword_20E33B028);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
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
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C867F58, &qword_20E33B028);
      v35 = v44;
      sub_20E195B54(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      sub_20E195B54(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
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
  sub_20E195B0C(&qword_27C867600, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C867F58, &qword_20E33B028);
  }

  sub_20E0486F4(v28, v36, &qword_27C867F58, &qword_20E33B028);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C867F58, &qword_20E33B028);
    return sub_20E04875C(v36, &qword_27C867F58, &qword_20E33B028);
  }

  else
  {
    v39 = v43;
    sub_20E195B54(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C867F58, &qword_20E33B028);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C866200, &unk_20E33C470);
    sub_20E195B54(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}