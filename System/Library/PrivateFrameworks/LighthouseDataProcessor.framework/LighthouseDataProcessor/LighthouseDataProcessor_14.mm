uint64_t sub_20E208AD4()
{
  result = MEMORY[0x20F32BF40](0x74696E696665442ELL, 0xEB000000006E6F69);
  qword_27C869338 = 0xD000000000000015;
  unk_27C869340 = 0x800000020E35FC50;
  return result;
}

uint64_t static ContextProtoRetrievedTool.Definition.protoMessageName.getter()
{
  if (qword_27C863130 != -1)
  {
    swift_once();
  }

  v0 = qword_27C869338;

  return v0;
}

uint64_t sub_20E208BB0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869348);
  __swift_project_value_buffer(v0, qword_27C869348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "implementation";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "assistantSchema";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entitySetter";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "clientAction";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "uiControl";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoRetrievedTool.Definition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E208F68(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_20E209518(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_20E209AD4(v5, a1, a2, a3);
          break;
        case 4:
          sub_20E20A090(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E20A64C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E208F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
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
  sub_20E0486F4(a1, v14, &qword_27C863C58, &unk_20E323F40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C58, &unk_20E323F40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
      v35 = v43;
      sub_20E21DAE4(v20, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_20E21DAE4(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    return sub_20E04875C(v36, &qword_27C863B90, &unk_20E345EF0);
  }

  else
  {
    v39 = v44;
    sub_20E21DAE4(v36, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C58, &unk_20E323F40);
    sub_20E21DAE4(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E209518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
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
  sub_20E0486F4(a1, v14, &qword_27C863C58, &unk_20E323F40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C58, &unk_20E323F40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C869B00, &unk_20E346240);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_20E21DAE4(v35, v28, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B00, &unk_20E346240);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B00, &unk_20E346240);
    return sub_20E04875C(v36, &qword_27C869B00, &unk_20E346240);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B00, &unk_20E346240);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C58, &unk_20E323F40);
    sub_20E21DAE4(v39, v40, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E209AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
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
  sub_20E0486F4(a1, v14, &qword_27C863C58, &unk_20E323F40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C58, &unk_20E323F40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_20E21DAE4(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    return sub_20E04875C(v36, &qword_27C863B90, &unk_20E345EF0);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C58, &unk_20E323F40);
    sub_20E21DAE4(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E20A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
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
  sub_20E0486F4(a1, v14, &qword_27C863C58, &unk_20E323F40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C58, &unk_20E323F40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_20E21DAE4(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    return sub_20E04875C(v36, &qword_27C863B90, &unk_20E345EF0);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C58, &unk_20E323F40);
    sub_20E21DAE4(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E20A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoUIControlTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B08, &qword_20E345DD8);
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
  sub_20E0486F4(a1, v14, &qword_27C863C58, &unk_20E323F40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C863C58, &unk_20E323F40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E21DAE4(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_20E21DAE4(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C869B08, &qword_20E345DD8);
      v35 = v44;
      sub_20E21DAE4(v20, v44, type metadata accessor for ContextProtoUIControlTool);
      sub_20E21DAE4(v35, v28, type metadata accessor for ContextProtoUIControlTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E21DA3C(&qword_27C869908, type metadata accessor for ContextProtoUIControlTool);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869B08, &qword_20E345DD8);
  }

  sub_20E0486F4(v28, v36, &qword_27C869B08, &qword_20E345DD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869B08, &qword_20E345DD8);
    return sub_20E04875C(v36, &qword_27C869B08, &qword_20E345DD8);
  }

  else
  {
    v39 = v43;
    sub_20E21DAE4(v36, v43, type metadata accessor for ContextProtoUIControlTool);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869B08, &qword_20E345DD8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C863C58, &unk_20E323F40);
    sub_20E21DAE4(v39, v40, type metadata accessor for ContextProtoUIControlTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ContextProtoRetrievedTool.Definition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C863C58, &unk_20E323F40);
  v12 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E20B034(v3, a1, a2, a3);
    }

    else
    {
      sub_20E20AE00(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_20E20B26C(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_20E20B4A4(v3, a1, a2, a3);
  }

  else
  {
    sub_20E20B6DC(v3, a1, a2, a3);
  }

  result = sub_20E21DA84(v11, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for ContextProtoRetrievedTool.Definition(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E20AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C58, &unk_20E323F40);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C58, &unk_20E323F40);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E20B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C58, &unk_20E323F40);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C58, &unk_20E323F40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    sub_20E21DA3C(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E20B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C58, &unk_20E323F40);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C58, &unk_20E323F40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E20B4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C58, &unk_20E323F40);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C58, &unk_20E323F40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E20B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoUIControlTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C58, &unk_20E323F40);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C863C58, &unk_20E323F40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E21DAE4(v8, v12, type metadata accessor for ContextProtoUIControlTool);
    sub_20E21DA3C(&qword_27C869908, type metadata accessor for ContextProtoUIControlTool);
    sub_20E322580();
    return sub_20E21DA84(v12, type metadata accessor for ContextProtoUIControlTool);
  }

  result = sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E20B978()
{
  if (qword_27C863130 != -1)
  {
    swift_once();
  }

  v0 = qword_27C869338;

  return v0;
}

uint64_t sub_20E20BA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A10, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20BAB0()
{
  sub_20E21DA3C(&qword_27C8698F0, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return sub_20E322470();
}

uint64_t sub_20E20BB1C()
{
  sub_20E21DA3C(&qword_27C8698F0, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return sub_20E322480();
}

uint64_t sub_20E20BBB8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869360);
  __swift_project_value_buffer(v0, qword_27C869360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appBundleId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "commandId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toolDef";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoUIControlTool.decodeMessage<A>(decoder:)()
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
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_20E20BEE0();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_20E3223D0();
    }
  }
}

uint64_t sub_20E20BEE0()
{
  v0 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  return sub_20E322430();
}

uint64_t ContextProtoUIControlTool.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_20E322540();
  }

  if (!v4)
  {
    if (v3[3])
    {
      v9 = v3[2];
      sub_20E322540();
    }

    if (v3[5])
    {
      v10 = v3[4];
      sub_20E322540();
    }

    sub_20E20C080(v3, v7, a2, a3);
    v11 = v3 + *(type metadata accessor for ContextProtoUIControlTool(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E20C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoUIControlTool(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E21DA3C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E20C2E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E20C3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A08, type metadata accessor for ContextProtoUIControlTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20C458()
{
  sub_20E21DA3C(&qword_27C869908, type metadata accessor for ContextProtoUIControlTool);

  return sub_20E322470();
}

uint64_t sub_20E20C4C4()
{
  sub_20E21DA3C(&qword_27C869908, type metadata accessor for ContextProtoUIControlTool);

  return sub_20E322480();
}

uint64_t sub_20E20C560()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869378);
  __swift_project_value_buffer(v0, qword_27C869378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "invocationString";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoSampleInvocation.decodeMessage<A>(decoder:)()
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
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E322350();
    }
  }

  return result;
}

uint64_t ContextProtoSampleInvocation.traverse<A>(visitor:)()
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
    if (v0[4] == 0.0 || (result = sub_20E3224F0(), !v1))
    {
      v6 = v0 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static ContextProtoSampleInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E20C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E20CA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C869A00, type metadata accessor for ContextProtoSampleInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20CAD0()
{
  sub_20E21DA3C(&qword_27C869530, type metadata accessor for ContextProtoSampleInvocation);

  return sub_20E322470();
}

uint64_t sub_20E20CB3C()
{
  sub_20E21DA3C(&qword_27C869530, type metadata accessor for ContextProtoSampleInvocation);

  return sub_20E322480();
}

uint64_t sub_20E20CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E20CCA0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869390);
  __swift_project_value_buffer(v0, qword_27C869390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "definition";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoToolRetrievalType.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_20E21DA3C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E20CF8C();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E20CF8C()
{
  v0 = *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  sub_20E21DA3C(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  return sub_20E322430();
}

uint64_t sub_20E20D094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
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

uint64_t sub_20E20D13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E21DA3C(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E20D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C60, &qword_20E323F58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C60, &qword_20E323F58);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C60, &qword_20E323F58);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_20E21DA3C(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
}

uint64_t sub_20E20D5E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E20D6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699F8, type metadata accessor for ContextProtoToolRetrievalType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20D794()
{
  sub_20E21DA3C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType);

  return sub_20E322470();
}

uint64_t sub_20E20D800()
{
  sub_20E21DA3C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType);

  return sub_20E322480();
}

uint64_t sub_20E20D89C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8693A8);
  __swift_project_value_buffer(v0, qword_27C8693A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "appBundleIds";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoToolQuery.decodeMessage<A>(decoder:)()
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
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E3223A0();
    }
  }

  return result;
}

uint64_t ContextProtoToolQuery.traverse<A>(visitor:)()
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
      v6 = v0 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static ContextProtoToolQuery.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E20DCE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E20DD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699F0, type metadata accessor for ContextProtoToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20DE10()
{
  sub_20E21DA3C(&qword_27C869940, type metadata accessor for ContextProtoToolQuery);

  return sub_20E322470();
}

uint64_t sub_20E20DE7C()
{
  sub_20E21DA3C(&qword_27C869940, type metadata accessor for ContextProtoToolQuery);

  return sub_20E322480();
}

uint64_t sub_20E20DEF8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E20E07C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_20E21DA3C(a5, a6);
      sub_20E322430();
    }
  }

  return result;
}

uint64_t sub_20E20E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E20E220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863C50, &qword_20E323F38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C50, &qword_20E323F38);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E21DA3C(&qword_27C8698F0, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_20E20E494@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E20E554(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699E8, type metadata accessor for ContextProtoToolQueryOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20E5F4()
{
  sub_20E21DA3C(&qword_27C8661F0, type metadata accessor for ContextProtoToolQueryOutput);

  return sub_20E322470();
}

uint64_t sub_20E20E660()
{
  sub_20E21DA3C(&qword_27C8661F0, type metadata accessor for ContextProtoToolQueryOutput);

  return sub_20E322480();
}

uint64_t sub_20E20E6FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8693D8);
  __swift_project_value_buffer(v0, qword_27C8693D8);
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

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.decodeMessage<A>(decoder:)()
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
            sub_20E21DA3C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_20E21DA3C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType);
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

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.traverse<A>(visitor:)()
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
        if (!*(*(v0 + 5) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_20E21DA3C(&qword_27C866108, type metadata accessor for ContextProtoRetrievedTool), result = sub_20E322570(), !v1))
        {
          if (!*(*(v0 + 6) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_20E21DA3C(&qword_27C866110, type metadata accessor for ContextProtoToolRetrievalType), result = sub_20E322570(), !v1))
          {
            v8 = v0 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E20EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20EE64()
{
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_20E322470();
}

uint64_t sub_20E20EED0()
{
  sub_20E21DA3C(&qword_27C867FB8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_20E322480();
}

uint64_t sub_20E20EF6C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8693F0);
  __swift_project_value_buffer(v0, qword_27C8693F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typedValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchMetadata";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoSpanMatchedEntity.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E20F258();
      }

      else if (result == 2)
      {
        type metadata accessor for ContextProtoEntityMatch(0);
        sub_20E21DA3C(&qword_27C869578, type metadata accessor for ContextProtoEntityMatch);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E20F258()
{
  v0 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t ContextProtoSpanMatchedEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E20F408(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ContextProtoEntityMatch(0);
      sub_20E21DA3C(&qword_27C869578, type metadata accessor for ContextProtoEntityMatch);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E20F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA3C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E20F670@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E20F744(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699D8, type metadata accessor for ContextProtoSpanMatchedEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E20F7E4()
{
  sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);

  return sub_20E322470();
}

uint64_t sub_20E20F850()
{
  sub_20E21DA3C(&qword_27C8661A0, type metadata accessor for ContextProtoSpanMatchedEntity);

  return sub_20E322480();
}

uint64_t sub_20E20F8EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869408);
  __swift_project_value_buffer(v0, qword_27C869408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20E326360;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "sourceItemIdentifier";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "entityName";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "startIndex";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "endIndex";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "matchScore";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "matchProperties";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "matcherType";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "originAppBundleId";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "userUtterance";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "identifier";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ContextProtoEntityMatch.decodeMessage<A>(decoder:)()
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

      if (result > 7)
      {
        if (result <= 9)
        {
          if (result == 8)
          {
            sub_20E20FE7C();
          }

          else
          {
            sub_20E063678();
            sub_20E322310();
          }
        }

        else
        {
          if (result == 10 || result == 11)
          {
LABEL_4:
            sub_20E3223E0();
            goto LABEL_5;
          }

          if (result == 12)
          {
            v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 52);
            sub_20E3223D0();
          }
        }
      }

      else if (result <= 3)
      {
        if (result == 1 || result == 3)
        {
          goto LABEL_4;
        }
      }

      else if (result == 4 || result == 5)
      {
        sub_20E322390();
      }

      else if (result == 7)
      {
        sub_20E322350();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E20FE7C()
{
  v0 = *(type metadata accessor for ContextProtoEntityMatch(0) + 48);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_20E21DA3C(&qword_27C869998, type metadata accessor for ContextProtoMatchProperties);
  return sub_20E322430();
}

uint64_t ContextProtoEntityMatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(v3 + 32) || (result = sub_20E322510(), !v4))
      {
        if (!*(v3 + 40) || (result = sub_20E322510(), !v4))
        {
          if (*(v3 + 48) == 0.0 || (result = sub_20E3224F0(), !v4))
          {
            result = sub_20E210134(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 52))
              {
                v19 = *(v3 + 52);
                sub_20E063678();
                sub_20E3224D0();
              }

              v14 = *(v3 + 64);
              v15 = HIBYTE(v14) & 0xF;
              if ((v14 & 0x2000000000000000) == 0)
              {
                v15 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
              }

              if (v15)
              {
                sub_20E322540();
              }

              v16 = *(v3 + 80);
              v17 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                v17 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
              }

              if (v17)
              {
                sub_20E322540();
              }

              sub_20E210350(v3);
              v18 = v3 + *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
              return sub_20E3221A0();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E210134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C68, &qword_20E323F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v10 = *(matched - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](matched);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoEntityMatch(0);
  sub_20E0486F4(a1 + *(v14 + 48), v8, &qword_27C863C68, &qword_20E323F60);
  if ((*(v10 + 48))(v8, 1, matched) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C68, &qword_20E323F60);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoMatchProperties);
  sub_20E21DA3C(&qword_27C869998, type metadata accessor for ContextProtoMatchProperties);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_20E210350(uint64_t a1)
{
  result = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E210414@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a2 + v4, 1, 1, matched);
  v6 = a1[14];
  v7 = (a2 + a1[13]);
  *v7 = 0;
  v7[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 45) = 0;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2104D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E210544(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E2105B8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_20E21060C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699D0, type metadata accessor for ContextProtoEntityMatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2106AC()
{
  sub_20E21DA3C(&qword_27C869578, type metadata accessor for ContextProtoEntityMatch);

  return sub_20E322470();
}

uint64_t sub_20E210718()
{
  sub_20E21DA3C(&qword_27C869578, type metadata accessor for ContextProtoEntityMatch);

  return sub_20E322480();
}

uint64_t sub_20E2107B4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C869420);
  __swift_project_value_buffer(v0, qword_27C869420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maxTokenCount";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchedTokenCount";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "matchedAliasTypes";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ContextProtoMatchProperties.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E210A88();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E322380();
    }
  }

  return result;
}

uint64_t sub_20E210A88()
{
  v0 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  type metadata accessor for ContextProtoAliasTypes(0);
  sub_20E21DA3C(&qword_27C8699B0, type metadata accessor for ContextProtoAliasTypes);
  return sub_20E322430();
}

uint64_t ContextProtoMatchProperties.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if ((*(v3 + 8) & 1) == 0)
  {
    v8 = *v3;
    result = sub_20E322510();
  }

  if (!v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      v9 = *(v3 + 16);
      sub_20E322510();
    }

    sub_20E210C00(v3, v7, a2, a3);
    v10 = v3 + *(type metadata accessor for ContextProtoMatchProperties(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E210C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C70, &qword_20E323F68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoAliasTypes(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_20E0486F4(a1 + *(matched + 24), v8, &qword_27C863C70, &qword_20E323F68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C70, &qword_20E323F68);
  }

  sub_20E21DAE4(v8, v13, type metadata accessor for ContextProtoAliasTypes);
  sub_20E21DA3C(&qword_27C8699B0, type metadata accessor for ContextProtoAliasTypes);
  sub_20E322580();
  return sub_20E21DA84(v13, type metadata accessor for ContextProtoAliasTypes);
}

uint64_t sub_20E210E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E210F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699C8, type metadata accessor for ContextProtoMatchProperties);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E210FE4()
{
  sub_20E21DA3C(&qword_27C869998, type metadata accessor for ContextProtoMatchProperties);

  return sub_20E322470();
}

uint64_t sub_20E211050()
{
  sub_20E21DA3C(&qword_27C869998, type metadata accessor for ContextProtoMatchProperties);

  return sub_20E322480();
}

uint64_t ContextProtoAliasTypes.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E063624();
        sub_20E3222D0();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ContextProtoAliasTypes.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_20E063624(), result = sub_20E3224B0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static ContextProtoAliasTypes.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20E2113F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E21DA3C(&qword_27C8699C0, type metadata accessor for ContextProtoAliasTypes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E211494()
{
  sub_20E21DA3C(&qword_27C8699B0, type metadata accessor for ContextProtoAliasTypes);

  return sub_20E322470();
}

uint64_t sub_20E211500()
{
  sub_20E21DA3C(&qword_27C8699B0, type metadata accessor for ContextProtoAliasTypes);

  return sub_20E322480();
}

uint64_t sub_20E21157C(void *a1, void *a2, uint64_t a3)
{
  if ((sub_20E196610(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (v9 && (a1[2] == a2[2] && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_15;
    }
  }

  else if (!v9)
  {
LABEL_15:
    v10 = *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor42ContextProtoVersionedQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA0, &qword_20E33B070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((sub_20E1463E0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_14;
  }

  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v18 = *(DecorationOutput + 44);
  v19 = *(v13 + 48);
  v32 = DecorationOutput;
  v33 = a1;
  sub_20E0486F4(a1 + v18, v16, &qword_27C863C40, &unk_20E33C460);
  sub_20E0486F4(a2 + v18, &v16[v19], &qword_27C863C40, &unk_20E33C460);
  v20 = *(v5 + 48);
  if (v20(v16, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C863C40, &unk_20E33C460);
    if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_20E21DAE4(&v16[v19], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E21DA84(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E21DA84(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    sub_20E21DA84(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_8:
    sub_20E04875C(v16, &qword_27C867FA0, &qword_20E33B070);
    goto LABEL_14;
  }

  if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_8;
  }

  sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
LABEL_10:
  v22 = v33;
  if ((sub_20E149E10(*(v33 + 16), *(a2 + 16)) & 1) == 0 || *(v22 + 24) != *(a2 + 24) || (sub_20E147724(*(v22 + 32), *(a2 + 32)) & 1) == 0 || *(v22 + 40) != *(a2 + 40))
  {
    goto LABEL_14;
  }

  v25 = v32;
  v26 = *(v32 + 48);
  v27 = (v22 + v26);
  v28 = *(v22 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v31 = *(v25 + 52);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v23 = sub_20E322850();
    return v23 & 1;
  }

  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_14:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_20E147918(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_20E14CA38(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor36ContextProtoDynamicEnumerationEntityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = (&v50 - v10);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[1];
  v57 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v52 = v13;
  v50 = v7;
  v29 = a2;
  v51 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v30 = *(v51 + 20);
  v31 = *(v23 + 48);
  sub_20E0486F4(v57 + v30, v26, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(v29 + v30, &v26[v31], &qword_27C863C48, &qword_20E323F30);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) != 1)
  {
    sub_20E0486F4(v26, v22, &qword_27C863C48, &qword_20E323F30);
    if (v32(&v26[v31], 1, v14) != 1)
    {
      sub_20E21DAE4(&v26[v31], v18, type metadata accessor for ToolKitProtoTypeInstance);
      v36 = static ToolKitProtoTypeInstance.== infix(_:_:)(v22, v18);
      sub_20E21DA84(v18, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E21DA84(v22, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_20E21DA84(v22, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_9:
    v33 = &qword_27C867E98;
    v34 = &qword_20E33AF70;
    v35 = v26;
LABEL_17:
    sub_20E04875C(v35, v33, v34);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 24);
  v40 = *(v54 + 48);
  sub_20E0486F4(v57 + v39, v52, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(v29 + v39, v37 + v40, &qword_27C863B18, &qword_20E323EB0);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v37, 1, v56) == 1)
  {
    if (v42(v37 + v40, 1, v41) == 1)
    {
      sub_20E04875C(v37, &qword_27C863B18, &qword_20E323EB0);
LABEL_21:
      v49 = *(v38 + 28);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v44 = sub_20E322850();
      return v44 & 1;
    }

    goto LABEL_16;
  }

  v43 = v53;
  sub_20E0486F4(v37, v53, &qword_27C863B18, &qword_20E323EB0);
  if (v42(v37 + v40, 1, v41) == 1)
  {
    sub_20E21DA84(v43, type metadata accessor for ToolKitProtoTypedValue);
LABEL_16:
    v33 = &qword_27C867ED8;
    v34 = &qword_20E33AFA8;
    v35 = v37;
    goto LABEL_17;
  }

  v46 = v37 + v40;
  v47 = v50;
  sub_20E21DAE4(v46, v50, type metadata accessor for ToolKitProtoTypedValue);
  v48 = static ToolKitProtoTypedValue.== infix(_:_:)(v43, v47);
  sub_20E21DA84(v47, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v43, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v37, &qword_27C863B18, &qword_20E323EB0);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s23LighthouseDataProcessor33ContextProtoQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA0, &qword_20E33B070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((sub_20E1463E0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_14;
  }

  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v18 = *(DecorationOutput + 40);
  v19 = *(v13 + 48);
  v32 = DecorationOutput;
  v33 = a1;
  sub_20E0486F4(a1 + v18, v16, &qword_27C863C40, &unk_20E33C460);
  sub_20E0486F4(a2 + v18, &v16[v19], &qword_27C863C40, &unk_20E33C460);
  v20 = *(v5 + 48);
  if (v20(v16, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C863C40, &unk_20E33C460);
    if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_20E21DAE4(&v16[v19], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E21DA84(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E21DA84(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    sub_20E21DA84(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_8:
    sub_20E04875C(v16, &qword_27C867FA0, &qword_20E33B070);
    goto LABEL_14;
  }

  if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_8;
  }

  sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
LABEL_10:
  v22 = v33;
  if ((sub_20E149E10(*(v33 + 16), *(a2 + 16)) & 1) == 0 || *(v22 + 24) != *(a2 + 24) || (sub_20E147724(*(v22 + 32), *(a2 + 32)) & 1) == 0 || *(v22 + 40) != *(a2 + 40))
  {
    goto LABEL_14;
  }

  v25 = v32;
  v26 = *(v32 + 44);
  v27 = (v22 + v26);
  v28 = *(v22 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v31 = *(v25 + 48);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v23 = sub_20E322850();
    return v23 & 1;
  }

  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_14:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor32ContextProtoQueryDecorationInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8)
    {
      if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_20E322D60() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v10 = *(a1 + 72);
    v11 = *(a2 + 72);
    if (v10)
    {
      if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_20E322D60() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (sub_20E196610(*(a1 + 24), *(a2 + 24)))
    {
      v12 = *(a1 + 88);
      v13 = *(a2 + 88);
      if (v12)
      {
        if (v13 && (*(a1 + 80) == *(a2 + 80) && v12 == v13 || (sub_20E322D60() & 1) != 0))
        {
          goto LABEL_36;
        }
      }

      else if (!v13)
      {
LABEL_36:
        v14 = *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
        sub_20E3221C0();
        sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
        return sub_20E322850() & 1;
      }
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor29ContextProtoToolRetrievalTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C60, &qword_20E323F58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC0, &qword_20E33AF90);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863B60, &qword_20E323F50);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863B60, &qword_20E323F50);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863B60, &qword_20E323F50);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E21DAE4(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      v31 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v20, v16);
      sub_20E21DA84(v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E21DA84(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E21DA84(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v28 = &qword_27C867ED0;
    v29 = &qword_20E33AFA0;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v32 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C863C60, &qword_20E323F58);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C863C60, &qword_20E323F58);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C863C60, &qword_20E323F58);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C863C60, &qword_20E323F58);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E21DA84(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_13:
    v28 = &qword_27C867EC0;
    v29 = &qword_20E33AF90;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E21DAE4(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  v43 = static ToolKitProtoTypeDefinition.Version1.== infix(_:_:)(v38, v42);
  sub_20E21DA84(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_20E21DA84(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_20E04875C(v35, &qword_27C863C60, &qword_20E323F58);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor29ContextProtoSpanMatchedEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C863B18, &qword_20E323EB0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E21DA84(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867ED8, &qword_20E33AFA8);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E21DAE4(&v16[v18], v27, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v11, v20);
  sub_20E21DA84(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E1476D0(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor27ContextProtoToolQueryOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F78, &qword_20E33B048);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863C50, &qword_20E323F38);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863C50, &qword_20E323F38);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C50, &qword_20E323F38);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoToolQueryOutput(0) + 20);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C50, &qword_20E323F38);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867F78, &qword_20E33B048);
    goto LABEL_7;
  }

  sub_20E21DAE4(&v17[v18], v8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  v21 = _s23LighthouseDataProcessor25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_20E04875C(v17, &qword_27C863C50, &qword_20E323F38);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27ContextProtoSurroundingTextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE0, &qword_20E33AFB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  v19 = type metadata accessor for ContextProtoSurroundingText(0);
  v20 = a1;
  v21 = a2;
  v29[0] = v19;
  v29[1] = v20;
  v22 = *(v19 + 20);
  v23 = *(v13 + 48);
  sub_20E0486F4(v20 + v22, v16, &qword_27C863BE8, &qword_20E323ED0);
  sub_20E0486F4(v21 + v22, &v16[v23], &qword_27C863BE8, &qword_20E323ED0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863BE8, &qword_20E323ED0);
LABEL_17:
      v28 = *(v29[0] + 24);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v25 = sub_20E322850();
      return v25 & 1;
    }

    goto LABEL_13;
  }

  sub_20E0486F4(v16, v12, &qword_27C863BE8, &qword_20E323ED0);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoBoundingBox);
LABEL_13:
    sub_20E04875C(v16, &qword_27C867EE0, &qword_20E33AFB0);
    goto LABEL_14;
  }

  sub_20E21DAE4(&v16[v23], v8, type metadata accessor for ContextProtoBoundingBox);
  v27 = _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoBoundingBox);
  sub_20E04875C(v16, &qword_27C863BE8, &qword_20E323ED0);
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_14:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor25ContextProtoRetrievedToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F78, &qword_20E33B048);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for ContextProtoRetrievedTool(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863C50, &qword_20E323F38);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863C50, &qword_20E323F38);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C863C50, &qword_20E323F38);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_20E21DAE4(&v16[v18], v28, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v21 = _s23LighthouseDataProcessor25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v11, v20);
      sub_20E21DA84(v20, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E21DA84(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E04875C(v16, &qword_27C863C50, &qword_20E323F38);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_20E21DA84(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867F78, &qword_20E33B048);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C863C50, &qword_20E323F38);
LABEL_8:
  v22 = v29;
  if (*v29 != *a2 || (sub_20E156F50(*(v29 + 8), *(a2 + 8)) & 1) == 0 || *(v22 + 16) != *(a2 + 16) || (sub_20E19660C(*(v22 + 24), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 36);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v24 = sub_20E322850();
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F70, &qword_20E33B040);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863C58, &unk_20E323F40);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863C58, &unk_20E323F40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C58, &unk_20E323F40);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoRetrievedTool.Definition(0) + 20);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C58, &unk_20E323F40);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867F70, &qword_20E33B040);
    goto LABEL_7;
  }

  sub_20E21DAE4(&v17[v18], v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  v21 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_20E04875C(v17, &qword_27C863C58, &unk_20E323F40);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C70, &qword_20E323F68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F80, &qword_20E33B050);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_21;
    }
  }

  v19 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_21;
    }
  }

  v33 = v8;
  v20 = v15;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v21 = *(matched + 24);
  v22 = *(v20 + 48);
  sub_20E0486F4(a1 + v21, v17, &qword_27C863C70, &qword_20E323F68);
  sub_20E0486F4(a2 + v21, &v17[v22], &qword_27C863C70, &qword_20E323F68);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v22], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C70, &qword_20E323F68);
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C70, &qword_20E323F68);
  if (v23(&v17[v22], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoAliasTypes);
LABEL_19:
    v26 = &qword_27C867F80;
    v27 = &qword_20E33B050;
LABEL_20:
    sub_20E04875C(v17, v26, v27);
LABEL_21:
    v25 = 0;
    return v25 & 1;
  }

  v29 = &v17[v22];
  v30 = v33;
  sub_20E21DAE4(v29, v33, type metadata accessor for ContextProtoAliasTypes);
  if ((sub_20E196610(*v12, *v30) & 1) == 0)
  {
    sub_20E21DA84(v30, type metadata accessor for ContextProtoAliasTypes);
    sub_20E21DA84(v12, type metadata accessor for ContextProtoAliasTypes);
    v26 = &qword_27C863C70;
    v27 = &qword_20E323F68;
    goto LABEL_20;
  }

  v31 = *(v4 + 20);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v32 = sub_20E322850();
  sub_20E21DA84(v30, type metadata accessor for ContextProtoAliasTypes);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoAliasTypes);
  sub_20E04875C(v17, &qword_27C863C70, &qword_20E323F68);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v24 = *(matched + 28);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v25 = sub_20E322850();
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor23ContextProtoEntityMatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v5 = *(matched - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](matched);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C68, &qword_20E323F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F88, &qword_20E33B058);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_31;
  }

  v33 = type metadata accessor for ContextProtoEntityMatch(0);
  v17 = *(v33 + 48);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863C68, &qword_20E323F60);
  v19 = a2 + v17;
  v20 = v18;
  sub_20E0486F4(v19, &v16[v18], &qword_27C863C68, &qword_20E323F60);
  v21 = *(v5 + 48);
  if (v21(v16, 1, matched) == 1)
  {
    if (v21(&v16[v20], 1, matched) == 1)
    {
      sub_20E04875C(v16, &qword_27C863C68, &qword_20E323F60);
      goto LABEL_17;
    }

LABEL_15:
    sub_20E04875C(v16, &qword_27C867F88, &qword_20E33B058);
    goto LABEL_31;
  }

  sub_20E0486F4(v16, v12, &qword_27C863C68, &qword_20E323F60);
  if (v21(&v16[v20], 1, matched) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoMatchProperties);
    goto LABEL_15;
  }

  sub_20E21DAE4(&v16[v20], v8, type metadata accessor for ContextProtoMatchProperties);
  v22 = _s23LighthouseDataProcessor27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoMatchProperties);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoMatchProperties);
  sub_20E04875C(v16, &qword_27C863C68, &qword_20E323F60);
  if ((v22 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if (*(a1 + 52) != *(a2 + 52) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_31;
  }

  v23 = v33;
  v24 = *(v33 + 52);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (v28 && (*v25 == *v27 && v26 == v28 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = 0;
    return v30 & 1;
  }

  if (v28)
  {
    goto LABEL_31;
  }

LABEL_29:
  v29 = *(v23 + 56);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v30 = sub_20E322850();
  return v30 & 1;
}

uint64_t _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20)
  {
    goto LABEL_28;
  }

  v21 = a1[5];
  v22 = a2[5];
  if (v21)
  {
    if (!v22 || (a1[4] != a2[4] || v21 != v22) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v33 = type metadata accessor for ContextProtoUIControlTool(0);
  v23 = *(v33 + 28);
  v24 = *(v13 + 48);
  sub_20E0486F4(a1 + v23, v16, &qword_27C863B90, &unk_20E345EF0);
  v25 = a2 + v23;
  v26 = v24;
  sub_20E0486F4(v25, &v16[v24], &qword_27C863B90, &unk_20E345EF0);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v26], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B90, &unk_20E345EF0);
LABEL_31:
      v31 = *(v33 + 32);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v28 = sub_20E322850();
      return v28 & 1;
    }

    goto LABEL_27;
  }

  sub_20E0486F4(v16, v12, &qword_27C863B90, &unk_20E345EF0);
  if (v27(&v16[v26], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_27:
    sub_20E04875C(v16, &qword_27C867FC8, &qword_20E33B088);
    goto LABEL_28;
  }

  sub_20E21DAE4(&v16[v26], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v30 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E21DA84(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v16, &qword_27C863B90, &unk_20E345EF0);
  if (v30)
  {
    goto LABEL_31;
  }

LABEL_28:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd19IntelligenceCommandD0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && (sub_20E1494E0(*(a1 + 24), *(a2 + 24)) & 1) != 0)
  {
    v12 = *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD7AddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_20E322D60();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_20E322D60();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_20E322D60();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_20E322D60();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = sub_20E322D60();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (v39)
    {
      if (a1[10] == a2[10] && v38 == v39)
      {
        goto LABEL_43;
      }

      v40 = a1[10];
      if (sub_20E322D60())
      {
        goto LABEL_43;
      }
    }
  }

  else if (!v39)
  {
LABEL_43:
    v41 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD6MeCardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a1[1];
      v7 = a2;
      v8 = sub_20E322D60();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[3] != a2[3] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[3];
      v14 = a2;
      v15 = sub_20E322D60();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[6];
  v18 = a2[6];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[5];
      v21 = a2;
      v22 = sub_20E322D60();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[8];
  v25 = a2[8];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[7] != a2[7] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[7];
      v28 = a2;
      v29 = sub_20E322D60();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[10];
  v32 = a2[10];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[9] != a2[9] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[9];
      v35 = a2;
      v36 = sub_20E322D60();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  if (sub_20E158650(*a1, *a2))
  {
    v38 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD18ContentRestrictionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v3 != v4)
    {
      v5 = a1;
      v6 = *(a1 + 8);
      v7 = a2;
      v8 = sub_20E322D60();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ContextProtoCGRect(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B20, &qword_20E345DF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v18 = *(v17 + 20);
  v19 = *(v13 + 48);
  v36 = v17;
  v37 = a1;
  sub_20E0486F4(&a1[v18], v16, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(&a2[v18], &v16[v19], &qword_27C863BF8, &qword_20E323EE0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C863BF8, &qword_20E323EE0);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_20E21DAE4(&v16[v19], v8, type metadata accessor for ContextProtoCGRect);
      v23 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E21DA84(v8, type metadata accessor for ContextProtoCGRect);
      sub_20E21DA84(v12, type metadata accessor for ContextProtoCGRect);
      sub_20E04875C(v16, &qword_27C863BF8, &qword_20E323EE0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_20E21DA84(v12, type metadata accessor for ContextProtoCGRect);
LABEL_7:
    sub_20E04875C(v16, &qword_27C869B20, &qword_20E345DF0);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v16, &qword_27C863BF8, &qword_20E323EE0);
LABEL_11:
  v24 = v36;
  v25 = *(v36 + 24);
  v26 = &v37[v25];
  v27 = v37[v25 + 8];
  v28 = &a2[v25];
  v29 = a2[v25 + 8];
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_8;
    }
  }

  v30 = *(v36 + 28);
  v31 = &v37[v30];
  v32 = *&v37[v30 + 8];
  v33 = &a2[v30];
  v34 = *(v33 + 1);
  if (v32)
  {
    if (v34 && (*v31 == *v33 && v32 == v34 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_24;
    }
  }

  else if (!v34)
  {
LABEL_24:
    v35 = *(v24 + 32);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v21 = sub_20E322850();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C28, &qword_20E323F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B28, &qword_20E345DF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863C28, &qword_20E323F10);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863C28, &qword_20E323F10);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C28, &qword_20E323F10);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0) + 20);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C28, &qword_20E323F10);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
LABEL_6:
    sub_20E04875C(v17, &qword_27C869B28, &qword_20E345DF8);
    goto LABEL_7;
  }

  sub_20E21DAE4(&v17[v18], v8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  v21 = _s23LighthouseDataProcessor022ContextProtoStructuredD30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_20E04875C(v17, &qword_27C863C28, &qword_20E323F10);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoCGSize(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C38, &unk_20E323F20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = (&v47 - v9);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B10, &qword_20E345DE0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v47 - v11;
  v12 = type metadata accessor for ContextProtoCGPoint(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C30, &qword_20E323F18);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v47 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B18, &qword_20E345DE8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v47 - v24;
  v26 = *(v23 + 56);
  v53 = a1;
  sub_20E0486F4(a1, &v47 - v24, &qword_27C863C30, &qword_20E323F18);
  v54 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863C30, &qword_20E323F18);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_20E04875C(v25, &qword_27C863C30, &qword_20E323F18);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_20E0486F4(v25, v20, &qword_27C863C30, &qword_20E323F18);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_20E21DA84(v20, type metadata accessor for ContextProtoCGPoint);
LABEL_10:
    v36 = &qword_27C869B18;
    v37 = &qword_20E345DE8;
LABEL_16:
    v40 = v25;
    goto LABEL_17;
  }

  sub_20E21DAE4(&v25[v26], v16, type metadata accessor for ContextProtoCGPoint);
  if (*v20 != *v16 || v20[1] != v16[1])
  {
    sub_20E21DA84(v16, type metadata accessor for ContextProtoCGPoint);
    sub_20E21DA84(v20, type metadata accessor for ContextProtoCGPoint);
    v36 = &qword_27C863C30;
    v37 = &qword_20E323F18;
    goto LABEL_16;
  }

  v38 = *(v12 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v39 = sub_20E322850();
  sub_20E21DA84(v16, type metadata accessor for ContextProtoCGPoint);
  sub_20E21DA84(v20, type metadata accessor for ContextProtoCGPoint);
  sub_20E04875C(v25, &qword_27C863C30, &qword_20E323F18);
  if ((v39 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  v28 = type metadata accessor for ContextProtoCGRect(0);
  v29 = *(v28 + 20);
  v30 = *(v49 + 48);
  v31 = v52;
  sub_20E0486F4(v53 + v29, v52, &qword_27C863C38, &unk_20E323F20);
  sub_20E0486F4(v54 + v29, v31 + v30, &qword_27C863C38, &unk_20E323F20);
  v32 = v51;
  v33 = *(v50 + 48);
  if (v33(v31, 1, v51) != 1)
  {
    v42 = v48;
    sub_20E0486F4(v31, v48, &qword_27C863C38, &unk_20E323F20);
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_20E21DA84(v42, type metadata accessor for ContextProtoCGSize);
      goto LABEL_22;
    }

    v43 = v31 + v30;
    v44 = v47;
    sub_20E21DAE4(v43, v47, type metadata accessor for ContextProtoCGSize);
    if (*v42 == *v44 && v42[1] == v44[1])
    {
      v45 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v46 = sub_20E322850();
      sub_20E21DA84(v44, type metadata accessor for ContextProtoCGSize);
      sub_20E21DA84(v42, type metadata accessor for ContextProtoCGSize);
      sub_20E04875C(v31, &qword_27C863C38, &unk_20E323F20);
      if (v46)
      {
        goto LABEL_7;
      }

LABEL_18:
      v35 = 0;
      return v35 & 1;
    }

    sub_20E21DA84(v44, type metadata accessor for ContextProtoCGSize);
    sub_20E21DA84(v42, type metadata accessor for ContextProtoCGSize);
    v36 = &qword_27C863C38;
    v37 = &unk_20E323F20;
    v40 = v31;
LABEL_17:
    sub_20E04875C(v40, v36, v37);
    goto LABEL_18;
  }

  if (v33(v31 + v30, 1, v32) != 1)
  {
LABEL_22:
    v36 = &qword_27C869B10;
    v37 = &qword_20E345DE0;
    v40 = v31;
    goto LABEL_17;
  }

  sub_20E04875C(v31, &qword_27C863C38, &unk_20E323F20);
LABEL_7:
  v34 = *(v28 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v35 = sub_20E322850();
  return v35 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD14OnScreenUITextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C20, &qword_20E323F08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v56 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B80, &qword_20E345E50);
  v11 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v62 = &v56 - v12;
  v13 = type metadata accessor for ContextProtoCGRect(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B20, &qword_20E345DF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = *a1;
  v27 = a1[1];
  v63 = a1;
  if ((v26 != *a2 || v27 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v58 = v4;
  v56 = v7;
  v28 = a2;
  v57 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v29 = *(v57 + 20);
  v30 = *(v22 + 48);
  sub_20E0486F4(v63 + v29, v25, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(v28 + v29, &v25[v30], &qword_27C863BF8, &qword_20E323EE0);
  v31 = *(v14 + 48);
  if (v31(v25, 1, v13) == 1)
  {
    if (v31(&v25[v30], 1, v13) == 1)
    {
      sub_20E04875C(v25, &qword_27C863BF8, &qword_20E323EE0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27C869B20;
    v33 = &qword_20E345DF0;
    v34 = v25;
LABEL_17:
    sub_20E04875C(v34, v32, v33);
    goto LABEL_18;
  }

  sub_20E0486F4(v25, v21, &qword_27C863BF8, &qword_20E323EE0);
  if (v31(&v25[v30], 1, v13) == 1)
  {
    sub_20E21DA84(v21, type metadata accessor for ContextProtoCGRect);
    goto LABEL_9;
  }

  sub_20E21DAE4(&v25[v30], v17, type metadata accessor for ContextProtoCGRect);
  v35 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v21, v17);
  sub_20E21DA84(v17, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA84(v21, type metadata accessor for ContextProtoCGRect);
  sub_20E04875C(v25, &qword_27C863BF8, &qword_20E323EE0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v36 = v57;
  v37 = *(v57 + 24);
  v38 = *(v60 + 48);
  v39 = v62;
  sub_20E0486F4(v63 + v37, v62, &qword_27C863C20, &qword_20E323F08);
  v40 = v28 + v37;
  v41 = v28;
  sub_20E0486F4(v40, v39 + v38, &qword_27C863C20, &qword_20E323F08);
  v42 = *(v61 + 48);
  v43 = v58;
  if (v42(v39, 1, v58) != 1)
  {
    v44 = v59;
    sub_20E0486F4(v39, v59, &qword_27C863C20, &qword_20E323F08);
    if (v42(v39 + v38, 1, v43) != 1)
    {
      v47 = v39 + v38;
      v48 = v56;
      sub_20E21DAE4(v47, v56, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      v49 = _s23LighthouseDataProcessor022ContextProtoStructuredD24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(v44, v48);
      sub_20E21DA84(v48, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_20E21DA84(v44, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_20E04875C(v39, &qword_27C863C20, &qword_20E323F08);
      if ((v49 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_20E21DA84(v44, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
    goto LABEL_16;
  }

  if (v42(v39 + v38, 1, v43) != 1)
  {
LABEL_16:
    v32 = &qword_27C869B80;
    v33 = &qword_20E345E50;
    v34 = v39;
    goto LABEL_17;
  }

  sub_20E04875C(v39, &qword_27C863C20, &qword_20E323F08);
LABEL_21:
  v50 = *(v36 + 28);
  v51 = (v63 + v50);
  v52 = *(v63 + v50 + 8);
  v53 = (v41 + v50);
  v54 = *(v41 + v50 + 8);
  if (v52)
  {
    if (v54)
    {
LABEL_27:
      v55 = *(v36 + 32);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v45 = sub_20E322850();
      return v45 & 1;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_18:
  v45 = 0;
  return v45 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD4UserV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_20E322D60();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 17);
  v13 = *(a2 + 17);
  if (v12 == 5)
  {
    if (v13 != 5)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v127 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v125 = *(v127 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v129 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C18, &qword_20E323F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = (&v122 - v8);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B88, &qword_20E345E58);
  v9 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v122 - v10;
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v11);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C10, &qword_20E323EF8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v122 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B90, &qword_20E345E60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v133 = &v122 - v20;
  v21 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C08, &qword_20E323EF0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v122 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B98, &qword_20E345E68);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v122 - v32;
  v34 = *(a1 + 24);
  v35 = *(a2 + 24);
  if (v34)
  {
    if (!v35 || (*(a1 + 16) != *(a2 + 16) || v34 != v35) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v35)
  {
    goto LABEL_69;
  }

  v36 = *(a1 + 40);
  v37 = *(a2 + 40);
  if (v36)
  {
    if (!v37 || (*(a1 + 32) != *(a2 + 32) || v36 != v37) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v37)
  {
    goto LABEL_69;
  }

  v38 = *(a1 + 56);
  v39 = *(a2 + 56);
  if (v38)
  {
    if (!v39 || (*(a1 + 48) != *(a2 + 48) || v38 != v39) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v39)
  {
    goto LABEL_69;
  }

  v40 = *(a1 + 72);
  v41 = *(a2 + 72);
  if (v40)
  {
    if (!v41 || (*(a1 + 64) != *(a2 + 64) || v40 != v41) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v41)
  {
    goto LABEL_69;
  }

  v42 = *(a1 + 80);
  v43 = *(a2 + 80);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    goto LABEL_69;
  }

  v44 = *(a1 + 81);
  v45 = *(a2 + 81);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    goto LABEL_69;
  }

  v46 = *(a1 + 82);
  v47 = *(a2 + 82);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    goto LABEL_69;
  }

  v48 = *(a1 + 83);
  v49 = *(a2 + 83);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    goto LABEL_69;
  }

  v50 = *(a1 + 84);
  v51 = *(a2 + 84);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    goto LABEL_69;
  }

  if ((sub_20E1494E0(*a1, *a2) & 1) == 0 || (sub_20E1494E0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_69;
  }

  v52 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v53 = *(v52 + 60);
  v122 = v52;
  v123 = v53;
  v54 = *(v30 + 48);
  sub_20E0486F4(a1 + v53, v33, &qword_27C863C08, &qword_20E323EF0);
  v55 = a2 + v123;
  v123 = v54;
  sub_20E0486F4(v55, &v33[v54], &qword_27C863C08, &qword_20E323EF0);
  v56 = *(v22 + 48);
  if (v56(v33, 1, v21) == 1)
  {
    if (v56(&v33[v123], 1, v21) == 1)
    {
      sub_20E04875C(v33, &qword_27C863C08, &qword_20E323EF0);
      goto LABEL_64;
    }

LABEL_61:
    v57 = &qword_27C869B98;
    v58 = &qword_20E345E68;
    v59 = v33;
LABEL_62:
    sub_20E04875C(v59, v57, v58);
    goto LABEL_69;
  }

  sub_20E0486F4(v33, v29, &qword_27C863C08, &qword_20E323EF0);
  if (v56(&v33[v123], 1, v21) == 1)
  {
    sub_20E21DA84(v29, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
    goto LABEL_61;
  }

  sub_20E21DAE4(&v33[v123], v25, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  v60 = _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD4UserV2eeoiySbAC_ACtFZ_0(v29, v25);
  sub_20E21DA84(v25, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_20E21DA84(v29, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_20E04875C(v33, &qword_27C863C08, &qword_20E323EF0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_64:
  v61 = v122[16];
  v63 = *(a1 + v61);
  v62 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v66 = *v64;
  v65 = v64[1];
  if (v62 >> 60 == 15)
  {
    if (v65 >> 60 == 15)
    {
      sub_20E047C8C(v63, v62);
      sub_20E047C8C(v66, v65);
      sub_20E047D10(v63, v62);
      goto LABEL_72;
    }

LABEL_68:
    sub_20E047C8C(v63, v62);
    sub_20E047C8C(v66, v65);
    sub_20E047D10(v63, v62);
    sub_20E047D10(v66, v65);
    goto LABEL_69;
  }

  if (v65 >> 60 == 15)
  {
    goto LABEL_68;
  }

  sub_20E047C8C(v63, v62);
  sub_20E047C8C(v66, v65);
  v69 = sub_20E15F7B0(v63, v62, v66, v65);
  sub_20E047D10(v66, v65);
  sub_20E047D10(v63, v62);
  if ((v69 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_72:
  v70 = v122[17];
  v71 = (a1 + v70);
  v72 = *(a1 + v70 + 8);
  v73 = (a2 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v74)
  {
    goto LABEL_69;
  }

  v75 = v122[18];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v79)
  {
    goto LABEL_69;
  }

  v80 = v122[19];
  v81 = *(v18 + 48);
  v82 = v133;
  sub_20E0486F4(a1 + v80, v133, &qword_27C863C10, &qword_20E323EF8);
  sub_20E0486F4(a2 + v80, v82 + v81, &qword_27C863C10, &qword_20E323EF8);
  v83 = *(v131 + 48);
  if (v83(v82, 1, v132) == 1)
  {
    if (v83(v133 + v81, 1, v132) == 1)
    {
      sub_20E04875C(v133, &qword_27C863C10, &qword_20E323EF8);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v84 = v133;
  sub_20E0486F4(v133, v17, &qword_27C863C10, &qword_20E323EF8);
  if (v83(v84 + v81, 1, v132) == 1)
  {
    sub_20E21DA84(v17, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
LABEL_91:
    v57 = &qword_27C869B90;
    v58 = &qword_20E345E60;
    v59 = v133;
    goto LABEL_62;
  }

  v85 = v133;
  v86 = v133 + v81;
  v87 = v130;
  sub_20E21DAE4(v86, v130, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  v88 = _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD18ContentRestrictionV2eeoiySbAC_ACtFZ_0(v17, v87);
  sub_20E21DA84(v87, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_20E21DA84(v17, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_20E04875C(v85, &qword_27C863C10, &qword_20E323EF8);
  if ((v88 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_93:
  v89 = v122[20];
  v90 = (a1 + v89);
  v91 = *(a1 + v89 + 8);
  v92 = (a2 + v89);
  v93 = *(a2 + v89 + 8);
  if (v91)
  {
    if (!v93)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if (v93)
    {
      goto LABEL_69;
    }
  }

  v94 = v122[21];
  v95 = (a1 + v94);
  v96 = *(a1 + v94 + 8);
  v97 = (a2 + v94);
  v98 = v97[1];
  if (v96)
  {
    if (!v98 || (*v95 != *v97 || v96 != v98) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v98)
  {
    goto LABEL_69;
  }

  v99 = v122[22];
  v100 = *(a1 + v99);
  v101 = *(a2 + v99);
  if (v100 == 2)
  {
    if (v101 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v101 == 2 || ((v100 ^ v101) & 1) != 0)
  {
    goto LABEL_69;
  }

  v102 = v122[23];
  v103 = *(a1 + v102);
  v104 = *(a2 + v102);
  if (v103 == 2)
  {
    if (v104 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v104 == 2 || ((v103 ^ v104) & 1) != 0)
  {
    goto LABEL_69;
  }

  v105 = v122[24];
  v106 = *(v124 + 48);
  v107 = v128;
  sub_20E0486F4(a1 + v105, v128, &qword_27C863C18, &qword_20E323F00);
  sub_20E0486F4(a2 + v105, v107 + v106, &qword_27C863C18, &qword_20E323F00);
  v108 = *(v125 + 48);
  if (v108(v107, 1, v127) != 1)
  {
    v109 = v128;
    sub_20E0486F4(v128, v126, &qword_27C863C18, &qword_20E323F00);
    if (v108(v109 + v106, 1, v127) != 1)
    {
      v110 = v128;
      v111 = v128 + v106;
      v112 = v129;
      sub_20E21DAE4(v111, v129, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      v113 = v126;
      v114 = _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD6MeCardV2eeoiySbAC_ACtFZ_0(v126, v112);
      sub_20E21DA84(v112, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_20E21DA84(v113, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_20E04875C(v110, &qword_27C863C18, &qword_20E323F00);
      if ((v114 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_123;
    }

    sub_20E21DA84(v126, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
    goto LABEL_121;
  }

  if (v108(v128 + v106, 1, v127) != 1)
  {
LABEL_121:
    v57 = &qword_27C869B88;
    v58 = &qword_20E345E58;
    v59 = v128;
    goto LABEL_62;
  }

  sub_20E04875C(v128, &qword_27C863C18, &qword_20E323F00);
LABEL_123:
  v115 = v122[25];
  v116 = *(a1 + v115);
  v117 = *(a2 + v115);
  if (v116 == 12)
  {
    if (v117 != 12)
    {
      goto LABEL_69;
    }
  }

  else if (v116 != v117)
  {
    goto LABEL_69;
  }

  v118 = v122[26];
  v119 = *(a1 + v118);
  v120 = *(a2 + v118);
  if (v119 != 2)
  {
    if (v120 == 2 || ((v119 ^ v120) & 1) != 0)
    {
      goto LABEL_69;
    }

LABEL_132:
    v121 = v122[27];
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v67 = sub_20E322850();
    return v67 & 1;
  }

  if (v120 == 2)
  {
    goto LABEL_132;
  }

LABEL_69:
  v67 = 0;
  return v67 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B30, &qword_20E345E00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863C00, &qword_20E323EE8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863C00, &qword_20E323EE8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C00, &qword_20E323EE8);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoStructuredContext(0) + 20);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C00, &qword_20E323EE8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C869B30, &qword_20E345E00);
    goto LABEL_7;
  }

  sub_20E21DAE4(&v17[v18], v8, type metadata accessor for ContextProtoStructuredContextKind);
  v21 = _s23LighthouseDataProcessor022ContextProtoStructuredD4KindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E21DA84(v8, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E21DA84(v12, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E04875C(v17, &qword_27C863C00, &qword_20E323EE8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor021ContextProtoRetrievedD0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v123 = a1;
  v124 = a2;
  v2 = type metadata accessor for ContextProtoStructuredContext(0);
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v102 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE0, &qword_20E323EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v98 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B70, &qword_20E345E40);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v107 = &v98 - v9;
  v10 = type metadata accessor for ContextProtoContextMetadata(0);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v109 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD8, &qword_20E323EC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = (&v98 - v15);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B78, &qword_20E345E48);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v98 - v17;
  v18 = type metadata accessor for ContextProtoConfidence(0);
  v121 = *(v18 - 8);
  v122 = v18;
  v19 = *(v121 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = &v98 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B68, &qword_20E345E38);
  v24 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v26 = &v98 - v25;
  v27 = type metadata accessor for ToolKitProtoTypedValue(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v119 = (&v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v108 = (&v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v36 = (&v98 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v111 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v98 - v41;
  v43 = type metadata accessor for ContextProtoRetrievedContext(0);
  v44 = *(v43 + 20);
  v110 = v37;
  v45 = *(v37 + 48);
  sub_20E0486F4(&v123[v44], v42, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(&v124[v44], &v42[v45], &qword_27C863B18, &qword_20E323EB0);
  v48 = *(v28 + 48);
  v47 = v28 + 48;
  v46 = v48;
  if (v48(v42, 1, v27) == 1)
  {
    if (v46(&v42[v45], 1, v27) == 1)
    {
      v99 = v46;
      v100 = v47;
      v101 = v27;
      sub_20E04875C(v42, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_9;
    }

LABEL_6:
    v49 = &qword_27C867ED8;
    v50 = &qword_20E33AFA8;
LABEL_7:
    v51 = v42;
LABEL_35:
    sub_20E04875C(v51, v49, v50);
    goto LABEL_36;
  }

  sub_20E0486F4(v42, v36, &qword_27C863B18, &qword_20E323EB0);
  if (v46(&v42[v45], 1, v27) == 1)
  {
    sub_20E21DA84(v36, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  v99 = v46;
  v100 = v47;
  v101 = v27;
  v52 = v119;
  sub_20E21DAE4(&v42[v45], v119, type metadata accessor for ToolKitProtoTypedValue);
  v53 = sub_20E2EC4C4(v36, v52);
  sub_20E21DA84(v52, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v36, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v42, &qword_27C863B18, &qword_20E323EB0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v54 = v43;
  v55 = *(v43 + 24);
  v56 = *(v120 + 48);
  v57 = v123;
  sub_20E0486F4(&v123[v55], v26, &qword_27C863BD0, &qword_20E323EB8);
  v58 = v124;
  sub_20E0486F4(&v124[v55], &v26[v56], &qword_27C863BD0, &qword_20E323EB8);
  v59 = v122;
  v60 = *(v121 + 48);
  if (v60(v26, 1, v122) == 1)
  {
    if (v60(&v26[v56], 1, v59) == 1)
    {
      sub_20E04875C(v26, &qword_27C863BD0, &qword_20E323EB8);
      goto LABEL_12;
    }

LABEL_18:
    v49 = &qword_27C869B68;
    v50 = &qword_20E345E38;
    v51 = v26;
    goto LABEL_35;
  }

  v66 = v118;
  sub_20E0486F4(v26, v118, &qword_27C863BD0, &qword_20E323EB8);
  if (v60(&v26[v56], 1, v59) == 1)
  {
    sub_20E21DA84(v66, type metadata accessor for ContextProtoConfidence);
    goto LABEL_18;
  }

  v67 = v117;
  sub_20E21DAE4(&v26[v56], v117, type metadata accessor for ContextProtoConfidence);
  if (*v66 != *v67 || *(v66 + 4) != *(v67 + 4))
  {
    sub_20E21DA84(v67, type metadata accessor for ContextProtoConfidence);
    sub_20E21DA84(v66, type metadata accessor for ContextProtoConfidence);
    v49 = &qword_27C863BD0;
    v50 = &qword_20E323EB8;
    v51 = v26;
    goto LABEL_35;
  }

  v68 = *(v59 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v69 = sub_20E322850();
  sub_20E21DA84(v67, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA84(v66, type metadata accessor for ContextProtoConfidence);
  sub_20E04875C(v26, &qword_27C863BD0, &qword_20E323EB8);
  if ((v69 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if (*v57 != *v58)
  {
    goto LABEL_36;
  }

  v61 = v54[7];
  v62 = *(v113 + 48);
  v63 = v116;
  sub_20E0486F4(&v57[v61], v116, &qword_27C863BD8, &qword_20E323EC0);
  sub_20E0486F4(&v58[v61], v63 + v62, &qword_27C863BD8, &qword_20E323EC0);
  v64 = v115;
  v65 = *(v114 + 48);
  if (v65(v63, 1, v115) == 1)
  {
    if (v65(v63 + v62, 1, v64) == 1)
    {
      sub_20E04875C(v63, &qword_27C863BD8, &qword_20E323EC0);
      goto LABEL_28;
    }

LABEL_26:
    v49 = &qword_27C869B78;
    v50 = &qword_20E345E48;
LABEL_34:
    v51 = v63;
    goto LABEL_35;
  }

  v70 = v112;
  sub_20E0486F4(v63, v112, &qword_27C863BD8, &qword_20E323EC0);
  if (v65(v63 + v62, 1, v64) == 1)
  {
    sub_20E21DA84(v70, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_26;
  }

  v71 = v109;
  sub_20E21DAE4(v63 + v62, v109, type metadata accessor for ContextProtoContextMetadata);
  v72 = _s23LighthouseDataProcessor012ContextProtoD8MetadataV2eeoiySbAC_ACtFZ_0(v70, v71);
  sub_20E21DA84(v71, type metadata accessor for ContextProtoContextMetadata);
  sub_20E21DA84(v70, type metadata accessor for ContextProtoContextMetadata);
  sub_20E04875C(v63, &qword_27C863BD8, &qword_20E323EC0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v73 = v54[8];
  v63 = v111;
  v74 = *(v110 + 48);
  sub_20E0486F4(&v57[v73], v111, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(&v58[v73], v63 + v74, &qword_27C863B18, &qword_20E323EB0);
  v75 = v101;
  v76 = v99;
  if (v99(v63, 1, v101) == 1)
  {
    if (v76(v63 + v74, 1, v75) == 1)
    {
      sub_20E04875C(v63, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v77 = v108;
  sub_20E0486F4(v63, v108, &qword_27C863B18, &qword_20E323EB0);
  if (v76(v63 + v74, 1, v75) == 1)
  {
    sub_20E21DA84(v77, type metadata accessor for ToolKitProtoTypedValue);
LABEL_33:
    v49 = &qword_27C867ED8;
    v50 = &qword_20E33AFA8;
    goto LABEL_34;
  }

  v80 = v119;
  sub_20E21DAE4(v63 + v74, v119, type metadata accessor for ToolKitProtoTypedValue);
  v81 = sub_20E2EC4C4(v77, v80);
  sub_20E21DA84(v80, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v77, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v63, &qword_27C863B18, &qword_20E323EB0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v82 = v54[9];
  v83 = *(v104 + 48);
  v84 = v107;
  sub_20E0486F4(&v57[v82], v107, &qword_27C863BE0, &qword_20E323EC8);
  v85 = &v58[v82];
  v42 = v84;
  sub_20E0486F4(v85, v84 + v83, &qword_27C863BE0, &qword_20E323EC8);
  v86 = v106;
  v87 = *(v105 + 48);
  if (v87(v84, 1, v106) != 1)
  {
    v88 = v103;
    sub_20E0486F4(v42, v103, &qword_27C863BE0, &qword_20E323EC8);
    if (v87(&v42[v83], 1, v86) != 1)
    {
      v89 = &v42[v83];
      v90 = v102;
      sub_20E21DAE4(v89, v102, type metadata accessor for ContextProtoStructuredContext);
      v91 = _s23LighthouseDataProcessor022ContextProtoStructuredD0V2eeoiySbAC_ACtFZ_0(v88, v90);
      sub_20E21DA84(v90, type metadata accessor for ContextProtoStructuredContext);
      sub_20E21DA84(v88, type metadata accessor for ContextProtoStructuredContext);
      sub_20E04875C(v42, &qword_27C863BE0, &qword_20E323EC8);
      if ((v91 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    sub_20E21DA84(v88, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_44;
  }

  if (v87((v84 + v83), 1, v86) != 1)
  {
LABEL_44:
    v49 = &qword_27C869B70;
    v50 = &qword_20E345E40;
    goto LABEL_7;
  }

  sub_20E04875C(v84, &qword_27C863BE0, &qword_20E323EC8);
LABEL_46:
  v92 = v54[10];
  v93 = &v57[v92];
  v94 = *&v57[v92 + 8];
  v95 = &v58[v92];
  v96 = *(v95 + 1);
  if (v94)
  {
    if (v96 && (*v93 == *v95 && v94 == v96 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_53;
    }
  }

  else if (!v96)
  {
LABEL_53:
    v97 = v54[11];
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v78 = sub_20E322850();
    return v78 & 1;
  }

LABEL_36:
  v78 = 0;
  return v78 & 1;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedd3AppD0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 24) == *(a2 + 24) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9 || (*(a1 + 40) != *(a2 + 40) || v8 != v9) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v11 = *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedd10AppInFocusD0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_20;
    }
  }

  else if (!v9)
  {
LABEL_20:
    v10 = *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedD19NowPlayingMediaItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a1 + 89);
  v14 = *(a2 + 89);
  if (v13 == 7)
  {
    if (v14 != 7)
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  v15 = *(a1 + 90);
  v16 = *(a2 + 90);
  if (v15 == 4)
  {
    if (v16 != 4)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = *(a1 + 91);
  v18 = *(a2 + 91);
  if (v17 == 9)
  {
    if (v18 != 9)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = *(a1 + 104);
  v20 = *(a2 + 104);
  if (v19)
  {
    if (!v20 || (*(a1 + 96) != *(a2 + 96) || v19 != v20) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(a1 + 120);
  v22 = *(a2 + 120);
  if (v21)
  {
    if (!v22 || (*(a1 + 112) != *(a2 + 112) || v21 != v22) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = *(a1 + 136);
  v24 = *(a2 + 136);
  if (v23)
  {
    if (!v24 || (*(a1 + 128) != *(a2 + 128) || v23 != v24) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 152);
  v26 = *(a2 + 152);
  if (v25)
  {
    if (!v26 || (*(a1 + 144) != *(a2 + 144) || v25 != v26) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }

LABEL_78:
    v27 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  if (!v26)
  {
    goto LABEL_78;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor012ContextProtoD8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v159 = type metadata accessor for ContextProtoCGRect(0);
  v154 = *(v159 - 8);
  v4 = *(v154 + 64);
  MEMORY[0x28223BE20](v159);
  v6 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v153 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v148 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B20, &qword_20E345DF0);
  v12 = *(*(v157 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v157);
  v156 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v148 - v15;
  v16 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v163 = *(v16 - 8);
  v164 = v16;
  v17 = *(v163 + 64);
  MEMORY[0x28223BE20](v16);
  v158 = (&v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF0, &qword_20E323ED8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = (&v148 - v21);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B60, &qword_20E345E30);
  v22 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v166 = &v148 - v23;
  v24 = type metadata accessor for ContextProtoBoundingBox(0);
  v170 = *(v24 - 8);
  v171 = v24;
  v25 = *(v170 + 64);
  MEMORY[0x28223BE20](v24);
  v168 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v165 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v169 = &v148 - v31;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE0, &qword_20E33AFB0);
  v32 = *(*(v172 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v172);
  v167 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v148 - v35;
  v37 = type metadata accessor for ContextProtoConfidence(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (&v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = (&v148 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B68, &qword_20E345E38);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v148 - v48;
  v50 = a1[2];
  v51 = a2[2];
  if (v50)
  {
    if (!v51 || (a1[1] != a2[1] || v50 != v51) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v51)
  {
    goto LABEL_32;
  }

  v52 = a1[4];
  v53 = a2[4];
  if (v52)
  {
    if (!v53 || (a1[3] != a2[3] || v52 != v53) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v53)
  {
    goto LABEL_32;
  }

  v149 = v6;
  v54 = type metadata accessor for ContextProtoContextMetadata(0);
  v152 = a2;
  v150 = v54;
  v55 = *(v54 + 28);
  v56 = *(v46 + 48);
  v151 = a1;
  sub_20E0486F4(a1 + v55, v49, &qword_27C863BD0, &qword_20E323EB8);
  v57 = v152 + v55;
  v58 = v152;
  sub_20E0486F4(v57, &v49[v56], &qword_27C863BD0, &qword_20E323EB8);
  v59 = *(v38 + 48);
  if (v59(v49, 1, v37) == 1)
  {
    if (v59(&v49[v56], 1, v37) == 1)
    {
      sub_20E04875C(v49, &qword_27C863BD0, &qword_20E323EB8);
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  sub_20E0486F4(v49, v45, &qword_27C863BD0, &qword_20E323EB8);
  if (v59(&v49[v56], 1, v37) == 1)
  {
    sub_20E21DA84(v45, type metadata accessor for ContextProtoConfidence);
LABEL_24:
    v68 = &qword_27C869B68;
    v69 = &qword_20E345E38;
LABEL_30:
    v72 = v49;
LABEL_31:
    sub_20E04875C(v72, v68, v69);
    goto LABEL_32;
  }

  sub_20E21DAE4(&v49[v56], v41, type metadata accessor for ContextProtoConfidence);
  if (*v45 != *v41 || *(v45 + 4) != *(v41 + 4))
  {
    sub_20E21DA84(v41, type metadata accessor for ContextProtoConfidence);
    sub_20E21DA84(v45, type metadata accessor for ContextProtoConfidence);
    v68 = &qword_27C863BD0;
    v69 = &qword_20E323EB8;
    goto LABEL_30;
  }

  v70 = *(v37 + 24);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
  v58 = v152;
  v71 = sub_20E322850();
  sub_20E21DA84(v41, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA84(v45, type metadata accessor for ContextProtoConfidence);
  sub_20E04875C(v49, &qword_27C863BD0, &qword_20E323EB8);
  if ((v71 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v60 = v151;
  if ((sub_20E15A8AC(*v151, *v58) & 1) == 0)
  {
    goto LABEL_32;
  }

  v61 = v150;
  v62 = v150[8];
  v63 = *(v172 + 48);
  sub_20E0486F4(v60 + v62, v36, &qword_27C863BE8, &qword_20E323ED0);
  v64 = v152 + v62;
  v65 = v152;
  sub_20E0486F4(v64, &v36[v63], &qword_27C863BE8, &qword_20E323ED0);
  v66 = v171;
  v67 = *(v170 + 48);
  if (v67(v36, 1, v171) == 1)
  {
    if (v67(&v36[v63], 1, v66) != 1)
    {
LABEL_37:
      v68 = &qword_27C867EE0;
      v69 = &qword_20E33AFB0;
      v72 = v36;
      goto LABEL_31;
    }

    sub_20E04875C(v36, &qword_27C863BE8, &qword_20E323ED0);
  }

  else
  {
    v75 = v169;
    sub_20E0486F4(v36, v169, &qword_27C863BE8, &qword_20E323ED0);
    if (v67(&v36[v63], 1, v66) == 1)
    {
      v76 = v75;
LABEL_36:
      sub_20E21DA84(v76, type metadata accessor for ContextProtoBoundingBox);
      goto LABEL_37;
    }

    v77 = &v36[v63];
    v78 = v168;
    sub_20E21DAE4(v77, v168, type metadata accessor for ContextProtoBoundingBox);
    LODWORD(v170) = _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v75, v78);
    sub_20E21DA84(v78, type metadata accessor for ContextProtoBoundingBox);
    sub_20E21DA84(v75, type metadata accessor for ContextProtoBoundingBox);
    sub_20E04875C(v36, &qword_27C863BE8, &qword_20E323ED0);
    if ((v170 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v79 = v61[9];
  v80 = (v60 + v79);
  v81 = *(v60 + v79 + 8);
  v82 = (v65 + v79);
  v83 = *(v65 + v79 + 8);
  if (v81)
  {
    if (!v83)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if (v83)
    {
      goto LABEL_32;
    }
  }

  v84 = v61[10];
  v85 = (v60 + v84);
  v86 = *(v60 + v84 + 8);
  v87 = (v65 + v84);
  v88 = v87[1];
  if (v86)
  {
    if (!v88 || (*v85 != *v87 || v86 != v88) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v88)
  {
    goto LABEL_32;
  }

  v89 = v61[11];
  v90 = *(v60 + v89);
  v91 = *(v65 + v89);
  if (v90 == 2)
  {
    if (v91 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v91 == 2 || ((v90 ^ v91) & 1) != 0)
  {
    goto LABEL_32;
  }

  v92 = v61[12];
  v93 = *(v60 + v92);
  v94 = *(v65 + v92);
  if (v93 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v94 == 2 || ((v93 ^ v94) & 1) != 0)
  {
    goto LABEL_32;
  }

  v95 = v61[13];
  v96 = *(v172 + 48);
  v36 = v167;
  sub_20E0486F4(v60 + v95, v167, &qword_27C863BE8, &qword_20E323ED0);
  sub_20E0486F4(v65 + v95, &v36[v96], &qword_27C863BE8, &qword_20E323ED0);
  if (v67(v36, 1, v66) == 1)
  {
    if (v67(&v36[v96], 1, v66) == 1)
    {
      sub_20E04875C(v36, &qword_27C863BE8, &qword_20E323ED0);
      goto LABEL_68;
    }

    goto LABEL_37;
  }

  v97 = v165;
  sub_20E0486F4(v36, v165, &qword_27C863BE8, &qword_20E323ED0);
  if (v67(&v36[v96], 1, v66) == 1)
  {
    v76 = v97;
    goto LABEL_36;
  }

  v98 = &v36[v96];
  v99 = v168;
  sub_20E21DAE4(v98, v168, type metadata accessor for ContextProtoBoundingBox);
  v100 = _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v97, v99);
  sub_20E21DA84(v99, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA84(v97, type metadata accessor for ContextProtoBoundingBox);
  sub_20E04875C(v36, &qword_27C863BE8, &qword_20E323ED0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_68:
  v101 = v61[14];
  v102 = *(v151 + v101);
  v103 = *(v152 + v101);
  if (v102 == 6)
  {
    if (v103 != 6)
    {
      goto LABEL_32;
    }
  }

  else if (v102 != v103)
  {
    goto LABEL_32;
  }

  v104 = v150[15];
  v105 = *(v162 + 48);
  v106 = v166;
  sub_20E0486F4(v151 + v104, v166, &qword_27C863BF0, &qword_20E323ED8);
  sub_20E0486F4(v152 + v104, v106 + v105, &qword_27C863BF0, &qword_20E323ED8);
  v107 = *(v163 + 48);
  if (v107(v106, 1, v164) == 1)
  {
    if (v107(v166 + v105, 1, v164) == 1)
    {
      sub_20E04875C(v166, &qword_27C863BF0, &qword_20E323ED8);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v108 = v166;
  sub_20E0486F4(v166, v161, &qword_27C863BF0, &qword_20E323ED8);
  if (v107(v108 + v105, 1, v164) == 1)
  {
    sub_20E21DA84(v161, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_77:
    v68 = &qword_27C869B60;
    v69 = &qword_20E345E30;
    v72 = v166;
    goto LABEL_31;
  }

  v109 = v166;
  v110 = v166 + v105;
  v111 = v158;
  sub_20E21DAE4(v110, v158, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  v112 = v161;
  v113 = _s23LighthouseDataProcessor49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v161, v111);
  sub_20E21DA84(v111, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E21DA84(v112, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E04875C(v109, &qword_27C863BF0, &qword_20E323ED8);
  if ((v113 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_79:
  v114 = v150[16];
  v115 = (v151 + v114);
  v116 = *(v151 + v114 + 8);
  v117 = (v152 + v114);
  v118 = v117[1];
  if (v116)
  {
    if (!v118 || (*v115 != *v117 || v116 != v118) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v118)
  {
    goto LABEL_32;
  }

  v119 = v150[17];
  v120 = *(v157 + 48);
  v121 = v160;
  sub_20E0486F4(v151 + v119, v160, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(v152 + v119, v121 + v120, &qword_27C863BF8, &qword_20E323EE0);
  v122 = *(v154 + 48);
  if (v122(v121, 1, v159) == 1)
  {
    if (v122(v160 + v120, 1, v159) == 1)
    {
      sub_20E04875C(v160, &qword_27C863BF8, &qword_20E323EE0);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v123 = v160;
  sub_20E0486F4(v160, v155, &qword_27C863BF8, &qword_20E323EE0);
  if (v122(v123 + v120, 1, v159) == 1)
  {
    sub_20E21DA84(v155, type metadata accessor for ContextProtoCGRect);
LABEL_91:
    v68 = &qword_27C869B20;
    v69 = &qword_20E345DF0;
    v72 = v160;
    goto LABEL_31;
  }

  v124 = v160;
  v125 = v160 + v120;
  v126 = v149;
  sub_20E21DAE4(v125, v149, type metadata accessor for ContextProtoCGRect);
  v127 = v155;
  v128 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v155, v126);
  sub_20E21DA84(v126, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA84(v127, type metadata accessor for ContextProtoCGRect);
  sub_20E04875C(v124, &qword_27C863BF8, &qword_20E323EE0);
  if ((v128 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_93:
  v129 = v150[18];
  v130 = v156;
  v131 = *(v157 + 48);
  sub_20E0486F4(v151 + v129, v156, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(v152 + v129, v130 + v131, &qword_27C863BF8, &qword_20E323EE0);
  if (v122(v130, 1, v159) != 1)
  {
    v132 = v156;
    sub_20E0486F4(v156, v153, &qword_27C863BF8, &qword_20E323EE0);
    if (v122(v132 + v131, 1, v159) != 1)
    {
      v133 = v156;
      v134 = v149;
      sub_20E21DAE4(v156 + v131, v149, type metadata accessor for ContextProtoCGRect);
      v135 = v153;
      v136 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v153, v134);
      sub_20E21DA84(v134, type metadata accessor for ContextProtoCGRect);
      sub_20E21DA84(v135, type metadata accessor for ContextProtoCGRect);
      sub_20E04875C(v133, &qword_27C863BF8, &qword_20E323EE0);
      if ((v136 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_100;
    }

    sub_20E21DA84(v153, type metadata accessor for ContextProtoCGRect);
    goto LABEL_98;
  }

  if (v122(v156 + v131, 1, v159) != 1)
  {
LABEL_98:
    v68 = &qword_27C869B20;
    v69 = &qword_20E345DF0;
    v72 = v156;
    goto LABEL_31;
  }

  sub_20E04875C(v156, &qword_27C863BF8, &qword_20E323EE0);
LABEL_100:
  v137 = v150[19];
  v138 = (v151 + v137);
  v139 = *(v151 + v137 + 8);
  v140 = (v152 + v137);
  v141 = *(v152 + v137 + 8);
  if (v139)
  {
    if (!v141)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v138 != *v140)
    {
      LOBYTE(v141) = 1;
    }

    if (v141)
    {
      goto LABEL_32;
    }
  }

  v142 = v150[20];
  v143 = (v151 + v142);
  v144 = *(v151 + v142 + 8);
  v145 = (v152 + v142);
  v146 = v145[1];
  if (v144)
  {
    if (v146 && (*v143 == *v145 && v144 == v146 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_113;
    }
  }

  else if (!v146)
  {
LABEL_113:
    v147 = v150[21];
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8]);
    v73 = sub_20E322850();
    return v73 & 1;
  }

LABEL_32:
  v73 = 0;
  return v73 & 1;
}

unint64_t sub_20E21A530()
{
  result = qword_27C8695A0;
  if (!qword_27C8695A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695A0);
  }

  return result;
}

unint64_t sub_20E21A588()
{
  result = qword_27C8695A8;
  if (!qword_27C8695A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695A8);
  }

  return result;
}

unint64_t sub_20E21A5E0()
{
  result = qword_27C8695B0;
  if (!qword_27C8695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695B0);
  }

  return result;
}

unint64_t sub_20E21A638()
{
  result = qword_27C8695B8;
  if (!qword_27C8695B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695B8);
  }

  return result;
}

unint64_t sub_20E21A690()
{
  result = qword_27C8695C0;
  if (!qword_27C8695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695C0);
  }

  return result;
}

unint64_t sub_20E21A6E8()
{
  result = qword_27C8695C8;
  if (!qword_27C8695C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695C8);
  }

  return result;
}

unint64_t sub_20E21A740()
{
  result = qword_27C8695D0;
  if (!qword_27C8695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695D0);
  }

  return result;
}

unint64_t sub_20E21A798()
{
  result = qword_27C8695D8;
  if (!qword_27C8695D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695D8);
  }

  return result;
}

unint64_t sub_20E21A7F0()
{
  result = qword_27C8695E0;
  if (!qword_27C8695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695E0);
  }

  return result;
}

unint64_t sub_20E21A848()
{
  result = qword_27C8695E8;
  if (!qword_27C8695E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695E8);
  }

  return result;
}

unint64_t sub_20E21A8A0()
{
  result = qword_27C8695F0;
  if (!qword_27C8695F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695F0);
  }

  return result;
}

unint64_t sub_20E21A8F8()
{
  result = qword_27C8695F8;
  if (!qword_27C8695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695F8);
  }

  return result;
}

unint64_t sub_20E21A950()
{
  result = qword_27C869600;
  if (!qword_27C869600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869600);
  }

  return result;
}

unint64_t sub_20E21A9A8()
{
  result = qword_27C869608;
  if (!qword_27C869608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869608);
  }

  return result;
}

unint64_t sub_20E21AA00()
{
  result = qword_27C869610;
  if (!qword_27C869610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869610);
  }

  return result;
}

unint64_t sub_20E21AA58()
{
  result = qword_27C869618;
  if (!qword_27C869618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869618);
  }

  return result;
}

unint64_t sub_20E21AAB0()
{
  result = qword_27C869620;
  if (!qword_27C869620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869620);
  }

  return result;
}

unint64_t sub_20E21AB08()
{
  result = qword_27C869628;
  if (!qword_27C869628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869628);
  }

  return result;
}

unint64_t sub_20E21AB60()
{
  result = qword_27C869630;
  if (!qword_27C869630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869630);
  }

  return result;
}

unint64_t sub_20E21ABB8()
{
  result = qword_27C869638;
  if (!qword_27C869638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869638);
  }

  return result;
}

unint64_t sub_20E21AC10()
{
  result = qword_27C869640;
  if (!qword_27C869640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869640);
  }

  return result;
}

unint64_t sub_20E21AC68()
{
  result = qword_27C869648;
  if (!qword_27C869648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869648);
  }

  return result;
}

unint64_t sub_20E21ACC0()
{
  result = qword_27C869650;
  if (!qword_27C869650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869650);
  }

  return result;
}

unint64_t sub_20E21AD18()
{
  result = qword_27C869658;
  if (!qword_27C869658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869658);
  }

  return result;
}

unint64_t sub_20E21C750()
{
  result = qword_27C869868;
  if (!qword_27C869868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869868);
  }

  return result;
}

unint64_t sub_20E21C7A8()
{
  result = qword_27C869870;
  if (!qword_27C869870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869870);
  }

  return result;
}

unint64_t sub_20E21CC80()
{
  result = qword_27C8698C8;
  if (!qword_27C8698C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698C8);
  }

  return result;
}

unint64_t sub_20E21CCD8()
{
  result = qword_27C8698D0;
  if (!qword_27C8698D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698D0);
  }

  return result;
}

unint64_t sub_20E21CD30()
{
  result = qword_27C8698D8;
  if (!qword_27C8698D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698D8);
  }

  return result;
}

unint64_t sub_20E21CD88()
{
  result = qword_27C8698E0;
  if (!qword_27C8698E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698E0);
  }

  return result;
}

uint64_t sub_20E21DA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20E21DA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E21DAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20E21DBBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E21DD50(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20E21DDC0(v5);
    return 0;
  }

  else
  {
    sub_20E21DE28(v5, v10);
    v11 = [objc_allocWithZone(MEMORY[0x277D57E40]) init];
    if (v11)
    {
      v12 = sub_20E1A3074(v10);
      [v11 setAction_];
    }

    sub_20E21DE8C(v10);
  }

  return v11;
}

uint64_t sub_20E21DD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E21DDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E21DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E21DE8C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E21DEF8()
{
  v0 = sub_20E322010();
  __swift_allocate_value_buffer(v0, qword_27C869BA0);
  __swift_project_value_buffer(v0, qword_27C869BA0);
  return sub_20E321FC0();
}

uint64_t static IntervalConst.timeSinceSevenDaysAgo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C863190 != -1)
  {
    swift_once();
  }

  v2 = sub_20E322010();
  v3 = __swift_project_value_buffer(v2, qword_27C869BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

LighthouseDataProcessor::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  v8 = v3[8];
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v3[9];
  v11 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v3[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_20E21E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E19F8D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.statementResultDigests.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  v18 = a9 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = *a4;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v12[7];
  *(a7 + v17) = 2;
  v18 = v12[8];
  v19 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(a7 + v20, 1, 1, v21);
  v22 = a7 + v12[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C863B90, &unk_20E345EF0);
  sub_20E05EC5C(a2, a7 + v13, &qword_27C867F10, &qword_20E33AFE0);
  sub_20E05EC5C(a3, a7 + v15, &qword_27C863BA8, &unk_20E345F00);
  *(a7 + v17) = v24;
  sub_20E05EC5C(a5, a7 + v18, &qword_27C863B48, &unk_20E33C280);
  return sub_20E05EC5C(a6, a7 + v20, &qword_27C868A20, &qword_20E345F10);
}

unint64_t sub_20E21EFA8()
{
  result = qword_27C869BB8;
  if (!qword_27C869BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869BB8);
  }

  return result;
}

unint64_t sub_20E21F000()
{
  result = qword_27C869BC0;
  if (!qword_27C869BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C869BC8, &qword_20E345FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869BC0);
  }

  return result;
}

void sub_20E21F09C()
{
  sub_20E21F380(319, &qword_27C869BE0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E3221C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E21F194()
{
  sub_20E21F380(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E21F380(319, &qword_27C869BF8, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E21F380(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E21F3E4();
        if (v3 <= 0x3F)
        {
          sub_20E21F380(319, qword_280E09E38, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E21F380(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
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

void sub_20E21F380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E21F3E4()
{
  if (!qword_27C869C00)
  {
    v0 = sub_20E322A90();
    if (!v1)
    {
      atomic_store(v0, &qword_27C869C00);
    }
  }
}

void *sub_20E21F434(void *a1, uint64_t a2)
{
  v3 = v2;
  v83 = a1;
  v92[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v79 - v7;
  v8 = sub_20E322010();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v81 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v84 = &v79 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  v3[2] = a2;

  v85 = a2;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v22);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v23 = sub_20E3227C0();
  v24 = __swift_project_value_buffer(v23, qword_280E12C48);
  v25 = v9[2];
  v86 = v22;
  v90 = v25;
  v25(v20, v22, v8);
  v89 = v24;
  v26 = sub_20E3227B0();
  v27 = sub_20E322A40();
  v28 = os_log_type_enabled(v26, v27);
  v87 = v9;
  v88 = v3;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v92[0] = v30;
    *v29 = 136315138;
    sub_20E074360();
    v31 = sub_20E322D50();
    v80 = v15;
    v33 = v32;
    v91 = v9[1];
    v91(v20, v8);
    v34 = sub_20E31B6C4(v31, v33, v92);
    v15 = v80;

    *(v29 + 4) = v34;
    _os_log_impl(&dword_20E031000, v26, v27, "#ObjCSELFMapper Original bookmark start date: collecting from %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F32CA80](v30, -1, -1);
    MEMORY[0x20F32CA80](v29, -1, -1);
  }

  else
  {

    v91 = v9[1];
    v91(v20, v8);
  }

  v35 = v84;
  sub_20E322000();
  v90(v15, v35, v8);
  v36 = sub_20E3227B0();
  v37 = sub_20E322A40();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92[0] = v39;
    *v38 = 136315138;
    sub_20E074360();
    v40 = sub_20E322D50();
    v41 = v15;
    v43 = v42;
    v44 = v87;
    v91(v41, v8);
    v45 = sub_20E31B6C4(v40, v43, v92);

    *(v38 + 4) = v45;
    v46 = v37;
    v47 = v44;
    _os_log_impl(&dword_20E031000, v36, v46, "#ObjCSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x20F32CA80](v39, -1, -1);
    MEMORY[0x20F32CA80](v38, -1, -1);
  }

  else
  {

    v47 = v87;
    v91(v15, v8);
  }

  v48 = v88;
  v49 = v81;
  v50 = v82;
  v51 = v88[2];
  v52 = v90;
  v90(v81, v35, v8);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v49);

  v52(v50, v35, v8);
  (v47[7])(v50, 0, 1, v8);
  v53 = v86;
  v54 = sub_20E321FB0();
  if ((v47[6])(v50, 1, v8) == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_20E321FB0();
    v91(v50, v8);
  }

  v56 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v54 endDate:v55 maxEvents:0 lastN:0 reversed:0];

  v57 = v83;
  v48[3] = v56;
  v48[4] = v57;
  v58 = v57;
  v59 = BiomeLibrary();
  v92[0] = 0;
  v60 = [v59 streamWithIdentifier:v58 error:v92];
  swift_unknownObjectRelease();
  v61 = v92[0];
  if (v60)
  {

    v62 = v91;
    v91(v35, v8);
    v62(v53, v8);
  }

  else
  {
    v63 = v61;
    v64 = sub_20E321EF0();

    swift_willThrow();
    v65 = v58;
    v66 = sub_20E3227B0();
    v67 = sub_20E322A50();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92[0] = v69;
      *v68 = 136315138;
      v70 = sub_20E322890();
      v72 = v35;
      v73 = sub_20E31B6C4(v70, v71, v92);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_20E031000, v66, v67, "#ObjCSELFMapper stream info cannot be obtained from bmStreamIdentifier %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      v74 = v69;
      v48 = v88;
      MEMORY[0x20F32CA80](v74, -1, -1);
      MEMORY[0x20F32CA80](v68, -1, -1);

      v75 = v91;
      v91(v72, v8);
      v76 = v86;
    }

    else
    {

      v75 = v91;
      v91(v35, v8);
      v76 = v53;
    }

    v75(v76, v8);
    v60 = 0;
  }

  v48[5] = v60;
  v77 = *MEMORY[0x277D85DE8];
  return v48;
}

void *IFTranscriptSELFMapper.__allocating_init(bookmarkSuite:)()
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20E322860();

  v3 = [v1 initWithSuiteName_];

  v0[2] = v3;
  v0[3] = 0xD00000000000002ELL;
  v0[4] = 0x800000020E360F40;
  v0[5] = 0xD000000000000043;
  v0[6] = 0x800000020E360F70;
  v4 = *MEMORY[0x277CF0E60];
  *(swift_allocObject() + 48) = 0;
  return sub_20E21F434(v4, v0);
}

void *IFTranscriptSELFMapper.__allocating_init(bookmarkSuite:selfTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_20E322860();

  v7 = [v5 initWithSuiteName_];

  v4[2] = v7;
  v4[3] = 0xD00000000000002ELL;
  v4[4] = 0x800000020E360F40;
  v4[5] = 0xD000000000000043;
  v4[6] = 0x800000020E360F70;
  v8 = *MEMORY[0x277CF0E60];
  *(swift_allocObject() + 48) = 0;
  v9 = sub_20E21F434(v8, v4);
  swift_beginAccess();
  v10 = v9[6];
  v9[6] = a3;

  return v9;
}

uint64_t IFTranscriptSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for IETranscriptEventWrapper() - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E21FF28, 0, 0);
}

uint64_t sub_20E21FF28()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = v0[2];
    }

    v2 = sub_20E322BC0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v3 = sub_20E3227C0();
    __swift_project_value_buffer(v3, qword_280E12C48);
    v4 = sub_20E3227B0();
    v5 = sub_20E322A40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20E031000, v4, v5, "#IFTranscriptSELFMapper Decoding Sage Transcript events", v6, 2u);
      MEMORY[0x20F32CA80](v6, -1, -1);
    }

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_20E2201A4;
    v8 = v0[2];

    return sub_20E069C58(v8);
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v10 = sub_20E3227C0();
    __swift_project_value_buffer(v10, qword_280E12C48);
    v11 = sub_20E3227B0();
    v12 = sub_20E322A40();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20E031000, v11, v12, "#IFTranscriptSELFMapper No IF transcript events to convert to SELF", v13, 2u);
      MEMORY[0x20F32CA80](v13, -1, -1);
    }

    v14 = v0[5];

    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_20E2201A4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20E2202A4, 0, 0);
}

uint64_t sub_20E2202A4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (!v2)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_20:
    v24 = v0[5];

    v25 = v0[1];

    return v25(v6);
  }

  v3 = v0[4];
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v0[5];
    v9 = v0[3];
    sub_20E225910(v4, v8, type metadata accessor for IETranscriptEventWrapper);
    v10 = sub_20E2204EC(v8);
    result = sub_20E225978(v8, type metadata accessor for IETranscriptEventWrapper);
    isa = v10[2].isa;
    v12 = v6[2];
    v13 = isa + v12;
    if (__OFADD__(v12, isa))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v6[3] >> 1)
    {
      if (v10[2].isa)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = isa + v12;
      }

      else
      {
        v15 = v12;
      }

      v6 = sub_20E2255B4(isUniquelyReferenced_nonNull_native, v15, 1, v6, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
      if (v10[2].isa)
      {
LABEL_14:
        v16 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for IFSELFMessageEventWrapper(0);
        v17 = *(result - 8);
        if (v16 < isa)
        {
          goto LABEL_25;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (isa)
        {
          v20 = v6[2];
          v21 = __OFADD__(v20, isa);
          v22 = isa + v20;
          if (v21)
          {
            goto LABEL_26;
          }

          v6[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (isa)
    {
      goto LABEL_24;
    }

LABEL_4:
    v4 += v5;
    if (!--v2)
    {
      v23 = v0[7];

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

os_log_t sub_20E2204EC(uint64_t *a1)
{
  v2 = type metadata accessor for IFSELFMessageEventWrapper(0);
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = *(v125 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v110 - v8;
  MEMORY[0x28223BE20](v7);
  v129 = (&v110 - v10);
  v127 = type metadata accessor for IETranscriptEventWrapper();
  v11 = *(v127[-1].isa + 8);
  v12 = MEMORY[0x28223BE20](v127);
  v115 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v110 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v110 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v120 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v113 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v110 - v28;
  v30 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v116 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TranscriptProtoEvent(0);
  v34 = *(v114 + 44);
  v117 = a1;
  sub_20E0486F4(a1 + v34, v23, &qword_27C863FC0, &unk_20E325F70);
  v35 = type metadata accessor for TranscriptProtoPayload(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v23, 1, v35) == 1)
  {
    sub_20E04875C(v23, &qword_27C863FC0, &unk_20E325F70);
    (*(v31 + 56))(v29, 1, 1, v30);
LABEL_4:
    sub_20E04875C(v29, &qword_27C863FC8, &unk_20E33C1D0);
    if (qword_280E12B88 != -1)
    {
LABEL_47:
      swift_once();
    }

    v38 = sub_20E3227C0();
    __swift_project_value_buffer(v38, qword_280E12C48);
    v39 = sub_20E3227B0();
    v40 = sub_20E322A40();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v130[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_20E31B6C4(0xD000000000000058, 0x800000020E361010, v130);
      _os_log_impl(&dword_20E031000, v39, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x20F32CA80](v42, -1, -1);
      MEMORY[0x20F32CA80](v41, -1, -1);
    }

    LOBYTE(v130[0]) = 99;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v130, 0xD000000000000058, 0x800000020E361010);
    return MEMORY[0x277D84F90];
  }

  sub_20E0486F4(v23, v29, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E225978(v23, type metadata accessor for TranscriptProtoPayload);
  v37 = *(v31 + 48);
  if (v37(v29, 1, v30) == 1)
  {
    goto LABEL_4;
  }

  sub_20E2258A8(v29, v116, type metadata accessor for TranscriptProtoPayloadEnum);
  v123 = sub_20E2282F8(v117);
  if (!v123)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v54 = sub_20E3227C0();
    __swift_project_value_buffer(v54, qword_280E12C48);
    v55 = sub_20E3227B0();
    v56 = sub_20E322A50();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v130[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_20E31B6C4(0xD00000000000003ELL, 0x800000020E361070, v130);
      _os_log_impl(&dword_20E031000, v55, v56, "%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F32CA80](v58, -1, -1);
      MEMORY[0x20F32CA80](v57, -1, -1);
    }

    LOBYTE(v130[0]) = 100;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v130, 0xD00000000000003ELL, 0x800000020E361070);
    goto LABEL_58;
  }

  v110 = v37;
  v111 = v30;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v45 = sub_20E3227C0();
  v46 = __swift_project_value_buffer(v45, qword_280E12C48);
  sub_20E225910(v117, v17, type metadata accessor for IETranscriptEventWrapper);
  v112 = v46;
  v47 = sub_20E3227B0();
  v48 = sub_20E322A40();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v130[0] = v124;
    *v49 = 136315138;
    LODWORD(v122) = v48;
    v118 = TranscriptProtoEvent.description.getter();
    v51 = v50;
    sub_20E225978(v17, type metadata accessor for IETranscriptEventWrapper);
    v52 = sub_20E31B6C4(v118, v51, v130);

    *(v49 + 4) = v52;
    _os_log_impl(&dword_20E031000, v47, v122, "#IFTranscriptSELFMapper - created IFTEventWrapper for %s", v49, 0xCu);
    v53 = v124;
    __swift_destroy_boxed_opaque_existential_0(v124);
    MEMORY[0x20F32CA80](v53, -1, -1);
    MEMORY[0x20F32CA80](v49, -1, -1);
  }

  else
  {

    sub_20E225978(v17, type metadata accessor for IETranscriptEventWrapper);
  }

  v122 = *(v117 + SHIDWORD(v127[2].isa));
  if (!v122)
  {
    v59 = sub_20E3227B0();
    v60 = sub_20E322A40();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v127 = v59;
      v62 = v61;
      v63 = swift_slowAlloc();
      v130[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_20E31B6C4(0xD000000000000031, 0x800000020E3610B0, v130);
      v64 = v60;
      v65 = v127;
      _os_log_impl(&dword_20E031000, v127, v64, "%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x20F32CA80](v63, -1, -1);
      MEMORY[0x20F32CA80](v62, -1, -1);
    }

    else
    {
    }

    LOBYTE(v130[0]) = 5;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v130, 0xD000000000000031, 0x800000020E3610B0);
  }

  v124 = sub_20E2215B4(v116);
  if (!(v124 >> 62))
  {
    v66 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_28;
    }

LABEL_49:

    v96 = v121;
    sub_20E225910(v117, v121, type metadata accessor for IETranscriptEventWrapper);
    v97 = sub_20E3227B0();
    v98 = sub_20E322A40();
    if (!os_log_type_enabled(v97, v98))
    {

      sub_20E225978(v96, type metadata accessor for IETranscriptEventWrapper);
LABEL_58:
      sub_20E225978(v116, type metadata accessor for TranscriptProtoPayloadEnum);
      return MEMORY[0x277D84F90];
    }

    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v130[0] = v100;
    *v99 = 136315138;
    v101 = v120;
    sub_20E0486F4(v96 + *(v114 + 44), v120, &qword_27C863FC0, &unk_20E325F70);
    if (v36(v101, 1, v35) == 1)
    {
      v102 = v101;
      v103 = 4999502;
      v104 = &qword_27C863FC0;
      v105 = &unk_20E325F70;
    }

    else
    {
      v106 = v113;
      sub_20E0486F4(v101, v113, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E225978(v101, type metadata accessor for TranscriptProtoPayload);
      if (v110(v106, 1, v111) != 1)
      {
        v103 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v107 = v108;
        sub_20E225978(v106, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_57;
      }

      v103 = 4999502;
      v104 = &qword_27C863FC8;
      v105 = &unk_20E33C1D0;
      v102 = v106;
    }

    sub_20E04875C(v102, v104, v105);
    v107 = 0xE300000000000000;
LABEL_57:
    sub_20E225978(v96, type metadata accessor for IETranscriptEventWrapper);
    v109 = sub_20E31B6C4(v103, v107, v130);

    *(v99 + 4) = v109;
    _os_log_impl(&dword_20E031000, v97, v98, "#IFTranscriptSELFMapper - nothing got mapped for  %s event", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x20F32CA80](v100, -1, -1);
    MEMORY[0x20F32CA80](v99, -1, -1);

    goto LABEL_58;
  }

  v66 = sub_20E322BC0();
  if (!v66)
  {
    goto LABEL_49;
  }

LABEL_28:
  v67 = 0;
  v121 = v124 & 0xC000000000000001;
  v43 = MEMORY[0x277D84F90];
  v119 = v9;
  v120 = v124 & 0xFFFFFFFFFFFFFF8;
  v118 = v66;
  do
  {
    if (v121)
    {
      v68 = MEMORY[0x20F32C150](v67, v124);
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v67 >= *(v120 + 16))
      {
        goto LABEL_46;
      }

      v68 = *(v124 + 8 * v67 + 32);
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v127 = v43;
    v128 = v69;
    v70 = v9;
    v71 = v6;
    v72 = v68;
    [v68 setEventMetadata_];
    v73 = v126;
    v74 = *(v126 + 20);
    v75 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
    v76 = *(*(v75 - 8) + 56);
    v76(v70 + v74, 1, 1, v75);
    result = [objc_allocWithZone(MEMORY[0x277D5AA68]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    *v70 = result;
    sub_20E04875C(v70 + v74, &qword_27C863FF0, &unk_20E326070);
    v76(v70 + v74, 1, 1, v75);
    v77 = v70;
    v78 = v129;
    sub_20E2258A8(v77, v129, type metadata accessor for IFSELFMessageEventWrapper);

    *v78 = v72;
    v79 = *(v73 + 20);
    sub_20E04875C(v78 + v79, &qword_27C863FF0, &unk_20E326070);
    v80 = v122;
    *(v78 + v79) = v122;
    swift_storeEnumTagMultiPayload();
    v76(v78 + v79, 0, 1, v75);
    v6 = v71;
    sub_20E225910(v78, v71, type metadata accessor for IFSELFMessageEventWrapper);
    v81 = v80;
    v43 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_20E2255B4(0, v43[2].isa + 1, 1, v43, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
    }

    v82 = v118;
    v9 = v119;
    v83 = v128;
    isa = v43[2].isa;
    v84 = v43[3].isa;
    if (isa >= v84 >> 1)
    {
      v43 = sub_20E2255B4(v84 > 1, isa + 1, 1, v43, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
    }

    v43[2].isa = (isa + 1);
    sub_20E2258A8(v6, v43 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * isa, type metadata accessor for IFSELFMessageEventWrapper);
    sub_20E225978(v129, type metadata accessor for IFSELFMessageEventWrapper);
    ++v67;
  }

  while (v83 != v82);

  v86 = v115;
  sub_20E225910(v117, v115, type metadata accessor for IETranscriptEventWrapper);
  swift_bridgeObjectRetain_n();
  v87 = sub_20E3227B0();
  v88 = sub_20E322A40();
  if (os_log_type_enabled(v87, v88))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v130[0] = v91;
    *v90 = 134218242;
    *(v90 + 4) = v43[2];

    *(v90 + 12) = 2080;
    v92 = TranscriptProtoEvent.description.getter();
    v94 = v93;
    sub_20E225978(v86, type metadata accessor for IETranscriptEventWrapper);
    v95 = sub_20E31B6C4(v92, v94, v130);

    *(v90 + 14) = v95;

    _os_log_impl(&dword_20E031000, v87, v88, "#IFTranscriptSELFMapper - yeilds %ld IFTEventWrapper(s) for %s", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x20F32CA80](v91, -1, -1);
    MEMORY[0x20F32CA80](v90, -1, -1);

    sub_20E225978(v116, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  else
  {

    sub_20E225978(v86, type metadata accessor for IETranscriptEventWrapper);
    sub_20E225978(v116, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  return v43;
}

uint64_t sub_20E2215B4(uint64_t a1)
{
  v349 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F18, &qword_20E33AFE8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v308 = &v298 - v3;
  v307 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v4 = *(*(v307 - 8) + 64);
  MEMORY[0x28223BE20](v307);
  v342 = &v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v341 = &v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v306 = &v298 - v11;
  v305 = type metadata accessor for TranscriptProtoSessionStart(0);
  v12 = *(*(v305 - 8) + 64);
  MEMORY[0x28223BE20](v305);
  v340 = &v298 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v299 = &v298 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v338 = &v298 - v19;
  v20 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v339 = &v298 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoSessionError(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v337 = &v298 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v335 = &v298 - v28;
  v333 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v331 = *(v333 - 8);
  v29 = *(v331 + 64);
  MEMORY[0x28223BE20](v333);
  v336 = &v298 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v344 = (&v298 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v328 = &v298 - v36;
  v327 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v326 = *(v327 - 8);
  v37 = *(v326 + 64);
  MEMORY[0x28223BE20](v327);
  v334 = &v298 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v324 = &v298 - v41;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v322 = *(Step - 8);
  v42 = *(v322 + 64);
  MEMORY[0x28223BE20](Step);
  v330 = &v298 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A98, &qword_20E323980);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v348 = &v298 - v46;
  v347 = type metadata accessor for TranscriptProtoStatementResult(0);
  v343 = *(v347 - 8);
  v47 = *(v343 + 64);
  v48 = MEMORY[0x28223BE20](v347);
  v346 = &v298 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v325 = &v298 - v50;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v51 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v332 = &v298 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v318 = &v298 - v55;
  v317 = type metadata accessor for TranscriptProtoClientAction(0);
  v316 = *(v317 - 8);
  v56 = *(v316 + 64);
  MEMORY[0x28223BE20](v317);
  v321 = &v298 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v315 = &v298 - v60;
  v314 = type metadata accessor for TranscriptProtoAction(0);
  v313 = *(v314 - 8);
  v61 = *(v313 + 64);
  MEMORY[0x28223BE20](v314);
  v319 = &v298 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v301 = (&v298 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = MEMORY[0x28223BE20](v65);
  v303 = (&v298 - v68);
  MEMORY[0x28223BE20](v67);
  v302 = (&v298 - v69);
  v300 = type metadata accessor for TranscriptProtoVariableStep(0);
  v70 = *(*(v300 - 8) + 64);
  MEMORY[0x28223BE20](v300);
  v320 = &v298 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v75 = &v298 - v74;
  v76 = type metadata accessor for TranscriptProtoToolResolution(0);
  v311 = *(v76 - 8);
  v77 = *(v311 + 64);
  MEMORY[0x28223BE20](v76);
  v312 = &v298 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v82 = &v298 - v81;
  v83 = type metadata accessor for TranscriptProtoRequest(0);
  v310 = *(v83 - 8);
  v84 = *(v310 + 64);
  MEMORY[0x28223BE20](v83);
  v329 = &v298 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v89 = &v298 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90 - 8);
  v93 = &v298 - v92;
  v94 = type metadata accessor for TranscriptProtoPlan(0);
  v309 = *(v94 - 8);
  v95 = *(v309 + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v298 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v298 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = MEMORY[0x277D84F90];
  v102 = [objc_allocWithZone(MEMORY[0x277D57D80]) init];
  if (v102)
  {
    v345 = v102;
    sub_20E225910(v349, v101, type metadata accessor for TranscriptProtoPayloadEnum);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v103 = v340;
        sub_20E2258A8(v101, v340, type metadata accessor for TranscriptProtoSessionStart);
        sub_20E2248D0(0xD000000000000018, 0x800000020E3611C0, 0);
        v104 = [objc_allocWithZone(MEMORY[0x277D58060]) init];
        if (!v104)
        {
          v235 = type metadata accessor for TranscriptProtoSessionStart;
          goto LABEL_126;
        }

        v105 = v104;
        v106 = v306;
        sub_20E0486F4(v103 + *(v305 + 20), v306, &qword_27C8687A0, &unk_20E3461A0);
        v107 = type metadata accessor for TranscriptProtoDeviceDetails(0);
        v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
        sub_20E04875C(v106, &qword_27C8687A0, &unk_20E3461A0);
        if (v108 == 1)
        {
          [v105 setOriginatingDeviceWasLocal_];
        }

        v109 = v345;
        [v345 setSessionStart_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E3611C0, 1);
        v110 = v109;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v285 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v111 = type metadata accessor for TranscriptProtoSessionStart;
        goto LABEL_142;
      case 1u:
        v160 = v329;
        sub_20E2258A8(v101, v329, type metadata accessor for TranscriptProtoRequest);
        sub_20E2248D0(0xD000000000000013, 0x800000020E3613B0, 0);
        sub_20E225910(v160, v82, type metadata accessor for TranscriptProtoRequest);
        (*(v310 + 56))(v82, 0, 1, v83);
        v161 = sub_20E06DDAC(v82);
        v163 = v162;
        sub_20E04875C(v82, &qword_27C863F90, &unk_20E3461E0);
        if (v161)
        {
          v164 = v161;
          v165 = v345;
          [v345 setRequest_];
          sub_20E2248D0(0xD000000000000013, 0x800000020E3613B0, 1);
          v166 = v165;
          MEMORY[0x20F32BF90]();
          if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v286 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20E322990();
          }

          sub_20E3229B0();

          v167 = v351;
          if (!v163)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v167 = MEMORY[0x277D84F90];
          if (!v163)
          {
            v164 = 0;
LABEL_168:
            sub_20E225978(v160, type metadata accessor for TranscriptProtoRequest);

            return v167;
          }
        }

        v238 = v163;
        sub_20E2248D0(0xD00000000000002ALL, 0x800000020E3613D0, 0);
        v239 = [objc_allocWithZone(MEMORY[0x277D57D80]) init];
        if (!v239)
        {

          if (qword_280E12B88 != -1)
          {
            swift_once();
          }

          v272 = sub_20E3227C0();
          __swift_project_value_buffer(v272, qword_280E12C48);
          v273 = sub_20E3227B0();
          v274 = sub_20E322A50();
          if (os_log_type_enabled(v273, v274))
          {
            v275 = swift_slowAlloc();
            v276 = swift_slowAlloc();
            v350 = v276;
            *v275 = 136315138;
            *(v275 + 4) = sub_20E31B6C4(0xD00000000000003FLL, 0x800000020E3610F0, &v350);
            _os_log_impl(&dword_20E031000, v273, v274, "%s", v275, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v276);
            MEMORY[0x20F32CA80](v276, -1, -1);
            MEMORY[0x20F32CA80](v275, -1, -1);
          }

          LOBYTE(v350) = 96;
          _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v350, 0xD00000000000003FLL, 0x800000020E3610F0);

          sub_20E225978(v160, type metadata accessor for TranscriptProtoRequest);
          return MEMORY[0x277D84F90];
        }

        v240 = v239;
        [v239 setRequestContextTextContentTier1_];
        sub_20E2248D0(0xD00000000000002ALL, 0x800000020E3613D0, 1);
        v241 = v240;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v297 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v149 = type metadata accessor for TranscriptProtoRequest;
        v150 = v160;
LABEL_160:
        sub_20E225978(v150, v149);
LABEL_161:
        result = v351;
        break;
      case 2u:
        sub_20E2258A8(v101, v97, type metadata accessor for TranscriptProtoPlan);
        sub_20E2248D0(0xD000000000000010, 0x800000020E361430, 0);
        sub_20E225910(v97, v93, type metadata accessor for TranscriptProtoPlan);
        (*(v309 + 56))(v93, 0, 1, v94);
        v145 = sub_20E06D438(v93);
        sub_20E04875C(v93, &qword_27C863F78, &unk_20E325EA0);
        if (!v145)
        {
          v236 = type metadata accessor for TranscriptProtoPlan;
          v237 = v97;
          goto LABEL_131;
        }

        v146 = v145;
        v147 = v345;
        [v345 setPlanCreated_];
        sub_20E2248D0(0xD000000000000010, 0x800000020E361430, 1);
        v148 = v147;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v282 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v149 = type metadata accessor for TranscriptProtoPlan;
        v150 = v97;
        goto LABEL_160;
      case 3u:
        v125 = v319;
        sub_20E2258A8(v101, v319, type metadata accessor for TranscriptProtoAction);
        sub_20E2248D0(0xD000000000000012, 0x800000020E361350, 0);
        v190 = v315;
        sub_20E225910(v125, v315, type metadata accessor for TranscriptProtoAction);
        (*(v313 + 56))(v190, 0, 1, v314);
        sub_20E31CC98(v190);
        v192 = v191;
        sub_20E04875C(v190, &qword_27C867F10, &qword_20E33AFE0);
        if (!v192)
        {
          v233 = type metadata accessor for TranscriptProtoAction;
          goto LABEL_121;
        }

        v193 = v345;
        [v345 setActionCreated_];
        sub_20E2248D0(0xD000000000000012, 0x800000020E361350, 1);
        v194 = v193;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v291 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoAction;
        goto LABEL_69;
      case 4u:
        v176 = v321;
        sub_20E2258A8(v101, v321, type metadata accessor for TranscriptProtoClientAction);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361330, 0);
        v195 = v318;
        sub_20E225910(v176, v318, type metadata accessor for TranscriptProtoClientAction);
        (*(v316 + 56))(v195, 0, 1, v317);
        v196 = sub_20E0670F4(v195);
        sub_20E04875C(v195, &qword_27C863F20, &unk_20E3461D0);
        if (!v196)
        {
          v242 = type metadata accessor for TranscriptProtoClientAction;
          goto LABEL_123;
        }

        v197 = v345;
        [v345 setClientActionCreated_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361330, 1);
        v198 = v197;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v292 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v181 = type metadata accessor for TranscriptProtoClientAction;
        goto LABEL_75;
      case 5u:
        v125 = v330;
        sub_20E2258A8(v101, v330, type metadata accessor for TranscriptProtoQueryStep);
        sub_20E2248D0(0xD000000000000015, 0x800000020E3612D0, 0);
        v151 = v324;
        sub_20E225910(v125, v324, type metadata accessor for TranscriptProtoQueryStep);
        (*(v322 + 56))(v151, 0, 1, Step);
        v152 = sub_20E052A14(v151);
        sub_20E04875C(v151, &qword_27C863BC8, &unk_20E3461C0);
        if (!v152)
        {
          v233 = type metadata accessor for TranscriptProtoQueryStep;
          goto LABEL_121;
        }

        v153 = v345;
        [v345 setQueriesCreated_];
        sub_20E2248D0(0xD000000000000015, 0x800000020E3612D0, 1);
        v154 = v153;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v283 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_69;
      case 6u:
        v103 = v320;
        sub_20E2258A8(v101, v320, type metadata accessor for TranscriptProtoVariableStep);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361370, 0);
        v168 = [objc_allocWithZone(MEMORY[0x277D58178]) init];
        if (!v168)
        {
          v235 = type metadata accessor for TranscriptProtoVariableStep;
          goto LABEL_126;
        }

        v169 = v168;
        [v168 setExists_];
        v170 = *(v300 + 20);
        v171 = objc_allocWithZone(MEMORY[0x277D58078]);
        v172 = v169;
        v173 = [v171 init];
        v174 = v302;
        sub_20E0486F4(v103 + v170, v302, &qword_27C8639D0, &unk_20E33C230);
        v175 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v175 - 8) + 48))(v174, 1, v175) == 1)
        {
          sub_20E04875C(v174, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v247 = *v174;
          sub_20E225978(v174, type metadata accessor for TranscriptProtoStatementID);
          [v173 setIndex_];
        }

        [v172 setStatementId_];

        v248 = v172;
        v249 = v345;
        [v345 setVariablesSet_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361370, 1);
        v250 = v249;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v287 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v111 = type metadata accessor for TranscriptProtoVariableStep;
        goto LABEL_142;
      case 7u:
        v176 = v337;
        sub_20E2258A8(v101, v337, type metadata accessor for TranscriptProtoSessionError);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361240, 0);
        v177 = sub_20E064624(v176);
        if (!v177)
        {
          v242 = type metadata accessor for TranscriptProtoSessionError;
LABEL_123:
          v236 = v242;
          v237 = v176;
          goto LABEL_131;
        }

        v178 = v177;
        v179 = v345;
        [v345 setCriticalError_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361240, 1);
        v180 = v179;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v288 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v181 = type metadata accessor for TranscriptProtoSessionError;
LABEL_75:
        v149 = v181;
        v150 = v176;
        goto LABEL_160;
      case 8u:
        v103 = v339;
        sub_20E2258A8(v101, v339, type metadata accessor for TranscriptProtoRecoverableError);
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361200, 0);
        v207 = [objc_allocWithZone(MEMORY[0x277D57F98]) init];
        v208 = v338;
        sub_20E0486F4(v103, v338, &qword_27C868450, &unk_20E33C320);
        v209 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
        if ((*(*(v209 - 8) + 48))(v208, 1, v209) != 1)
        {
          v210 = v299;
          sub_20E2258A8(v208, v299, type metadata accessor for TranscriptProtoPlanGenerationError);
          if (v207)
          {
            v211 = v207;
            v212 = sub_20E2FBF4C(v210);
            [v211 setPlanGenerationError_];
          }

          sub_20E225978(v210, type metadata accessor for TranscriptProtoPlanGenerationError);
        }

        if (!v207)
        {
          v235 = type metadata accessor for TranscriptProtoRecoverableError;
          goto LABEL_126;
        }

        v213 = v207;
        v214 = v345;
        [v345 setRecoverableError_];
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361200, 1);
        v215 = v214;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v294 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v111 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_142;
      case 9u:
        v89 = v332;
        sub_20E2258A8(v101, v332, type metadata accessor for TranscriptProtoQueryStepResults);
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361310, 0);
        v199 = [objc_allocWithZone(MEMORY[0x277D57F88]) init];
        if (!v199)
        {
          v234 = type metadata accessor for TranscriptProtoQueryStepResults;
          goto LABEL_130;
        }

        v200 = v199;
        [v199 setExists_];
        v201 = *(StepResults + 24);
        v202 = objc_allocWithZone(MEMORY[0x277D58078]);
        v203 = v200;
        v204 = [v202 init];
        v205 = v303;
        sub_20E0486F4(&v89[v201], v303, &qword_27C8639D0, &unk_20E33C230);
        v206 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v206 - 8) + 48))(v205, 1, v206) == 1)
        {
          sub_20E04875C(v205, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v251 = *v205;
          sub_20E225978(v205, type metadata accessor for TranscriptProtoStatementID);
          [v204 setIndex_];
        }

        [v203 setOriginProgramStatementId_];

        v252 = v203;
        v253 = v345;
        [v345 setQueriesExecuted_];
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361310, 1);
        v254 = v253;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v293 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v135 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_147;
      case 0xAu:
        sub_20E2258A8(v101, v89, type metadata accessor for TranscriptProtoActionResolverRequest);
        sub_20E2248D0(0xD000000000000021, 0x800000020E361400, 0);
        v131 = sub_20E048348(v89);
        if (!v131)
        {
          v234 = type metadata accessor for TranscriptProtoActionResolverRequest;
          goto LABEL_130;
        }

        v132 = v131;
        v133 = v345;
        [v345 setActionResolverRequestCreated_];
        sub_20E2248D0(0xD000000000000021, 0x800000020E361400, 1);
        v134 = v133;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v280 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v135 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_147;
      case 0xDu:
        v155 = v344;
        sub_20E2258A8(v101, v344, type metadata accessor for TranscriptProtoResponseGenerationRequest);
        sub_20E2248D0(0xD000000000000025, 0x800000020E361280, 0);
        v156 = [objc_allocWithZone(MEMORY[0x277D58028]) init];
        if (!v156)
        {
          v236 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          v237 = v155;
          goto LABEL_131;
        }

        v157 = v156;
        sub_20E06CCD8(v155);
        v349 = "IFTSchemaIFTSystemResponse";
        if (v158)
        {
          sub_20E074574(0, &qword_27C869C28, 0x277D5AC78);
          v159 = sub_20E322960();
        }

        else
        {
          v159 = 0;
        }

        v255 = MEMORY[0x277D84F90];
        [v157 setActionStepResultEventIds_];

        v256 = *v155;
        v350 = v255;
        v257 = *(v256 + 16);
        v342 = v157;
        if (v257)
        {
          v258 = v256 + ((*(v343 + 80) + 32) & ~*(v343 + 80));
          v259 = *(v343 + 72);
          v260 = (v343 + 56);
          v261 = v157;
          v262 = v348;
          do
          {
            v263 = v346;
            sub_20E225910(v258, v346, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E225910(v263, v262, type metadata accessor for TranscriptProtoStatementResult);
            (*v260)(v262, 0, 1, v347);
            v264 = sub_20E04A0F4(v262);
            sub_20E04875C(v262, &qword_27C863A98, &qword_20E323980);
            v265 = sub_20E225978(v263, type metadata accessor for TranscriptProtoStatementResult);
            if (v264)
            {
              MEMORY[0x20F32BF90](v265);
              if (*((v350 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v350 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v343 = *((v350 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_20E322990();
              }

              sub_20E3229B0();
            }

            v258 += v259;
            --v257;
          }

          while (v257);
        }

        else
        {
          v266 = v157;
        }

        sub_20E074574(0, &qword_27C869C20, 0x277D58088);
        v267 = sub_20E322960();

        v268 = v342;
        [v342 setStatementResults_];

        v269 = v268;
        v270 = v345;
        [v345 setResponseGenerationRequest_];
        sub_20E2248D0(0xD000000000000025, v349 | 0x8000000000000000, 1);
        v271 = v270;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v284 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v149 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        v150 = v344;
        goto LABEL_160;
      case 0x10u:
        v125 = v334;
        sub_20E2258A8(v101, v334, type metadata accessor for TranscriptProtoActionCancellation);
        sub_20E2248D0(0xD00000000000001ELL, 0x800000020E3612B0, 0);
        v136 = v328;
        sub_20E225910(v125, v328, type metadata accessor for TranscriptProtoActionCancellation);
        (*(v326 + 56))(v136, 0, 1, v327);
        v137 = sub_20E04BBC8(v136);
        sub_20E04875C(v136, &qword_27C863AC0, &qword_20E323C68);
        v138 = v345;
        if (v137)
        {
          [v345 setActionCancelled_];
          sub_20E2248D0(0xD00000000000001ELL, 0x800000020E3612B0, 1);
        }

        v139 = v138;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v278 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_69;
      case 0x12u:
        v125 = v336;
        sub_20E2258A8(v101, v336, type metadata accessor for TranscriptProtoSystemResponse);
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361260, 0);
        v126 = v335;
        sub_20E225910(v125, v335, type metadata accessor for TranscriptProtoSystemResponse);
        (*(v331 + 56))(v126, 0, 1, v333);
        v127 = sub_20E06C224(v126);
        sub_20E04875C(v126, &qword_27C863F68, &unk_20E3461B0);
        if (!v127)
        {
          v233 = type metadata accessor for TranscriptProtoSystemResponse;
          goto LABEL_121;
        }

        v128 = v345;
        [v345 setSystemResponseGenerated_];
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361260, 1);
        v129 = v128;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v279 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_69;
      case 0x13u:
        v125 = v325;
        sub_20E2258A8(v101, v325, type metadata accessor for TranscriptProtoStatementResult);
        sub_20E2248D0(0xD00000000000001BLL, 0x800000020E3612F0, 0);
        v182 = v348;
        sub_20E225910(v125, v348, type metadata accessor for TranscriptProtoStatementResult);
        (*(v343 + 56))(v182, 0, 1, v347);
        v183 = sub_20E04A0F4(v182);
        sub_20E04875C(v182, &qword_27C863A98, &qword_20E323980);
        if (!v183)
        {
          v233 = type metadata accessor for TranscriptProtoStatementResult;
          goto LABEL_121;
        }

        v184 = v345;
        [v345 setStatementEvaluated_];
        sub_20E2248D0(0xD00000000000001BLL, 0x800000020E3612F0, 1);
        v185 = v184;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v289 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_69;
      case 0x17u:
        v125 = v312;
        sub_20E2258A8(v101, v312, type metadata accessor for TranscriptProtoToolResolution);
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361390, 0);
        sub_20E225910(v125, v75, type metadata accessor for TranscriptProtoToolResolution);
        (*(v311 + 56))(v75, 0, 1, v76);
        v186 = sub_20E0505E8(v75);
        sub_20E04875C(v75, &qword_27C863B98, &qword_20E323E80);
        if (!v186)
        {
          v233 = type metadata accessor for TranscriptProtoToolResolution;
LABEL_121:
          v236 = v233;
          v237 = v125;
          goto LABEL_131;
        }

        v187 = v186;
        v188 = v345;
        [v345 setToolResolution_];
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361390, 1);
        v189 = v188;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v290 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v130 = type metadata accessor for TranscriptProtoToolResolution;
LABEL_69:
        v149 = v130;
        v150 = v125;
        goto LABEL_160;
      case 0x1Cu:
        sub_20E225978(v101, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E2248D0(0xD000000000000021, 0x800000020E361450, 0);
        v221 = [objc_allocWithZone(MEMORY[0x277D57F70]) init];
        if (!v221)
        {
          goto LABEL_132;
        }

        v118 = v221;
        [v221 setExists_];
        v122 = v345;
        [v345 setQueryDecorationResult_];
        v124 = 0xD000000000000021;
        v123 = 0x800000020E361450;
        goto LABEL_93;
      case 0x1Du:
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E3611E0, 0);
        v216 = [objc_allocWithZone(MEMORY[0x277D57DB8]) init];
        if (v216)
        {
          v217 = v216;
          [v216 setExists_];
          v218 = v345;
          [v345 setContinuePlanning_];
          sub_20E2248D0(0xD00000000000001CLL, 0x800000020E3611E0, 1);
          v219 = v218;
          MEMORY[0x20F32BF90]();
          if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v295 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20E322990();
          }

          sub_20E3229B0();

          v220 = v351;
        }

        else
        {

          v220 = MEMORY[0x277D84F90];
        }

        sub_20E225978(v101, type metadata accessor for TranscriptProtoPayloadEnum);
        return v220;
      case 0x1Eu:
        sub_20E225978(v101, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E2248D0(0xD00000000000002BLL, 0x800000020E361190, 0);
        v117 = [objc_allocWithZone(MEMORY[0x277D57F68]) init];
        if (!v117)
        {
          goto LABEL_132;
        }

        v118 = v117;
        [v117 setExists_];
        sub_20E2248D0(0xD00000000000002BLL, 0x800000020E361190, 1);
        v119 = v345;
        [v345 setQueryDecorationPrePlannerResult_];
        v120 = v119;
        goto LABEL_94;
      case 0x1Fu:
        v103 = v341;
        sub_20E2258A8(v101, v341, type metadata accessor for TranscriptProtoSkipStatement);
        sub_20E2248D0(0xD000000000000019, 0x800000020E361170, 0);
        v140 = [objc_allocWithZone(MEMORY[0x277D58068]) init];
        if (!v140)
        {
          v235 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_126:
          v236 = v235;
          v237 = v103;
          goto LABEL_131;
        }

        v141 = v140;
        v142 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v143 = v301;
        sub_20E0486F4(v103, v301, &qword_27C8639D0, &unk_20E33C230);
        v144 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
        {
          sub_20E04875C(v143, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v244 = *v143;
          sub_20E225978(v143, type metadata accessor for TranscriptProtoStatementID);
          [v142 setIndex_];
        }

        [v141 setStatementId_];

        sub_20E2248D0(0xD000000000000019, 0x800000020E361170, 1);
        v245 = v345;
        [v345 setSkipStatement_];
        v246 = v245;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v281 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        v111 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_142:
        v149 = v111;
        v150 = v103;
        goto LABEL_160;
      case 0x20u:
        v89 = v342;
        sub_20E2258A8(v101, v342, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
        sub_20E2248D0(0xD000000000000031, 0x800000020E361130, 0);
        v223 = [objc_allocWithZone(MEMORY[0x277D57E10]) init];
        if (v223)
        {
          v224 = v223;
          v225 = [objc_allocWithZone(MEMORY[0x277D57E18]) init];
          [v224 setRequest_];

          v226 = v308;
          sub_20E0486F4(&v89[*(v307 + 20)], v308, &qword_27C867F18, &qword_20E33AFE8);
          v227 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
          v228 = (*(*(v227 - 8) + 48))(v226, 1, v227);
          sub_20E04875C(v226, &qword_27C867F18, &qword_20E33AFE8);
          if (v228 != 1)
          {
            v229 = [v224 request];
            if (v229)
            {
              v230 = v229;
              [v229 setExists_];
            }
          }

          sub_20E2248D0(0xD000000000000031, 0x800000020E361130, 1);
          v231 = v345;
          [v345 setExecutionPreconditionEvaluatorRequest_];
          v232 = v231;
          MEMORY[0x20F32BF90]();
          if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v296 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20E322990();
          }

          sub_20E3229B0();

          v135 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
LABEL_147:
          v149 = v135;
          v150 = v89;
          goto LABEL_160;
        }

        v234 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
LABEL_130:
        v236 = v234;
        v237 = v89;
LABEL_131:
        sub_20E225978(v237, v236);
LABEL_132:

        return MEMORY[0x277D84F90];
      case 0x26u:
        sub_20E2248D0(0xD000000000000015, 0x800000020E361220, 0);
        v121 = [objc_allocWithZone(MEMORY[0x277D58100]) init];
        if (!v121)
        {
          goto LABEL_132;
        }

        v118 = v121;
        [v121 setExists_];
        v122 = v345;
        [v345 setTerminate_];
        v123 = 0x800000020E361220;
        v124 = 0xD000000000000015;
LABEL_93:
        sub_20E2248D0(v124, v123, 1);
        v120 = v122;
LABEL_94:
        v222 = v120;
        MEMORY[0x20F32BF90]();
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v277 = *((v351 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();

        goto LABEL_161;
      default:

        sub_20E225978(v101, type metadata accessor for TranscriptProtoPayloadEnum);
        return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v112 = sub_20E3227C0();
    __swift_project_value_buffer(v112, qword_280E12C48);
    v113 = sub_20E3227B0();
    v114 = sub_20E322A50();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v350 = v116;
      *v115 = 136315138;
      *(v115 + 4) = sub_20E31B6C4(0xD00000000000003FLL, 0x800000020E3610F0, &v350);
      _os_log_impl(&dword_20E031000, v113, v114, "%s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x20F32CA80](v116, -1, -1);
      MEMORY[0x20F32CA80](v115, -1, -1);
    }

    LOBYTE(v350) = 96;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v350, 0xD00000000000003FLL, 0x800000020E3610F0);
    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_20E2248D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_20E322060();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  if (a3)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v20 = sub_20E3227C0();
    __swift_project_value_buffer(v20, qword_280E12C48);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_20E322B00();

    v59 = 0xD000000000000019;
    v60 = 0x800000020E361480;
    MEMORY[0x20F32BF40](a1, a2);
    v22 = v59;
    v21 = v60;

    v23 = sub_20E3227B0();
    v24 = sub_20E322A40();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v14;
      v27 = v7;
      v28 = v6;
      v29 = v26;
      v59 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20E31B6C4(v22, v21, &v59);
      _os_log_impl(&dword_20E031000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v30 = v29;
      v6 = v28;
      v7 = v27;
      v14 = v57;
      MEMORY[0x20F32CA80](v30, -1, -1);
      MEMORY[0x20F32CA80](v25, -1, -1);
    }

    LOBYTE(v59) = -126;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v59, v22, v21);

    v31 = v58;
    result = *(v58 + 40);
    if (result)
    {
      v33 = [result configuration];
      v34 = [v33 streamUUID];

      sub_20E322040();
      (*(v7 + 32))(v14, v11, v6);
      v35 = sub_20E3227B0();
      v36 = sub_20E322A40();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_20E031000, v35, v36, "Emit OLE stream telemetry - event mapped", v37, 2u);
        MEMORY[0x20F32CA80](v37, -1, -1);
      }

      swift_beginAccess();
      if (*(v31 + 48))
      {
        swift_endAccess();

        sub_20E3220E0();

        return (*(v7 + 8))(v14, v6);
      }

      (*(v7 + 8))(v14, v6);
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v38 = sub_20E3227C0();
    v39 = __swift_project_value_buffer(v38, qword_280E12C48);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_20E322B00();

    v59 = 0x20676E697070614DLL;
    v60 = 0xEF203A746E657665;
    MEMORY[0x20F32BF40](a1, a2);
    v41 = v59;
    v40 = v60;

    v42 = sub_20E3227B0();
    v43 = sub_20E322A40();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v57 = v39;
      v45 = v7;
      v46 = v6;
      v47 = v44;
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_20E31B6C4(v41, v40, &v59);
      _os_log_impl(&dword_20E031000, v42, v43, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x20F32CA80](v48, -1, -1);
      v49 = v47;
      v6 = v46;
      v7 = v45;
      MEMORY[0x20F32CA80](v49, -1, -1);
    }

    LOBYTE(v59) = -127;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v59, v41, v40);

    v50 = v58;
    result = *(v58 + 40);
    if (result)
    {
      v51 = [result configuration];
      v52 = [v51 streamUUID];

      sub_20E322040();
      (*(v7 + 32))(v19, v17, v6);
      v53 = sub_20E3227B0();
      v54 = sub_20E322A40();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_20E031000, v53, v54, "Emit OLE stream telemetry - event read", v55, 2u);
        MEMORY[0x20F32CA80](v55, -1, -1);
      }

      swift_beginAccess();
      if (!*(v50 + 48))
      {
        (*(v7 + 8))(v19, v6);
        return swift_endAccess();
      }

      swift_endAccess();

      sub_20E3220F0();

      return (*(v7 + 8))(v19, v6);
    }
  }

  return result;
}

uint64_t IFTranscriptSELFMapper.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t IFTranscriptSELFMapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_20E2250A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C38, &unk_20E346200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20E225240(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20E225374(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C40, &unk_20E346210);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}