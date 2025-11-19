uint64_t NeuralNetwork.Preprocessor.featureName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25749BC3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NeuralNetwork.Preprocessor.featureName.setter(v1, v2);
}

uint64_t NeuralNetwork.Preprocessor.featureName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*NeuralNetwork.Preprocessor.featureName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t sub_25749BD04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *v5 = v3;
    v5[1] = v2;
  }

  else
  {
    v8 = a1[3];

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t NeuralNetwork.Preprocessor.kind.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A0E0, &qword_257773BE0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  v23 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  sub_2574998F8(v1 + *(v23 + 20), v2);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) != 1)
  {
    sub_25749D3E8(v2, v12, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
    sub_25749D484(v12, v10, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
    sub_25749C208();
    sub_25749D4E0(v12, type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor);
    v24 = 0;
  }

  v25 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  __swift_storeEnumTagSinglePayload(v22, v24, 1, v25);
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) != 1)
  {
    return sub_25749D3E8(v22, v0, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
  }

  *(v0 + 8) = 0;
  *(v0 + 4) = 0;
  v26 = v0 + *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = 1065353216;
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_205();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v22, 1, v25);
  if (result != 1)
  {
    return sub_2574695E4(v22, &qword_27F87A0E0, &qword_257773BE0);
  }

  return result;
}

uint64_t sub_25749C018(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25749D484(a1, v5, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
  return NeuralNetwork.Preprocessor.kind.setter(v5);
}

uint64_t NeuralNetwork.Preprocessor.kind.setter(uint64_t a1)
{
  v5 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *(type metadata accessor for Proto_NeuralNetworkPreprocessing(0) + 20);
  sub_2574695E4(v1 + v13, &qword_27F87A048, &qword_257744980);
  type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_2();
    sub_25749D3E8(a1, v2, v14);
    OUTLINED_FUNCTION_12_4();
    sub_25749D3E8(v2, v1 + v13, v15);
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    sub_25749D3E8(a1, v3, v16);
    OUTLINED_FUNCTION_11_3();
    sub_25749D3E8(v3, v1 + v13, v17);
  }

  v18 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v1 + v13, 0, 1, v18);
}

uint64_t sub_25749C208()
{
  type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  swift_getEnumCaseMultiPayload();
  v0 = OUTLINED_FUNCTION_205();
  sub_25749D3E8(v0, v1, v2);
  type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Preprocessor.ScalerConfiguration.init(scale:grayBias:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  v6 = a1 + *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = a2;
  *(a1 + 16) = a3;
  return result;
}

uint64_t sub_25749C2F8()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v16 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_7_2();
  sub_25749D484(v3, v22, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_2();
    sub_25749D3E8(v22, v11, v24);
    OUTLINED_FUNCTION_12_4();
    sub_25749D3E8(v11, v0, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    sub_25749D3E8(v22, v2, v26);
    OUTLINED_FUNCTION_11_3();
    sub_25749D3E8(v2, v0, v27);
  }

  type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  return swift_storeEnumTagMultiPayload();
}

void (*NeuralNetwork.Preprocessor.kind.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Preprocessor.kind.getter();
  return sub_25749C4E4;
}

void sub_25749C4E4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_25749D484(a1[2], v2, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
    NeuralNetwork.Preprocessor.kind.setter(v2);
    OUTLINED_FUNCTION_0_4();
    sub_25749D4E0(v3, v5);
  }

  else
  {
    NeuralNetwork.Preprocessor.kind.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Preprocessor.init(featureName:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  v11 = OUTLINED_FUNCTION_27_3(v10);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = a4 + *(v4 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  sub_2574695E4(a4 + v5, &qword_27F87A048, &qword_257744980);
  sub_25749C2F8();
  OUTLINED_FUNCTION_0_4();
  sub_25749D4E0(a3, v16);
  OUTLINED_FUNCTION_21_2();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t static NeuralNetwork.Preprocessor.scaler(featureName:scale:grayBias:)(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v11 = OUTLINED_FUNCTION_16_1();
  v12 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  *(v5 + 8) = 0;
  *(v5 + 4) = 0;
  v16 = *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v5 = a3;
  *(v5 + 16) = a4;
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  v18 = OUTLINED_FUNCTION_27_3(v17);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = v4 + *(v12 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v4 = a1;
  v4[1] = a2;
  sub_2574695E4(v4 + v6, &qword_27F87A048, &qword_257744980);
  sub_25749C2F8();
  OUTLINED_FUNCTION_0_4();
  sub_25749D4E0(v5, v23);
  OUTLINED_FUNCTION_21_2();
  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t static NeuralNetwork.Preprocessor.scaler(featureName:scale:redBias:greenBias:blueBias:)()
{
  OUTLINED_FUNCTION_29_2();
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_16_1();
  v12 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v1[4] = 0;
  v16 = *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v6;
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  v18 = OUTLINED_FUNCTION_27_3(v17);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = v0 + *(v12 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v10;
  v0[1] = v8;
  sub_2574695E4(v0 + v2, &qword_27F87A048, &qword_257744980);
  sub_25749C2F8();
  OUTLINED_FUNCTION_0_4();
  sub_25749D4E0(v1, v23);
  OUTLINED_FUNCTION_21_2();
  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t NeuralNetwork.Preprocessor.ScalerConfiguration.init(scale:redBias:greenBias:blueBias:)()
{
  OUTLINED_FUNCTION_29_2();
  v5 = v4;
  v4[4] = 0;
  v6 = v4 + *(type metadata accessor for Proto_NeuralNetworkImageScaler(0) + 36);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5[2] = v1;
  v5[3] = v2;
  *v5 = v3;
  v5[1] = v0;
  return result;
}

uint64_t static NeuralNetwork.Preprocessor.meanImage(featureName:meanImage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_16_1();
  v9 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *(type metadata accessor for Proto_NeuralNetworkMeanImage(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v4 = a3;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for Proto_NeuralNetworkPreprocessing(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = *(v14 + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = a1;
  v3[1] = a2;
  sub_2574695E4(v3 + v15, &qword_27F87A048, &qword_257744980);
  sub_25749C2F8();
  OUTLINED_FUNCTION_0_4();
  sub_25749D4E0(v4, v21);
  return __swift_storeEnumTagSinglePayload(v3 + v15, 0, 1, v16);
}

uint64_t NeuralNetwork.Preprocessor.MeanImageConfiguration.init(meanImage:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_NeuralNetworkMeanImage(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

void NeuralNetwork.Preprocessor.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for NeuralNetwork.Preprocessor(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_25749D484(v0, v2, type metadata accessor for NeuralNetwork.Preprocessor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = 0x4E65727574616566;
  *(v18 + 40) = 0xEB00000000656D61;
  v19 = v0[1];
  v20 = MEMORY[0x277D837D0];
  *(v18 + 48) = *v0;
  *(v18 + 56) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 1684957547;
  *(v18 + 88) = 0xE400000000000000;
  *(v18 + 120) = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  __swift_allocate_boxed_opaque_existential_0((v18 + 96));

  NeuralNetwork.Preprocessor.kind.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v3);
  OUTLINED_FUNCTION_23_1();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25749CC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_356(inited, xmmword_257745520);
  v2[3] = xmmword_257745530;
  v2[4].n128_u8[0] = 0;
  strcpy(&v2[4].n128_i8[8], "Channel Scale");
  v2[5].n128_u16[3] = -4864;
  v13 = *v0;
  inited[5].n128_u64[1] = sub_257743674();
  inited[6].n128_u64[0] = v3;
  inited[6].n128_u8[8] = 0;
  inited[7].n128_u64[0] = 0x7361694220646552;
  inited[7].n128_u64[1] = 0xE800000000000000;
  v4 = v0[3];
  inited[8].n128_u64[0] = OUTLINED_FUNCTION_19_2();
  inited[8].n128_u64[1] = v5;
  inited[9].n128_u8[0] = 0;
  inited[9].n128_u64[1] = 0x6942206E65657247;
  inited[10].n128_u64[0] = 0xEA00000000007361;
  v6 = v0[2];
  inited[10].n128_u64[1] = OUTLINED_FUNCTION_19_2();
  inited[11].n128_u64[0] = v7;
  inited[11].n128_u8[8] = 0;
  inited[12].n128_u64[0] = 0x6169422065756C42;
  inited[12].n128_u64[1] = 0xE900000000000073;
  v8 = v0[1];
  inited[13].n128_u64[0] = OUTLINED_FUNCTION_19_2();
  inited[13].n128_u64[1] = v9;
  inited[14].n128_u8[0] = 0;
  inited[14].n128_u64[1] = 0x6169422079617247;
  inited[15].n128_u64[0] = 0xE900000000000073;
  v10 = v0[4];
  inited[15].n128_u64[1] = OUTLINED_FUNCTION_19_2();
  inited[16].n128_u64[0] = v11;
  inited[16].n128_u8[8] = 0;
  return sub_2576A6964(inited);
}

uint64_t sub_25749CDBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_356(inited, xmmword_257743FF0);
  v2[3] = xmmword_257745540;
  v2[4].n128_u8[0] = 0;
  v2[4].n128_u64[1] = 0x7365756C6156;
  v2[5].n128_u64[0] = 0xE600000000000000;
  v3 = *v0;
  v4 = *(*v0 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_257484040(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 32);
    do
    {
      v14 = *v6;
      v7 = sub_257743674();
      v9 = v8;
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257484040((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 24 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      *(v12 + 48) = 0;
      ++v6;
      --v4;
    }

    while (v4);
  }

  inited[5].n128_u64[1] = v5;
  inited[6].n128_u64[0] = 0;
  inited[6].n128_u8[8] = 1;
  return sub_2576A6964(inited);
}

void static NeuralNetwork.Preprocessor.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(0);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v31 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(0);
  v32 = OUTLINED_FUNCTION_13(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v37 = (v36 - v35);
  v38 = type metadata accessor for NeuralNetwork.Preprocessor.Kind(0);
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = (&a9 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v46 = (&a9 - v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A140, &unk_257745550);
  OUTLINED_FUNCTION_13(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &a9 - v52;
  v54 = *(v51 + 56);
  sub_25749D484(v26, &a9 - v52, type metadata accessor for NeuralNetwork.Preprocessor.Kind);
  sub_25749D484(v24, &v53[v54], type metadata accessor for NeuralNetwork.Preprocessor.Kind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_7_2();
    sub_25749D484(v53, v46, v61);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_3();
      sub_25749D3E8(&v53[v54], v37, v64);
      _s20MLModelSpecification13NeuralNetworkV12PreprocessorV19ScalerConfigurationV2eeoiySbAG_AGtFZ_0(v46, v37);
      sub_25749D4E0(v37, type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration);
      sub_25749D4E0(v46, type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration);
      OUTLINED_FUNCTION_0_4();
      sub_25749D4E0(v53, v65);
      goto LABEL_11;
    }

    v62 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration;
    v63 = v46;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_2();
  sub_25749D484(v53, v44, v55);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_1_4();
    v63 = v44;
LABEL_8:
    sub_25749D4E0(v63, v62);
    sub_2574695E4(v53, &qword_27F87A140, &unk_257745550);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_2();
  sub_25749D3E8(&v53[v54], v20, v56);
  if (sub_257479B60(*v44, *v20))
  {
    v57 = *(type metadata accessor for Proto_NeuralNetworkMeanImage(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_10_3();
    sub_25749DC50(v58, v59);
    sub_257743644();
  }

  OUTLINED_FUNCTION_1_4();
  sub_25749D4E0(v20, v60);
  OUTLINED_FUNCTION_1_4();
  sub_25749D4E0(v44, v66);
  OUTLINED_FUNCTION_0_4();
  sub_25749D4E0(v53, v67);
LABEL_11:
  OUTLINED_FUNCTION_35();
}

float (*NeuralNetwork.Preprocessor.ScalerConfiguration.channelScale.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

float sub_25749D2A8(uint64_t a1)
{
  result = *(a1 + 8);
  **a1 = result;
  return result;
}

float (*NeuralNetwork.Preprocessor.ScalerConfiguration.redBias.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_25749D2F4;
}

float sub_25749D2F4(float *a1)
{
  result = a1[2];
  *(*a1 + 12) = result;
  return result;
}

float (*NeuralNetwork.Preprocessor.ScalerConfiguration.greenBias.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_25749D340;
}

float sub_25749D340(float *a1)
{
  result = a1[2];
  *(*a1 + 8) = result;
  return result;
}

float (*NeuralNetwork.Preprocessor.ScalerConfiguration.blueBias.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

float sub_25749D38C(float *a1)
{
  result = a1[2];
  *(*a1 + 4) = result;
  return result;
}

float (*NeuralNetwork.Preprocessor.ScalerConfiguration.grayBias.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25749D3D8;
}

float sub_25749D3D8(float *a1)
{
  result = a1[2];
  *(*a1 + 16) = result;
  return result;
}

uint64_t sub_25749D3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_25749D484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_25749D4E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void NeuralNetwork.Preprocessor.ScalerConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  v15 = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_25749D484(v3, v2, type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257744000;
  v20 = v3[1];
  *(v19 + 48) = *v3;
  v21 = v3[2];
  *(v19 + 96) = v3[3];
  *(v19 + 144) = v21;
  v22 = MEMORY[0x277D83A90];
  strcpy((v19 + 32), "channelScale");
  *(v19 + 45) = 0;
  *(v19 + 46) = -5120;
  *(v19 + 72) = v22;
  *(v19 + 80) = 0x73616942646572;
  *(v19 + 88) = 0xE700000000000000;
  *(v19 + 120) = v22;
  *(v19 + 128) = 0x6169426E65657267;
  *(v19 + 136) = 0xE900000000000073;
  *(v19 + 168) = v22;
  *(v19 + 176) = 0x7361694265756C62;
  *(v19 + 184) = 0xE800000000000000;
  *(v19 + 192) = v20;
  *(v19 + 216) = v22;
  *(v19 + 224) = 0x7361694279617267;
  *(v19 + 232) = 0xE800000000000000;
  v23 = v3[4];
  *(v19 + 264) = v22;
  *(v19 + 240) = v23;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(v7 + 104))(v1, *MEMORY[0x277D84C38], v4);
  OUTLINED_FUNCTION_23_1();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25749D7AC(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Preprocessor.MeanImageConfiguration.meanImage.setter(v2);
}

uint64_t NeuralNetwork.Preprocessor.MeanImageConfiguration.meanImage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*NeuralNetwork.Preprocessor.MeanImageConfiguration.meanImage.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25749D854;
}

uint64_t sub_25749D854(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

BOOL static NeuralNetwork.Preprocessor.MeanImageConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (sub_257479B60(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_NeuralNetworkMeanImage(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_10_3();
    sub_25749DC50(v3, v4);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void NeuralNetwork.Preprocessor.MeanImageConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  v15 = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  sub_25749D484(v3, v2, type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = 0x67616D496E61656DLL;
  *(v19 + 40) = 0xE900000000000065;
  v20 = *v3;
  *(v19 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v19 + 48) = v20;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v7 + 104))(v1, *MEMORY[0x277D84C38], v4);

  OUTLINED_FUNCTION_23_1();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25749DC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25749DCD8()
{
  result = type metadata accessor for NeuralNetwork.Preprocessor.ScalerConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.Preprocessor.MeanImageConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25749DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_2()
{

  return sub_257743674();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{
  v2 = *(a1 + 20);

  return type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(0);
}

uint64_t NeuralNetwork.Layer.SimpleRecurrentParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  *(v1 + 32) = 0x6953207475706E49;
  *(v1 + 40) = 0xEA0000000000657ALL;
  v2 = *(v0 + *(type metadata accessor for Proto_SimpleRecurrentLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v13 = *(v2 + 16);
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x532074757074754FLL;
  *(v1 + 72) = 0xEB00000000657A69;
  OUTLINED_FUNCTION_296();
  v12 = *(v2 + 24);
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v4;
  *(v1 + 96) = 0x65636E6575716553;
  *(v1 + 104) = 0xEF74757074754F20;
  v5 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
  OUTLINED_FUNCTION_296();
  if (*(v2 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v2 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  strcpy((v1 + 128), "Reverse Input");
  *(v1 + 142) = -4864;
  v8 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  OUTLINED_FUNCTION_296();
  if (*(v2 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v2 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v1 + 144) = v9;
  *(v1 + 152) = v10;
  return v1;
}

uint64_t NeuralNetwork.Layer.SimpleRecurrentParameters.namedWeights.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = *(v1 - 8);
  v105 = v1;
  v106 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  v99 = v4;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  v103 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v9 = &v96 - v8;
  v10 = type metadata accessor for Proto_WeightParams(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v98 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v102 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = type metadata accessor for NeuralNetwork.WeightParameters();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_25_0();
  v97 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v101 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  v25 = (&v96 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_25_0();
  v96 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  v104 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  v100 = v32;
  OUTLINED_FUNCTION_158();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v96 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v96 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v96 - v40;
  v42 = *(v0 + *(type metadata accessor for Proto_SimpleRecurrentLayerParams(0) + 20));
  v43 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v42 + v43, v41);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v10);
  sub_25749E940(v41);
  v45 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_25749E8D0(v42 + v43, v39);
    OUTLINED_FUNCTION_34_0(v39);
    if (v46)
    {
      *v17 = MEMORY[0x277D84F90];
      *(v17 + 8) = xmmword_257745740;
      *(v17 + 24) = xmmword_257745740;
      *(v17 + 40) = xmmword_257745740;
      v17[56] = 0;
      v47 = &v17[*(v10 + 36)];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v48 = *(v10 + 40);
      v49 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(&v17[v48], 1, 1, v49);
      OUTLINED_FUNCTION_34_0(v39);
      if (!v46)
      {
        sub_25749E940(v39);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v39, v17, v50);
    }

    sub_2576FF45C(v17, v25);
    v51 = *(v105 + 48);
    OUTLINED_FUNCTION_0_5();
    sub_25749EA18(v25, v52, v53);
    sub_257469D34();
    v45 = v54;
    v55 = *(v54 + 16);
    if (v55 >= *(v54 + 24) >> 1)
    {
      sub_257469D34();
      v45 = v91;
    }

    *(v45 + 16) = v55 + 1;
    OUTLINED_FUNCTION_2_5();
    sub_25749E9A8(v9, v56 + v57 * v55);
  }

  v58 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v42 + v58, v36);
  v59 = __swift_getEnumTagSinglePayload(v36, 1, v10);
  sub_25749E940(v36);
  if (v59 != 1)
  {
    v60 = v100;
    sub_25749E8D0(v42 + v58, v100);
    OUTLINED_FUNCTION_34_0(v60);
    if (v46)
    {
      v63 = v102;
      *v102 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_6_3(xmmword_257745740);
      v61 = *(v10 + 40);
      v62 = type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_11_4(v62);
      OUTLINED_FUNCTION_34_0(v60);
      v65 = v103;
      if (!v46)
      {
        sub_25749E940(v60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      v63 = v102;
      sub_25749EA18(v60, v102, v64);
      v65 = v103;
    }

    v66 = v101;
    sub_2576FF45C(v63, v101);
    v67 = *(v105 + 48);
    OUTLINED_FUNCTION_0_5();
    sub_25749EA18(v66, v68, v69);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_9_3();
      v45 = v92;
    }

    v70 = *(v45 + 16);
    if (v70 >= *(v45 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_4();
      v45 = v93;
    }

    *(v45 + 16) = v70 + 1;
    OUTLINED_FUNCTION_2_5();
    sub_25749E9A8(v65, v71 + v72 * v70);
  }

  v73 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector;
  OUTLINED_FUNCTION_296();
  v74 = v104;
  sub_25749E8D0(v42 + v73, v104);
  v75 = __swift_getEnumTagSinglePayload(v74, 1, v10);
  sub_25749E940(v74);
  if (v75 != 1)
  {
    v76 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
    OUTLINED_FUNCTION_296();
    if (*(v42 + v76) == 1)
    {
      v77 = v96;
      sub_25749E8D0(v42 + v73, v96);
      OUTLINED_FUNCTION_34_0(v77);
      if (v46)
      {
        v80 = v98;
        *v98 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_6_3(xmmword_257745740);
        v78 = *(v10 + 40);
        v79 = type metadata accessor for Proto_QuantizationParams(0);
        OUTLINED_FUNCTION_11_4(v79);
        OUTLINED_FUNCTION_34_0(v77);
        if (!v46)
        {
          sub_25749E940(v77);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        v80 = v98;
        sub_25749EA18(v77, v98, v81);
      }

      v82 = v97;
      sub_2576FF45C(v80, v97);
      v83 = *(v105 + 48);
      v84 = v99;
      OUTLINED_FUNCTION_0_5();
      sub_25749EA18(v82, v85, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_9_3();
        v45 = v94;
      }

      v87 = *(v45 + 16);
      if (v87 >= *(v45 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10_4();
        v45 = v95;
      }

      *(v45 + 16) = v87 + 1;
      OUTLINED_FUNCTION_2_5();
      sub_25749E9A8(v84, v88 + v89 * v87);
    }
  }

  return v45;
}

uint64_t NeuralNetwork.Layer.SimpleRecurrentParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_SimpleRecurrentLayerParams(0) + 20);
  if (qword_27F879568 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27F87BF28;
}

uint64_t sub_25749E8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25749E940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25749E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25749EA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25749EA84()
{
  result = qword_27F87A1A8;
  if (!qword_27F87A1A8)
  {
    type metadata accessor for Proto_SimpleRecurrentLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A1A8);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.SimpleRecurrentParameters()
{
  result = qword_27F87A1B0;
  if (!qword_27F87A1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25749EB50()
{
  result = type metadata accessor for Proto_SimpleRecurrentLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_2_5()
{
  v2 = *(v1 - 192);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_6_3(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
  v4 = v1 + *(v2 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_9_3()
{
  v2 = *(v0 + 16) + 1;

  sub_257469D34();
}

void OUTLINED_FUNCTION_10_4()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t MLProgram.NamedValueType.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25749ECD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.NamedValueType.name.setter(v1, v2);
}

uint64_t MLProgram.NamedValueType.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*MLProgram.NamedValueType.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void MLProgram.NamedValueType.type.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_64();
  v7 = type metadata accessor for Proto_MILSpec_ValueType(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  sub_25749FB38(v0 + *(v13 + 24), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v14 = *(v7 + 20);
    if (qword_27F878FF0 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    *&v12[v14] = qword_27F87B038;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_2574695E4(v1, &qword_27F879E10, &qword_257744730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_6();
    sub_25749FD18(v1, v12);
  }

  sub_2576F0F64();
}

uint64_t sub_25749EF48(uint64_t *a1)
{
  v2 = *a1;

  return MLProgram.NamedValueType.type.setter(&v2);
}

uint64_t MLProgram.NamedValueType.type.setter(uint64_t *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_64();
  v11 = type metadata accessor for Proto_MILSpec_ValueType(v10);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_0();
  v15 = *a1;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v11 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  *(v2 + v16) = qword_27F87B038;
  v34 = v15;
  v17 = &v34;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

  v22 = *(v2 + v16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v17 = *(v2 + v16);
  }

  else
  {
    v23 = *(v2 + v16);
    v24 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_10_5();

    sub_2574E503C(v27);
    OUTLINED_FUNCTION_10_5();

    *(v2 + v16) = &v34;
  }

  v28 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_25749FBA8(v3, v17 + v28);
  swift_endAccess();
  v29 = *(type metadata accessor for Proto_MILSpec_NamedValueType(0) + 24);
  sub_2574695E4(v4 + v29, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_0_6();
  sub_25749FD18(v2, v4 + v29);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v11);
}

uint64_t (*MLProgram.NamedValueType.type.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  MLProgram.NamedValueType.type.getter();
  return sub_25749F1B4;
}

uint64_t sub_25749F1B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    MLProgram.NamedValueType.type.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return MLProgram.NamedValueType.type.setter(&v5);
  }
}

uint64_t MLProgram.NamedValueType.init(name:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  v15 = type metadata accessor for Proto_MILSpec_ValueType(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_0();
  v19 = *a3;
  v20 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v21 = a4 + *(v20 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = *(v20 + 24);
  __swift_storeEnumTagSinglePayload(a4 + v22, 1, 1, v15);
  *a4 = a1;
  a4[1] = a2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(v15 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  *(v4 + v23) = qword_27F87B038;
  v40 = v19;
  v24 = &v40;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);

  v29 = *(v4 + v23);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v24 = *(v4 + v23);
  }

  else
  {
    v30 = *(v4 + v23);
    v31 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_10_5();

    sub_2574E503C(v34);
    OUTLINED_FUNCTION_10_5();

    *(v4 + v23) = &v40;
  }

  v35 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
  swift_beginAccess();
  sub_25749FBA8(v5, v24 + v35);
  swift_endAccess();
  sub_2574695E4(a4 + v22, &qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_0_6();
  sub_25749FD18(v4, a4 + v22);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v36, v37, v38, v15);
}

uint64_t MLProgram.NamedValueType.hash(into:)()
{
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  OUTLINED_FUNCTION_5_4();
  sub_25749FE04(v0, v1);

  return sub_2577435F4();
}

uint64_t MLProgram.NamedValueType.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  OUTLINED_FUNCTION_5_4();
  sub_25749FE04(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25749F538()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_NamedValueType(0);
  sub_25749FE04(&qword_27F87A1C0, type metadata accessor for Proto_MILSpec_NamedValueType);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t MLProgram.NamedValueType.customMirror.getter()
{
  v3 = sub_257743A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_64();
  v10 = type metadata accessor for MLProgram.NamedValueType();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_25749FC64(v0, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  *(v15 + 32) = 1701667182;
  *(v15 + 40) = 0xE400000000000000;
  v16 = v0[1];
  v17 = MEMORY[0x277D837D0];
  *(v15 + 48) = *v0;
  *(v15 + 56) = v16;
  *(v15 + 72) = v17;
  *(v15 + 80) = 1701869940;
  *(v15 + 88) = 0xE400000000000000;
  *(v15 + 120) = &type metadata for MLProgram.ValueType;

  MLProgram.NamedValueType.type.getter();
  v18 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t MLProgram.NamedValueType.debugDescription.getter()
{
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000015, 0x800000025777A0B0);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](0x203A65707974202CLL, 0xE800000000000000);
  MLProgram.NamedValueType.type.getter();
  sub_257743884();

  MEMORY[0x259C64E90](41, 0xE100000000000000);
  return 0;
}

uint64_t FeatureDescription.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Proto_FeatureType(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1C8, &qword_2577457C0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FeatureType(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v24 = type metadata accessor for Proto_FeatureDescription(0);
  v25 = a2 + *(v24 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = *(v24 + 28);
  __swift_storeEnumTagSinglePayload(a2 + v26, 1, 1, v5);
  v27 = a1[1];
  *a2 = *a1;
  a2[1] = v27;

  MLProgram.NamedValueType.type.getter();
  FeatureType.init(_:)();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    OUTLINED_FUNCTION_6_4();
    return sub_2574695E4(v14, &qword_27F87A1C8, &qword_2577457C0);
  }

  else
  {
    sub_25749FD18(v14, v23);
    sub_25749FC64(v23, v21);
    sub_25768E090();
    OUTLINED_FUNCTION_6_4();
    sub_25749FCC0(v21, type metadata accessor for FeatureType);
    sub_25749FCC0(v23, type metadata accessor for FeatureType);
    sub_2574695E4(a2 + v26, &qword_27F879C38, &qword_257744550);
    sub_25749FD18(v2, a2 + v26);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v29, v30, v31, v5);
  }
}

uint64_t sub_25749FB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25749FBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MLProgram.NamedValueType()
{
  result = qword_27F87A1E0;
  if (!qword_27F87A1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25749FC64(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25749FCC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25749FD18(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25749FE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25749FE74()
{
  result = type metadata accessor for Proto_MILSpec_NamedValueType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_25749FCC0(v0, type metadata accessor for MLProgram.NamedValueType);
}

void NeuralNetwork.Layer.CropParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_21_3();
  v6 = type metadata accessor for NeuralNetwork.Border(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  NeuralNetwork.Layer.CropParameters.amounts.getter();
  if (OUTLINED_FUNCTION_23_2(v0) == 1)
  {
    sub_2574695E4(v0, &qword_27F87A1F0, &qword_2577458B0);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_2574A17E4(v0, v12, v14);
    v53 = NeuralNetwork.Border.leadingWidth.getter();
    v15 = sub_257743974();
    v17 = v16;
    sub_257469388();
    v13 = v18;
    v19 = *(v18 + 16);
    if (v19 >= *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_5();
      v13 = v47;
    }

    OUTLINED_FUNCTION_10_6();
    v21[4] = 0xD000000000000013;
    v21[5] = v20;
    v21[6] = v15;
    v21[7] = v17;
    v53 = NeuralNetwork.Border.trailingHeight.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v22)
    {
      OUTLINED_FUNCTION_5_5();
      v13 = v48;
    }

    OUTLINED_FUNCTION_10_6();
    v24[4] = 0xD000000000000014;
    v24[5] = v23;
    v24[6] = &v53;
    v24[7] = v17;
    v53 = NeuralNetwork.Border.leadingWidth.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v22)
    {
      OUTLINED_FUNCTION_5_5();
      v13 = v49;
    }

    OUTLINED_FUNCTION_10_6();
    v26[4] = 0xD000000000000012;
    v26[5] = v25;
    v26[6] = &v53;
    v26[7] = v17;
    v53 = NeuralNetwork.Border.trailingWidth.getter();
    sub_257743974();
    OUTLINED_FUNCTION_6_5();
    if (v22)
    {
      OUTLINED_FUNCTION_5_5();
      v13 = v50;
    }

    sub_2574A178C(v12, type metadata accessor for NeuralNetwork.Border);
    *(v13 + 16) = v19 + 1;
    v27 = (v13 + 32 * v19);
    v27[4] = 0xD000000000000013;
    v27[5] = 0x800000025777A130;
    v27[6] = &v53;
    v27[7] = v17;
  }

  v28 = NeuralNetwork.Layer.CropParameters.offset.getter();
  v29 = *(v28 + 16);
  if (v29)
  {
    v51 = v13;
    v53 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_22_1();
    v30 = 32;
    v31 = v53;
    do
    {
      v52 = *(v28 + v30);
      v32 = sub_257743974();
      v34 = v33;
      v53 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_257483754((v35 > 1), v36 + 1, 1);
        v31 = v53;
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v30 += 8;
      --v29;
    }

    while (v29);

    v13 = v51;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v53 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v38 = sub_257743604();
  v40 = v39;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = *(v13 + 16);
    sub_257469388();
    v13 = v45;
  }

  v42 = *(v13 + 16);
  v41 = *(v13 + 24);
  if (v42 >= v41 >> 1)
  {
    OUTLINED_FUNCTION_174(v41);
    sub_257469388();
    v13 = v46;
  }

  *(v13 + 16) = v42 + 1;
  v43 = (v13 + 32 * v42);
  v43[4] = 0x74657366664FLL;
  v43[5] = 0xE600000000000000;
  v43[6] = v38;
  v43[7] = v40;
  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.CropParameters.amounts.getter()
{
  OUTLINED_FUNCTION_31();
  v27 = v1;
  v2 = type metadata accessor for Proto_BorderAmounts(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
  sub_2574A172C(v0 + v18, v17, &qword_27F879AC8, &unk_257744010);
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v2);
  v21 = v27;
  sub_2574695E4(v17, &qword_27F879AC8, &unk_257744010);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v0 + v18, v15, &qword_27F879AC8, &unk_257744010);
    if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
    {
      *v8 = MEMORY[0x277D84F90];
      v22 = v8 + *(v2 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (__swift_getEnumTagSinglePayload(v15, 1, v2) != 1)
      {
        sub_2574695E4(v15, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_7();
      sub_2574A17E4(v15, v8, v23);
    }

    OUTLINED_FUNCTION_0_7();
    sub_2574A17E4(v8, v21, v24);
    v19 = 0;
  }

  v25 = type metadata accessor for NeuralNetwork.Border(0);
  __swift_storeEnumTagSinglePayload(v21, v19, 1, v25);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.CropParameters.offset.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724();
    result = v9;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_174(v7);
        sub_257483724();
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2574A0630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_2574A172C(a1, &v7 - v4, &qword_27F87A1F0, &qword_2577458B0);
  return NeuralNetwork.Layer.CropParameters.amounts.setter(v5);
}

uint64_t NeuralNetwork.Layer.CropParameters.amounts.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_BorderAmounts(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_17_3();
  v9 = type metadata accessor for NeuralNetwork.Border(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_2574695E4(a1, &qword_27F87A1F0, &qword_2577458B0);
    v17 = type metadata accessor for Proto_CropLayerParams(0);
    sub_2574695E4(v1 + *(v17 + 24), &qword_27F879AC8, &unk_257744010);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_2574A17E4(a1, v15, v22);
    sub_2574A17E4(v15, v2, type metadata accessor for Proto_BorderAmounts);
    v23 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
    sub_2574695E4(v1 + v23, &qword_27F879AC8, &unk_257744010);
    sub_2574A17E4(v2, v1 + v23, type metadata accessor for Proto_BorderAmounts);
    return __swift_storeEnumTagSinglePayload(v1 + v23, 0, 1, v4);
  }
}

void (*NeuralNetwork.Layer.CropParameters.amounts.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for NeuralNetwork.Border(0);
  v3[1] = v4;
  v27 = v4;
  OUTLINED_FUNCTION_4(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_BorderAmounts(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v26 = __swift_coroFrameAllocStub(v8);
  v3[5] = v26;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_24_4();
  v3[6] = v12;
  v13 = OUTLINED_FUNCTION_24_4();
  v3[7] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F0, &qword_2577458B0);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  v3[8] = OUTLINED_FUNCTION_24_4();
  v17 = OUTLINED_FUNCTION_24_4();
  v3[9] = v17;
  v18 = *(type metadata accessor for Proto_CropLayerParams(0) + 24);
  *(v3 + 20) = v18;
  sub_2574A172C(v1 + v18, v13, &qword_27F879AC8, &unk_257744010);
  v19 = 1;
  v20 = OUTLINED_FUNCTION_23_2(v13);
  sub_2574695E4(v13, &qword_27F879AC8, &unk_257744010);
  if (v20 != 1)
  {
    sub_2574A172C(v1 + v18, v12, &qword_27F879AC8, &unk_257744010);
    if (OUTLINED_FUNCTION_23_2(v12) == 1)
    {
      v21 = v26;
      *v26 = MEMORY[0x277D84F90];
      v22 = v26 + *(v6 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (OUTLINED_FUNCTION_23_2(v12) != 1)
      {
        sub_2574695E4(v12, &qword_27F879AC8, &unk_257744010);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_7();
      v21 = v26;
      sub_2574A17E4(v12, v26, v23);
    }

    OUTLINED_FUNCTION_0_7();
    sub_2574A17E4(v21, v17, v24);
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v27);
  return sub_2574A0AE8;
}

void sub_2574A0AE8()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[9];
  if (v3)
  {
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v8 = v1[4];
    v9 = v1[2];
    v10 = *v1;
    sub_2574A172C((*v0)[9], v4, &qword_27F87A1F0, &qword_2577458B0);
    NeuralNetwork.Layer.CropParameters.amounts.setter(v4);
    sub_2574695E4(v2, &qword_27F87A1F0, &qword_2577458B0);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*v0)[9], 1, v1[1]);
    v12 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v13 = *v1;
      sub_2574695E4(v2, &qword_27F87A1F0, &qword_2577458B0);
      sub_2574695E4(v13 + v12, &qword_27F879AC8, &unk_257744010);
      v14 = 1;
    }

    else
    {
      v15 = v1[4];
      v16 = v1[2];
      v17 = *v1;
      OUTLINED_FUNCTION_2_6();
      sub_2574A17E4(v2, v16, v18);
      sub_2574A17E4(v16, v15, type metadata accessor for Proto_BorderAmounts);
      sub_2574695E4(v17 + v12, &qword_27F879AC8, &unk_257744010);
      sub_2574A17E4(v15, v17 + v12, type metadata accessor for Proto_BorderAmounts);
      v14 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v14, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v19);
}

void sub_2574A0CA8(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.CropParameters.offset.setter(v2);
}

void NeuralNetwork.Layer.CropParameters.offset.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_257484698();
    v5 = 32;
    v6 = v11;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_174(v8);
        sub_257484698();
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:
    v10 = *v2;

    *v2 = v6;
  }
}

void (*NeuralNetwork.Layer.CropParameters.offset.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.CropParameters.offset.getter();
  return sub_2574A0E10;
}

void sub_2574A0E10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.CropParameters.offset.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.CropParameters.offset.setter(*a1);
  }
}

void NeuralNetwork.Layer.ResizeBilinearParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OUTLINED_FUNCTION_21_3();
  v8 = type metadata accessor for Proto_SamplingMode(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_17_3();
  v13 = type metadata accessor for Proto_ResizeBilinearLayerParams(v12);
  sub_2574A172C(v1 + *(v13 + 24), v0, &qword_27F87A208, &unk_2577458B8);
  OUTLINED_FUNCTION_35_0(v0);
  if (v14)
  {
    *v2 = 0;
    *(v2 + 8) = 1;
    v15 = v2 + *(v8 + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v0);
    if (!v14)
    {
      sub_2574695E4(v0, &qword_27F87A208, &unk_2577458B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_2574A17E4(v0, v2, v16);
  }

  v17 = *v2;
  v18 = *(v2 + 8);
  OUTLINED_FUNCTION_8_3();
  if (v18 == 1)
  {
    v19 = 0xEF73746E696F7064;
    v20 = 0x6E45206E67696C41;
    switch(v17)
    {
      case 1:
        break;
      case 2:
        v19 = 0xE800000000000000;
        v20 = 0x656C706D61737055;
        break;
      case 3:
        v19 = 0x800000025777A150;
        v20 = 0xD000000000000018;
        break;
      default:
        v20 = 0xD000000000000016;
        v19 = 0x800000025777A170;
        break;
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_9_4(v21, xmmword_257743FF0);
  v22 = *v1;
  v23 = *(*v1 + 16);
  if (v23)
  {
    v36 = v21;
    v37 = MEMORY[0x277D84F90];
    sub_257483754(0, v23, 0);
    v24 = (v22 + 32);
    do
    {
      v25 = *v24++;
      v26 = sub_257743974();
      v28 = v27;
      v30 = *(v37 + 16);
      v29 = *(v37 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = OUTLINED_FUNCTION_174(v29);
        sub_257483754(v32, v30 + 1, 1);
      }

      *(v37 + 16) = v30 + 1;
      v31 = v37 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      --v23;
    }

    while (v23);
    v21 = v36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v33 = sub_257743604();
  v35 = v34;

  v21[3].n128_u64[0] = v33;
  v21[3].n128_u64[1] = v35;
  v21[4].n128_u64[0] = 1701080909;
  v21[4].n128_u64[1] = 0xE400000000000000;
  v21[5].n128_u64[0] = v20;
  v21[5].n128_u64[1] = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A11F4@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  v5 = a1(0);
  v6 = a3 + *(v5 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = *(v5 + 24);
  a2(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void NeuralNetwork.Layer.CropResizeParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Proto_SamplingMode(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_17_3();
  v14 = type metadata accessor for Proto_CropResizeLayerParams(v13);
  sub_2574A172C(v2 + *(v14 + 32), v8, &qword_27F87A208, &unk_2577458B8);
  OUTLINED_FUNCTION_35_0(v8);
  if (v15)
  {
    *v1 = 0;
    *(v1 + 8) = 1;
    v16 = v1 + *(v9 + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_35_0(v8);
    if (!v15)
    {
      sub_2574695E4(v8, &qword_27F87A208, &unk_2577458B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_2574A17E4(v8, v1, v17);
  }

  v18 = *v1;
  v19 = *(v1 + 8);
  OUTLINED_FUNCTION_8_3();
  if (v19 == 1)
  {
    v20 = 0xEF73746E696F7064;
    v21 = 0x6E45206E67696C41;
    switch(v18)
    {
      case 1:
        break;
      case 2:
        v20 = 0xE800000000000000;
        v21 = 0x656C706D61737055;
        break;
      case 3:
        v20 = 0x800000025777A150;
        v21 = 0xD000000000000018;
        break;
      default:
        v20 = 0x800000025777A170;
        v21 = 0xD000000000000016;
        break;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_9_4(v22, xmmword_257744E70);
  v23 = *v2;
  v24 = *(*v2 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v41 = v22;
    v42 = v21;
    v43 = v20;
    v44 = v2;
    v46 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_22_1();
    v25 = v46;
    v26 = (v23 + 32);
    do
    {
      v27 = *v26++;
      v45 = v27;
      v28 = sub_257743974();
      v30 = v29;
      v46 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_257483754((v31 > 1), v32 + 1, 1);
        v25 = v46;
      }

      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      --v24;
    }

    while (v24);
    v20 = v43;
    v2 = v44;
    v22 = v41;
    v21 = v42;
  }

  v46 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  OUTLINED_FUNCTION_12_5();
  v34 = sub_257743604();
  v36 = v35;

  v22[3].n128_u64[0] = v34;
  v22[3].n128_u64[1] = v36;
  v22[4].n128_u64[0] = 0xD000000000000016;
  v22[4].n128_u64[1] = 0x800000025777A190;
  v37 = 1702195828;
  if (!*(v2 + 8))
  {
    v37 = 0x65736C6166;
  }

  v38 = 0xE500000000000000;
  if (*(v2 + 8))
  {
    v38 = 0xE400000000000000;
  }

  v22[5].n128_u64[0] = v37;
  v22[5].n128_u64[1] = v38;
  v22[6].n128_u64[0] = 1701080909;
  v22[6].n128_u64[1] = 0xE400000000000000;
  v22[7].n128_u64[0] = v21;
  v22[7].n128_u64[1] = v20;
  strcpy(&v22[8], "Spatial Scale");
  v22[8].n128_u16[7] = -4864;
  v39 = *(v2 + 3);
  v22[9].n128_u64[0] = sub_257743794();
  v22[9].n128_u64[1] = v40;
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.CropResizeParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  v2 = type metadata accessor for Proto_CropResizeLayerParams(0);
  v3 = a1 + v2[7];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = v2[8];
  type metadata accessor for Proto_SamplingMode(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  type metadata accessor for Proto_BoxCoordinatesMode(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

unint64_t sub_2574A16C8()
{
  result = qword_27F87A200;
  if (!qword_27F87A200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87A1F8, &qword_257770B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A200);
  }

  return result;
}

uint64_t sub_2574A172C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2574A178C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574A17E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2574A191C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574A1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_5_5()
{

  sub_257469388();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2574A178C(v0, type metadata accessor for Proto_SamplingMode);
}

__n128 *OUTLINED_FUNCTION_9_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x5320746567726154;
  result[2].n128_u64[1] = 0xEB00000000657A69;
  return result;
}

char *OUTLINED_FUNCTION_22_1()
{

  return sub_257483754(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void *OUTLINED_FUNCTION_24_4()
{

  return __swift_coroFrameAllocStub(v0);
}

__n128 *NeuralNetwork.Layer.SequenceRepeatParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_5_6(v1, xmmword_2577442B0);
  v4 = *v0;
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v2;
  return v1;
}

BOOL static NeuralNetwork.Layer.SequenceRepeatParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    v2 = *(type metadata accessor for Proto_SequenceRepeatLayerParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    sub_2574A2CE0(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ReorganizeDataParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = *v0;
    v2 = 0xEE00656361705320;
    v3 = 0x6F74206874706544;
    if (*v0 != 1)
    {
      v3 = 0x6853206C65786950;
      v2 = 0xED0000656C666675;
    }

    if (v1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x6F74206563617053;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xEE00687470654420;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257743FF0;
  *(v6 + 32) = 1701080909;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  *(v6 + 64) = 0x6953206B636F6C42;
  *(v6 + 72) = 0xEA0000000000657ALL;
  v9 = v0[2];
  *(v6 + 80) = sub_257743974();
  *(v6 + 88) = v7;
  return v6;
}

uint64_t NeuralNetwork.Layer.ReorganizeDataParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Proto_ReorganizeDataLayerParams(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t static NeuralNetwork.Layer.ReorganizeDataParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16))
  {
    v6 = *(type metadata accessor for Proto_ReorganizeDataLayerParams(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    sub_2574A2CE0(v7, v8);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return 0;
}

__n128 *NeuralNetwork.Layer.TileParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_5_6(v0, xmmword_2577442B0);
  NeuralNetwork.Layer.TileParameters.repetitions.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  v0[3].n128_u64[0] = v1;
  v0[3].n128_u64[1] = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.TileParameters.repetitions.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_257483724();
    result = v8;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v9 = result;
      v7 = *(result + 16);
      if (v7 >= *(result + 24) >> 1)
      {
        sub_257483724();
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2574A2128(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.TileParameters.repetitions.setter(v2);
}

void NeuralNetwork.Layer.TileParameters.repetitions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698();
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v8 = *(v10 + 16);
      if (v8 >= *(v10 + 24) >> 1)
      {
        sub_257484698();
      }

      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:
    v9 = *v2;

    *v2 = v6;
  }
}

void (*NeuralNetwork.Layer.TileParameters.repetitions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.TileParameters.repetitions.getter();
  return sub_2574A2294;
}

void sub_2574A2294(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.TileParameters.repetitions.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.TileParameters.repetitions.setter(*a1);
  }
}

uint64_t NeuralNetwork.Layer.ReverseParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = OUTLINED_FUNCTION_8_4();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 0x65737265766552;
  *(v1 + 40) = 0xE700000000000000;
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D839B0]);
  *(v1 + 56) = v2;
  return v1;
}

uint64_t sub_2574A23D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a3 + *(a2(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (v7(*v5, *v6))
  {
    v8 = *(a4(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    sub_2574A2CE0(v9, v10);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ReverseSequenceParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x7841206863746142;
  *(v1 + 40) = 0xEA00000000007369;
  v5 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  strcpy((v1 + 64), "Sequence Axis");
  *(v1 + 78) = -4864;
  v6 = v0[1];
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v3;
  return v1;
}

uint64_t NeuralNetwork.Layer.ReverseSequenceParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_ReverseSeqLayerParams(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.ReverseSequenceParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v2 + 8) == *(v3 + 8))
    {
      v4 = *(type metadata accessor for Proto_ReverseSeqLayerParams(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_8();
      sub_2574A2CE0(v5, v6);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *NeuralNetwork.Layer.FillStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v1[3].n128_u64[0] = OUTLINED_FUNCTION_6_6(v1, xmmword_257743FF0);
  v1[3].n128_u64[1] = v2;
  strcpy(&v1[4], "Target Shape");
  v1[4].n128_u8[13] = 0;
  v1[4].n128_u16[7] = -5120;
  v3 = *(v0 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      v7 = sub_257743974();
      v9 = v8;
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257483754((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = sub_257743604();
  v15 = v14;

  v1[5].n128_u64[0] = v13;
  v1[5].n128_u64[1] = v15;
  return v1;
}

uint64_t NeuralNetwork.Layer.FillStaticParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_FillStaticLayerParams(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.FillStaticParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (sub_257487374(*(v2 + 8), *(v3 + 8)))
    {
      v4 = *(type metadata accessor for Proto_FillStaticLayerParams(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_8();
      sub_2574A2CE0(v5, v6);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *_s20MLModelSpecification13NeuralNetworkV5LayerV18FillLikeParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = OUTLINED_FUNCTION_8_4();
  v0[3].n128_u64[0] = OUTLINED_FUNCTION_6_6(v0, xmmword_2577442B0);
  v0[3].n128_u64[1] = v1;
  return v0;
}

uint64_t sub_2574A29B4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A2A0C(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    v3 = *(v2(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_8();
    sub_2574A2CE0(v4, v5);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2574A2CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574A3028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_257743644();
}

__n128 *OUTLINED_FUNCTION_5_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6974697465706552;
  result[2].n128_u64[1] = 0xEB00000000736E6FLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x65756C6156;
  a1[2].n128_u64[1] = 0xE500000000000000;
  v4 = *v2;

  return sub_257743794();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_allocObject();
}

void static NeuralNetwork.Layer.branch(name:inputName:ifBranch:elseBranch:)()
{
  OUTLINED_FUNCTION_31();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = type metadata accessor for NeuralNetwork();
  v23 = OUTLINED_FUNCTION_13(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2577442B0;
  *(v33 + 32) = v6;
  *(v33 + 40) = v4;
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(v40, v28);
  sub_2574A172C(v41, v21, &qword_27F87A320, &qword_257745D18);

  NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v34 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v9 + v34) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(MEMORY[0x277D84F90]);
  sub_2574897E0(v15);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_25752846C();
  sub_2574A4644(v0, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.branch(ifBranch:elseBranch:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_0();
  v9 = type metadata accessor for NeuralNetwork();
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(a1, v15);
  sub_2574A172C(a2, v2, &qword_27F87A320, &qword_257745D18);
  NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.BranchParameters.init(ifBranch:elseBranch:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_31_0();
  v12 = type metadata accessor for Proto_NeuralNetwork(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for NeuralNetwork();
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = type metadata accessor for Proto_BranchLayerParams(0);
  v27 = *(v26 + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v12);
  v31 = *(v26 + 24);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v12);
  OUTLINED_FUNCTION_3_5();
  sub_2574A4744(v4, v25);
  sub_2574A469C(v25, v18);
  sub_2574695E4(v6 + v27, &qword_27F87A328, &unk_257752BB0);
  sub_2574A469C(v18, v6 + v27);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v12);
  sub_2574A172C(v2, v0, &qword_27F87A320, &qword_257745D18);
  NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v0);
  sub_2574695E4(v2, &qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_5_7();
  sub_2574A4644(v4, v38);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BranchParameters.ifBranch.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_6();
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for Proto_BranchLayerParams(0);
  sub_2574A172C(v1 + *(v15 + 20), v2, &qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_155(v2, 1, v8);
  if (v16)
  {
    OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
    v17 = v14 + *(v8 + 32);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v18 = *(v8 + 36);
    type metadata accessor for Proto_NetworkUpdateParameters(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_155(v2, 1, v8);
    if (!v16)
    {
      sub_2574695E4(v2, &qword_27F87A328, &unk_257752BB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v2, v14);
  }

  OUTLINED_FUNCTION_0_9();
  return sub_2574A469C(v14, a1);
}

uint64_t sub_2574A3840(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A4744(a1, v5);
  return NeuralNetwork.Layer.BranchParameters.ifBranch.setter(v5);
}

uint64_t NeuralNetwork.Layer.BranchParameters.ifBranch.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_NeuralNetwork(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_2574A469C(a1, v8 - v7);
  v10 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  sub_2574695E4(v1 + v10, &qword_27F87A328, &unk_257752BB0);
  sub_2574A469C(v9, v1 + v10);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
}

void NeuralNetwork.Layer.BranchParameters.ifBranch.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_NeuralNetwork(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NeuralNetwork();
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  *(v3 + 14) = v15;
  sub_2574A172C(v0 + v15, v6, &qword_27F87A328, &unk_257752BB0);
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
    v17 = &v10[*(v7 + 32)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v18 = *(v7 + 36);
    type metadata accessor for Proto_NetworkUpdateParameters(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v16)
    {
      sub_2574695E4(v6, &qword_27F87A328, &unk_257752BB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v6, v10);
  }

  OUTLINED_FUNCTION_0_9();
  sub_2574A469C(v10, v14);
  OUTLINED_FUNCTION_35();
}

void sub_2574A3B94()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*v0 + 14);
  v2 = (*v0)[5];
  v3 = (*v0)[6];
  v4 = (*v0)[3];
  v5 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    sub_2574A4744((*v0)[6], v2);
    OUTLINED_FUNCTION_6_7();
    sub_2574A469C(v2, v4);
    sub_2574695E4(v8 + v1, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_5_7();
    sub_2574A4644(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
    sub_2574A469C(v3, v4);
    sub_2574695E4(v8 + v1, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v17);
}

void NeuralNetwork.Layer.BranchParameters.elseBranch.getter()
{
  OUTLINED_FUNCTION_31();
  v30 = v2;
  v3 = type metadata accessor for Proto_NeuralNetwork(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
  sub_2574A172C(v0 + v16, v15, &qword_27F87A328, &unk_257752BB0);
  v17 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v3);
  v19 = v30;
  sub_2574695E4(v15, &qword_27F87A328, &unk_257752BB0);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v0 + v16, v13, &qword_27F87A328, &unk_257752BB0);
    OUTLINED_FUNCTION_155(v13, 1, v3);
    if (v20)
    {
      v21 = MEMORY[0x277D84F90];
      *v1 = MEMORY[0x277D84F90];
      *(v1 + 8) = v21;
      *(v1 + 16) = 0;
      *(v1 + 24) = 1;
      *(v1 + 32) = 0;
      *(v1 + 40) = 1;
      v22 = v1 + *(v3 + 32);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v23 = *(v3 + 36);
      type metadata accessor for Proto_NetworkUpdateParameters(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      OUTLINED_FUNCTION_155(v13, 1, v3);
      if (!v20)
      {
        sub_2574695E4(v13, &qword_27F87A328, &unk_257752BB0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      sub_2574A469C(v13, v1);
    }

    OUTLINED_FUNCTION_0_9();
    sub_2574A469C(v1, v19);
    v17 = 0;
  }

  v28 = type metadata accessor for NeuralNetwork();
  __swift_storeEnumTagSinglePayload(v19, v17, 1, v28);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A3F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_2574A172C(a1, &v7 - v4, &qword_27F87A320, &qword_257745D18);
  return NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v5);
}

uint64_t NeuralNetwork.Layer.BranchParameters.elseBranch.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_NeuralNetwork(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for NeuralNetwork();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_155(a1, 1, v15);
  if (v16)
  {
    sub_2574695E4(a1, &qword_27F87A320, &qword_257745D18);
    v17 = type metadata accessor for Proto_BranchLayerParams(0);
    sub_2574695E4(v1 + *(v17 + 24), &qword_27F87A328, &unk_257752BB0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_4();
    sub_2574A469C(a1, v2);
    sub_2574A469C(v2, v10);
    v21 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
    sub_2574695E4(v1 + v21, &qword_27F87A328, &unk_257752BB0);
    sub_2574A469C(v10, v1 + v21);
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  }
}

void (*NeuralNetwork.Layer.BranchParameters.elseBranch.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for Proto_NeuralNetwork(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for NeuralNetwork();
  v3[3] = v6;
  OUTLINED_FUNCTION_13(v6);
  v3[4] = __swift_coroFrameAllocStub(*(v7 + 64));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[5] = __swift_coroFrameAllocStub(v10);
  v3[6] = __swift_coroFrameAllocStub(v10);
  NeuralNetwork.Layer.BranchParameters.elseBranch.getter();
  return sub_2574A4244;
}

void sub_2574A4244(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  if (a2)
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[2];
    v7 = *v2;
    sub_2574A172C((*a1)[6], v4, &qword_27F87A320, &qword_257745D18);
    NeuralNetwork.Layer.BranchParameters.elseBranch.setter(v4);
    sub_2574695E4(v3, &qword_27F87A320, &qword_257745D18);
  }

  else
  {
    OUTLINED_FUNCTION_155((*a1)[6], 1, v2[3]);
    if (v8)
    {
      v9 = *v2;
      sub_2574695E4(v3, &qword_27F87A320, &qword_257745D18);
      v13 = v9 + *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
      sub_2574695E4(v13, &qword_27F87A328, &unk_257752BB0);
      v14 = 1;
    }

    else
    {
      v10 = v2[4];
      v11 = v2[2];
      v12 = *v2;
      OUTLINED_FUNCTION_7_4();
      sub_2574A469C(v3, v10);
      sub_2574A469C(v10, v11);
      v13 = v12 + *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
      sub_2574695E4(v13, &qword_27F87A328, &unk_257752BB0);
      sub_2574A469C(v11, v13);
      v14 = 0;
    }

    v4 = v2[5];
    v3 = v2[6];
    v5 = v2[4];
    v6 = v2[2];
    __swift_storeEnumTagSinglePayload(v13, v14, 1, v2[1]);
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

void NeuralNetwork.Layer.BranchParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_6();
  v11 = type metadata accessor for NeuralNetwork.Layer.BranchParameters();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_2574A4744(v0, v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257743FF0;
  *(v17 + 32) = 0x68636E6172426669;
  *(v17 + 40) = 0xE800000000000000;
  *(v17 + 72) = type metadata accessor for NeuralNetwork();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 48));
  NeuralNetwork.Layer.BranchParameters.ifBranch.getter(boxed_opaque_existential_0);
  *(v17 + 80) = 0x6E61724265736C65;
  *(v17 + 88) = 0xEA00000000006863;
  *(v17 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A320, &qword_257745D18);
  __swift_allocate_boxed_opaque_existential_0((v17 + 96));
  NeuralNetwork.Layer.BranchParameters.elseBranch.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574A4644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574A469C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BranchParameters()
{
  result = qword_27F87A338;
  if (!qword_27F87A338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2574A4744(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2574A47A4()
{
  result = qword_27F87A330;
  if (!qword_27F87A330)
  {
    type metadata accessor for Proto_BranchLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A330);
  }

  return result;
}

uint64_t sub_2574A4824()
{
  result = type metadata accessor for Proto_BranchLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_11_5(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
}

uint64_t type metadata accessor for Proto_ArrayFeatureExtractor()
{
  result = qword_281537920;
  if (!qword_281537920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2574A49A0()
{
  sub_2574A4A24();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A4A24()
{
  if (!qword_27F87A348)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A348);
    }
  }
}

uint64_t sub_2574A4A74@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_ArrayFeatureExtractor() + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A4AB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7E50);
  __swift_project_value_buffer(v0, qword_27F8E7E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "extractIndex";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2574A4C20()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743354();
    }
  }

  return result;
}

uint64_t sub_2574A4C84()
{
  if (!*(*v0 + 16) || (result = sub_2577434A4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_ArrayFeatureExtractor() + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A4D1C(void *a1, void *a2)
{
  if ((sub_257487374(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_ArrayFeatureExtractor() + 20);
  sub_2577431B4();
  sub_2574A53D0(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_2574A4DC8()
{
  sub_257743A14();
  type metadata accessor for Proto_ArrayFeatureExtractor();
  sub_2574A53D0(&qword_27F87A360, type metadata accessor for Proto_ArrayFeatureExtractor);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574A4E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574A4EE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2574A4F58(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2574A4FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A53D0(&qword_27F87A370, type metadata accessor for Proto_ArrayFeatureExtractor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A5028@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878D40 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574A50D0(uint64_t a1)
{
  v2 = sub_2574A53D0(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A5140()
{
  sub_2574A53D0(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor);

  return sub_257743424();
}

uint64_t sub_2574A51BC()
{
  sub_257743A14();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2574A53D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2574A5460()
{
  sub_2574A54E4();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A54E4()
{
  if (!qword_281537500)
  {
    type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537500);
    }
  }
}

uint64_t sub_2574A555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t sub_2574A55D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_9Tm);
}

uint64_t sub_2574A563C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2574A57B0()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Proto_GLMRegressor.PostEvaluationTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574A5860(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574A588C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_2574A58CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A420, &qword_257746428);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_2574A7868(a1, &v28 - v16);
  sub_2574A7868(a2, &v17[v18]);
  sub_2574A77BC();
  sub_2574A77BC();
  v19 = *v12;
  v20 = *v10;
  if (v12[8])
  {
    v19 = *v12 != 0;
  }

  if (v10[8] == 1)
  {
    if (v20)
    {
      if (v19 != 1)
      {
LABEL_6:
        sub_2574A7764(v10, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
        v21 = OUTLINED_FUNCTION_205();
        sub_2574A7764(v21, v22);
        return 0;
      }
    }

    else if (v19)
    {
      goto LABEL_6;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_6;
  }

  v23 = *(v4 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_10();
  sub_2574A756C(v24, v25);
  v26 = sub_257743644();
  sub_2574A7764(v10, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  sub_2574A7764(v12, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  return (v26 & 1) != 0;
}

BOOL sub_2574A5B1C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2574A5B30(uint64_t a1@<X8>)
{
  sub_2574A5B08();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2574A5B74(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2574A5B08();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_2574A5BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A7814();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574A5C30()
{
  result = qword_27F87A390;
  if (!qword_27F87A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A390);
  }

  return result;
}

unint64_t sub_2574A5C88()
{
  result = qword_27F87A398;
  if (!qword_27F87A398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87A3A0, qword_257746060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A398);
  }

  return result;
}

unint64_t sub_2574A5CF0()
{
  result = qword_27F87A3A8;
  if (!qword_27F87A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A3A8);
  }

  return result;
}

unint64_t sub_2574A5D48()
{
  result = qword_27F87A3B0;
  if (!qword_27F87A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A3B0);
  }

  return result;
}

uint64_t sub_2574A5D9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A5E08()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 20)
    {
      v5 = OUTLINED_FUNCTION_205();
      sub_2574A5E68(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_2574A5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A400, &qword_257746408);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_257487308();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A388, &unk_257745F50);
  }

  else
  {
    sub_2574A77BC();
    sub_2574A77BC();
    sub_2574695E4(v22, &qword_27F87A400, &qword_257746408);
    sub_2574A77BC();
    sub_2574A77BC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  v24 = v31;
  sub_2577433D4();
  if (v24)
  {
    v25 = v22;
    return sub_2574695E4(v25, &qword_27F87A400, &qword_257746408);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87A400, &qword_257746408);
    v25 = v20;
    return sub_2574695E4(v25, &qword_27F87A400, &qword_257746408);
  }

  sub_2574A77BC();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v22, &qword_27F87A400, &qword_257746408);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87A388, &unk_257745F50);
  sub_2574A77BC();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t sub_2574A630C()
{
  OUTLINED_FUNCTION_5_8();
  result = sub_2574A6388(v0, v4, v3, v2);
  if (!v1)
  {
    v6 = v0 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0) + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A6388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A388, &unk_257745F50);
  }

  sub_2574A77BC();
  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
  sub_257743574();
  return sub_2574A7764(v11, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);
}

uint64_t sub_2574A6564()
{
  OUTLINED_FUNCTION_267();
  v0 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A418, &qword_257746420);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_65(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_65(&v14[v15]);
    if (v16)
    {
      sub_2574695E4(v14, &qword_27F87A388, &unk_257745F50);
LABEL_12:
      v19 = *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0) + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_10();
      sub_2574A756C(v20, v21);
      v17 = OUTLINED_FUNCTION_4_2();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_257487308();
  OUTLINED_FUNCTION_65(&v14[v15]);
  if (v16)
  {
    sub_2574A7764(v9, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
LABEL_9:
    sub_2574695E4(v14, &qword_27F87A418, &qword_257746420);
    goto LABEL_10;
  }

  sub_2574A77BC();
  v18 = sub_2574A58CC(v9, v5);
  sub_2574A7764(v5, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
  sub_2574A7764(v9, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType);
  sub_2574695E4(v14, &qword_27F87A388, &unk_257745F50);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2574A685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A756C(&qword_27F87A3F8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A68FC(uint64_t a1)
{
  v2 = sub_2574A756C(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A69C4()
{
  sub_2574A756C(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);

  return sub_257743424();
}

uint64_t sub_2574A6A44()
{
  result = MEMORY[0x259C64E90](0x646E756F532ELL, 0xE600000000000000);
  qword_27F8E7E80 = 0xD000000000000024;
  *algn_27F8E7E88 = 0x800000025777A1E0;
  return result;
}

uint64_t sub_2574A6AC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2577435B4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_257743584();
  OUTLINED_FUNCTION_4(v16);
  (*(v17 + 104))(v14, v15);
  return sub_257743594();
}

uint64_t sub_2574A6C34()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574A6C98();
    }
  }

  return result;
}

uint64_t sub_2574A6D00()
{
  OUTLINED_FUNCTION_5_8();
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_2574A7814(), result = sub_2577434C4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574A6DB8()
{
  OUTLINED_FUNCTION_267();
  v2 = *v0;
  v3 = *v1;
  if (*(v0 + 8))
  {
    v2 = *v0 != 0;
  }

  if (*(v1 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_10();
  sub_2574A756C(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574A6E70(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574A756C(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574A6EFC()
{
  if (qword_27F878D50 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E7E80;

  return v0;
}

uint64_t sub_2574A6F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2577431B4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_2574A6FD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_2574A706C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574A756C(&qword_27F87A408, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A710C(uint64_t a1)
{
  v2 = sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A71D4()
{
  sub_2574A756C(&qword_27F87A3B8, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound);

  return sub_257743424();
}

uint64_t sub_2574A7254()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EA8);
  __swift_project_value_buffer(v0, qword_27F8E7EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SOUND_VERSION_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SOUND_VERSION_1";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A7440@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2577435B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2574A756C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574A7764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574A77BC()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

unint64_t sub_2574A7814()
{
  result = qword_27F87A410;
  if (!qword_27F87A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A410);
  }

  return result;
}

uint64_t sub_2574A7868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.OneOf_AudioFeaturePrintType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574A7950()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2574A7BA8(319, &qword_281537738, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574A7A7C()
{
  sub_2574A7BA8(319, &qword_27F87A438, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_2574A7BA8(319, &qword_281537738, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574A7BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2574A7C54()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2574A7CF8()
{
  sub_2574A7BA8(319, &qword_27F87A450, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574A7DBC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A7DF4@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  v3 = a1 + *(v2 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v5 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2574A7E50@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574A7E94@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  v2 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  v3 = a1 + *(v2 + 56);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v2 + 60);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v5 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2574A7F20()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EC0);
  __swift_project_value_buffer(v0, qword_27F8E7EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257746430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "numberOfFeatures";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bias";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "regressionInputFeatureName";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "optimismInputFeatureName";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "samplingScaleInputFeatureName";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "samplingTruncationInputFeatureName";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "meanOutputFeatureName";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "varianceOutputFeatureName";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 22;
  *v26 = "pessimisticProbabilityOutputFeatureName";
  *(v26 + 1) = 39;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 23;
  *v28 = "sampledProbabilityOutputFeatureName";
  *(v28 + 1) = 35;
  v28[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A8320()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433A4();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2574A844C();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574AA310(v3, v4, v5, v6, v7, &qword_27F87A458, v8);
        break;
      case 10:
      case 11:
      case 12:
      case 13:
      case 20:
      case 21:
      case 22:
      case 23:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574A844C()
{
  v0 = *(type metadata accessor for Proto_BayesianProbitRegressor(0) + 60);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);
  return sub_2577433D4();
}

uint64_t sub_2574A8500()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_11_6();
    result = sub_2574A86E4(v5);
    if (!v0)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0);
        sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight);
        OUTLINED_FUNCTION_9_5();
        sub_257743564();
      }

      v6 = v3[2];
      v7 = v3[3];
      OUTLINED_FUNCTION_1_6();
      if (v8)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v9 = v3[4];
      v10 = v3[5];
      OUTLINED_FUNCTION_1_6();
      if (v11)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v12 = v3[6];
      v13 = v3[7];
      OUTLINED_FUNCTION_1_6();
      if (v14)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v15 = v3[8];
      v16 = v3[9];
      OUTLINED_FUNCTION_1_6();
      if (v17)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v18 = v3[10];
      v19 = v3[11];
      OUTLINED_FUNCTION_1_6();
      if (v20)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v21 = v3[12];
      v22 = v3[13];
      OUTLINED_FUNCTION_1_6();
      if (v23)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v24 = v3[14];
      v25 = v3[15];
      OUTLINED_FUNCTION_1_6();
      if (v26)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v27 = v3[16];
      v28 = v3[17];
      OUTLINED_FUNCTION_1_6();
      if (v29)
      {
        OUTLINED_FUNCTION_4_3();
      }

      v30 = *(type metadata accessor for Proto_BayesianProbitRegressor(0) + 56);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A86E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  sub_2574AADEC(a1 + *(v10 + 60), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F879D98, &unk_257746440);
  }

  sub_2574AAE5C(v5, v9);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);
  sub_257743574();
  return sub_2574AAEC0(v9);
}

uint64_t _s20MLModelSpecification36BayesianProbitRegressorConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = (&v46 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_59;
  }

  v20 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  v21 = *(v20 + 60);
  v22 = *(v14 + 48);
  sub_2574AADEC(a1 + v21, v19);
  sub_2574AADEC(a2 + v21, &v19[v22]);
  OUTLINED_FUNCTION_42_0(v19);
  if (!v38)
  {
    sub_2574AADEC(v19, v13);
    OUTLINED_FUNCTION_42_0(&v19[v22]);
    if (!v38)
    {
      sub_2574AAE5C(&v19[v22], v9);
      if (*v13 == *v9 && v13[1] == v9[1])
      {
        v41 = *(v4 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_11();
        sub_2574AA9B4(v42, v43);
        v44 = sub_257743644();
        sub_2574AAEC0(v9);
        if (v44)
        {
          sub_2574AAEC0(v13);
          goto LABEL_6;
        }
      }

      else
      {
        sub_2574AAEC0(v9);
      }

      sub_2574AAEC0(v13);
      v39 = &qword_27F879D98;
      v40 = &unk_257746440;
      goto LABEL_58;
    }

    sub_2574AAEC0(v13);
LABEL_51:
    v39 = &qword_27F879DA0;
    v40 = &qword_2577446C0;
LABEL_58:
    sub_2574695E4(v19, v39, v40);
LABEL_59:
    v37 = 0;
    return v37 & 1;
  }

  OUTLINED_FUNCTION_42_0(&v19[v22]);
  if (!v38)
  {
    goto LABEL_51;
  }

LABEL_6:
  sub_2574695E4(v19, &qword_27F879D98, &unk_257746440);
  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  sub_25747BC64();
  if ((v25 & 1) == 0)
  {
    goto LABEL_59;
  }

  v26 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v26 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v27 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v27 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v28 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v28 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v29 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v29 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v30 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v30 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v31 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v31 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v32 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v32 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v33 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v33 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_59;
  }

  v34 = *(v20 + 56);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v35, v36);
  v37 = OUTLINED_FUNCTION_19_3();
  return v37 & 1;
}

uint64_t sub_2574A8C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574A8CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2574A8D54(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_2574A8DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4D8, type metadata accessor for Proto_BayesianProbitRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A8E48(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A8F10()
{
  sub_2574AA9B4(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor);

  return sub_257743424();
}

uint64_t sub_2574A8FB8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7EE8);
  __swift_project_value_buffer(v0, qword_27F8E7EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mean";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precision";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A9180()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }
  }

  return result;
}

uint64_t sub_2574A91DC()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v1))
    {
      v4 = *(type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A926C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v3, v4);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t (*sub_2574A9330(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2574A9384(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4F0, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A9424(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A94EC()
{
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);

  return sub_257743424();
}

uint64_t sub_2574A956C()
{
  result = MEMORY[0x259C64E90](0xD000000000000013, 0x800000025777A260);
  qword_27F8E7F00 = 0xD00000000000001DLL;
  *algn_27F8E7F08 = 0x800000025777A240;
  return result;
}

uint64_t sub_2574A95E0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F10);
  __swift_project_value_buffer(v0, qword_27F8E7F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureValue";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "featureWeight";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574A97A8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2574A980C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433A4();
    }
  }

  return result;
}

uint64_t sub_2574A980C()
{
  v0 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0) + 24);
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);
  return sub_2577433D4();
}

uint64_t sub_2574A98C0()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_11_6();
    result = sub_2574A9944(v4);
    if (!v0)
    {
      v5 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0) + 20);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574A9944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  sub_2574AADEC(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F879D98, &unk_257746440);
  }

  sub_2574AAE5C(v5, v9);
  sub_2574AA9B4(&qword_27F87A478, type metadata accessor for Proto_BayesianProbitRegressor.Gaussian);
  sub_257743574();
  return sub_2574AAEC0(v9);
}

uint64_t _s20MLModelSpecification36BayesianProbitRegressorConfigurationV18FeatureValueWeightV2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = (&v35 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v20 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0);
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  sub_2574AADEC(a1 + v21, v19);
  sub_2574AADEC(a2 + v21, &v19[v22]);
  OUTLINED_FUNCTION_42_0(v19);
  if (v27)
  {
    OUTLINED_FUNCTION_42_0(&v19[v22]);
    if (v27)
    {
      sub_2574695E4(v19, &qword_27F879D98, &unk_257746440);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_2574AADEC(v19, v13);
  OUTLINED_FUNCTION_42_0(&v19[v22]);
  if (v27)
  {
    sub_2574AAEC0(v13);
LABEL_11:
    v28 = &qword_27F879DA0;
    v29 = &qword_2577446C0;
LABEL_17:
    sub_2574695E4(v19, v28, v29);
LABEL_18:
    v26 = 0;
    return v26 & 1;
  }

  sub_2574AAE5C(&v19[v22], v9);
  if (*v13 != *v9 || v13[1] != v9[1])
  {
    sub_2574AAEC0(v9);
    sub_2574AAEC0(v13);
    v28 = &qword_27F879D98;
    v29 = &unk_257746440;
    goto LABEL_17;
  }

  v30 = *(v4 + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v31, v32);
  v33 = sub_257743644();
  sub_2574AAEC0(v9);
  sub_2574AAEC0(v13);
  sub_2574695E4(v19, &qword_27F879D98, &unk_257746440);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  v23 = *(v20 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v24, v25);
  v26 = OUTLINED_FUNCTION_19_3();
  return v26 & 1;
}

uint64_t sub_2574A9E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4E8, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574A9EB0(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574A9F78()
{
  sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight);

  return sub_257743424();
}

uint64_t sub_2574AA028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000025777A240;
  return result;
}

uint64_t sub_2574AA094()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F38);
  __swift_project_value_buffer(v0, qword_27F8E7F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weights";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AA25C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574AA310(v3, v4, v5, v6, v7, &qword_27F87A468, v8);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433A4();
    }
  }

  return result;
}

uint64_t sub_2574AA310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_2574AA9B4(a6, a7);
  return sub_2577433C4();
}

uint64_t sub_2574AA3AC()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743544(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(0), sub_2574AA9B4(&qword_27F87A468, type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), !v1))
    {
      v4 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574AA490(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_25747B56C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_11();
  sub_2574AA9B4(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574AA528(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574AA9B4(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AA5DC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  v8 = *a5;

  return v7;
}

uint64_t sub_2574AA634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2577431B4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_2574AA6A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_2574AA73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AA9B4(&qword_27F87A4E0, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AA7DC(uint64_t a1)
{
  v2 = sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AA8A4()
{
  sub_2574AA9B4(&qword_27F87A458, type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight);

  return sub_257743424();
}

uint64_t sub_2574AA9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574AADEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574AAE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574AAEC0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_257743534();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_257743234();
}

void sub_2574AB0BC()
{
  sub_2574AB158();
  if (v0 <= 0x3F)
  {
    sub_2574AB1D0();
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574AB158()
{
  if (!qword_2815379F8)
  {
    type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2815379F8);
    }
  }
}

void sub_2574AB1D0()
{
  if (!qword_27F87A500)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A500);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2574AB240(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2574AB280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2574AB2E0()
{
  result = type metadata accessor for Proto_StringToInt64Map(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64ToStringMap(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2574AB354(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for Proto_Int64ToStringMap(0);
  v4 = OUTLINED_FUNCTION_4(v59);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Proto_StringToInt64Map(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v58 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A550, &qword_257746CF0);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v58 - v31;
  v33 = *(v30 + 56);
  sub_2574AD634(a1, &v58 - v31);
  sub_2574AD634(a2, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574AD634(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD57C(&v32[v33], v9, type metadata accessor for Proto_Int64ToStringMap);
      v34 = *v23;
      v35 = *v9;
      sub_257476B20();
      if (v36)
      {
        v37 = *(v59 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_6();
        sub_2574AD44C(v38, v39);
        v40 = sub_257743644();
        OUTLINED_FUNCTION_1_7();
        sub_2574AD524(v9, v41);
        if (v40)
        {
          OUTLINED_FUNCTION_1_7();
          v43 = v23;
LABEL_13:
          sub_2574AD524(v43, v42);
          OUTLINED_FUNCTION_2_8();
          sub_2574AD524(v32, v51);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_7();
        sub_2574AD524(v9, v53);
      }

      OUTLINED_FUNCTION_1_7();
      v55 = v23;
LABEL_18:
      sub_2574AD524(v55, v54);
      OUTLINED_FUNCTION_2_8();
      sub_2574AD524(v32, v57);
      return 0;
    }

    OUTLINED_FUNCTION_1_7();
    v45 = v23;
  }

  else
  {
    sub_2574AD634(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574AD57C(&v32[v33], v16, type metadata accessor for Proto_StringToInt64Map);
      if (sub_257487370(*v25, *v16))
      {
        v46 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_6();
        sub_2574AD44C(v47, v48);
        v49 = sub_257743644();
        OUTLINED_FUNCTION_0_12();
        sub_2574AD524(v16, v50);
        if (v49)
        {
          OUTLINED_FUNCTION_0_12();
          v43 = v25;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_12();
        sub_2574AD524(v16, v56);
      }

      OUTLINED_FUNCTION_0_12();
      v55 = v25;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_12();
    v45 = v25;
  }

  sub_2574AD524(v45, v44);
  sub_2574695E4(v32, &qword_27F87A550, &qword_257746CF0);
  return 0;
}

uint64_t sub_2574AB6EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_257743994();
  }
}

uint64_t sub_2574AB750@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Proto_CategoricalMapping(0);
  v4 = a1 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v5 = a1 + *(v3 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AB7B4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F50);
  __swift_project_value_buffer(v0, qword_27F8E7F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "stringToInt64Map";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "int64ToStringMap";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "strValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "int64Value";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AB9F8()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        OUTLINED_FUNCTION_11_6();
        sub_2574AC580();
        break;
      case 2:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_2574ABFAC(v7, v8, v9, v10);
        break;
      case 101:
        OUTLINED_FUNCTION_11_6();
        sub_2574AC4A4(v11, v12);
        break;
      case 1:
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_11_6();
        sub_2574ABAB4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_2574ABAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_StringToInt64Map(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A540, &qword_257746CE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87A4F8, &unk_257746A50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    sub_2574AD57C(v14, v21, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    sub_2574AD57C(v21, v19, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD524(v19, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    }

    else
    {
      sub_2574695E4(v28, &qword_27F87A540, &qword_257746CE0);
      sub_2574AD57C(v19, v10, type metadata accessor for Proto_StringToInt64Map);
      sub_2574AD57C(v10, v28, type metadata accessor for Proto_StringToInt64Map);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }
  }

  sub_2574AD44C(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A540, &qword_257746CE0);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A540, &qword_257746CE0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A540, &qword_257746CE0);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A540, &qword_257746CE0);
  }

  v32 = v39;
  sub_2574AD57C(v26, v39, type metadata accessor for Proto_StringToInt64Map);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A540, &qword_257746CE0);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD57C(v32, v34, type metadata accessor for Proto_StringToInt64Map);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574ABFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_Int64ToStringMap(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A548, &qword_257746CE8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87A4F8, &unk_257746A50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    sub_2574AD57C(v14, v21, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    sub_2574AD57C(v21, v19, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v28, &qword_27F87A548, &qword_257746CE8);
      sub_2574AD57C(v19, v10, type metadata accessor for Proto_Int64ToStringMap);
      sub_2574AD57C(v10, v28, type metadata accessor for Proto_Int64ToStringMap);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574AD524(v19, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
    }
  }

  sub_2574AD44C(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A548, &qword_257746CE8);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A548, &qword_257746CE8);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A548, &qword_257746CE8);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A548, &qword_257746CE8);
  }

  v32 = v39;
  sub_2574AD57C(v26, v39, type metadata accessor for Proto_Int64ToStringMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A548, &qword_257746CE8);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD57C(v32, v34, type metadata accessor for Proto_Int64ToStringMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574AC4A4(uint64_t a1, uint64_t a2)
{
  result = sub_257743384();
  if (v2)
  {
  }

  if (v9)
  {
    v5 = a2 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
    if (*(v5 + 16) == 255)
    {
      v6 = -1;
    }

    else
    {
      sub_257743244();
      v6 = *(v5 + 16);
    }

    v7 = *v5;
    v8 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = v9;
    *(v5 + 16) = 0;
    return sub_25746706C(v7, v8, v6);
  }

  return result;
}

uint64_t sub_2574AC64C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  sub_2574AD5D8(v0, &v23 - v6, &qword_27F87A4F8, &unk_257746A50);
  v8 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_5_10();
    sub_2574AC9C8(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_10();
    sub_2574AC7B4(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_2_8();
  result = sub_2574AD524(v7, v17);
  if (!v1)
  {
LABEL_6:
    v19 = type metadata accessor for Proto_CategoricalMapping(0);
    if (*(v0 + *(v19 + 20) + 16) == 255 || ((v20 = OUTLINED_FUNCTION_5_10(), (v21 & 1) == 0) ? (result = sub_2574ACBDC(v20)) : (result = sub_2574ACC58(v20)), !v1))
    {
      v22 = v0 + *(v19 + 24);
      return sub_257743194();
    }
  }

  return result;
}

uint64_t sub_2574AC7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_StringToInt64Map(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87A4F8, &unk_257746A50);
  v13 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574AD57C(v8, v12, type metadata accessor for Proto_StringToInt64Map);
      sub_2574AD44C(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map);
      sub_257743574();
      return sub_2574AD524(v12, type metadata accessor for Proto_StringToInt64Map);
    }

    result = sub_2574AD524(v8, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574AC9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Int64ToStringMap(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87A4F8, &unk_257746A50);
  v13 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87A4F8, &unk_257746A50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574AD57C(v8, v12, type metadata accessor for Proto_Int64ToStringMap);
      sub_2574AD44C(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap);
      sub_257743574();
      return sub_2574AD524(v12, type metadata accessor for Proto_Int64ToStringMap);
    }

    result = sub_2574AD524(v8, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574ACBDC(uint64_t a1)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v3 = (a1 + *(result + 20));
  v4 = *(v3 + 16);
  if (v4 == 255 || (v4 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    return sub_257743534();
  }

  return result;
}

uint64_t sub_2574ACC58(uint64_t a1)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v3 = (a1 + *(result + 20));
  v4 = *(v3 + 16);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    return sub_257743504();
  }

  return result;
}

uint64_t _s20MLModelSpecification31CategoricalMappingConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A558, &qword_257746CF8);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = *(v21 + 56);
  sub_2574AD5D8(a1, &v42 - v22, &qword_27F87A4F8, &unk_257746A50);
  sub_2574AD5D8(a2, &v23[v24], &qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_65(v23);
  if (v25)
  {
    OUTLINED_FUNCTION_65(&v23[v24]);
    if (v25)
    {
      sub_2574695E4(v23, &qword_27F87A4F8, &unk_257746A50);
      goto LABEL_13;
    }

LABEL_9:
    sub_2574695E4(v23, &qword_27F87A558, &qword_257746CF8);
    goto LABEL_10;
  }

  sub_2574AD5D8(v23, v16, &qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_65(&v23[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_2_8();
    sub_2574AD524(v16, v26);
    goto LABEL_9;
  }

  sub_2574AD57C(&v23[v24], v10, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  v29 = sub_2574AB354(v16, v10);
  sub_2574AD524(v10, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  sub_2574AD524(v16, type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType);
  sub_2574695E4(v23, &qword_27F87A4F8, &unk_257746A50);
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v30 = type metadata accessor for Proto_CategoricalMapping(0);
  v31 = *(v30 + 20);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 16);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 16);
  if (v33 == 255)
  {
    if (v35 == 255)
    {
LABEL_27:
      v39 = *(v30 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_3_6();
      sub_2574AD44C(v40, v41);
      v27 = sub_257743644();
      return v27 & 1;
    }

LABEL_10:
    v27 = 0;
    return v27 & 1;
  }

  if (v35 == 255)
  {
    goto LABEL_10;
  }

  v36 = *v32;
  v37 = *v34;
  if ((v33 & 1) == 0)
  {
    if ((v35 & 1) == 0)
    {
      v38 = v36 == v37 && v32[1] == v34[1];
      if (v38 || (sub_257743994() & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_10;
  }

  v27 = 0;
  if ((v35 & 1) != 0 && v36 == v37)
  {
    goto LABEL_27;
  }

  return v27 & 1;
}

uint64_t sub_2574ACFE8()
{
  sub_257743A14();
  type metadata accessor for Proto_CategoricalMapping(0);
  sub_2574AD44C(&qword_27F87A518, type metadata accessor for Proto_CategoricalMapping);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AD090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574AD104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574AD1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AD44C(&qword_27F87A528, type metadata accessor for Proto_CategoricalMapping);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AD224@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7F50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574AD2CC(uint64_t a1)
{
  v2 = sub_2574AD44C(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AD33C()
{
  sub_2574AD44C(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping);

  return sub_257743424();
}

uint64_t sub_2574AD44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574AD524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574AD57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2574AD5D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_2574AD634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Proto_ClassConfidenceThresholding()
{
  result = qword_2815375D0;
  if (!qword_2815375D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2574AD784()
{
  sub_2574AD808();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AD808()
{
  if (!qword_27F87A560)
  {
    type metadata accessor for Proto_PrecisionRecallCurve(255);
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A560);
    }
  }
}

uint64_t sub_2574AD860@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_ClassConfidenceThresholding() + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AD8A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F68);
  __swift_project_value_buffer(v0, qword_27F8E7F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 100;
  *v5 = "precisionRecallCurves";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2574ADA0C()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      sub_2574ADA74();
    }
  }

  return result;
}

uint64_t sub_2574ADA74()
{
  type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574AE0B8(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve);
  return sub_2577433C4();
}

uint64_t sub_2574ADB14()
{
  if (!*(*v0 + 16) || (type metadata accessor for Proto_PrecisionRecallCurve(0), sub_2574AE0B8(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve), result = sub_257743564(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_ClassConfidenceThresholding() + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574ADCAC()
{
  sub_257743A14();
  type metadata accessor for Proto_ClassConfidenceThresholding();
  sub_2574AE0B8(&qword_27F87A570, type metadata accessor for Proto_ClassConfidenceThresholding);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574ADD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AE0B8(&qword_27F87A588, type metadata accessor for Proto_ClassConfidenceThresholding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574ADE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E7F68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574ADEA8(uint64_t a1)
{
  v2 = sub_2574AE0B8(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574ADF18()
{
  sub_2574AE0B8(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding);

  return sub_257743424();
}

uint64_t sub_2574AE0B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2574AE148()
{
  sub_2574AE1CC();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AE1CC()
{
  if (!qword_27F87A5A8)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A5A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2574AE244(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2574AE284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_2574AE320()
{
  sub_2574AE3B4();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574AE3B4()
{
  if (!qword_27F87A5B0)
  {
    type metadata accessor for Proto_CustomModel.CustomModelParamValue(255);
    v0 = sub_2577435E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A5B0);
    }
  }
}

uint64_t sub_2574AE41C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_22;
      }

      if (a1 == a4 && a2 == a5)
      {
        v6 = 1;
        return v6 & 1;
      }

      return sub_257743994();
    case 2:
      v6 = a6 == 2 && a1 == a4;
      return v6 & 1;
    case 3:
      v6 = a6 == 3 && a1 == a4;
      return v6 & 1;
    case 4:
      v7 = a6 == 4;
      v6 = a4 ^ a1 ^ 1;
      goto LABEL_4;
    case 5:
      if (a6 == 5)
      {
        JUMPOUT(0x259C648D0);
      }

LABEL_22:
      v6 = 0;
      return v6 & 1;
    default:
      v6 = *&a1 == *&a4;
      v7 = a6 == 0;
LABEL_4:
      if (!v7)
      {
        v6 = 0;
      }

      return v6 & 1;
  }
}

uint64_t sub_2574AE510@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for Proto_CustomModel.CustomModelParamValue(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AE550@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  a1[2] = sub_2577435D4();
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for Proto_CustomModel(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574AE5BC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7F80);
  __swift_project_value_buffer(v0, qword_27F8E7F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 10;
  *v6 = "className";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 30;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 40;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AE7C8()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 40:
        goto LABEL_9;
      case 30:
        OUTLINED_FUNCTION_6_8();
        sub_2574AE850();
        break;
      case 10:
LABEL_9:
        sub_257743394();
        break;
    }
  }
}

uint64_t sub_2574AE850()
{
  sub_257743184();
  type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue);
  sub_2574AFE8C(&qword_27F87A5C8, type metadata accessor for Proto_CustomModel.CustomModelParamValue);
  return sub_257743214();
}

uint64_t sub_2574AE948()
{
  v2 = v1;
  OUTLINED_FUNCTION_5_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (result = OUTLINED_FUNCTION_4_3(), (v2 = v1) == 0))
  {
    if (!*(v0[2] + 16) || (sub_257743184(), type metadata accessor for Proto_CustomModel.CustomModelParamValue(0), sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue), sub_2574AFE8C(&qword_27F87A5C8, type metadata accessor for Proto_CustomModel.CustomModelParamValue), v1 = v2, result = sub_257743434(), !v2))
    {
      v7 = v0[3];
      v8 = v0[4];
      OUTLINED_FUNCTION_1_6();
      if (!v9 || (result = OUTLINED_FUNCTION_4_3(), !v1))
      {
        v10 = v0 + *(type metadata accessor for Proto_CustomModel(0) + 28);
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_2574AEAC0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  sub_257477E10();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v8 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Proto_CustomModel(0) + 28);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_7();
  sub_2574AFE8C(v10, v11);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574AEBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574AEC20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2574AEC94(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_2574AECE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AFE8C(&qword_27F87A5F8, type metadata accessor for Proto_CustomModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AED88(uint64_t a1)
{
  v2 = sub_2574AFE8C(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AEE50()
{
  sub_2574AFE8C(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel);

  return sub_257743424();
}

uint64_t sub_2574AEED0()
{
  result = MEMORY[0x259C64E90](0xD000000000000016, 0x800000025777A500);
  qword_27F8E7F98 = 0xD000000000000011;
  unk_27F8E7FA0 = 0x800000025777A4C0;
  return result;
}

uint64_t sub_2574AEF3C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E7FA8);
  __swift_project_value_buffer(v0, qword_27F8E7FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "doubleValue";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "stringValue";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "intValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 40;
  *v14 = "longValue";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 50;
  *v16 = "BOOLValue";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 60;
  *v18 = "bytesValue";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574AF200()
{
  OUTLINED_FUNCTION_5_8();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 60:
        OUTLINED_FUNCTION_6_8();
        sub_2574AF608();
        break;
      case 20:
        v9 = OUTLINED_FUNCTION_6_8();
        sub_2574AF2F8(v9, v10);
        break;
      case 30:
        OUTLINED_FUNCTION_6_8();
        sub_2574AF3C8();
        break;
      case 40:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 3;
LABEL_14:
        sub_2574AF484(v3, v4, v5, v6, v7, v8);
        break;
      case 50:
        OUTLINED_FUNCTION_6_8();
        sub_2574AF54C();
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 0;
        goto LABEL_14;
    }
  }
}

uint64_t sub_2574AF2F8(uint64_t a1, uint64_t a2)
{
  result = sub_257743384();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 16) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_257743244();
      v5 = *(a2 + 16);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
    return sub_2574872D0(v6, v7, v5);
  }

  return result;
}

uint64_t sub_2574AF484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    if (*(a2 + 16) == 255)
    {
      v11 = -1;
    }

    else
    {
      sub_257743244();
      v11 = *(a2 + 16);
    }

    v12 = *a2;
    v13 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = a6;
    return sub_2574872D0(v12, v13, v11);
  }

  return result;
}

uint64_t sub_2574AF6FC()
{
  OUTLINED_FUNCTION_5_8();
  switch(*(v0 + 16))
  {
    case 0:
      v2 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF7D8(v2);
      goto LABEL_8;
    case 1:
      v7 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF818(v7);
      goto LABEL_8;
    case 2:
      v5 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF85C(v5);
      goto LABEL_8;
    case 3:
      v6 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF898(v6);
      goto LABEL_8;
    case 4:
      v4 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF8D4(v4);
      goto LABEL_8;
    case 5:
      v8 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF914(v8);
LABEL_8:
      if (!v1)
      {
        goto LABEL_9;
      }

      return result;
    default:
LABEL_9:
      v9 = v0 + *(type metadata accessor for Proto_CustomModel.CustomModelParamValue(0) + 20);
      return sub_257743194();
  }
}

uint64_t sub_2574AF7D8(uint64_t result)
{
  if (*(result + 16))
  {
    __break(1u);
  }

  else
  {
    v1 = *result;
    return sub_257743524();
  }

  return result;
}

uint64_t sub_2574AF818(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v3 = result;
    v1 = *result;
    v2 = *(v3 + 8);
    return sub_257743534();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned int *sub_2574AF85C(unsigned int *result)
{
  if (*(result + 16) == 2)
  {
    v1 = *result;
    return sub_2577434F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2574AF898(uint64_t result)
{
  if (*(result + 16) == 3)
  {
    v1 = *result;
    return sub_257743504();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned int *sub_2574AF8D4(unsigned int *result)
{
  if (*(result + 16) == 4)
  {
    v1 = *result;
    return sub_2577434B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2574AF914(uint64_t result)
{
  if (*(result + 16) == 5)
  {
    v2 = *result;
    v1 = *(result + 8);
    sub_2574872AC(*result, v1, 5);
    sub_2577434D4();
    return sub_2574872D0(v2, v1, 5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2574AF9A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*(a1 + 16) != 255)
  {
    if (v6 != 255)
    {
      v7 = OUTLINED_FUNCTION_2_9();
      sub_257487298(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_4_4();
      sub_257487298(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_2_9();
      v16 = sub_2574AE41C(v13, v14, v15, v5, v4, v6);
      v17 = OUTLINED_FUNCTION_4_4();
      sub_2574872D0(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_9();
      sub_2574872D0(v20, v21, v22);
      if (v16)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    v23 = OUTLINED_FUNCTION_2_9();
    sub_257487298(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_4_4();
    sub_257487298(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_2_9();
    sub_2574872D0(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_4_4();
    sub_2574872D0(v32, v33, v34);
    return 0;
  }

  if (v6 != 255)
  {
    goto LABEL_6;
  }

  sub_257487298(*a1, v2, 255);
  sub_257487298(v5, v4, 255);
  sub_2574872D0(v3, v2, 255);
LABEL_9:
  v36 = *(type metadata accessor for Proto_CustomModel.CustomModelParamValue(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_3_7();
  sub_2574AFE8C(v37, v38);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574AFAF0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574AFE8C(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574AFB7C()
{
  if (qword_27F878DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E7F98;

  return v0;
}

uint64_t sub_2574AFC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574AFE8C(&qword_27F87A600, type metadata accessor for Proto_CustomModel.CustomModelParamValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574AFCB4(uint64_t a1)
{
  v2 = sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574AFD7C()
{
  sub_2574AFE8C(&qword_27F87A5C0, type metadata accessor for Proto_CustomModel.CustomModelParamValue);

  return sub_257743424();
}

uint64_t sub_2574AFE8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574B0084(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257486798(a1, a2);
  }

  return a1;
}

void sub_2574B016C()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2574B01F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B01F4()
{
  if (!qword_27F87A630)
  {
    type metadata accessor for Proto_FloatVector(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A630);
    }
  }
}

void sub_2574B0344()
{
  v0 = OUTLINED_FUNCTION_22_2();
  sub_2574B0568(v0, v1);
  if (v2 <= 0x3F)
  {
    sub_2577431B4();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5();
    }
  }
}

void sub_2574B03E8()
{
  v0 = OUTLINED_FUNCTION_22_2();
  sub_2574B0924(v0, v1);
  if (v2 <= 0x3F)
  {
    sub_2577431B4();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5();
    }
  }
}

void sub_2574B0568(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2577435E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2574B0758()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_24_5();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void __swift_store_extra_inhabitant_index_18Tm()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_2577431B4();
    v3 = OUTLINED_FUNCTION_24_5();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

void sub_2574B0924(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_257743774();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2574B0970@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = sub_2577435D4();
  v4 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B09C8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B0A10@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B0A50@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_FloatVector(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = OUTLINED_FUNCTION_14_1(v2[6]);
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_14_1(v2[7]);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_14_1(v2[8]);

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_2574B0BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7E8, type metadata accessor for Proto_StringToInt64Map);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B0C8C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B0D54()
{
  sub_2574B4E00(&qword_27F87A530, type metadata accessor for Proto_StringToInt64Map);

  return sub_257743424();
}

uint64_t sub_2574B0E2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  v9 = v5;
  while (1)
  {
    result = sub_257743234();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574B15EC(a1, v9, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_2574B0FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7F0, type metadata accessor for Proto_Int64ToStringMap);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B105C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1124()
{
  sub_2574B4E00(&qword_27F87A538, type metadata accessor for Proto_Int64ToStringMap);

  return sub_257743424();
}

uint64_t sub_2574B11FC()
{
  OUTLINED_FUNCTION_2_7();
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_23_3();
    sub_257743184();
    v2(0);
    OUTLINED_FUNCTION_9_5();
    result = sub_257743444();
    if (v1)
    {
      return result;
    }

    v3 = v6;
  }

  v5 = *(v3(0) + 20);
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_2574B13AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7F8, type metadata accessor for Proto_StringToDoubleMap);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B144C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1514()
{
  sub_2574B4E00(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap);

  return sub_257743424();
}

uint64_t sub_2574B15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5(0);
  a6(0);
  return sub_257743224();
}

uint64_t sub_2574B168C()
{
  OUTLINED_FUNCTION_2_7();
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_23_3();
    sub_257743174();
    v2(0);
    OUTLINED_FUNCTION_9_5();
    result = sub_257743444();
    if (v1)
    {
      return result;
    }

    v3 = v6;
  }

  v5 = *(v3(0) + 20);
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_2574B183C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A800, type metadata accessor for Proto_Int64ToDoubleMap);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B18DC(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B19A4()
{
  sub_2574B4E00(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap);

  return sub_257743424();
}

uint64_t sub_2574B1B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A808, type metadata accessor for Proto_StringVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B1BD0(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A748, type metadata accessor for Proto_StringVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1C98()
{
  sub_2574B4E00(&qword_27F87A748, type metadata accessor for Proto_StringVector);

  return sub_257743424();
}

uint64_t sub_2574B1D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v5 + 16) || (OUTLINED_FUNCTION_12_8(), result = v8(), !v6))
  {
    v10 = *(a5(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574B1E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A810, type metadata accessor for Proto_Int64Vector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B1F18(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_281537E60, type metadata accessor for Proto_Int64Vector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B1FE0()
{
  sub_2574B4E00(&qword_281537E60, type metadata accessor for Proto_Int64Vector);

  return sub_257743424();
}

uint64_t sub_2574B216C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A818, type metadata accessor for Proto_FloatVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B220C(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B22D4()
{
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);

  return sub_257743424();
}

uint64_t sub_2574B2460(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A820, type metadata accessor for Proto_DoubleVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B2500(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B25C8()
{
  sub_2574B4E00(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector);

  return sub_257743424();
}

uint64_t sub_2574B2694()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743504(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743504(), !v1))
    {
      v4 = *(type metadata accessor for Proto_Int64Range(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574B2714(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Int64Range(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v3, v4);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574B2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A828, type metadata accessor for Proto_Int64Range);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B28D8(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B29A0()
{
  sub_2574B4E00(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range);

  return sub_257743424();
}

uint64_t sub_2574B2A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2577435B4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2577442B0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_257743584();
  OUTLINED_FUNCTION_4(v14);
  (*(v15 + 104))(v12, v13);
  return sub_257743594();
}

uint64_t sub_2574B2B9C()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    result = sub_257743234();
    if (v1 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v0(v2, v4, v3);
    }
  }

  return result;
}

uint64_t sub_2574B2C00(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574B2D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A830, type metadata accessor for Proto_Int64Set);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B2DC4(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B2E8C()
{
  sub_2574B4E00(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set);

  return sub_257743424();
}

uint64_t sub_2574B2F58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257743FF0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "minValue";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_257743584();
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "maxValue";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v13();
  return sub_257743594();
}

uint64_t sub_2574B3114()
{
  OUTLINED_FUNCTION_18_4();
  while (1)
  {
    result = sub_257743234();
    if (v1 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v7 = v2 + 8;
LABEL_8:
      v0(v7, v4, v3);
    }

    else if (result == 1)
    {
      v7 = v2;
      goto LABEL_8;
    }
  }
}

uint64_t sub_2574B3188()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_9_5(), result = sub_257743524(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_9_5(), result = sub_257743524(), !v1))
    {
      v4 = *(type metadata accessor for Proto_DoubleRange(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574B3220(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_DoubleRange(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v3, v4);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574B3344(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A838, type metadata accessor for Proto_DoubleRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B33E4(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A698, type metadata accessor for Proto_DoubleRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B34AC()
{
  sub_2574B4E00(&qword_27F87A698, type metadata accessor for Proto_DoubleRange);

  return sub_257743424();
}

uint64_t sub_2574B352C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E80C8);
  __swift_project_value_buffer(v0, qword_27F8E80C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "precisionValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "precisionConfidenceThresholds";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "recallValues";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recallConfidenceThresholds";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574B3770()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_2574B3820();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2574B38D4();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2574B3988();
        break;
      case 4:
        OUTLINED_FUNCTION_6_8();
        sub_2574B3A3C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574B3820()
{
  v0 = *(type metadata accessor for Proto_PrecisionRecallCurve(0) + 20);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  return sub_2577433D4();
}

uint64_t sub_2574B38D4()
{
  v0 = *(type metadata accessor for Proto_PrecisionRecallCurve(0) + 24);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  return sub_2577433D4();
}

uint64_t sub_2574B3988()
{
  v0 = *(type metadata accessor for Proto_PrecisionRecallCurve(0) + 28);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  return sub_2577433D4();
}

uint64_t sub_2574B3A3C()
{
  v0 = *(type metadata accessor for Proto_PrecisionRecallCurve(0) + 32);
  type metadata accessor for Proto_FloatVector(0);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  return sub_2577433D4();
}

uint64_t sub_2574B3AF0()
{
  v1 = OUTLINED_FUNCTION_4_5();
  result = sub_2574B3B60(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_4_5();
    sub_2574B3D00(v3);
    v4 = OUTLINED_FUNCTION_4_5();
    sub_2574B3EA0(v4);
    v5 = OUTLINED_FUNCTION_4_5();
    sub_2574B4040(v5);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574B3B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_FloatVector(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v10 + 20), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v5, v9);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  sub_257743574();
  return sub_2574B5C0C(v9);
}

uint64_t sub_2574B3D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_FloatVector(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v5, v9);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  sub_257743574();
  return sub_2574B5C0C(v9);
}

uint64_t sub_2574B3EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_FloatVector(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v10 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v5, v9);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  sub_257743574();
  return sub_2574B5C0C(v9);
}

uint64_t sub_2574B4040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_FloatVector(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  sub_2574B5B38(a1 + *(v10 + 32), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2574695E4(v5, &qword_27F87A618, &unk_257776600);
  }

  sub_2574B5BA8(v5, v9);
  sub_2574B4E00(&qword_27F87A718, type metadata accessor for Proto_FloatVector);
  sub_257743574();
  return sub_2574B5C0C(v9);
}

uint64_t _s20MLModelSpecification20PrecisionRecallCurveV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FloatVector(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_0();
  v94 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  v96 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_167();
  v98 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  v15 = (&v94 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_25_0();
  v95 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  v97 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v100 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  v25 = (&v94 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A840, &qword_257748538);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v99 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  v101 = v32;
  OUTLINED_FUNCTION_158();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v94 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v94 - v37;
  v39 = type metadata accessor for Proto_PrecisionRecallCurve(0);
  v102 = a1;
  v103 = v39;
  v40 = *(v39 + 20);
  v41 = v26;
  v42 = *(v26 + 48);
  sub_2574B5B38(a1 + v40, v38);
  v43 = a2 + v40;
  v44 = a2;
  sub_2574B5B38(v43, &v38[v42]);
  OUTLINED_FUNCTION_6_9(v38);
  if (v58)
  {
    OUTLINED_FUNCTION_6_9(&v38[v42]);
    if (v58)
    {
      sub_2574695E4(v38, &qword_27F87A618, &unk_257776600);
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_2574B5B38(v38, v25);
  OUTLINED_FUNCTION_6_9(&v38[v42]);
  if (v58)
  {
    sub_2574B5C0C(v25);
LABEL_24:
    v59 = &qword_27F87A840;
    v60 = &qword_257748538;
LABEL_25:
    v61 = v38;
LABEL_44:
    sub_2574695E4(v61, v59, v60);
LABEL_45:
    v57 = 0;
    return v57 & 1;
  }

  sub_2574B5BA8(&v38[v42], v15);
  v62 = sub_257479B60(*v25, *v15);
  if ((v62 & 1) == 0)
  {
    sub_2574B5C0C(v15);
    sub_2574B5C0C(v25);
    v59 = &qword_27F87A618;
    v60 = &unk_257776600;
    goto LABEL_25;
  }

  v63 = v4;
  v64 = v44;
  v65 = *(v63 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v66, v67);
  v44 = v64;
  v4 = v63;
  v68 = sub_257743644();
  sub_2574B5C0C(v15);
  sub_2574B5C0C(v25);
  sub_2574695E4(v38, &qword_27F87A618, &unk_257776600);
  if ((v68 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_6:
  v45 = v102;
  v46 = v103[6];
  v47 = v41;
  v48 = *(v41 + 48);
  sub_2574B5B38(v102 + v46, v36);
  sub_2574B5B38(v44 + v46, &v36[v48]);
  OUTLINED_FUNCTION_6_9(v36);
  if (v58)
  {
    OUTLINED_FUNCTION_6_9(&v36[v48]);
    v49 = v101;
    if (!v58)
    {
      goto LABEL_33;
    }

    sub_2574695E4(v36, &qword_27F87A618, &unk_257776600);
  }

  else
  {
    v69 = v100;
    sub_2574B5B38(v36, v100);
    OUTLINED_FUNCTION_6_9(&v36[v48]);
    v49 = v101;
    if (v70)
    {
      v71 = v69;
LABEL_32:
      sub_2574B5C0C(v71);
LABEL_33:
      v59 = &qword_27F87A840;
      v60 = &qword_257748538;
LABEL_34:
      v61 = v36;
      goto LABEL_44;
    }

    v72 = v98;
    sub_2574B5BA8(&v36[v48], v98);
    v73 = sub_257479B60(*v69, *v72);
    if ((v73 & 1) == 0)
    {
      sub_2574B5C0C(v72);
      v82 = v69;
      goto LABEL_48;
    }

    v74 = *(v4 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_13();
    sub_2574B4E00(v75, v76);
    v77 = sub_257743644();
    sub_2574B5C0C(v72);
    sub_2574B5C0C(v69);
    sub_2574695E4(v36, &qword_27F87A618, &unk_257776600);
    if ((v77 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v50 = v103[7];
  v51 = v4;
  v52 = *(v47 + 48);
  sub_2574B5B38(v45 + v50, v49);
  sub_2574B5B38(v44 + v50, v49 + v52);
  OUTLINED_FUNCTION_69(v49, 1);
  if (v58)
  {
    OUTLINED_FUNCTION_69(v49 + v52, 1);
    v36 = v99;
    if (v58)
    {
      v79 = v51;
      sub_2574695E4(v49, &qword_27F87A618, &unk_257776600);
      goto LABEL_16;
    }

    goto LABEL_42;
  }

  v78 = v97;
  sub_2574B5B38(v49, v97);
  v79 = v51;
  OUTLINED_FUNCTION_69(v49 + v52, 1);
  v36 = v99;
  if (v80)
  {
    sub_2574B5C0C(v78);
LABEL_42:
    v59 = &qword_27F87A840;
    v60 = &qword_257748538;
LABEL_43:
    v61 = v49;
    goto LABEL_44;
  }

  v83 = v96;
  sub_2574B5BA8(v49 + v52, v96);
  v84 = sub_257479B60(*v78, *v83);
  if ((v84 & 1) == 0)
  {
    sub_2574B5C0C(v83);
    sub_2574B5C0C(v78);
    v59 = &qword_27F87A618;
    v60 = &unk_257776600;
    goto LABEL_43;
  }

  v85 = *(v79 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v86, v87);
  LOBYTE(v85) = sub_257743644();
  sub_2574B5C0C(v83);
  sub_2574B5C0C(v78);
  sub_2574695E4(v49, &qword_27F87A618, &unk_257776600);
  if ((v85 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_16:
  v53 = v103[8];
  v54 = *(v47 + 48);
  sub_2574B5B38(v45 + v53, v36);
  sub_2574B5B38(v44 + v53, &v36[v54]);
  if (__swift_getEnumTagSinglePayload(v36, 1, v79) != 1)
  {
    v88 = v95;
    sub_2574B5B38(v36, v95);
    OUTLINED_FUNCTION_69(&v36[v54], 1);
    if (!v58)
    {
      v89 = v94;
      sub_2574B5BA8(&v36[v54], v94);
      v90 = sub_257479B60(*v88, *v89);
      if (v90)
      {
        v91 = *(v79 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_13();
        sub_2574B4E00(v92, v93);
        LOBYTE(v91) = sub_257743644();
        sub_2574B5C0C(v89);
        sub_2574B5C0C(v88);
        sub_2574695E4(v36, &qword_27F87A618, &unk_257776600);
        if ((v91 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      sub_2574B5C0C(v89);
      v82 = v88;
LABEL_48:
      sub_2574B5C0C(v82);
      v59 = &qword_27F87A618;
      v60 = &unk_257776600;
      goto LABEL_34;
    }

    v71 = v88;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_69(&v36[v54], 1);
  if (!v58)
  {
    goto LABEL_33;
  }

  sub_2574695E4(v36, &qword_27F87A618, &unk_257776600);
LABEL_20:
  sub_2577431B4();
  OUTLINED_FUNCTION_0_13();
  sub_2574B4E00(v55, v56);
  v57 = sub_257743644();
  return v57 & 1;
}

uint64_t sub_2574B49C0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574B4E00(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574B4A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2577431B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2574B4AD0(uint64_t a1)
{
  v3 = sub_2577431B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2574B4B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B4E00(&qword_27F87A7E0, type metadata accessor for Proto_PrecisionRecallCurve);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B4C28(uint64_t a1)
{
  v2 = sub_2574B4E00(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B4CF0()
{
  sub_2574B4E00(&qword_27F87A590, type metadata accessor for Proto_PrecisionRecallCurve);

  return sub_257743424();
}

uint64_t sub_2574B4E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574B5B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B5BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FloatVector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B5C0C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_FloatVector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_2574B2B9C();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

void sub_2574B5DE0()
{
  sub_2574B5E64();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B5E64()
{
  if (!qword_281537CE0)
  {
    type metadata accessor for Proto_DictVectorizer.OneOf_Map(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537CE0);
    }
  }
}

uint64_t sub_2574B5EDC()
{
  result = type metadata accessor for Proto_StringVector(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64Vector(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2574B5F50(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Proto_Int64Vector(0);
  v4 = OUTLINED_FUNCTION_4(v56);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  v10 = type metadata accessor for Proto_StringVector(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v55 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A888, &qword_257748710);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v55 - v31;
  v33 = *(v30 + 56);
  sub_2574B7C74(a1, &v55 - v31);
  sub_2574B7C74(a2, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574B7C74(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7C18(&v32[v33], v9, type metadata accessor for Proto_Int64Vector);
      if (sub_257487374(*v23, *v9))
      {
        v34 = *(v56 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_8();
        sub_2574B7AE8(v35, v36);
        v37 = sub_257743644();
        OUTLINED_FUNCTION_1_8();
        sub_2574B7BC0(v9, v38);
        if (v37)
        {
          OUTLINED_FUNCTION_1_8();
          v40 = v23;
LABEL_13:
          sub_2574B7BC0(v40, v39);
          OUTLINED_FUNCTION_2_10();
          sub_2574B7BC0(v32, v48);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_8();
        sub_2574B7BC0(v9, v50);
      }

      OUTLINED_FUNCTION_1_8();
      v52 = v23;
LABEL_18:
      sub_2574B7BC0(v52, v51);
      OUTLINED_FUNCTION_2_10();
      sub_2574B7BC0(v32, v54);
      return 0;
    }

    OUTLINED_FUNCTION_1_8();
    v42 = v23;
  }

  else
  {
    sub_2574B7C74(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574B7C18(&v32[v33], v16, type metadata accessor for Proto_StringVector);
      if (sub_257479C78(*v25, *v16))
      {
        v43 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_3_8();
        sub_2574B7AE8(v44, v45);
        v46 = sub_257743644();
        OUTLINED_FUNCTION_0_14();
        sub_2574B7BC0(v16, v47);
        if (v46)
        {
          OUTLINED_FUNCTION_0_14();
          v40 = v25;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_14();
        sub_2574B7BC0(v16, v53);
      }

      OUTLINED_FUNCTION_0_14();
      v52 = v25;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_14();
    v42 = v25;
  }

  sub_2574B7BC0(v42, v41);
  sub_2574695E4(v32, &qword_27F87A888, &qword_257748710);
  return 0;
}

uint64_t sub_2574B62EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_DictVectorizer(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B633C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E80E0);
  __swift_project_value_buffer(v0, qword_27F8E80E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stringToIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "int64ToIndex";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574B6504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_205();
      sub_2574B6A80(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_205();
      sub_2574B6588(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2574B6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87A848, &unk_257748540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    sub_2574B7C18(v14, v21, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    sub_2574B7C18(v21, v19, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7BC0(v19, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    }

    else
    {
      sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
      sub_2574B7C18(v19, v10, type metadata accessor for Proto_StringVector);
      sub_2574B7C18(v10, v28, type metadata accessor for Proto_StringVector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }
  }

  sub_2574B7AE8(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A878, &unk_257748700);
  }

  v32 = v39;
  sub_2574B7C18(v26, v39, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87A848, &unk_257748540);
  sub_2574B7C18(v32, v34, type metadata accessor for Proto_StringVector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574B6A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574AD5D8(a1, v14, &qword_27F87A848, &unk_257748540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    sub_2574B7C18(v14, v21, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    sub_2574B7C18(v21, v19, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
      sub_2574B7C18(v19, v10, type metadata accessor for Proto_Int64Vector);
      sub_2574B7C18(v10, v28, type metadata accessor for Proto_Int64Vector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574B7BC0(v19, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
    }
  }

  sub_2574B7AE8(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  v32 = v39;
  sub_2574B7C18(v26, v39, type metadata accessor for Proto_Int64Vector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87A848, &unk_257748540);
  sub_2574B7C18(v32, v34, type metadata accessor for Proto_Int64Vector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574B6F78()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  sub_2574AD5D8(v0, &v20 - v6, &qword_27F87A848, &unk_257748540);
  v8 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_5_10();
    sub_2574B72C0(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_10();
    sub_2574B70AC(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_2_10();
  result = sub_2574B7BC0(v7, v17);
  if (!v1)
  {
LABEL_6:
    v19 = v0 + *(type metadata accessor for Proto_DictVectorizer(0) + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574B70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87A848, &unk_257748540);
  v13 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574B7C18(v8, v12, type metadata accessor for Proto_StringVector);
      sub_2574B7AE8(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_2574B7BC0(v12, type metadata accessor for Proto_StringVector);
    }

    result = sub_2574B7BC0(v8, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574B72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87A848, &unk_257748540);
  v13 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87A848, &unk_257748540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574B7C18(v8, v12, type metadata accessor for Proto_Int64Vector);
      sub_2574B7AE8(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_2574B7BC0(v12, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_2574B7BC0(v8, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification33DictionaryVectorizerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A890, &qword_257748718);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_2574AD5D8(a1, &v33 - v22, &qword_27F87A848, &unk_257748540);
  sub_2574AD5D8(a2, &v23[v24], &qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_65(v23);
  if (v25)
  {
    OUTLINED_FUNCTION_65(&v23[v24]);
    if (v25)
    {
      sub_2574695E4(v23, &qword_27F87A848, &unk_257748540);
LABEL_12:
      v29 = *(type metadata accessor for Proto_DictVectorizer(0) + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_3_8();
      sub_2574B7AE8(v30, v31);
      v27 = sub_257743644();
      return v27 & 1;
    }

    goto LABEL_9;
  }

  sub_2574AD5D8(v23, v16, &qword_27F87A848, &unk_257748540);
  OUTLINED_FUNCTION_65(&v23[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_2_10();
    sub_2574B7BC0(v16, v26);
LABEL_9:
    sub_2574695E4(v23, &qword_27F87A890, &qword_257748718);
    goto LABEL_10;
  }

  sub_2574B7C18(&v23[v24], v10, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  v28 = sub_2574B5F50(v16, v10);
  sub_2574B7BC0(v10, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  sub_2574B7BC0(v16, type metadata accessor for Proto_DictVectorizer.OneOf_Map);
  sub_2574695E4(v23, &qword_27F87A848, &unk_257748540);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_2574B776C()
{
  sub_257743A14();
  type metadata accessor for Proto_DictVectorizer(0);
  sub_2574B7AE8(&qword_27F87A858, type metadata accessor for Proto_DictVectorizer);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574B7844(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574B7AE8(&qword_27F87A870, type metadata accessor for Proto_DictVectorizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574B78C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878E28 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E80E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574B7968(uint64_t a1)
{
  v2 = sub_2574B7AE8(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574B79D8()
{
  sub_2574B7AE8(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer);

  return sub_257743424();
}