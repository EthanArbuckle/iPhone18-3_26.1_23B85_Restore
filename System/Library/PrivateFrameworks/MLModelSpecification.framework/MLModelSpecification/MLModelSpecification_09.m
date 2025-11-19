uint64_t sub_257533C10()
{
  OUTLINED_FUNCTION_343_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v3 = v2(0);
  v4 = OUTLINED_FUNCTION_95_0(v3);
  v0(v4);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v1 + *(v3 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257533C78()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v0 = type metadata accessor for Proto_SGDOptimizer(0);
  v1 = OUTLINED_FUNCTION_95_0(v0);
  type metadata accessor for Proto_DoubleParameter(v1);
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = *(v0 + 28);
  OUTLINED_FUNCTION_6_11();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_257533D00()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v0 = type metadata accessor for Proto_AdamOptimizer(0);
  v1 = OUTLINED_FUNCTION_95_0(v0);
  type metadata accessor for Proto_DoubleParameter(v1);
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0[6];
  type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0[7];
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v0[8];
  OUTLINED_FUNCTION_6_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v0[9];
  OUTLINED_FUNCTION_6_11();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_257533DA8()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for Proto_AdamOptimizer(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = type metadata accessor for Proto_SGDOptimizer(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = type metadata accessor for Proto_Optimizer.OneOf_OptimizerType(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_106_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F958, &qword_257767360);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40_2();
  v19 = *(v18 + 56);
  sub_25760A330();
  sub_25760A330();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_25760A330();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      OUTLINED_FUNCTION_131_0();
      sub_2575FABEC();
      sub_257609BCC();
      OUTLINED_FUNCTION_176();
LABEL_8:
      sub_257609BCC();
      OUTLINED_FUNCTION_91_2();
      sub_257609BCC();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    sub_25760A330();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      OUTLINED_FUNCTION_360();
      sub_2575F95C8();
      sub_257609BCC();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_168_1();
  }

  sub_257609BCC();
  sub_2574695E4(v0, &qword_27F87F958, &qword_257767360);
LABEL_9:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257534090()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8A40);
  __swift_project_value_buffer(v0, qword_27F8E8A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RANK5_ARRAY_MAPPING";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXACT_ARRAY_MAPPING";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25753427C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8A58);
  __swift_project_value_buffer(v0, qword_27F8E8A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RANK5_IMAGE_MAPPING";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RANK4_IMAGE_MAPPING";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257534468()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8A70);
  __swift_project_value_buffer(v0, qword_27F8E8A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SCATTER_UPDATE";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCATTER_ADD";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SCATTER_SUB";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SCATTER_MUL";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SCATTER_DIV";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SCATTER_MAX";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SCATTER_MIN";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257534774()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8A88);
  __swift_project_value_buffer(v0, qword_27F8E8A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "layers";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preprocessing";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "arrayInputShapeMapping";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "imageInputShapeMapping";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "updateParams";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257534AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECC8, type metadata accessor for Proto_NeuralNetwork);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257534B60(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257534C28()
{
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);

  return sub_257743424();
}

uint64_t sub_257534CD4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8AA0);
  __swift_project_value_buffer(v0, qword_27F8E8AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "channelScale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "blueBias";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "greenBias";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 22;
  *v14 = "redBias";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 30;
  *v16 = "grayBias";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257534F58()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 30 || result == 20 || result == 21 || result == 22 || result == 10)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_257534FE8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v1 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
  {
    OUTLINED_FUNCTION_305_0();
    if (!v3 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
    {
      OUTLINED_FUNCTION_284();
      if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
      {
        OUTLINED_FUNCTION_309_0();
        if (!v5 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
        {
          OUTLINED_FUNCTION_379_0();
          if (!v6 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
          {
            v7 = *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_257535120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECF8, type metadata accessor for Proto_NeuralNetworkImageScaler);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575351C0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A150, type metadata accessor for Proto_NeuralNetworkImageScaler);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257535288()
{
  sub_2575FB760(&qword_27F87A150, type metadata accessor for Proto_NeuralNetworkImageScaler);

  return sub_257743424();
}

uint64_t sub_2575353B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED00, type metadata accessor for Proto_NeuralNetworkMeanImage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257535458(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A158, type metadata accessor for Proto_NeuralNetworkMeanImage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257535520()
{
  sub_2575FB760(&qword_27F87A158, type metadata accessor for Proto_NeuralNetworkMeanImage);

  return sub_257743424();
}

uint64_t sub_2575355E0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8AD0);
  __swift_project_value_buffer(v0, qword_27F8E8AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureName";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "scaler";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "meanImage";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575357EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkImageScaler(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ECE8, &qword_257766D78);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A048, &qword_257744980);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v22, &qword_27F87ECE8, &qword_257766D78);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87A150, type metadata accessor for Proto_NeuralNetworkImageScaler);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87ECE8, &qword_257766D78);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87ECE8, &qword_257766D78);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87ECE8, &qword_257766D78);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87ECE8, &qword_257766D78);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F87A048, &qword_257744980);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_257535CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkMeanImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ECF0, &qword_257766D80);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A048, &qword_257744980);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v22, &qword_27F87ECF0, &qword_257766D80);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A158, type metadata accessor for Proto_NeuralNetworkMeanImage);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87ECF0, &qword_257766D80);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87ECF0, &qword_257766D80);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87ECF0, &qword_257766D80);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87ECF0, &qword_257766D80);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F87A048, &qword_257744980);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

void sub_2575361F4()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_4();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v8 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
  {
    v9 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
    v10 = *(v9 + 20);
    OUTLINED_FUNCTION_375_0();
    v11 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
    v12 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v12, v13, v11);
    if (v14)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_311();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = OUTLINED_FUNCTION_3_9();
      sub_257536528(v15, v16, v17, v18);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_3_9();
      sub_257536308(v19, v20, v21, v22);
    }

    OUTLINED_FUNCTION_38_2();
    sub_257609BCC();
    if (!v1)
    {
LABEL_8:
      v23 = *(v9 + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_257536308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkImageScaler(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A048, &qword_257744980);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A150, type metadata accessor for Proto_NeuralNetworkImageScaler);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257536528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkMeanImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A048, &qword_257744980);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A158, type metadata accessor for Proto_NeuralNetworkMeanImage);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575367FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECE0, type metadata accessor for Proto_NeuralNetworkPreprocessing);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25753689C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A148, type metadata accessor for Proto_NeuralNetworkPreprocessing);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257536964()
{
  sub_2575FB760(&qword_27F87A148, type metadata accessor for Proto_NeuralNetworkPreprocessing);

  return sub_257743424();
}

uint64_t sub_257536A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0B8, type metadata accessor for Proto_ActivationReLU);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257536AAC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E5E0, type metadata accessor for Proto_ActivationReLU);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257536B74()
{
  sub_2575FB760(&qword_27F87E5E0, type metadata accessor for Proto_ActivationReLU);

  return sub_257743424();
}

uint64_t sub_257536C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0C0, type metadata accessor for Proto_ActivationLeakyReLU);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257536D24(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E5D0, type metadata accessor for Proto_ActivationLeakyReLU);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257536DEC()
{
  sub_2575FB760(&qword_27F87E5D0, type metadata accessor for Proto_ActivationLeakyReLU);

  return sub_257743424();
}

uint64_t sub_257536EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0C8, type metadata accessor for Proto_ActivationTanh);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257536F60(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E5C0, type metadata accessor for Proto_ActivationTanh);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257537028()
{
  sub_2575FB760(&qword_27F87E5C0, type metadata accessor for Proto_ActivationTanh);

  return sub_257743424();
}

uint64_t sub_2575370A4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8B30);
  __swift_project_value_buffer(v0, qword_27F8E8B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alpha";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beta";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575372E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0D0, type metadata accessor for Proto_ActivationScaledTanh);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257537388(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E5B0, type metadata accessor for Proto_ActivationScaledTanh);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257537450()
{
  sub_2575FB760(&qword_27F87E5B0, type metadata accessor for Proto_ActivationScaledTanh);

  return sub_257743424();
}

uint64_t sub_257537524(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0D8, type metadata accessor for Proto_ActivationSigmoid);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575375C4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E5A0, type metadata accessor for Proto_ActivationSigmoid);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25753768C()
{
  sub_2575FB760(&qword_27F87E5A0, type metadata accessor for Proto_ActivationSigmoid);

  return sub_257743424();
}

uint64_t sub_257537708()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8B60);
  __swift_project_value_buffer(v0, qword_27F8E8B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alpha";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beta";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575378D0()
{
  OUTLINED_FUNCTION_102_0();
  v2 = v1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v3 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
  {
    v4.n128_f32[0] = OUTLINED_FUNCTION_305_0();
    if (!v5 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
    {
      v6 = *(v2(0, v4) + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575379E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0E0, type metadata accessor for Proto_ActivationLinear);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257537A80(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E590, type metadata accessor for Proto_ActivationLinear);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257537B48()
{
  sub_2575FB760(&qword_27F87E590, type metadata accessor for Proto_ActivationLinear);

  return sub_257743424();
}

uint64_t sub_257537BF4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8B78);
  __swift_project_value_buffer(v0, qword_27F8E8B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alpha";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beta";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257537E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0E8, type metadata accessor for Proto_ActivationSigmoidHard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257537ED8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E580, type metadata accessor for Proto_ActivationSigmoidHard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257537FA0()
{
  sub_2575FB760(&qword_27F87E580, type metadata accessor for Proto_ActivationSigmoidHard);

  return sub_257743424();
}

uint64_t sub_257538068()
{
  v0 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  return sub_2577433D4();
}

uint64_t sub_25753811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_257743574();
  return sub_257609BCC();
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV10ActivationO30ParameterizedReluConfigurationV2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_WeightParams(v2);
  v4 = OUTLINED_FUNCTION_42_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v7 = OUTLINED_FUNCTION_201();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_0();
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_3();
  v16 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  v17 = v13[14];
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_65(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_65(v0 + v17);
    if (v18)
    {
      sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
LABEL_12:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v20, v21);
      OUTLINED_FUNCTION_44_1();
      v19 = OUTLINED_FUNCTION_266_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_277();
  sub_257487308();
  OUTLINED_FUNCTION_65(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
LABEL_9:
    sub_2574695E4(v0, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_54_2();
  sub_257609B78();
  OUTLINED_FUNCTION_360();
  sub_257598490();
  OUTLINED_FUNCTION_213_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_144_0();
  sub_257609BCC();
  sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
  if (v1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v19);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575385CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0F0, type metadata accessor for Proto_ActivationPReLU);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25753866C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E570, type metadata accessor for Proto_ActivationPReLU);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257538734()
{
  sub_2575FB760(&qword_27F87E570, type metadata accessor for Proto_ActivationPReLU);

  return sub_257743424();
}

void sub_2575387D0()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  OUTLINED_FUNCTION_2_7();
  v3.n128_f32[0] = OUTLINED_FUNCTION_267_0();
  if (!v4 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
  {
    v5 = *(v2(0, v3) + 20);
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575388B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F0F8, type metadata accessor for Proto_ActivationELU);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257538958(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E560, type metadata accessor for Proto_ActivationELU);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257538A20()
{
  sub_2575FB760(&qword_27F87E560, type metadata accessor for Proto_ActivationELU);

  return sub_257743424();
}

uint64_t sub_257538B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F100, type metadata accessor for Proto_ActivationThresholdedReLU);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257538C00(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E550, type metadata accessor for Proto_ActivationThresholdedReLU);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257538CC8()
{
  sub_2575FB760(&qword_27F87E550, type metadata accessor for Proto_ActivationThresholdedReLU);

  return sub_257743424();
}

uint64_t sub_257538D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F108, type metadata accessor for Proto_ActivationSoftsign);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257538E3C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E540, type metadata accessor for Proto_ActivationSoftsign);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257538F04()
{
  sub_2575FB760(&qword_27F87E540, type metadata accessor for Proto_ActivationSoftsign);

  return sub_257743424();
}

uint64_t sub_257538FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F110, type metadata accessor for Proto_ActivationSoftplus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257539048(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E530, type metadata accessor for Proto_ActivationSoftplus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257539110()
{
  sub_2575FB760(&qword_27F87E530, type metadata accessor for Proto_ActivationSoftplus);

  return sub_257743424();
}

uint64_t sub_25753918C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C08);
  __swift_project_value_buffer(v0, qword_27F8E8C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alpha";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "beta";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257539354()
{
  v0 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 20);
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  return sub_2577433D4();
}

uint64_t sub_257539408()
{
  v0 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 24);
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  return sub_2577433D4();
}

uint64_t sub_2575394BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_25753969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_ActivationParametricSoftplus(0) + 24);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_257743574();
  return sub_257609BCC();
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV10ActivationO31ParametricSoftplusConfigurationV2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for Proto_WeightParams(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_385_0(v5);
  v6 = OUTLINED_FUNCTION_205();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_218();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v29 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_134_0();
  v28 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
  v19 = *(v28 + 20);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_34_0(v0);
  if (v21)
  {
    OUTLINED_FUNCTION_34_0(v0 + v20);
    if (!v21)
    {
      goto LABEL_16;
    }

    sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    OUTLINED_FUNCTION_311();
    sub_257487308();
    OUTLINED_FUNCTION_34_0(v0 + v20);
    if (v21)
    {
LABEL_15:
      OUTLINED_FUNCTION_4_10();
      sub_257609BCC();
LABEL_16:
      sub_2574695E4(v0, &qword_27F87FA30, &qword_2577673D8);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_363_0();
    OUTLINED_FUNCTION_320_0();
    sub_257598490();
    OUTLINED_FUNCTION_194_0();
    sub_257609BCC();
    OUTLINED_FUNCTION_292_0();
    sub_257609BCC();
    sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
    if ((&qword_27F87A1A0 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v0 = v29;
  v22 = *(v28 + 24);
  v23 = *(v13 + 48);
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_34_0(v29);
  if (v21)
  {
    OUTLINED_FUNCTION_34_0(v29 + v23);
    if (v21)
    {
      sub_2574695E4(v29, &qword_27F87A1A0, &qword_257745750);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v26, v27);
      OUTLINED_FUNCTION_264();
      v25 = sub_257743644();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_257487308();
  OUTLINED_FUNCTION_34_0(v29 + v23);
  if (v24)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_363_0();
  OUTLINED_FUNCTION_320_0();
  sub_257598490();
  OUTLINED_FUNCTION_194_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_292_0();
  sub_257609BCC();
  sub_2574695E4(v29, &qword_27F87A1A0, &qword_257745750);
  if (&qword_27F87A1A0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v25 = 0;
LABEL_18:
  OUTLINED_FUNCTION_65_0(v25);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257539CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F118, type metadata accessor for Proto_ActivationParametricSoftplus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257539D48(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E520, type metadata accessor for Proto_ActivationParametricSoftplus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257539E10()
{
  sub_2575FB760(&qword_27F87E520, type metadata accessor for Proto_ActivationParametricSoftplus);

  return sub_257743424();
}

uint64_t sub_257539E90()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C20);
  __swift_project_value_buffer(v0, qword_27F8E8C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2577510E0;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 5;
  *v4 = "linear";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 10;
  *v8 = "ReLU";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 15;
  *v10 = "leakyReLU";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "thresholdedReLU";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 25;
  *v14 = "PReLU";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 30;
  *v16 = "tanh";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 31;
  *v18 = "scaledTanh";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 40;
  *v20 = "sigmoid";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 41;
  *v22 = "sigmoidHard";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 50;
  *v24 = "ELU";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 60;
  *v26 = "softsign";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 70;
  *v28 = "softplus";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 71;
  *v30 = "parametricSoftplus";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_25753A300()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 71:
        v39 = OUTLINED_FUNCTION_6_10();
        sub_25753E00C(v39, v40, v41, v42);
        break;
      case 10:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_25753A964(v15, v16, v17, v18);
        break;
      case 15:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_25753AE5C(v7, v8, v9, v10);
        break;
      case 20:
        v47 = OUTLINED_FUNCTION_6_10();
        sub_25753B354(v47, v48, v49, v50);
        break;
      case 25:
        v19 = OUTLINED_FUNCTION_6_10();
        sub_25753B84C(v19, v20, v21, v22);
        break;
      case 30:
        v51 = OUTLINED_FUNCTION_6_10();
        sub_25753BD44(v51, v52, v53, v54);
        break;
      case 31:
        v31 = OUTLINED_FUNCTION_6_10();
        sub_25753C23C(v31, v32, v33, v34);
        break;
      case 40:
        v43 = OUTLINED_FUNCTION_6_10();
        sub_25753C734(v43, v44, v45, v46);
        break;
      case 41:
        v35 = OUTLINED_FUNCTION_6_10();
        sub_25753CC2C(v35, v36, v37, v38);
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_25753D124(v11, v12, v13, v14);
        break;
      case 60:
        v27 = OUTLINED_FUNCTION_6_10();
        sub_25753D61C(v27, v28, v29, v30);
        break;
      case 70:
        v23 = OUTLINED_FUNCTION_6_10();
        sub_25753DB14(v23, v24, v25, v26);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_25753A46C(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_25753A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationLinear(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F048, &qword_257766DA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v22, &qword_27F87F048, &qword_257766DA0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87E590, type metadata accessor for Proto_ActivationLinear);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F048, &qword_257766DA0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F048, &qword_257766DA0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F048, &qword_257766DA0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F048, &qword_257766DA0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationReLU(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F050, &qword_257766DA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v22, &qword_27F87F050, &qword_257766DA8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E5E0, type metadata accessor for Proto_ActivationReLU);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F050, &qword_257766DA8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F050, &qword_257766DA8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F050, &qword_257766DA8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F050, &qword_257766DA8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753AE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationLeakyReLU(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F058, &qword_257766DB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v22, &qword_27F87F058, &qword_257766DB0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E5D0, type metadata accessor for Proto_ActivationLeakyReLU);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F058, &qword_257766DB0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F058, &qword_257766DB0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F058, &qword_257766DB0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F058, &qword_257766DB0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationThresholdedReLU(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F060, &qword_257766DB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v22, &qword_27F87F060, &qword_257766DB8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E550, type metadata accessor for Proto_ActivationThresholdedReLU);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F060, &qword_257766DB8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F060, &qword_257766DB8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F060, &qword_257766DB8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F060, &qword_257766DB8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationPReLU(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F068, &qword_257766DC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v22, &qword_27F87F068, &qword_257766DC0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E570, type metadata accessor for Proto_ActivationPReLU);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F068, &qword_257766DC0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F068, &qword_257766DC0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F068, &qword_257766DC0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F068, &qword_257766DC0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationTanh(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F070, &qword_257766DC8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v22, &qword_27F87F070, &qword_257766DC8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E5C0, type metadata accessor for Proto_ActivationTanh);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F070, &qword_257766DC8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F070, &qword_257766DC8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F070, &qword_257766DC8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F070, &qword_257766DC8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753C23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationScaledTanh(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F078, &qword_257766DD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v22, &qword_27F87F078, &qword_257766DD0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E5B0, type metadata accessor for Proto_ActivationScaledTanh);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F078, &qword_257766DD0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F078, &qword_257766DD0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F078, &qword_257766DD0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F078, &qword_257766DD0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753C734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationSigmoid(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F080, &qword_257766DD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v22, &qword_27F87F080, &qword_257766DD8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E5A0, type metadata accessor for Proto_ActivationSigmoid);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F080, &qword_257766DD8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F080, &qword_257766DD8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F080, &qword_257766DD8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F080, &qword_257766DD8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationSigmoidHard(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F088, &qword_257766DE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_2574695E4(v22, &qword_27F87F088, &qword_257766DE0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E580, type metadata accessor for Proto_ActivationSigmoidHard);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F088, &qword_257766DE0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F088, &qword_257766DE0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F088, &qword_257766DE0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F088, &qword_257766DE0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753D124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationELU(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F090, &qword_257766DE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_2574695E4(v22, &qword_27F87F090, &qword_257766DE8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E560, type metadata accessor for Proto_ActivationELU);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F090, &qword_257766DE8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F090, &qword_257766DE8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F090, &qword_257766DE8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F090, &qword_257766DE8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationSoftsign(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F098, &qword_257766DF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_2574695E4(v22, &qword_27F87F098, &qword_257766DF0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E540, type metadata accessor for Proto_ActivationSoftsign);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F098, &qword_257766DF0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F098, &qword_257766DF0);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F098, &qword_257766DF0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F098, &qword_257766DF0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753DB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationSoftplus(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F0A0, &qword_257766DF8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_2574695E4(v22, &qword_27F87F0A0, &qword_257766DF8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E530, type metadata accessor for Proto_ActivationSoftplus);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F0A0, &qword_257766DF8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F0A0, &qword_257766DF8);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F0A0, &qword_257766DF8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F0A0, &qword_257766DF8);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_25753E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F0A8, &qword_257766E00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_2574695E4(v22, &qword_27F87F0A8, &qword_257766E00);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E520, type metadata accessor for Proto_ActivationParametricSoftplus);
  v23 = v33;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87F0A8, &qword_257766E00);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87F0A8, &qword_257766E00);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87F0A8, &qword_257766E00);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v22, &qword_27F87F0A8, &qword_257766E00);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F879CC0, &unk_257752A20);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void sub_25753E504()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_5_8();
  v2 = OUTLINED_FUNCTION_311();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  v8 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  OUTLINED_FUNCTION_67_1(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_201();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v44 = OUTLINED_FUNCTION_5_10();
        sub_25753E8D0(v44, v45, v46, v47);
        goto LABEL_16;
      case 2:
        v32 = OUTLINED_FUNCTION_5_10();
        sub_25753EAE4(v32, v33, v34, v35);
        goto LABEL_16;
      case 3:
        v36 = OUTLINED_FUNCTION_5_10();
        sub_25753ECF8(v36, v37, v38, v39);
        goto LABEL_16;
      case 4:
        v20 = OUTLINED_FUNCTION_5_10();
        sub_25753EF0C(v20, v21, v22, v23);
        goto LABEL_16;
      case 5:
        v48 = OUTLINED_FUNCTION_5_10();
        sub_25753F120(v48, v49, v50, v51);
        goto LABEL_16;
      case 6:
        v52 = OUTLINED_FUNCTION_5_10();
        sub_25753F334(v52, v53, v54, v55);
        goto LABEL_16;
      case 7:
        v40 = OUTLINED_FUNCTION_5_10();
        sub_25753F548(v40, v41, v42, v43);
        goto LABEL_16;
      case 8:
        v60 = OUTLINED_FUNCTION_5_10();
        sub_25753F75C(v60, v61, v62, v63);
        goto LABEL_20;
      case 9:
        v28 = OUTLINED_FUNCTION_5_10();
        sub_25753F970(v28, v29, v30, v31);
        goto LABEL_20;
      case 10:
        v56 = OUTLINED_FUNCTION_5_10();
        sub_25753FB84(v56, v57, v58, v59);
        goto LABEL_20;
      case 11:
        v16 = OUTLINED_FUNCTION_5_10();
        sub_25753FD98(v16, v17, v18, v19);
        goto LABEL_20;
      case 12:
        v24 = OUTLINED_FUNCTION_5_10();
        sub_25753FFAC(v24, v25, v26, v27);
LABEL_20:
        if (v1)
        {
          OUTLINED_FUNCTION_10_13();
          sub_257609BCC();
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_10_13();
        sub_257609BCC();
        break;
      default:
        v12 = OUTLINED_FUNCTION_5_10();
        sub_25753E6C0(v12, v13, v14, v15);
LABEL_16:
        OUTLINED_FUNCTION_10_13();
        sub_257609BCC();
        if (!v1)
        {
          break;
        }

        goto LABEL_22;
    }
  }

  v10 = v0 + *(type metadata accessor for Proto_ActivationParams(0) + 20);
  OUTLINED_FUNCTION_10_7();
  sub_257743194();
LABEL_22:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_25753E6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationLinear(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E590, type metadata accessor for Proto_ActivationLinear);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationReLU(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E5E0, type metadata accessor for Proto_ActivationReLU);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationLeakyReLU(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E5D0, type metadata accessor for Proto_ActivationLeakyReLU);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationThresholdedReLU(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E550, type metadata accessor for Proto_ActivationThresholdedReLU);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationPReLU(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E570, type metadata accessor for Proto_ActivationPReLU);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationTanh(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E5C0, type metadata accessor for Proto_ActivationTanh);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationScaledTanh(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E5B0, type metadata accessor for Proto_ActivationScaledTanh);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationSigmoid(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E5A0, type metadata accessor for Proto_ActivationSigmoid);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationSigmoidHard(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E580, type metadata accessor for Proto_ActivationSigmoidHard);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationELU(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E560, type metadata accessor for Proto_ActivationELU);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationSoftsign(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E540, type metadata accessor for Proto_ActivationSoftsign);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationSoftplus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E530, type metadata accessor for Proto_ActivationSoftplus);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25753FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationParametricSoftplus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_257487308();
  v10 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879CC0, &unk_257752A20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E520, type metadata accessor for Proto_ActivationParametricSoftplus);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257540470(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F040, type metadata accessor for Proto_ActivationParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257540510(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575405D8()
{
  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams);

  return sub_257743424();
}

uint64_t sub_257540658()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C38);
  __swift_project_value_buffer(v0, qword_27F8E8C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rank";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dimValue";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257540820()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_8_6(), result = sub_257743544(), !v1))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), result = sub_257743484(), !v1))
    {
      v4 = *(type metadata accessor for Proto_Tensor(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_257540898(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if ((sub_257487374(*(v2 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Proto_Tensor(0);
  OUTLINED_FUNCTION_308_0(v4);
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2575409A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F1B8, type metadata accessor for Proto_Tensor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257540A40(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257540B08()
{
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);

  return sub_257743424();
}

uint64_t sub_257540B88()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C50);
  __swift_project_value_buffer(v0, qword_27F8E8C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_2577510F0;
  v4 = v334 + v3 + v1[14];
  *(v334 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v334 + v3 + v2 + v1[14];
  *(v334 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v334 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v334 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "inputTensor";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v334 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "outputTensor";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v334 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "isUpdatable";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v334 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "convolution";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v334 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 120;
  *v20 = "pooling";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v334 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 130;
  *v22 = "activation";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v334 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 140;
  *v24 = "innerProduct";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v334 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 150;
  *v26 = "embedding";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v334 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 160;
  *v28 = "batchnorm";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v334 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 165;
  *v30 = "mvn";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v7();
  v31 = (v334 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 170;
  *v32 = "l2normalize";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v334 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 175;
  *v34 = "softmax";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v7();
  v35 = (v334 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 180;
  *v36 = "lrn";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v334 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 190;
  *v38 = "crop";
  *(v38 + 1) = 4;
  v38[16] = 2;
  v7();
  v39 = (v334 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 200;
  *v40 = "padding";
  *(v40 + 1) = 7;
  v40[16] = 2;
  v7();
  v41 = (v334 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 210;
  *v42 = "upsample";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  v43 = (v334 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 211;
  *v44 = "resizeBilinear";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v334 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 212;
  *v46 = "cropResize";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v7();
  v47 = (v334 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 220;
  *v48 = "unary";
  *(v48 + 1) = 5;
  v48[16] = 2;
  v7();
  v49 = (v334 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 230;
  *v50 = "add";
  *(v50 + 1) = 3;
  v50[16] = 2;
  v7();
  v51 = (v334 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 231;
  *v52 = "multiply";
  *(v52 + 1) = 8;
  v52[16] = 2;
  v7();
  v53 = (v334 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 240;
  *v54 = "average";
  *(v54 + 1) = 7;
  v54[16] = 2;
  v7();
  v55 = (v334 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 245;
  *v56 = "scale";
  *(v56 + 1) = 5;
  v56[16] = 2;
  v7();
  v57 = (v334 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 250;
  *v58 = "bias";
  *(v58 + 1) = 4;
  v58[16] = 2;
  v7();
  v59 = (v334 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 260;
  *v60 = "max";
  *(v60 + 1) = 3;
  v60[16] = 2;
  v7();
  v61 = (v334 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 261;
  *v62 = "min";
  *(v62 + 1) = 3;
  v62[16] = 2;
  v7();
  v63 = (v334 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 270;
  *v64 = "dot";
  *(v64 + 1) = 3;
  v64[16] = 2;
  v7();
  v65 = (v334 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 280;
  *v66 = "reduce";
  *(v66 + 1) = 6;
  v66[16] = 2;
  v7();
  v67 = (v334 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 290;
  *v68 = "loadConstant";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v334 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 300;
  *v70 = "reshape";
  *(v70 + 1) = 7;
  v70[16] = 2;
  v7();
  v71 = (v334 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 301;
  *v72 = "flatten";
  *(v72 + 1) = 7;
  v72[16] = 2;
  v7();
  v73 = (v334 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 310;
  *v74 = "permute";
  *(v74 + 1) = 7;
  v74[16] = 2;
  v7();
  v75 = (v334 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 320;
  *v76 = "concat";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v7();
  v77 = (v334 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 330;
  *v78 = "split";
  *(v78 + 1) = 5;
  v78[16] = 2;
  v7();
  v79 = (v334 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 340;
  *v80 = "sequenceRepeat";
  *(v80 + 1) = 14;
  v80[16] = 2;
  v7();
  v81 = (v334 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 345;
  *v82 = "reorganizeData";
  *(v82 + 1) = 14;
  v82[16] = 2;
  v7();
  v83 = (v334 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 350;
  *v84 = "slice";
  *(v84 + 1) = 5;
  v84[16] = 2;
  v7();
  v85 = (v334 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 400;
  *v86 = "simpleRecurrent";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  v87 = (v334 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 410;
  *v88 = "gru";
  *(v88 + 1) = 3;
  v88[16] = 2;
  v7();
  v89 = (v334 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 420;
  *v90 = "uniDirectionalLSTM";
  *(v90 + 1) = 18;
  v90[16] = 2;
  v7();
  v91 = (v334 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 430;
  *v92 = "biDirectionalLSTM";
  *(v92 + 1) = 17;
  v92[16] = 2;
  v7();
  v93 = (v334 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 500;
  *v94 = "custom";
  *(v94 + 1) = 6;
  v94[16] = 2;
  v7();
  v95 = (v334 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 600;
  *v96 = "copy";
  *(v96 + 1) = 4;
  v96[16] = 2;
  v7();
  v97 = (v334 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 605;
  *v98 = "branch";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v7();
  v99 = (v334 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 615;
  *v100 = "loop";
  *(v100 + 1) = 4;
  v100[16] = 2;
  v7();
  v101 = (v334 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 620;
  *v102 = "loopBreak";
  *(v102 + 1) = 9;
  v102[16] = 2;
  v7();
  v103 = (v334 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 625;
  *v104 = "loopContinue";
  *(v104 + 1) = 12;
  v104[16] = 2;
  v7();
  v105 = (v334 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 635;
  *v106 = "rangeStatic";
  *(v106 + 1) = 11;
  v106[16] = 2;
  v7();
  v107 = (v334 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 640;
  *v108 = "rangeDynamic";
  *(v108 + 1) = 12;
  v108[16] = 2;
  v7();
  v109 = (v334 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 660;
  *v110 = "clip";
  *(v110 + 1) = 4;
  v110[16] = 2;
  v7();
  v111 = (v334 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 665;
  *v112 = "ceil";
  *(v112 + 1) = 4;
  v112[16] = 2;
  v7();
  v113 = (v334 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 670;
  *v114 = "floor";
  *(v114 + 1) = 5;
  v114[16] = 2;
  v7();
  v115 = (v334 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 680;
  *v116 = "sign";
  *(v116 + 1) = 4;
  v116[16] = 2;
  v7();
  v117 = (v334 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 685;
  *v118 = "round";
  *(v118 + 1) = 5;
  v118[16] = 2;
  v7();
  v119 = (v334 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 700;
  *v120 = "exp2";
  *(v120 + 1) = 4;
  v120[16] = 2;
  v7();
  v121 = (v334 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 710;
  *v122 = "sin";
  *(v122 + 1) = 3;
  v122[16] = 2;
  v7();
  v123 = (v334 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 715;
  *v124 = "cos";
  *(v124 + 1) = 3;
  v124[16] = 2;
  v7();
  v125 = (v334 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 720;
  *v126 = "tan";
  *(v126 + 1) = 3;
  v126[16] = 2;
  v7();
  v127 = (v334 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 730;
  *v128 = "asin";
  *(v128 + 1) = 4;
  v128[16] = 2;
  v7();
  v129 = (v334 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 735;
  *v130 = "acos";
  *(v130 + 1) = 4;
  v130[16] = 2;
  v7();
  v131 = (v334 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 740;
  *v132 = "atan";
  *(v132 + 1) = 4;
  v132[16] = 2;
  v7();
  v133 = (v334 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 750;
  *v134 = "sinh";
  *(v134 + 1) = 4;
  v134[16] = 2;
  v7();
  v135 = (v334 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 755;
  *v136 = "cosh";
  *(v136 + 1) = 4;
  v136[16] = 2;
  v7();
  v137 = (v334 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 760;
  *v138 = "tanh";
  *(v138 + 1) = 4;
  v138[16] = 2;
  v7();
  v139 = (v334 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 770;
  *v140 = "asinh";
  *(v140 + 1) = 5;
  v140[16] = 2;
  v7();
  v141 = (v334 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 775;
  *v142 = "acosh";
  *(v142 + 1) = 5;
  v142[16] = 2;
  v7();
  v143 = (v334 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 780;
  *v144 = "atanh";
  *(v144 + 1) = 5;
  v144[16] = 2;
  v7();
  v145 = (v334 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 790;
  *v146 = "erf";
  *(v146 + 1) = 3;
  v146[16] = 2;
  v7();
  v147 = (v334 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 795;
  *v148 = "gelu";
  *(v148 + 1) = 4;
  v148[16] = 2;
  v7();
  v149 = (v334 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 815;
  *v150 = "equal";
  *(v150 + 1) = 5;
  v150[16] = 2;
  v7();
  v151 = (v334 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 820;
  *v152 = "notEqual";
  *(v152 + 1) = 8;
  v152[16] = 2;
  v7();
  v153 = (v334 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 825;
  *v154 = "lessThan";
  *(v154 + 1) = 8;
  v154[16] = 2;
  v7();
  v155 = (v334 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 827;
  *v156 = "lessEqual";
  *(v156 + 1) = 9;
  v156[16] = 2;
  v7();
  v157 = (v334 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 830;
  *v158 = "greaterThan";
  *(v158 + 1) = 11;
  v158[16] = 2;
  v7();
  v159 = (v334 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 832;
  *v160 = "greaterEqual";
  *(v160 + 1) = 12;
  v160[16] = 2;
  v7();
  v161 = (v334 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 840;
  *v162 = "logicalOr";
  *(v162 + 1) = 9;
  v162[16] = 2;
  v7();
  v163 = (v334 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 845;
  *v164 = "logicalXor";
  *(v164 + 1) = 10;
  v164[16] = 2;
  v7();
  v165 = (v334 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 850;
  *v166 = "logicalNot";
  *(v166 + 1) = 10;
  v166[16] = 2;
  v7();
  v167 = (v334 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 855;
  *v168 = "logicalAnd";
  *(v168 + 1) = 10;
  v168[16] = 2;
  v7();
  v169 = (v334 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 865;
  *v170 = "modBroadcastable";
  *(v170 + 1) = 16;
  v170[16] = 2;
  v7();
  v171 = (v334 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 870;
  *v172 = "minBroadcastable";
  *(v172 + 1) = 16;
  v172[16] = 2;
  v7();
  v173 = (v334 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 875;
  *v174 = "maxBroadcastable";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v7();
  v175 = (v334 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 880;
  *v176 = "addBroadcastable";
  *(v176 + 1) = 16;
  v176[16] = 2;
  v7();
  v177 = (v334 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 885;
  *v178 = "powBroadcastable";
  *(v178 + 1) = 16;
  v178[16] = 2;
  v7();
  v179 = (v334 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 890;
  *v180 = "divideBroadcastable";
  *(v180 + 1) = 19;
  v180[16] = 2;
  v7();
  v181 = (v334 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 895;
  *v182 = "floorDivBroadcastable";
  *(v182 + 1) = 21;
  v182[16] = 2;
  v7();
  v183 = (v334 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 900;
  *v184 = "multiplyBroadcastable";
  *(v184 + 1) = 21;
  v184[16] = 2;
  v7();
  v185 = (v334 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 905;
  *v186 = "subtractBroadcastable";
  *(v186 + 1) = 21;
  v186[16] = 2;
  v7();
  v187 = (v334 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 920;
  *v188 = "tile";
  *(v188 + 1) = 4;
  v188[16] = 2;
  v7();
  v189 = (v334 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 925;
  *v190 = "stack";
  *(v190 + 1) = 5;
  v190[16] = 2;
  v7();
  v191 = (v334 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 930;
  *v192 = "gather";
  *(v192 + 1) = 6;
  v192[16] = 2;
  v7();
  v193 = (v334 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 935;
  *v194 = "scatter";
  *(v194 + 1) = 7;
  v194[16] = 2;
  v7();
  v195 = (v334 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 940;
  *v196 = "gatherND";
  *(v196 + 1) = 8;
  v196[16] = 2;
  v7();
  v197 = (v334 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 945;
  *v198 = "scatterND";
  *(v198 + 1) = 9;
  v198[16] = 2;
  v7();
  v199 = (v334 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 950;
  *v200 = "softmaxND";
  *(v200 + 1) = 9;
  v200[16] = 2;
  v7();
  v201 = (v334 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 952;
  *v202 = "gatherAlongAxis";
  *(v202 + 1) = 15;
  v202[16] = 2;
  v7();
  v203 = (v334 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 954;
  *v204 = "scatterAlongAxis";
  *(v204 + 1) = 16;
  v204[16] = 2;
  v7();
  v205 = (v334 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 960;
  *v206 = "reverse";
  *(v206 + 1) = 7;
  v206[16] = 2;
  v7();
  v207 = (v334 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 965;
  *v208 = "reverseSeq";
  *(v208 + 1) = 10;
  v208[16] = 2;
  v7();
  v209 = (v334 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 975;
  *v210 = "splitND";
  *(v210 + 1) = 7;
  v210[16] = 2;
  v7();
  v211 = (v334 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 980;
  *v212 = "concatND";
  *(v212 + 1) = 8;
  v212[16] = 2;
  v7();
  v213 = (v334 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 985;
  *v214 = "transpose";
  *(v214 + 1) = 9;
  v214[16] = 2;
  v7();
  v215 = (v334 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 995;
  *v216 = "sliceStatic";
  *(v216 + 1) = 11;
  v216[16] = 2;
  v7();
  v217 = (v334 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 1000;
  *v218 = "sliceDynamic";
  *(v218 + 1) = 12;
  v218[16] = 2;
  v7();
  v219 = (v334 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 1005;
  *v220 = "slidingWindows";
  *(v220 + 1) = 14;
  v220[16] = 2;
  v7();
  v221 = (v334 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 1015;
  *v222 = "topK";
  *(v222 + 1) = 4;
  v222[16] = 2;
  v7();
  v223 = (v334 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 1020;
  *v224 = "argMin";
  *(v224 + 1) = 6;
  v224[16] = 2;
  v7();
  v225 = (v334 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 1025;
  *v226 = "argMax";
  *(v226 + 1) = 6;
  v226[16] = 2;
  v7();
  v227 = (v334 + v3 + 111 * v2);
  v228 = v227 + v1[14];
  *v227 = 1040;
  *v228 = "embeddingND";
  *(v228 + 1) = 11;
  v228[16] = 2;
  v7();
  v229 = (v334 + v3 + 112 * v2);
  v230 = v229 + v1[14];
  *v229 = 1045;
  *v230 = "batchedMatmul";
  *(v230 + 1) = 13;
  v230[16] = 2;
  v7();
  v231 = (v334 + v3 + 113 * v2);
  v232 = v231 + v1[14];
  *v231 = 1065;
  *v232 = "getShape";
  *(v232 + 1) = 8;
  v232[16] = 2;
  v7();
  v233 = (v334 + v3 + 114 * v2);
  v234 = v233 + v1[14];
  *v233 = 1070;
  *v234 = "loadConstantND";
  *(v234 + 1) = 14;
  v234[16] = 2;
  v7();
  v235 = (v334 + v3 + 115 * v2);
  v236 = v235 + v1[14];
  *v235 = 1080;
  *v236 = "fillLike";
  *(v236 + 1) = 8;
  v236[16] = 2;
  v7();
  v237 = (v334 + v3 + 116 * v2);
  v238 = v237 + v1[14];
  *v237 = 1085;
  *v238 = "fillStatic";
  *(v238 + 1) = 10;
  v238[16] = 2;
  v7();
  v239 = (v334 + v3 + 117 * v2);
  v240 = v239 + v1[14];
  *v239 = 1090;
  *v240 = "fillDynamic";
  *(v240 + 1) = 11;
  v240[16] = 2;
  v7();
  v241 = (v334 + v3 + 118 * v2);
  v242 = v241 + v1[14];
  *v241 = 1100;
  *v242 = "broadcastToLike";
  *(v242 + 1) = 15;
  v242[16] = 2;
  v7();
  v243 = (v334 + v3 + 119 * v2);
  v244 = v243 + v1[14];
  *v243 = 1105;
  *v244 = "broadcastToStatic";
  *(v244 + 1) = 17;
  v244[16] = 2;
  v7();
  v245 = (v334 + v3 + 120 * v2);
  v246 = v245 + v1[14];
  *v245 = 1110;
  *v246 = "broadcastToDynamic";
  *(v246 + 1) = 18;
  v246[16] = 2;
  v7();
  v247 = (v334 + v3 + 121 * v2);
  v248 = v247 + v1[14];
  *v247 = 1120;
  *v248 = "squeeze";
  *(v248 + 1) = 7;
  v248[16] = 2;
  v7();
  v249 = (v334 + v3 + 122 * v2);
  v250 = v249 + v1[14];
  *v249 = 1125;
  *v250 = "expandDims";
  *(v250 + 1) = 10;
  v250[16] = 2;
  v7();
  v251 = (v334 + v3 + 123 * v2);
  v252 = v251 + v1[14];
  *v251 = 1130;
  *v252 = "flattenTo2D";
  *(v252 + 1) = 11;
  v252[16] = 2;
  v7();
  v253 = (v334 + v3 + 124 * v2);
  v254 = v253 + v1[14];
  *v253 = 1135;
  *v254 = "reshapeLike";
  *(v254 + 1) = 11;
  v254[16] = 2;
  v7();
  v255 = (v334 + v3 + 125 * v2);
  v256 = v255 + v1[14];
  *v255 = 1140;
  *v256 = "reshapeStatic";
  *(v256 + 1) = 13;
  v256[16] = 2;
  v7();
  v257 = (v334 + v3 + 126 * v2);
  v258 = v257 + v1[14];
  *v257 = 1145;
  *v258 = "reshapeDynamic";
  *(v258 + 1) = 14;
  v258[16] = 2;
  v7();
  v259 = (v334 + v3 + 127 * v2);
  v260 = v259 + v1[14];
  *v259 = 1150;
  *v260 = "rankPreservingReshape";
  *(v260 + 1) = 21;
  v260[16] = 2;
  v7();
  v261 = (v334 + v3 + (v2 << 7));
  v262 = v261 + v1[14];
  *v261 = 1155;
  *v262 = "constantPad";
  *(v262 + 1) = 11;
  v262[16] = 2;
  v7();
  v263 = (v334 + v3 + 129 * v2);
  v264 = v263 + v1[14];
  *v263 = 1170;
  *v264 = "randomNormalLike";
  *(v264 + 1) = 16;
  v264[16] = 2;
  v7();
  v265 = (v334 + v3 + 130 * v2);
  v266 = v265 + v1[14];
  *v265 = 1175;
  *v266 = "randomNormalStatic";
  *(v266 + 1) = 18;
  v266[16] = 2;
  v7();
  v267 = (v334 + v3 + 131 * v2);
  v268 = v267 + v1[14];
  *v267 = 1180;
  *v268 = "randomNormalDynamic";
  *(v268 + 1) = 19;
  v268[16] = 2;
  v7();
  v269 = (v334 + v3 + 132 * v2);
  v270 = v269 + v1[14];
  *v269 = 1190;
  *v270 = "randomUniformLike";
  *(v270 + 1) = 17;
  v270[16] = 2;
  v7();
  v271 = (v334 + v3 + 133 * v2);
  v272 = v271 + v1[14];
  *v271 = 1195;
  *v272 = "randomUniformStatic";
  *(v272 + 1) = 19;
  v272[16] = 2;
  v7();
  v273 = (v334 + v3 + 134 * v2);
  v274 = v273 + v1[14];
  *v273 = 1200;
  *v274 = "randomUniformDynamic";
  *(v274 + 1) = 20;
  v274[16] = 2;
  v7();
  v275 = (v334 + v3 + 135 * v2);
  v276 = v275 + v1[14];
  *v275 = 1210;
  *v276 = "randomBernoulliLike";
  *(v276 + 1) = 19;
  v276[16] = 2;
  v7();
  v277 = (v334 + v3 + 136 * v2);
  v278 = v277 + v1[14];
  *v277 = 1215;
  *v278 = "randomBernoulliStatic";
  *(v278 + 1) = 21;
  v278[16] = 2;
  v7();
  v279 = (v334 + v3 + 137 * v2);
  v280 = v279 + v1[14];
  *v279 = 1220;
  *v280 = "randomBernoulliDynamic";
  *(v280 + 1) = 22;
  v280[16] = 2;
  v7();
  v281 = (v334 + v3 + 138 * v2);
  v282 = v281 + v1[14];
  *v281 = 1230;
  *v282 = "categoricalDistribution";
  *(v282 + 1) = 23;
  v282[16] = 2;
  v7();
  v283 = (v334 + v3 + 139 * v2);
  v284 = v283 + v1[14];
  *v283 = 1250;
  *v284 = "reduceL1";
  *(v284 + 1) = 8;
  v284[16] = 2;
  v7();
  v285 = (v334 + v3 + 140 * v2);
  v286 = v285 + v1[14];
  *v285 = 1255;
  *v286 = "reduceL2";
  *(v286 + 1) = 8;
  v286[16] = 2;
  v7();
  v287 = (v334 + v3 + 141 * v2);
  v288 = v287 + v1[14];
  *v287 = 1260;
  *v288 = "reduceMax";
  *(v288 + 1) = 9;
  v288[16] = 2;
  v7();
  v289 = (v334 + v3 + 142 * v2);
  v290 = v289 + v1[14];
  *v289 = 1265;
  *v290 = "reduceMin";
  *(v290 + 1) = 9;
  v290[16] = 2;
  v7();
  v291 = (v334 + v3 + 143 * v2);
  v292 = v291 + v1[14];
  *v291 = 1270;
  *v292 = "reduceSum";
  *(v292 + 1) = 9;
  v292[16] = 2;
  v7();
  v293 = (v334 + v3 + 144 * v2);
  v294 = v293 + v1[14];
  *v293 = 1275;
  *v294 = "reduceProd";
  *(v294 + 1) = 10;
  v294[16] = 2;
  v7();
  v295 = (v334 + v3 + 145 * v2);
  v296 = v295 + v1[14];
  *v295 = 1280;
  *v296 = "reduceMean";
  *(v296 + 1) = 10;
  v296[16] = 2;
  v7();
  v297 = (v334 + v3 + 146 * v2);
  v298 = v297 + v1[14];
  *v297 = 1285;
  *v298 = "reduceLogSum";
  *(v298 + 1) = 12;
  v298[16] = 2;
  v7();
  v299 = (v334 + v3 + 147 * v2);
  v300 = v299 + v1[14];
  *v299 = 1290;
  *v300 = "reduceSumSquare";
  *(v300 + 1) = 15;
  v300[16] = 2;
  v7();
  v301 = (v334 + v3 + 148 * v2);
  v302 = v301 + v1[14];
  *v301 = 1295;
  *v302 = "reduceLogSumExp";
  *(v302 + 1) = 15;
  v302[16] = 2;
  v7();
  v303 = (v334 + v3 + 149 * v2);
  v304 = v303 + v1[14];
  *v303 = 1313;
  *v304 = "whereNonZero";
  *(v304 + 1) = 12;
  v304[16] = 2;
  v7();
  v305 = (v334 + v3 + 150 * v2);
  v306 = v305 + v1[14];
  *v305 = 1315;
  *v306 = "matrixBandPart";
  *(v306 + 1) = 14;
  v306[16] = 2;
  v7();
  v307 = (v334 + v3 + 151 * v2);
  v308 = v307 + v1[14];
  *v307 = 1320;
  *v308 = "lowerTriangular";
  *(v308 + 1) = 15;
  v308[16] = 2;
  v7();
  v309 = (v334 + v3 + 152 * v2);
  v310 = v309 + v1[14];
  *v309 = 1325;
  *v310 = "upperTriangular";
  *(v310 + 1) = 15;
  v310[16] = 2;
  v7();
  v311 = (v334 + v3 + 153 * v2);
  v312 = v311 + v1[14];
  *v311 = 1330;
  *v312 = "whereBroadcastable";
  *(v312 + 1) = 18;
  v312[16] = 2;
  v7();
  v313 = (v334 + v3 + 154 * v2);
  v314 = v313 + v1[14];
  *v313 = 1350;
  *v314 = "layerNormalization";
  *(v314 + 1) = 18;
  v314[16] = 2;
  v7();
  v315 = (v334 + v3 + 155 * v2);
  v316 = v315 + v1[14];
  *v315 = 1400;
  *v316 = "NonMaximumSuppression";
  *(v316 + 1) = 21;
  v316[16] = 2;
  v7();
  v317 = (v334 + v3 + 156 * v2);
  v318 = v317 + v1[14];
  *v317 = 1450;
  *v318 = "oneHot";
  *(v318 + 1) = 6;
  v318[16] = 2;
  v7();
  v319 = (v334 + v3 + 157 * v2);
  v320 = v319 + v1[14];
  *v319 = 1455;
  *v320 = "cumSum";
  *(v320 + 1) = 6;
  v320[16] = 2;
  v7();
  v321 = (v334 + v3 + 158 * v2);
  v322 = v321 + v1[14];
  *v321 = 1460;
  *v322 = "clampedReLU";
  *(v322 + 1) = 11;
  v322[16] = 2;
  v7();
  v323 = (v334 + v3 + 159 * v2);
  v324 = v323 + v1[14];
  *v323 = 1461;
  *v324 = "argSort";
  *(v324 + 1) = 7;
  v324[16] = 2;
  v7();
  v325 = (v334 + v3 + 160 * v2);
  v326 = v325 + v1[14];
  *v325 = 1465;
  *v326 = "pooling3d";
  *(v326 + 1) = 9;
  v326[16] = 2;
  v7();
  v327 = (v334 + v3 + 161 * v2);
  v328 = v327 + v1[14];
  *v327 = 1466;
  *v328 = "globalPooling3d";
  *(v328 + 1) = 15;
  v328[16] = 2;
  v7();
  v329 = (v334 + v3 + 162 * v2);
  v330 = v329 + v1[14];
  *v329 = 1470;
  *v330 = "sliceBySize";
  *(v330 + 1) = 11;
  v330[16] = 2;
  v7();
  v331 = (v334 + v3 + 163 * v2);
  v332 = v331 + v1[14];
  *v331 = 1471;
  *v332 = "convolution3d";
  *(v332 + 1) = 13;
  v332[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257543554()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  v3 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  return v0;
}

void sub_2575435B4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_198();
  *(v0 + 16) = 0;
  v8 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v8;
  *(v0 + 48) = v8;
  *(v0 + 56) = v8;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 64) = 0;
  v22 = (v0 + 64);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  OUTLINED_FUNCTION_447();
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v15 = *(v3 + 32);
  OUTLINED_FUNCTION_447();
  *(v0 + 32) = v15;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v16 = *(v3 + 40);
  OUTLINED_FUNCTION_447();
  v17 = v1[5];
  v1[5] = v16;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_447();
  v19 = v1[6];
  v1[6] = v18;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v20 = *(v3 + 56);
  OUTLINED_FUNCTION_250_0();
  v21 = v1[7];
  v1[7] = v20;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v20) = *(v3 + 64);
  OUTLINED_FUNCTION_447();
  *v22 = v20;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308();

  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_325_0();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

void *sub_25754383C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer, &qword_27F87A318, &qword_257745D10);
  return v0;
}

void sub_2575438DC()
{
  sub_25759B3F4(319, &qword_27F87BF70, type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2575439E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v11 = sub_257743234();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    if (v10 || !v9)
    {
      switch(v11)
      {
        case 1uLL:
          sub_257545168();
          continue;
        case 2uLL:
          sub_2575CBD08();
          continue;
        case 3uLL:
          sub_25759B718();
          continue;
        case 4uLL:
          sub_2575451EC();
          continue;
        case 5uLL:
          sub_2575452B8();
          continue;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
          goto LABEL_128;
        case 0xAuLL:
          sub_25759FAD4();
          continue;
        default:
LABEL_316:
          JUMPOUT(0);
      }
    }

    switch(v11)
    {
      case 0x64uLL:
        sub_257545384(a1, a2, a3, a4);
        break;
      case 0x78uLL:
        sub_2575458D8(a1, a2, a3, a4);
        break;
      case 0x82uLL:
        sub_257545E48(a1, a2, a3, a4);
        break;
      case 0x8CuLL:
        sub_2575463B8(a1, a2, a3, a4);
        break;
      case 0x96uLL:
        sub_257546928(a1, a2, a3, a4);
        break;
      case 0xA0uLL:
        sub_257546E98(a1, a2, a3, a4);
        break;
      case 0xA5uLL:
        sub_257547408(a1, a2, a3, a4);
        break;
      case 0xAAuLL:
        sub_257547978(a1, a2, a3, a4);
        break;
      case 0xAFuLL:
        sub_257547EE8(a1, a2, a3, a4);
        break;
      case 0xB4uLL:
        sub_257548458(a1, a2, a3, a4);
        break;
      case 0xBEuLL:
        sub_2575489C8(a1, a2, a3, a4);
        break;
      case 0xC8uLL:
        sub_257548F38(a1, a2, a3, a4);
        break;
      case 0xD2uLL:
        sub_2575494A8(a1, a2, a3, a4);
        break;
      case 0xD3uLL:
        sub_257549A18(a1, a2, a3, a4);
        break;
      case 0xD4uLL:
        sub_257549F88(a1, a2, a3, a4);
        break;
      case 0xDCuLL:
        sub_25754A4F8(a1, a2, a3, a4);
        break;
      case 0xE6uLL:
        sub_25754AA68(a1, a2, a3, a4);
        break;
      case 0xE7uLL:
        sub_25754AFD8(a1, a2, a3, a4);
        break;
      case 0xF0uLL:
        sub_25754B548(a1, a2, a3, a4);
        break;
      case 0xF5uLL:
        sub_25754BAB8(a1, a2, a3, a4);
        break;
      case 0xFAuLL:
        sub_25754C028(a1, a2, a3, a4);
        break;
      case 0x104uLL:
        sub_25754C598(a1, a2, a3, a4);
        break;
      case 0x105uLL:
        sub_25754CB08(a1, a2, a3, a4);
        break;
      case 0x10EuLL:
        sub_25754D078(a1, a2, a3, a4);
        break;
      case 0x118uLL:
        sub_25754D5E8(a1, a2, a3, a4);
        break;
      case 0x122uLL:
        sub_25754DB58(a1, a2, a3, a4);
        break;
      case 0x12CuLL:
        sub_25754E0C8(a1, a2, a3, a4);
        break;
      case 0x12DuLL:
        sub_25754E638(a1, a2, a3, a4);
        break;
      case 0x136uLL:
        sub_25754EBA8(a1, a2, a3, a4);
        break;
      case 0x140uLL:
        sub_25754F118(a1, a2, a3, a4);
        break;
      case 0x14AuLL:
        sub_25754F688(a1, a2, a3, a4);
        break;
      case 0x154uLL:
        sub_25754FBF8(a1, a2, a3, a4);
        break;
      case 0x159uLL:
        sub_257550168(a1, a2, a3, a4);
        break;
      case 0x15EuLL:
        sub_2575506D8(a1, a2, a3, a4);
        break;
      case 0x190uLL:
        sub_257550C48(a1, a2, a3, a4);
        break;
      case 0x19AuLL:
        sub_2575511B8(a1, a2, a3, a4);
        break;
      case 0x1A4uLL:
        sub_257551728(a1, a2, a3, a4);
        break;
      case 0x1AEuLL:
        sub_257551C98(a1, a2, a3, a4);
        break;
      case 0x1F4uLL:
        sub_257552208(a1, a2, a3, a4);
        break;
      case 0x258uLL:
        sub_257552778(a1, a2, a3, a4);
        break;
      case 0x25DuLL:
        sub_257552CE8(a1, a2, a3, a4);
        break;
      case 0x267uLL:
        sub_257553258(a1, a2, a3, a4);
        break;
      case 0x26CuLL:
        sub_2575537C8(a1, a2, a3, a4);
        break;
      case 0x271uLL:
        sub_257553D38(a1, a2, a3, a4);
        break;
      case 0x27BuLL:
        sub_2575542A8(a1, a2, a3, a4);
        break;
      case 0x280uLL:
        sub_257554818(a1, a2, a3, a4);
        break;
      case 0x294uLL:
        sub_257554D88(a1, a2, a3, a4);
        break;
      case 0x299uLL:
        sub_2575552F8(a1, a2, a3, a4);
        break;
      case 0x29EuLL:
        sub_257555868(a1, a2, a3, a4);
        break;
      case 0x2A8uLL:
        sub_257555DD8(a1, a2, a3, a4);
        break;
      case 0x2ADuLL:
        sub_257556348(a1, a2, a3, a4);
        break;
      case 0x2BCuLL:
        sub_2575568B8(a1, a2, a3, a4);
        break;
      case 0x2C6uLL:
        sub_257556E28(a1, a2, a3, a4);
        break;
      case 0x2CBuLL:
        sub_257557398(a1, a2, a3, a4);
        break;
      case 0x2D0uLL:
        sub_257557908(a1, a2, a3, a4);
        break;
      case 0x2DAuLL:
        sub_257557E78(a1, a2, a3, a4);
        break;
      case 0x2DFuLL:
        sub_2575583E8(a1, a2, a3, a4);
        break;
      default:
        v9 = v11 >= 0x2E4;
        v10 = v11 == 740;
        if (v11 == 740)
        {
          sub_257558958(a1, a2, a3, a4);
        }

        else
        {
LABEL_128:
          if (v10 || !v9)
          {
            switch(v11)
            {
              case 0x339uLL:
                sub_25755C528(a1, a2, a3, a4);
                continue;
              case 0x33AuLL:
              case 0x33CuLL:
              case 0x33DuLL:
              case 0x33FuLL:
                goto LABEL_247;
              case 0x33BuLL:
                sub_25755CA98(a1, a2, a3, a4);
                continue;
              case 0x33EuLL:
                sub_25755D008(a1, a2, a3, a4);
                continue;
              case 0x340uLL:
                sub_25755D578(a1, a2, a3, a4);
                continue;
              default:
                goto LABEL_316;
            }
          }

          switch(v11)
          {
            case 0x47EuLL:
              sub_25756E558(a1, a2, a3, a4);
              break;
            case 0x2F3uLL:
              sub_257559438(a1, a2, a3, a4);
              break;
            case 0x2F8uLL:
              sub_2575599A8(a1, a2, a3, a4);
              break;
            case 0x302uLL:
              sub_257559F18(a1, a2, a3, a4);
              break;
            case 0x307uLL:
              sub_25755A488(a1, a2, a3, a4);
              break;
            case 0x30CuLL:
              sub_25755A9F8(a1, a2, a3, a4);
              break;
            case 0x316uLL:
              sub_25755AF68(a1, a2, a3, a4);
              break;
            case 0x31BuLL:
              sub_25755B4D8(a1, a2, a3, a4);
              break;
            case 0x32FuLL:
              sub_25755BA48(a1, a2, a3, a4);
              break;
            case 0x334uLL:
              sub_25755BFB8(a1, a2, a3, a4);
              break;
            case 0x348uLL:
              sub_25755DAE8(a1, a2, a3, a4);
              break;
            case 0x34DuLL:
              sub_25755E058(a1, a2, a3, a4);
              break;
            case 0x352uLL:
              sub_25755E5C8(a1, a2, a3, a4);
              break;
            case 0x357uLL:
              sub_25755EB38(a1, a2, a3, a4);
              break;
            case 0x361uLL:
              sub_25755F0A8(a1, a2, a3, a4);
              break;
            case 0x366uLL:
              sub_25755F618(a1, a2, a3, a4);
              break;
            case 0x36BuLL:
              sub_25755FB88(a1, a2, a3, a4);
              break;
            case 0x370uLL:
              sub_2575600F8(a1, a2, a3, a4);
              break;
            case 0x375uLL:
              sub_257560668(a1, a2, a3, a4);
              break;
            case 0x37AuLL:
              sub_257560BD8(a1, a2, a3, a4);
              break;
            case 0x37FuLL:
              sub_257561148(a1, a2, a3, a4);
              break;
            case 0x384uLL:
              sub_2575616B8(a1, a2, a3, a4);
              break;
            case 0x389uLL:
              sub_257561C28(a1, a2, a3, a4);
              break;
            case 0x398uLL:
              sub_257562198(a1, a2, a3, a4);
              break;
            case 0x39DuLL:
              sub_257562708(a1, a2, a3, a4);
              break;
            case 0x3A2uLL:
              sub_257562C78(a1, a2, a3, a4);
              break;
            case 0x3A7uLL:
              sub_2575631E8(a1, a2, a3, a4);
              break;
            case 0x3ACuLL:
              sub_257563758(a1, a2, a3, a4);
              break;
            case 0x3C0uLL:
              sub_257565288(a1, a2, a3, a4);
              break;
            case 0x3C5uLL:
              sub_2575657F8(a1, a2, a3, a4);
              break;
            case 0x3CFuLL:
              sub_257565D68(a1, a2, a3, a4);
              break;
            case 0x3D4uLL:
              sub_2575662D8(a1, a2, a3, a4);
              break;
            case 0x3D9uLL:
              sub_257566848(a1, a2, a3, a4);
              break;
            case 0x3E3uLL:
              sub_257566DB8(a1, a2, a3, a4);
              break;
            case 0x3E8uLL:
              sub_257567328(a1, a2, a3, a4);
              break;
            case 0x3EDuLL:
              sub_257567898(a1, a2, a3, a4);
              break;
            case 0x3F7uLL:
              sub_257567E08(a1, a2, a3, a4);
              break;
            case 0x3FCuLL:
              sub_257568378(a1, a2, a3, a4);
              break;
            case 0x401uLL:
              sub_2575688E8(a1, a2, a3, a4);
              break;
            case 0x410uLL:
              sub_257568E58(a1, a2, a3, a4);
              break;
            case 0x415uLL:
              sub_2575693C8(a1, a2, a3, a4);
              break;
            case 0x429uLL:
              sub_257569938(a1, a2, a3, a4);
              break;
            case 0x42EuLL:
              sub_257569EA8(a1, a2, a3, a4);
              break;
            case 0x438uLL:
              sub_25756A418(a1, a2, a3, a4);
              break;
            case 0x43DuLL:
              sub_25756A988(a1, a2, a3, a4);
              break;
            case 0x442uLL:
              sub_25756AEF8(a1, a2, a3, a4);
              break;
            case 0x44CuLL:
              sub_25756B468(a1, a2, a3, a4);
              break;
            case 0x451uLL:
              sub_25756B9D8(a1, a2, a3, a4);
              break;
            case 0x456uLL:
              sub_25756BF48(a1, a2, a3, a4);
              break;
            case 0x460uLL:
              sub_25756C4B8(a1, a2, a3, a4);
              break;
            case 0x465uLL:
              sub_25756CA28(a1, a2, a3, a4);
              break;
            case 0x46AuLL:
              sub_25756CF98(a1, a2, a3, a4);
              break;
            case 0x46FuLL:
              sub_25756D508(a1, a2, a3, a4);
              break;
            case 0x474uLL:
              sub_25756DA78(a1, a2, a3, a4);
              break;
            case 0x479uLL:
              sub_25756DFE8(a1, a2, a3, a4);
              break;
            default:
              v9 = v11 >= 0x2EE;
              v10 = v11 == 750;
              if (v11 == 750)
              {
                sub_257558EC8(a1, a2, a3, a4);
              }

              else
              {
LABEL_247:
                if (v10 || !v9)
                {
                  switch(v11)
                  {
                    case 0x5AFuLL:
                      sub_257578878(a1, a2, a3, a4);
                      continue;
                    case 0x5B0uLL:
                    case 0x5B1uLL:
                    case 0x5B2uLL:
                    case 0x5B3uLL:
                    case 0x5B6uLL:
                    case 0x5B7uLL:
                    case 0x5B8uLL:
                    case 0x5BBuLL:
                    case 0x5BCuLL:
                    case 0x5BDuLL:
                      continue;
                    case 0x5B4uLL:
                      sub_257578DE8(a1, a2, a3, a4);
                      continue;
                    case 0x5B5uLL:
                      sub_257579358(a1, a2, a3, a4);
                      continue;
                    case 0x5B9uLL:
                      sub_2575798C8(a1, a2, a3, a4);
                      continue;
                    case 0x5BAuLL:
                      sub_257579E38(a1, a2, a3, a4);
                      continue;
                    case 0x5BEuLL:
                      sub_25757A3A8(a1, a2, a3, a4);
                      continue;
                    case 0x5BFuLL:
                      sub_25757A918(a1, a2, a3, a4);
                      continue;
                    default:
                      goto LABEL_316;
                  }
                }

                switch(v11)
                {
                  case 0x5AAuLL:
                    sub_257578308(a1, a2, a3, a4);
                    break;
                  case 0x492uLL:
                    sub_25756F038(a1, a2, a3, a4);
                    break;
                  case 0x497uLL:
                    sub_25756F5A8(a1, a2, a3, a4);
                    break;
                  case 0x49CuLL:
                    sub_25756FB18(a1, a2, a3, a4);
                    break;
                  case 0x4A6uLL:
                    sub_257570088(a1, a2, a3, a4);
                    break;
                  case 0x4ABuLL:
                    sub_2575705F8(a1, a2, a3, a4);
                    break;
                  case 0x4B0uLL:
                    sub_257570B68(a1, a2, a3, a4);
                    break;
                  case 0x4BAuLL:
                    sub_2575710D8(a1, a2, a3, a4);
                    break;
                  case 0x4BFuLL:
                    sub_257571648(a1, a2, a3, a4);
                    break;
                  case 0x4C4uLL:
                    sub_257571BB8(a1, a2, a3, a4);
                    break;
                  case 0x4CEuLL:
                    sub_257572128(a1, a2, a3, a4);
                    break;
                  case 0x4E2uLL:
                    sub_257572698(a1, a2, a3, a4);
                    break;
                  case 0x4E7uLL:
                    sub_257572C08(a1, a2, a3, a4);
                    break;
                  case 0x4ECuLL:
                    sub_257573178(a1, a2, a3, a4);
                    break;
                  case 0x4F1uLL:
                    sub_2575736E8(a1, a2, a3, a4);
                    break;
                  case 0x4F6uLL:
                    sub_257573C58(a1, a2, a3, a4);
                    break;
                  case 0x4FBuLL:
                    sub_2575741C8(a1, a2, a3, a4);
                    break;
                  case 0x500uLL:
                    sub_257574738(a1, a2, a3, a4);
                    break;
                  case 0x505uLL:
                    sub_257574CA8(a1, a2, a3, a4);
                    break;
                  case 0x50AuLL:
                    sub_257575218(a1, a2, a3, a4);
                    break;
                  case 0x50FuLL:
                    sub_257575788(a1, a2, a3, a4);
                    break;
                  case 0x521uLL:
                    sub_257575CF8(a1, a2, a3, a4);
                    break;
                  case 0x523uLL:
                    sub_257576268(a1, a2, a3, a4);
                    break;
                  case 0x528uLL:
                    sub_2575767D8(a1, a2, a3, a4);
                    break;
                  case 0x52DuLL:
                    sub_257576D48(a1, a2, a3, a4);
                    break;
                  case 0x532uLL:
                    sub_2575772B8(a1, a2, a3, a4);
                    break;
                  case 0x546uLL:
                    sub_257577828(a1, a2, a3, a4);
                    break;
                  case 0x578uLL:
                    sub_257577D98(a1, a2, a3, a4);
                    break;
                  case 0x483uLL:
                    sub_25756EAC8(a1, a2, a3, a4);
                    break;
                }
              }

              break;
          }
        }

        break;
    }
  }
}

uint64_t sub_257545168()
{
  swift_beginAccess();
  sub_257743394();
  return swift_endAccess();
}

uint64_t sub_2575451EC()
{
  swift_beginAccess();
  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_2575452B8()
{
  swift_beginAccess();
  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_257545384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F210, &qword_257766E40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v25, &qword_27F87F210, &qword_257766E40);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams);
  v28 = v37;
  sub_2577433D4();
  if (v28)
  {
    v29 = v25;
    return sub_2574695E4(v29, &qword_27F87F210, &qword_257766E40);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F210, &qword_257766E40);
    v29 = v23;
    return sub_2574695E4(v29, &qword_27F87F210, &qword_257766E40);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v25, &qword_27F87F210, &qword_257766E40);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575458D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_PoolingLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F218, &qword_257766E48);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v25, &qword_27F87F218, &qword_257766E48);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1E0, type metadata accessor for Proto_PoolingLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F218, &qword_257766E48);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F218, &qword_257766E48);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F218, &qword_257766E48);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F218, &qword_257766E48);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257545E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ActivationParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ED10, &qword_257766D88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v25, &qword_27F87ED10, &qword_257766D88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87ED10, &qword_257766D88);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87ED10, &qword_257766D88);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87ED10, &qword_257766D88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87ED10, &qword_257766D88);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575463B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F220, &qword_257766E50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v25, &qword_27F87F220, &qword_257766E50);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E240, type metadata accessor for Proto_InnerProductLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F220, &qword_257766E50);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F220, &qword_257766E50);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F220, &qword_257766E50);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F220, &qword_257766E50);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257546928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_EmbeddingLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F228, &qword_257766E58);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v25, &qword_27F87F228, &qword_257766E58);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E228, type metadata accessor for Proto_EmbeddingLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F228, &qword_257766E58);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F228, &qword_257766E58);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F228, &qword_257766E58);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F228, &qword_257766E58);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257546E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BatchnormLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F230, &qword_257766E60);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v25, &qword_27F87F230, &qword_257766E60);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1F8, type metadata accessor for Proto_BatchnormLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F230, &qword_257766E60);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F230, &qword_257766E60);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F230, &qword_257766E60);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F230, &qword_257766E60);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F238, &qword_257766E68);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v25, &qword_27F87F238, &qword_257766E68);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F238, &qword_257766E68);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F238, &qword_257766E68);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F238, &qword_257766E68);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F238, &qword_257766E68);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_L2NormalizeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F240, &qword_257766E70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v25, &qword_27F87F240, &qword_257766E70);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F240, &qword_257766E70);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F240, &qword_257766E70);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F240, &qword_257766E70);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F240, &qword_257766E70);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257547EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SoftmaxLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F248, &qword_257766E78);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_2574695E4(v25, &qword_27F87F248, &qword_257766E78);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E100, type metadata accessor for Proto_SoftmaxLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F248, &qword_257766E78);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F248, &qword_257766E78);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F248, &qword_257766E78);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F248, &qword_257766E78);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257548458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LRNLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F250, &qword_257766E80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_2574695E4(v25, &qword_27F87F250, &qword_257766E80);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E118, type metadata accessor for Proto_LRNLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F250, &qword_257766E80);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F250, &qword_257766E80);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F250, &qword_257766E80);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F250, &qword_257766E80);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CropLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F258, &qword_257766E88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_2574695E4(v25, &qword_27F87F258, &qword_257766E88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F258, &qword_257766E88);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F258, &qword_257766E88);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F258, &qword_257766E88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F258, &qword_257766E88);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257548F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_PaddingLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F260, &qword_257766E90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_2574695E4(v25, &qword_27F87F260, &qword_257766E90);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E178, type metadata accessor for Proto_PaddingLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F260, &qword_257766E90);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F260, &qword_257766E90);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F260, &qword_257766E90);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F260, &qword_257766E90);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575494A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_UpsampleLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F268, &qword_257766E98);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_2574695E4(v25, &qword_27F87F268, &qword_257766E98);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0B0, type metadata accessor for Proto_UpsampleLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F268, &qword_257766E98);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F268, &qword_257766E98);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F268, &qword_257766E98);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F268, &qword_257766E98);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257549A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ResizeBilinearLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F270, &qword_257766EA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_2574695E4(v25, &qword_27F87F270, &qword_257766EA0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A218, type metadata accessor for Proto_ResizeBilinearLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F270, &qword_257766EA0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F270, &qword_257766EA0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F270, &qword_257766EA0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F270, &qword_257766EA0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257549F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CropResizeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F278, &qword_257766EA8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_2574695E4(v25, &qword_27F87F278, &qword_257766EA8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A220, type metadata accessor for Proto_CropResizeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F278, &qword_257766EA8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F278, &qword_257766EA8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F278, &qword_257766EA8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F278, &qword_257766EA8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F280, &qword_257766EB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_2574695E4(v25, &qword_27F87F280, &qword_257766EB0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0C0, type metadata accessor for Proto_UnaryFunctionLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F280, &qword_257766EB0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F280, &qword_257766EB0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F280, &qword_257766EB0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F280, &qword_257766EB0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AddLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F288, &qword_257766EB8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_2574695E4(v25, &qword_27F87F288, &qword_257766EB8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0E0, type metadata accessor for Proto_AddLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F288, &qword_257766EB8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F288, &qword_257766EB8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F288, &qword_257766EB8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F288, &qword_257766EB8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MultiplyLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F290, &qword_257766EC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_2574695E4(v25, &qword_27F87F290, &qword_257766EC0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0D0, type metadata accessor for Proto_MultiplyLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F290, &qword_257766EC0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F290, &qword_257766EC0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F290, &qword_257766EC0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F290, &qword_257766EC0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754B548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_AverageLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F298, &qword_257766EC8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_2574695E4(v25, &qword_27F87F298, &qword_257766EC8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F298, &qword_257766EC8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F298, &qword_257766EC8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F298, &qword_257766EC8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F298, &qword_257766EC8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ScaleLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2A0, &qword_257766ED0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_2574695E4(v25, &qword_27F87F2A0, &qword_257766ED0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2A0, &qword_257766ED0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2A0, &qword_257766ED0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2A0, &qword_257766ED0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2A0, &qword_257766ED0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BiasLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2A8, &qword_257766ED8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_2574695E4(v25, &qword_27F87F2A8, &qword_257766ED8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E080, type metadata accessor for Proto_BiasLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2A8, &qword_257766ED8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2A8, &qword_257766ED8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2A8, &qword_257766ED8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2A8, &qword_257766ED8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MaxLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2B0, &qword_257766EE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_2574695E4(v25, &qword_27F87F2B0, &qword_257766EE0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2B0, &qword_257766EE0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2B0, &qword_257766EE0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2B0, &qword_257766EE0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2B0, &qword_257766EE0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754CB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MinLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2B8, &qword_257766EE8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_2574695E4(v25, &qword_27F87F2B8, &qword_257766EE8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2B8, &qword_257766EE8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2B8, &qword_257766EE8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2B8, &qword_257766EE8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2B8, &qword_257766EE8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_DotProductLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2C0, &qword_257766EF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_2574695E4(v25, &qword_27F87F2C0, &qword_257766EF0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2C0, &qword_257766EF0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2C0, &qword_257766EF0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2C0, &qword_257766EF0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2C0, &qword_257766EF0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReduceLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2C8, &qword_257766EF8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_2574695E4(v25, &qword_27F87F2C8, &qword_257766EF8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2C8, &qword_257766EF8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2C8, &qword_257766EF8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2C8, &qword_257766EF8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2C8, &qword_257766EF8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  v6 = *(*(ConstantLayerParams - 8) + 64);
  v7 = MEMORY[0x28223BE20](ConstantLayerParams);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2D0, &qword_257766F00);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, ConstantLayerParams);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_2574695E4(v25, &qword_27F87F2D0, &qword_257766F00);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, ConstantLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2D0, &qword_257766F00);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, ConstantLayerParams) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2D0, &qword_257766F00);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2D0, &qword_257766F00);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2D0, &qword_257766F00);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReshapeLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2D8, &qword_257766F08);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_2574695E4(v25, &qword_27F87F2D8, &qword_257766F08);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2D8, &qword_257766F08);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2D8, &qword_257766F08);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2D8, &qword_257766F08);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2D8, &qword_257766F08);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FlattenLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2E0, &qword_257766F10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_2574695E4(v25, &qword_27F87F2E0, &qword_257766F10);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2E0, &qword_257766F10);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2E0, &qword_257766F10);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2E0, &qword_257766F10);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2E0, &qword_257766F10);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_PermuteLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2E8, &qword_257766F18);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_2574695E4(v25, &qword_27F87F2E8, &qword_257766F18);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2E8, &qword_257766F18);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2E8, &qword_257766F18);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2E8, &qword_257766F18);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2E8, &qword_257766F18);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ConcatLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2F0, &qword_257766F20);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_2574695E4(v25, &qword_27F87F2F0, &qword_257766F20);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E130, type metadata accessor for Proto_ConcatLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2F0, &qword_257766F20);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2F0, &qword_257766F20);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2F0, &qword_257766F20);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2F0, &qword_257766F20);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SplitLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F2F8, &qword_257766F28);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_2574695E4(v25, &qword_27F87F2F8, &qword_257766F28);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E0F0, type metadata accessor for Proto_SplitLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F2F8, &qword_257766F28);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F2F8, &qword_257766F28);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F2F8, &qword_257766F28);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F2F8, &qword_257766F28);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25754FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SequenceRepeatLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F300, &qword_257766F30);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_2574695E4(v25, &qword_27F87F300, &qword_257766F30);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F300, &qword_257766F30);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F300, &qword_257766F30);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F300, &qword_257766F30);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F300, &qword_257766F30);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257550168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ReorganizeDataLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F308, &qword_257766F38);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_2574695E4(v25, &qword_27F87F308, &qword_257766F38);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F308, &qword_257766F38);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F308, &qword_257766F38);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F308, &qword_257766F38);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F308, &qword_257766F38);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575506D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SliceLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F310, &qword_257766F40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_2574695E4(v25, &qword_27F87F310, &qword_257766F40);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F310, &qword_257766F40);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F310, &qword_257766F40);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F310, &qword_257766F40);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F310, &qword_257766F40);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257550C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F318, &qword_257766F48);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_2574695E4(v25, &qword_27F87F318, &qword_257766F48);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F318, &qword_257766F48);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F318, &qword_257766F48);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F318, &qword_257766F48);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F318, &qword_257766F48);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575511B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GRULayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F320, &qword_257766F50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_2574695E4(v25, &qword_27F87F320, &qword_257766F50);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F320, &qword_257766F50);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F320, &qword_257766F50);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F320, &qword_257766F50);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F320, &qword_257766F50);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257551728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F328, &qword_257766F58);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_2574695E4(v25, &qword_27F87F328, &qword_257766F58);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F328, &qword_257766F58);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F328, &qword_257766F58);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F328, &qword_257766F58);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F328, &qword_257766F58);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257551C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F330, &qword_257766F60);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_2574695E4(v25, &qword_27F87F330, &qword_257766F60);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F330, &qword_257766F60);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F330, &qword_257766F60);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F330, &qword_257766F60);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F330, &qword_257766F60);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CustomLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F338, &qword_257766F68);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_2574695E4(v25, &qword_27F87F338, &qword_257766F68);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F338, &qword_257766F68);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F338, &qword_257766F68);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F338, &qword_257766F68);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F338, &qword_257766F68);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CopyLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F340, &qword_257766F70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_2574695E4(v25, &qword_27F87F340, &qword_257766F70);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F340, &qword_257766F70);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F340, &qword_257766F70);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F340, &qword_257766F70);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F340, &qword_257766F70);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257552CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BranchLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F348, &qword_257766F78);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_2574695E4(v25, &qword_27F87F348, &qword_257766F78);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F348, &qword_257766F78);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F348, &qword_257766F78);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F348, &qword_257766F78);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F348, &qword_257766F78);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257553258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LoopLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F350, &qword_257766F80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_2574695E4(v25, &qword_27F87F350, &qword_257766F80);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F350, &qword_257766F80);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F350, &qword_257766F80);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F350, &qword_257766F80);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F350, &qword_257766F80);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LoopBreakLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F358, &qword_257766F88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_2574695E4(v25, &qword_27F87F358, &qword_257766F88);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F358, &qword_257766F88);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F358, &qword_257766F88);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F358, &qword_257766F88);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F358, &qword_257766F88);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257553D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LoopContinueLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F360, &qword_257766F90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_2574695E4(v25, &qword_27F87F360, &qword_257766F90);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F360, &qword_257766F90);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F360, &qword_257766F90);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F360, &qword_257766F90);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F360, &qword_257766F90);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575542A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RangeStaticLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F368, &qword_257766F98);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_2574695E4(v25, &qword_27F87F368, &qword_257766F98);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F368, &qword_257766F98);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F368, &qword_257766F98);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F368, &qword_257766F98);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F368, &qword_257766F98);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257554818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_RangeDynamicLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F370, &qword_257766FA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_2574695E4(v25, &qword_27F87F370, &qword_257766FA0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F370, &qword_257766FA0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F370, &qword_257766FA0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F370, &qword_257766FA0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F370, &qword_257766FA0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257554D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ClipLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F378, &qword_257766FA8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_2574695E4(v25, &qword_27F87F378, &qword_257766FA8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F378, &qword_257766FA8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F378, &qword_257766FA8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F378, &qword_257766FA8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F378, &qword_257766FA8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575552F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CeilLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F380, &qword_257766FB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_2574695E4(v25, &qword_27F87F380, &qword_257766FB0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F380, &qword_257766FB0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F380, &qword_257766FB0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F380, &qword_257766FB0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F380, &qword_257766FB0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257555868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FloorLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F388, &qword_257766FB8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_2574695E4(v25, &qword_27F87F388, &qword_257766FB8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F388, &qword_257766FB8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F388, &qword_257766FB8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F388, &qword_257766FB8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F388, &qword_257766FB8);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257555DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SignLayerParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F390, &qword_257766FC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_2574695E4(v25, &qword_27F87F390, &qword_257766FC0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F390, &qword_257766FC0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F390, &qword_257766FC0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F390, &qword_257766FC0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F390, &qword_257766FC0);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}