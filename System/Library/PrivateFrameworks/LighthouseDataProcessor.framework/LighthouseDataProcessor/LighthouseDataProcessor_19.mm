uint64_t sub_20E2B3B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF98, &qword_20E356368);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C86CF98, &qword_20E356368);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF98, &qword_20E356368);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF98, &qword_20E356368);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF98, &qword_20E356368);
    return sub_20E04875C(v36, &qword_27C86CF98, &qword_20E356368);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF98, &qword_20E356368);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B4158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFA0, &qword_20E356370);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C86CFA0, &qword_20E356370);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFA0, &qword_20E356370);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFA0, &qword_20E356370);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFA0, &qword_20E356370);
    return sub_20E04875C(v36, &qword_27C86CFA0, &qword_20E356370);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFA0, &qword_20E356370);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFA8, &qword_20E356378);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C86CFA8, &qword_20E356378);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFA8, &qword_20E356378);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFA8, &qword_20E356378);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFA8, &qword_20E356378);
    return sub_20E04875C(v36, &qword_27C86CFA8, &qword_20E356378);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFA8, &qword_20E356378);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B4CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFB0, &qword_20E356380);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C86CFB0, &qword_20E356380);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFB0, &qword_20E356380);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFB0, &qword_20E356380);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFB0, &qword_20E356380);
    return sub_20E04875C(v36, &qword_27C86CFB0, &qword_20E356380);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFB0, &qword_20E356380);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFB8, &qword_20E356388);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C86CFB8, &qword_20E356388);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFB8, &qword_20E356388);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFB8, &qword_20E356388);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFB8, &qword_20E356388);
    return sub_20E04875C(v36, &qword_27C86CFB8, &qword_20E356388);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFB8, &qword_20E356388);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFC0, &qword_20E356390);
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
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v28, &qword_27C86CFC0, &qword_20E356390);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFC0, &qword_20E356390);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFC0, &qword_20E356390);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFC0, &qword_20E356390);
    return sub_20E04875C(v36, &qword_27C86CFC0, &qword_20E356390);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFC0, &qword_20E356390);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoSystemToolProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E2BA2D4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 2u:
        sub_20E2BC780(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 3u:
        sub_20E2BD780(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 4u:
        sub_20E2BD9B8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 5u:
        sub_20E2BE088(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 6u:
        sub_20E2BE2C0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 7u:
        sub_20E2BE4F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 8u:
        sub_20E2BEE14(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 9u:
        result = sub_20E2B6734(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E2B6980(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E2B6BCC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E2B6E18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E2B7298(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E2B74E4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E2B7730(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_20E2B797C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_20E2B7BC8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_20E2B7E14(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_20E2B8060(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x14u:
        result = sub_20E2B82AC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x15u:
        result = sub_20E2B84F8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x16u:
        result = sub_20E2B8744(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x17u:
        result = sub_20E2B8990(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x18u:
        result = sub_20E2B8BDC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x19u:
        result = sub_20E2B8E28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Au:
        result = sub_20E2B9074(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Bu:
        result = sub_20E2B92C0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Cu:
        result = sub_20E2B950C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Du:
        result = sub_20E2B9758(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Eu:
        result = sub_20E2B99A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Fu:
        result = sub_20E2B9BF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x20u:
        result = sub_20E2B9E3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_20E2BA088(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x22u:
        result = sub_20E2BA50C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x23u:
        result = sub_20E2BA758(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x24u:
        result = sub_20E2BA9A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x25u:
        result = sub_20E2BABF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_20E2BAE3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x27u:
        result = sub_20E2BB088(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x28u:
        result = sub_20E2BB2D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x29u:
        result = sub_20E2BB520(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Au:
        result = sub_20E2BB76C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Bu:
        result = sub_20E2BB9B8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Cu:
        result = sub_20E2BBC04(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Du:
        result = sub_20E2BBE50(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Eu:
        result = sub_20E2BC09C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Fu:
        result = sub_20E2BC2E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x30u:
        result = sub_20E2BC534(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x31u:
        result = sub_20E2BC9B8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x32u:
        result = sub_20E2BCC04(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x33u:
        result = sub_20E2BCE50(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x34u:
        result = sub_20E2BD09C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x35u:
        result = sub_20E2BD2E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x36u:
        result = sub_20E2BD534(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x37u:
        result = sub_20E2BDBF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x38u:
        result = sub_20E2BDE3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x39u:
        result = sub_20E2BE730(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Au:
        result = sub_20E2BE97C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Bu:
        result = sub_20E2BEBC8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Cu:
        result = sub_20E2BF04C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E2B7064(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

LABEL_56:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        break;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoSystemToolProtocol(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E2B6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2B7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 16)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 17)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 19)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B82AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 20)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B84F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 21)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 22)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 24)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 25)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 26)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B92C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 27)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 28)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 29)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 30)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 31)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 32)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 33)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 34)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 35)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 36)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 37)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BAE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 38)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 39)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 40)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 41)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 42)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 43)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BBC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 44)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 45)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 46)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 47)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 48)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 49)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 50)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BCE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 51)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 52)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 53)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 54)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BD9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BDBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 55)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BDE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 56)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BE088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 57)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BE97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 58)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BEBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 59)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BEE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C8688D8, &qword_20E33B888);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C8688D8, &qword_20E33B888);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 60)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BF348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC18, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BF3E8()
{
  sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return sub_20E322470();
}

uint64_t sub_20E2BF454()
{
  sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return sub_20E322480();
}

uint64_t sub_20E2BF4D4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E362230);
  qword_27C86B268 = 0xD00000000000001ALL;
  unk_27C86B270 = 0x800000020E361890;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)()
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
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_20E3224C0(), !v1))
  {
    v3 = &v0[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2BF76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BF80C()
{
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_20E322470();
}

uint64_t sub_20E2BF878()
{
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_20E322480();
}

uint64_t sub_20E2BF8F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2BFAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC08, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BFB90()
{
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_20E322470();
}

uint64_t sub_20E2BFBFC()
{
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_20E322480();
}

uint64_t sub_20E2BFC78()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001DLL, 0x800000020E362200);
  qword_27C86B2B8 = 0xD00000000000001ALL;
  unk_27C86B2C0 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2BFD78()
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
      sub_20E3223A0();
    }
  }

  return result;
}

uint64_t sub_20E2BFE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_20E322520(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2BFF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC00, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BFFD4()
{
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_20E322470();
}

uint64_t sub_20E2C0040()
{
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_20E322480();
}

uint64_t sub_20E2C024C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBF8, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C02EC()
{
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_20E322470();
}

uint64_t sub_20E2C0358()
{
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_20E322480();
}

uint64_t sub_20E2C03D4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E3621E0);
  qword_27C86B308 = 0xD00000000000001ALL;
  unk_27C86B310 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C0474()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B318);
  __swift_project_value_buffer(v0, qword_27C86B318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = *v6;
  v10 = v6[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_20E322540(), !v7))
  {
    v13 = v6[3];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_20E322540(), !v7))
    {
      v15 = v6 + *(a6(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2C0848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBF0, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C08E8()
{
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_20E322470();
}

uint64_t sub_20E2C0954()
{
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_20E322480();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)()
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
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E2C0BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBE8, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C0C5C()
{
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_20E322470();
}

uint64_t sub_20E2C0CC8()
{
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_20E322480();
}

uint64_t sub_20E2C0D44()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E362190);
  qword_27C86B358 = 0xD00000000000001ALL;
  unk_27C86B360 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C0DE0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B368);
  __swift_project_value_buffer(v0, qword_27C86B368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "stateChange";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E2C1340();
        break;
      case 2:
        sub_20E2C10EC(a1, v5, a2, a3, 0x100000001);
        break;
      case 1:
        sub_20E2C10EC(a1, v5, a2, a3, 0x100000000);
        break;
    }
  }

  return result;
}

uint64_t sub_20E2C10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
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
  if ((*(v21 + 5) & 1) == 0)
  {
    sub_20E3222C0();
  }

  v18 = v22;
  result = sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  *v17 = v18;
  *(v17 + 4) = BYTE4(v18);
  *(v17 + 5) = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)()
{
  if (*(v0 + 5))
  {
    goto LABEL_2;
  }

  v4 = *v0;
  if (((v4 | (*(v0 + 4) << 32)) & 0x100000000) != 0)
  {
    if (v4)
    {
      result = sub_20E2C1604(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E2C14A4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E322500();
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2C14A4(unsigned int *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || (v8 = *a1, ((v8 | (*(a1 + 4) << 32)) & 0x100000000) == 0) || v8)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_20E2C1604(unsigned int *a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) == 0 && (v8 = *a1, ((v8 | (*(a1 + 4) << 32)) & 0x100000000) != 0) && v8)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2C17AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2C1830(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBE0, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C18D0()
{
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_20E322470();
}

uint64_t sub_20E2C193C()
{
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_20E322480();
}

uint64_t sub_20E2C19BC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362160);
  qword_27C86B380 = 0xD00000000000001ALL;
  *algn_27C86B388 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C1BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBD8, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C1C74()
{
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_20E322470();
}

uint64_t sub_20E2C1CE0()
{
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_20E322480();
}

uint64_t sub_20E2C1D88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C1F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBD0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C1FC8()
{
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_20E322470();
}

uint64_t sub_20E2C2034()
{
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_20E322480();
}

uint64_t ToolKitProtoToolDefinition.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_20E3222B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_20E2C21D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBC8, type metadata accessor for ToolKitProtoToolDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C2274()
{
  sub_20E2FB9A4(&qword_27C86C750, type metadata accessor for ToolKitProtoToolDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2C22E0()
{
  sub_20E2FB9A4(&qword_27C86C750, type metadata accessor for ToolKitProtoToolDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2C235C()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86B3E8 = 0xD000000000000016;
  unk_27C86B3F0 = 0x800000020E3618B0;
  return result;
}

uint64_t sub_20E2C23F4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B3F8);
  __swift_project_value_buffer(v0, qword_27C86B3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20E34A230;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "toolType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "outputType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "outputResultName";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sourceApplication";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "descriptionSummary";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "categories";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "searchKeywords";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "deprecationDefinition";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "requirements";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "flags";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "authenticationPolicy";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sampleInvocations";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "systemProtocols";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "customIcon";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "hiddenParameters";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "sourceContainer";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "attributionContainer";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "visibilityFlags";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          sub_20E3223E0();
          break;
        case 3:
          v5 = v0;
          sub_20E24F30C();
          goto LABEL_24;
        case 4:
        case 18:
          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
          goto LABEL_5;
        case 5:
          sub_20E2C2ECC();
          break;
        case 6:
          v6 = v0;
          v8 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72);
          goto LABEL_22;
        case 7:
          sub_20E2C2F80();
          break;
        case 8:
          v6 = v0;
          v7 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80);
LABEL_22:
          v0 = v6;
          sub_20E3223D0();
          break;
        case 9:
          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
          sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);
          goto LABEL_5;
        case 10:
          sub_20E3223A0();
          break;
        case 11:
          sub_20E2C3034();
          break;
        case 12:
          v3 = v0;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        case 13:
          v4 = v0;
          sub_20E24F2B8();
          goto LABEL_20;
        case 14:
          v5 = v0;
          sub_20E24F210();
LABEL_24:
          v0 = v5;
          sub_20E322310();
          break;
        case 15:
          v3 = v0;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          goto LABEL_5;
        case 16:
          v3 = v0;
          type metadata accessor for ToolKitProtoSystemToolProtocol(0);
          sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol);
LABEL_5:
          v0 = v3;
          sub_20E322420();
          break;
        case 17:
          sub_20E2C30E8();
          break;
        case 19:
          sub_20E2C319C();
          break;
        case 20:
          sub_20E2C3250();
          break;
        case 21:
          v4 = v0;
          sub_20E24F264();
LABEL_20:
          v0 = v4;
          sub_20E3222D0();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C2ECC()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 68);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E2C2F80()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 76);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition);
  return sub_20E322430();
}

uint64_t sub_20E2C3034()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 84);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  return sub_20E322430();
}

uint64_t sub_20E2C30E8()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 88);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  return sub_20E322430();
}

uint64_t sub_20E2C319C()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 92);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);
  return sub_20E322430();
}

uint64_t sub_20E2C3250()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 96);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      if (!*(v3 + 32) || (v16 = *(v3 + 32), sub_20E24F30C(), result = sub_20E3224D0(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0), sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter), result = sub_20E322570(), !v4))
        {
          result = sub_20E2C38A8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_20E2C3AC4(v3);
            sub_20E2C3B3C(v3, a1, a2, a3);
            sub_20E2C3D58(v3);
            if (*(*(v3 + 48) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
              sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);
              sub_20E322570();
            }

            if (*(*(v3 + 56) + 16))
            {
              sub_20E322520();
            }

            sub_20E2C3DD0(v3, a1, a2, a3);
            if (*(*(v3 + 64) + 16))
            {
              type metadata accessor for ToolKitProtoRuntimeRequirement(0);
              sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);
              sub_20E322570();
            }

            if (*(*(v3 + 72) + 16))
            {
              sub_20E24F2B8();
              sub_20E3224B0();
            }

            if (*(v3 + 80))
            {
              v15 = *(v3 + 80);
              sub_20E24F210();
              sub_20E3224D0();
            }

            if (*(*(v3 + 88) + 16))
            {
              type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
              sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
              sub_20E322570();
            }

            if (*(*(v3 + 96) + 16))
            {
              type metadata accessor for ToolKitProtoSystemToolProtocol(0);
              sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol);
              sub_20E322570();
            }

            sub_20E2C3FEC(v3, a1, a2, a3);
            if (*(*(v3 + 104) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
              sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
              sub_20E322570();
            }

            sub_20E2C4208(v3, a1, a2, a3);
            sub_20E2C4424(v3, a1, a2, a3);
            if (*(*(v3 + 112) + 16))
            {
              sub_20E24F264();
              sub_20E3224B0();
            }

            v14 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2C38A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 68), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2C3AC4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2C3B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D28, &qword_20E346350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 76), v8, &qword_27C869D28, &qword_20E346350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D28, &qword_20E346350);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAppDefinition);
}

uint64_t sub_20E2C3D58(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = (a1 + *(result + 80));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2C3DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D30, &qword_20E346358);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 84), v8, &qword_27C869D30, &qword_20E346358);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D30, &qword_20E346358);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
}

uint64_t sub_20E2C3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D38, &qword_20E346360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 88), v8, &qword_27C869D38, &qword_20E346360);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D38, &qword_20E346360);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
}

uint64_t sub_20E2C4208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 92), v8, &qword_27C869D40, &qword_20E346368);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D40, &qword_20E346368);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_20E2C4424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 96), v8, &qword_27C869D40, &qword_20E346368);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D40, &qword_20E346368);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_20E2C46B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2C4728(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E2C479C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 100);
  return result;
}

uint64_t sub_20E2C47F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBC0, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C4890()
{
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return sub_20E322470();
}

uint64_t sub_20E2C48FC()
{
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return sub_20E322480();
}

uint64_t sub_20E2C497C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B410);
  __swift_project_value_buffer(v0, qword_27C86B410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolType_APP_INTENT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolType_SIRI_INTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolType_ACTION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C4C20()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B428);
  __swift_project_value_buffer(v0, qword_27C86B428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Flag_OPENS_APP_WHEN_RUN";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Flag_IS_DISCONTINUED";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Flag_IS_UNDISCOVERABLE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "Flag_DOES_NOT_IMPLEMENT_PERFORM";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "Flag_SHOWS_OPEN_WHEN_RUN";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "Flag_OUTPUT_HAS_SNIPPET";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "Flag_OUTPUT_PROVIDES_DIALOG";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C4FE4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B440);
  __swift_project_value_buffer(v0, qword_27C86B440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C5208()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B458);
  __swift_project_value_buffer(v0, qword_27C86B458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicy_NONE";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN";
  *(v12 + 1) = 54;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN_AND_REMOTE";
  *(v14 + 1) = 65;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C54AC()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x74656D617261502ELL, 0xEA00000000007265);

  qword_27C86B470 = v1;
  *algn_27C86B478 = v2;
  return result;
}

uint64_t sub_20E2C557C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B480);
  __swift_project_value_buffer(v0, qword_27C86B480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "key";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "valueType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "relationships";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
          sub_20E3223E0();
        }

        else if (result == 3)
        {
          sub_20E3223D0();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_20E2C5AB0();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_20;
        }

        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
LABEL_20:
          v0 = v3;
          sub_20E322420();
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_20E24F1BC();
          sub_20E3222D0();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C5AB0()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 40);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = v3[2];
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      if (v3[8])
      {
        v14 = v3[7];
        result = sub_20E322540();
      }

      if (!v4)
      {
        sub_20E2C5DA8(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_20E322570();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          sub_20E322570();
        }

        if (*(v3[6] + 16))
        {
          sub_20E24F1BC();
          sub_20E3224B0();
        }

        v15 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 44);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2C5DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2C6010@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 44)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = v8;
  *(a2 + 6) = v8;
  return result;
}

uint64_t sub_20E2C6104(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C61A4()
{
  sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_20E322470();
}

uint64_t sub_20E2C6210()
{
  sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_20E322480();
}

uint64_t sub_20E2C6290()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B498);
  __swift_project_value_buffer(v0, qword_27C86B498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlags_HIDDEN";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ParameterFlags_SYNTHESIZED";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C6500()
{
  if (qword_27C863790 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B470;
  v2 = *algn_27C86B478;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_27C86B4B0 = v1;
  *algn_27C86B4B8 = v2;
  return result;
}

uint64_t sub_20E2C65D8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B4C0);
  __swift_project_value_buffer(v0, qword_27C86B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C6818()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0) + 20);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_20E322430();
}

uint64_t sub_20E2C690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C867E70, &unk_20E346370);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867E70, &unk_20E346370);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
}

uint64_t sub_20E2C6B8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
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

uint64_t sub_20E2C6C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBB0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C6D0C()
{
  sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_20E322470();
}

uint64_t sub_20E2C6D78()
{
  sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_20E322480();
}

uint64_t sub_20E2C6DF8()
{
  if (qword_27C8637A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4B0;
  v2 = *algn_27C86B4B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_27C86B4D8 = v1;
  unk_27C86B4E0 = v2;
  return result;
}

uint64_t sub_20E2C6EC8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B4E8);
  __swift_project_value_buffer(v0, qword_27C86B4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isNone";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "equals";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notEquals";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lessThan";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contains";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "doesNotContain";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            sub_20E2C8B08(v5, a1, a2, a3);
          }

          else if (result == 8)
          {
            sub_20E2C90C4(v5, a1, a2, a3);
          }
        }

        else if (result == 5)
        {
          sub_20E2C7F90(v5, a1, a2, a3);
        }

        else
        {
          sub_20E2C854C(v5, a1, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E2C7424(v5, a1, a2, a3);
        }

        else
        {
          sub_20E2C79D4(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
        }

        sub_20E257248(v11, v12, v13, v14, &qword_27C867E60, &qword_20E33AF40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind, v15);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C7424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF50, &qword_20E356320);
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
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CF50, &qword_20E356320);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF50, &qword_20E356320);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF50, &qword_20E356320);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF50, &qword_20E356320);
    return sub_20E04875C(v36, &qword_27C86CF50, &qword_20E356320);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF50, &qword_20E356320);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2C79D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF58, &qword_20E356328);
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
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CF58, &qword_20E356328);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF58, &qword_20E356328);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF58, &qword_20E356328);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF58, &qword_20E356328);
    return sub_20E04875C(v36, &qword_27C86CF58, &qword_20E356328);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF58, &qword_20E356328);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2C7F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF60, &qword_20E356330);
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
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86CF60, &qword_20E356330);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF60, &qword_20E356330);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF60, &qword_20E356330);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF60, &qword_20E356330);
    return sub_20E04875C(v36, &qword_27C86CF60, &qword_20E356330);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF60, &qword_20E356330);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2C854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF68, &qword_20E356338);
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
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C86CF68, &qword_20E356338);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF68, &qword_20E356338);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF68, &qword_20E356338);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF68, &qword_20E356338);
    return sub_20E04875C(v36, &qword_27C86CF68, &qword_20E356338);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF68, &qword_20E356338);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2C8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF70, &qword_20E356340);
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
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C86CF70, &qword_20E356340);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF70, &qword_20E356340);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF70, &qword_20E356340);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF70, &qword_20E356340);
    return sub_20E04875C(v36, &qword_27C86CF70, &qword_20E356340);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF70, &qword_20E356340);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2C90C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v6 = *(DoesNotContain - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DoesNotContain);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF78, &qword_20E356348);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DoesNotContain;
  v30 = DoesNotContain;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867E60, &qword_20E33AF40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867E60, &qword_20E33AF40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C86CF78, &qword_20E356348);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF78, &qword_20E356348);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF78, &qword_20E356348);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF78, &qword_20E356348);
    return sub_20E04875C(v36, &qword_27C86CF78, &qword_20E356348);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF78, &qword_20E356348);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C867E60, &qword_20E33AF40);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_20E2CA1F0(v3, a1, a2, a3);
      }

      else
      {
        sub_20E2CA428(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E2C9FB8(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2C9D84(v3, a1, a2, a3);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E2CA660(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2CA898(v3, a1, a2, a3);
    }

LABEL_17:
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    result = sub_20E2C98EC(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = sub_20E2C9B38(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2C98EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867E60, &qword_20E33AF40);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867E60, &qword_20E33AF40);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2C9B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C867E60, &qword_20E33AF40);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C867E60, &qword_20E33AF40);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2C9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2C9FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v10 = *(*(DoesNotContain - 8) + 64);
  MEMORY[0x28223BE20](DoesNotContain);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867E60, &qword_20E33AF40);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CAB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CAC2C()
{
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_20E322470();
}

uint64_t sub_20E2CAC98()
{
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_20E322480();
}

uint64_t sub_20E2CAD18()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x736C617571452ELL, 0xE700000000000000);

  qword_27C86B500 = v1;
  *algn_27C86B508 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CAFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBA0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB044()
{
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_20E322470();
}

uint64_t sub_20E2CB0B0()
{
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_20E322480();
}

uint64_t sub_20E2CB12C()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_27C86B528 = v1;
  unk_27C86B530 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CB3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB45C()
{
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_20E322470();
}

uint64_t sub_20E2CB4C8()
{
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_20E322480();
}

uint64_t sub_20E2CB544()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726574616572472ELL, 0xEC0000006E616854);

  qword_27C86B550 = v1;
  *algn_27C86B558 = v2;
  return result;
}

uint64_t sub_20E2CB618()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B560);
  __swift_project_value_buffer(v0, qword_27C86B560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CB8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB90, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB984()
{
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_20E322470();
}

uint64_t sub_20E2CB9F0()
{
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_20E322480();
}

uint64_t sub_20E2CBA6C()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_27C86B578 = v1;
  unk_27C86B580 = v2;
  return result;
}

uint64_t sub_20E2CBB3C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B588);
  __swift_project_value_buffer(v0, qword_27C86B588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CBD3C()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E322420();
      }

      else if (result == 2)
      {
        sub_20E3222F0();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v5))
  {
    if (v4[8] != 1 || (result = sub_20E3224C0(), !v5))
    {
      v8 = &v4[*(a4(0) + 24)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2CC000(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC0A0()
{
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_20E322470();
}

uint64_t sub_20E2CC10C()
{
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_20E322480();
}

uint64_t sub_20E2CC188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20E1484A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2CC240()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_27C86B5A0 = v1;
  *algn_27C86B5A8 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CC4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB80, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC570()
{
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_20E322470();
}

uint64_t sub_20E2CC5DC()
{
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_20E322480();
}

uint64_t sub_20E2CC658()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_27C86B5C8 = v1;
  unk_27C86B5D0 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CC94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC9EC()
{
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_20E322470();
}

uint64_t sub_20E2CCA58()
{
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_20E322480();
}

uint64_t sub_20E2CCAD4()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726F67657461432ELL, 0xE900000000000079);

  qword_27C86B5F0 = v1;
  *algn_27C86B5F8 = v2;
  return result;
}

uint64_t sub_20E2CCBA4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B600);
  __swift_project_value_buffer(v0, qword_27C86B600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CCE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CCF28()
{
  sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_20E322470();
}

uint64_t sub_20E2CCF94()
{
  sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_20E322480();
}

uint64_t sub_20E2CD040()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_27C86B618 = v1;
  unk_27C86B620 = v2;
  return result;
}

uint64_t sub_20E2CD110()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B628);
  __swift_project_value_buffer(v0, qword_27C86B628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E269590(a1, v5, a2, a3, &qword_27C869D48, &qword_20E346380, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind, 0);
      }

      else if (result == 2)
      {
        sub_20E2CD3E8(v5, a1, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CD3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF48, &qword_20E356318);
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
  sub_20E0486F4(a1, v14, &qword_27C869D48, &qword_20E346380);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D48, &qword_20E346380);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CF48, &qword_20E356318);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF48, &qword_20E356318);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF48, &qword_20E356318);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF48, &qword_20E356318);
    return sub_20E04875C(v36, &qword_27C86CF48, &qword_20E356318);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF48, &qword_20E356318);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D48, &qword_20E346380);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869D48, &qword_20E346380);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2CDCCC(v3, a1, a2, a3);
      result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      result = sub_20E2CDB54(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E2CDB54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869D48, &qword_20E346380);
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869D48, &qword_20E346380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D48, &qword_20E346380);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D48, &qword_20E346380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CDFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB68, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CE060()
{
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_20E322470();
}

uint64_t sub_20E2CE0CC()
{
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_20E322480();
}

uint64_t sub_20E2CE14C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B640);
  __swift_project_value_buffer(v0, qword_27C86B640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CE370()
{
  if (qword_27C863838 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B618;
  v2 = qword_27C86B620;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_27C86B658 = v1;
  unk_27C86B660 = v2;
  return result;
}

uint64_t sub_20E2CE448()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B668);
  __swift_project_value_buffer(v0, qword_27C86B668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "style";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foreground";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "background";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_20E3223E0();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_20E3223D0();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_20E24F168();
          sub_20E322310();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)()
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
    if (*(v0 + 16) != 1 || (sub_20E24F168(), result = sub_20E3224D0(), !v1))
    {
      result = v0[3];
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_20E322540(), !v1))
      {
        if (v0[6])
        {
          v8 = v0[5];
          result = sub_20E322540();
        }

        if (!v1)
        {
          v9 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
          return sub_20E3221A0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2CE948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2CE9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB60, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CEA80()
{
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_20E322470();
}

uint64_t sub_20E2CEAEC()
{
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_20E322480();
}

uint64_t sub_20E2CEB6C()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_27C86B680 = v1;
  *algn_27C86B688 = v2;
  return result;
}

uint64_t sub_20E2CEC40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B690);
  __swift_project_value_buffer(v0, qword_27C86B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v5))
  {
    if (v4[3])
    {
      v10 = v4[2];
      result = sub_20E322540();
    }

    if (!v5)
    {
      v11 = v4 + *(a4(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2CF02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CF0CC()
{
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_20E322470();
}

uint64_t sub_20E2CF138()
{
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_20E322480();
}

uint64_t sub_20E2CF200()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6A8);
  __swift_project_value_buffer(v0, qword_27C86B6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAppDefinition.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_4:
          sub_20E3223E0();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          sub_20E2CF658();
        }

        else if (result == 7)
        {
          sub_20E24F114();
          sub_20E322310();
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CF658()
{
  v0 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device);
  return sub_20E322430();
}

uint64_t ToolKitProtoAppDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      v14 = *(v3 + 40);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (result = sub_20E322540(), !v4))
      {
        v16 = *(v3 + 56);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v17 || (result = sub_20E322540(), !v4))
        {
          v18 = *(v3 + 72);
          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v19 || (result = sub_20E322540(), !v4))
          {
            result = sub_20E2CF8C0(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 80))
              {
                v21 = *(v3 + 80);
                sub_20E24F114();
                sub_20E3224D0();
              }

              v20 = v3 + *(type metadata accessor for ToolKitProtoAppDefinition(0) + 44);
              return sub_20E3221A0();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2CF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D50, &qword_20E346388);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C869D50, &qword_20E346388);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D50, &qword_20E346388);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAppDefinition.Device);
}

uint64_t sub_20E2CFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_20E2CFC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB50, type metadata accessor for ToolKitProtoAppDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CFCAC()
{
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2CFD18()
{
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2CFD98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6C0);
  __swift_project_value_buffer(v0, qword_27C86B6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D0004()
{
  result = MEMORY[0x20F32BF40](0x6563697665442ELL, 0xE700000000000000);
  qword_27C86B6D8 = 0xD000000000000015;
  unk_27C86B6E0 = 0x800000020E3618D0;
  return result;
}

uint64_t sub_20E2D0098()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B6E8);
  __swift_project_value_buffer(v0, qword_27C86B6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
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
      sub_20E2D19D0(a1, v7, a2, a3, a4);
    }

    else if (result == 2)
    {
      sub_20E2D1C28();
    }
  }

  return result;
}

uint64_t sub_20E2D0490(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB48, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D0530()
{
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return sub_20E322470();
}

uint64_t sub_20E2D059C()
{
  sub_20E2FB9A4(&qword_27C86C918, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return sub_20E322480();
}

uint64_t sub_20E2D0638()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B700);
  __swift_project_value_buffer(v0, qword_27C86B700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "containerId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "bundleVersion";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "containerType";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoContainerDefinition.decodeMessage<A>(decoder:)()
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

      if (result <= 4)
      {
        if (result != 2 && result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_20E3223D0();
          goto LABEL_5;
        }

        sub_20E3223E0();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            goto LABEL_14;
          }

          v3 = v0;
          sub_20E24F06C();
          goto LABEL_20;
        }

        if (result == 7)
        {
          sub_20E2D0AC0();
          goto LABEL_5;
        }

        if (result == 8)
        {
          v3 = v0;
          sub_20E24F0C0();
LABEL_20:
          v0 = v3;
          sub_20E322310();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2D0AC0()
{
  v0 = *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 40);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  return sub_20E322430();
}

uint64_t ToolKitProtoContainerDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v4))
    {
      if (*(v3 + 48))
      {
        v14 = *(v3 + 40);
        result = sub_20E322540();
      }

      if (!v4)
      {
        if (*(v3 + 32))
        {
          v18 = *(v3 + 32);
          sub_20E24F06C();
          sub_20E3224D0();
        }

        if (*(v3 + 64))
        {
          v15 = *(v3 + 56);
          sub_20E322540();
        }

        sub_20E2D0D24(v3, a1, a2, a3);
        if (*(v3 + 33))
        {
          v17 = *(v3 + 33);
          sub_20E24F0C0();
          sub_20E3224D0();
        }

        v16 = v3 + *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 44);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2D0D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D58, &qword_20E346390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E0486F4(a1 + *(v14 + 40), v8, &qword_27C869D58, &qword_20E346390);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D58, &qword_20E346390);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_20E2D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E2D1070(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB40, type metadata accessor for ToolKitProtoContainerDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D1110()
{
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2D117C()
{
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2D11FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B718);
  __swift_project_value_buffer(v0, qword_27C86B718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D1468()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B730);
  __swift_project_value_buffer(v0, qword_27C86B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D1710()
{
  result = MEMORY[0x20F32BF40](0x6563697665442ELL, 0xE700000000000000);
  qword_27C86B748 = 0xD00000000000001BLL;
  unk_27C86B750 = 0x800000020E3618F0;
  return result;
}

uint64_t sub_20E2D17A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B758);
  __swift_project_value_buffer(v0, qword_27C86B758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D19D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v24 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = sub_20E322110();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v23 = a2;
  sub_20E0486F4(v13, v11, &qword_27C867FE0, &qword_20E33B098);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_20E04875C(v11, &qword_27C867FE0, &qword_20E33B098);
  if (v16 == 1)
  {
    return sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  }

  v17 = v23;
  if (v23[1] != 1)
  {
    sub_20E3222C0();
  }

  v18 = v24;
  sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  v20 = *v17;
  v21 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  return v18(v20, v21);
}

uint64_t sub_20E2D1C28()
{
  result = sub_20E3223D0();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_20E2D1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4[1];
  if (v7 != 1)
  {
    if (v7)
    {
      v9 = *v4;
      result = sub_20E322540();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E2D1DEC(v4);
      if (v5)
      {
        return result;
      }
    }
  }

  v10 = v4 + *(a4(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E2D1DEC(uint64_t a1)
{
  v2 = sub_20E322110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
    sub_20E3224D0();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_20E2D2030(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB38, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D20D0()
{
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return sub_20E322470();
}

uint64_t sub_20E2D213C()
{
  sub_20E2FB9A4(&qword_27C86C968, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return sub_20E322480();
}

uint64_t sub_20E2D222C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B770);
  __swift_project_value_buffer(v0, qword_27C86B770);
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
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "synonyms";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.decodeMessage<A>(decoder:)()
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
        sub_20E3223A0();
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

uint64_t ToolKitProtoTypeDisplayRepresentation.traverse<A>(visitor:)()
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
        sub_20E322520();
      }

      v6 = v0 + *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2D2698(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB30, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D2738()
{
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E2D27A4()
{
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E2D2840()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B788);
  __swift_project_value_buffer(v0, qword_27C86B788);
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
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D2A80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_20E2D2B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_20E2D2CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB28, type metadata accessor for ToolKitProtoPluginModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D2D80()
{
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData);

  return sub_20E322470();
}

uint64_t sub_20E2D2DEC()
{
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData);

  return sub_20E322480();
}

uint64_t sub_20E2D2E68(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2D2F50()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B7A0);
  __swift_project_value_buffer(v0, qword_27C86B7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "subtitle";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "altText";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "synonyms";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "snippetPluginModel";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.decodeMessage<A>(decoder:)()
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
      switch(result)
      {
        case 4:
          sub_20E2D34D8();
          break;
        case 5:
          sub_20E3223A0();
          break;
        case 6:
          sub_20E2D358C();
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
          sub_20E2D3370();
          break;
        case 3:
          sub_20E2D3424();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E2D3370()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  return sub_20E322430();
}

uint64_t sub_20E2D3424()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  return sub_20E322430();
}

uint64_t sub_20E2D34D8()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 32);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  return sub_20E322430();
}

uint64_t sub_20E2D358C()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 36);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData);
  return sub_20E322430();
}

uint64_t ToolKitProtoDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_20E2D375C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E2D3978(v3, a1, a2, a3);
      sub_20E2D3B94(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        sub_20E322520();
      }

      sub_20E2D3DB0(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 40);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D60, &qword_20E346398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869D60, &qword_20E346398);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D60, &qword_20E346398);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
}

uint64_t sub_20E2D3978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D68, &qword_20E3463A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C869D68, &qword_20E3463A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D68, &qword_20E3463A0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
}

uint64_t sub_20E2D3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D70, &qword_20E3463A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C869D70, &qword_20E3463A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D70, &qword_20E3463A8);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
}

uint64_t sub_20E2D3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D78, &qword_20E3463B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C869D78, &qword_20E3463B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D78, &qword_20E3463B0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E2FB9A4(&qword_27C86C990, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoPluginModelData);
}

uint64_t sub_20E2D4018@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = &a2[a1[10]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2D41C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB20, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D4260()
{
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return sub_20E322470();
}

uint64_t sub_20E2D42CC()
{
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return sub_20E322480();
}

uint64_t sub_20E2D4444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_20E2D45AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB18, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D464C()
{
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_20E322470();
}

uint64_t sub_20E2D46B8()
{
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_20E322480();
}

uint64_t sub_20E2D4734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2D4830()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B7F0);
  __swift_project_value_buffer(v0, qword_27C86B7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v14, &qword_27C869D80, &qword_20E3463B8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D80, &qword_20E3463B8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v36, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D80, &qword_20E3463B8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2D502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF08, &qword_20E3562D8);
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
  sub_20E0486F4(a1, v14, &qword_27C869D80, &qword_20E3463B8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D80, &qword_20E3463B8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CF08, &qword_20E3562D8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF08, &qword_20E3562D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF08, &qword_20E3562D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF08, &qword_20E3562D8);
    return sub_20E04875C(v36, &qword_27C86CF08, &qword_20E3562D8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF08, &qword_20E3562D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D80, &qword_20E3463B8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Subtitle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869D80, &qword_20E3463B8);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D59B0(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D5778(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D5778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D80, &qword_20E3463B8);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D80, &qword_20E3463B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D59B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D80, &qword_20E3463B8);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D80, &qword_20E3463B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D5CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB10, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D5D44()
{
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_20E322470();
}

uint64_t sub_20E2D5DB0()
{
  sub_20E2FB9A4(&qword_27C86C9D8, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_20E322480();
}

uint64_t sub_20E2D5E30()
{
  if (qword_27C8638E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B7E0;
  v2 = *algn_27C86B7E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B808 = v1;
  unk_27C86B810 = v2;
  return result;
}

uint64_t sub_20E2D6008(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB08, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D60A8()
{
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_20E322470();
}

uint64_t sub_20E2D6114()
{
  sub_20E2FB9A4(&qword_27C86C9F0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_20E322480();
}

uint64_t sub_20E2D61DC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B840);
  __swift_project_value_buffer(v0, qword_27C86B840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v14, &qword_27C869D88, &qword_20E3463C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D88, &qword_20E3463C0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v36, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D88, &qword_20E3463C0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2D69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEF8, &qword_20E3562C8);
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
  sub_20E0486F4(a1, v14, &qword_27C869D88, &qword_20E3463C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D88, &qword_20E3463C0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CEF8, &qword_20E3562C8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CEF8, &qword_20E3562C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CEF8, &qword_20E3562C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CEF8, &qword_20E3562C8);
    return sub_20E04875C(v36, &qword_27C86CEF8, &qword_20E3562C8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CEF8, &qword_20E3562C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D88, &qword_20E3463C0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.AltText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869D88, &qword_20E3463C0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D735C(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D7124(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D88, &qword_20E3463C0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D88, &qword_20E3463C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D88, &qword_20E3463C0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D88, &qword_20E3463C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D7650(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB00, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D76F0()
{
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_20E322470();
}

uint64_t sub_20E2D775C()
{
  sub_20E2FB9A4(&qword_27C86CA08, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_20E322480();
}

uint64_t sub_20E2D77DC()
{
  if (qword_27C863900 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B830;
  v2 = *algn_27C86B838;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B858 = v1;
  unk_27C86B860 = v2;
  return result;
}

uint64_t sub_20E2D78FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_20E2D79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *v5;
  v9 = v5[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v6))
  {
    v12 = v5 + *(a5(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D7AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAF8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D7B78()
{
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_20E322470();
}

uint64_t sub_20E2D7BE4()
{
  sub_20E2FB9A4(&qword_27C86CA20, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_20E322480();
}

uint64_t sub_20E2D7C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000020E361960;
  return result;
}

uint64_t sub_20E2D7D14()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B890);
  __swift_project_value_buffer(v0, qword_27C86B890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2D7F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE0, &qword_20E3562B0);
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
  sub_20E0486F4(a1, v14, &qword_27C869D90, &qword_20E3463C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D90, &qword_20E3463C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CEE0, &qword_20E3562B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    return sub_20E04875C(v36, &qword_27C86CEE0, &qword_20E3562B0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CEE0, &qword_20E3562B0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D90, &qword_20E3463C8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}