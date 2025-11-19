void static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)()
{
  OUTLINED_FUNCTION_31();
  v45 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v42 = v9;
  v43 = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v41 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v26 = OUTLINED_FUNCTION_4(v41);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v32 = swift_allocObject();
  v44 = xmmword_2577442B0;
  *(v32 + 16) = xmmword_2577442B0;
  *(v32 + 32) = v8;
  *(v32 + 40) = v6;
  v33 = swift_allocObject();
  *(v33 + 16) = v44;
  *(v33 + 32) = v4;
  *(v33 + 40) = v2;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v34 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  *(v25 + v34) = qword_27F87BF18;
  v35 = v45;
  if (v45 < 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v25 + v34);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v38);
    v37 = OUTLINED_FUNCTION_7_20();
    *(v25 + v34) = v37;
  }

  OUTLINED_FUNCTION_447();
  *(v37 + 16) = v35;
  OUTLINED_FUNCTION_9_17();
  sub_25766E5F0(v25, v31);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  *(v12 + v2) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v33);
  sub_2574897E0(v18);
  v39 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v39);
  sub_25752846C();
  sub_25766E598(v31, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.batchNormalize(inputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  result = qword_27F87BF18;
  *(v10 + v11) = qword_27F87BF18;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v15);
      v14 = OUTLINED_FUNCTION_7_20();
      *(v10 + v11) = v14;
    }

    OUTLINED_FUNCTION_447();
    *(v14 + 16) = a1;
    OUTLINED_FUNCTION_9_17();
    sub_25766E5F0(v10, a2);
    type metadata accessor for NeuralNetwork.Layer.Kind();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.init(inputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  if (qword_27F8793B0 != -1)
  {
    OUTLINED_FUNCTION_5_27();
  }

  result = qword_27F87BF18;
  *(a2 + v4) = qword_27F87BF18;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(a2 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v8);
      v9 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_355_0(v9);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v7 + 16) = a1;
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters()
{
  result = qword_27F880940;
  if (!qword_27F880940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "Input Channels");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296();
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + 16);
    *(v1 + 48) = sub_257743974();
    *(v1 + 56) = v4;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 64) = 0xD00000000000001ALL;
    *(v1 + 72) = v5;
    OUTLINED_FUNCTION_296();
    if (*(v2 + 24))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v2 + 24))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    *(v1 + 80) = v6;
    *(v1 + 88) = v7;
    *(v1 + 96) = 0xD000000000000016;
    *(v1 + 104) = 0x8000000257780BE0;
    OUTLINED_FUNCTION_296();
    if (*(v2 + 25))
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (*(v2 + 25))
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    *(v1 + 112) = v8;
    *(v1 + 120) = v9;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 128) = 0xD000000000000010;
    *(v1 + 136) = v10;
    OUTLINED_FUNCTION_296();
    v11 = *(v2 + 28);
    *(v1 + 144) = sub_257743794();
    *(v1 + 152) = v12;
    return v1;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.getter()
{
  v1 = type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.getter()
{
  v1 = type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  return *(v0 + 24);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.getter()
{
  v1 = type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  return *(v0 + 25);
}

float NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.getter()
{
  v1 = type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  return *(v0 + 28);
}

void NeuralNetwork.Layer.BatchNormalizeParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = OUTLINED_FUNCTION_63(v1);
  v91 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v90 = (v6 - v7);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  v95 = (&v88 - v9);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  v92 = (&v88 - v11);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  v14 = (&v88 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v96 = v19 - v20;
  OUTLINED_FUNCTION_158();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v88 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_9();
  v28 = type metadata accessor for NeuralNetwork.WeightParameters();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  v97 = v32 - v33;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v34);
  v93 = &v88 - v35;
  OUTLINED_FUNCTION_158();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v88 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v88 - v40;
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
  v94 = v28;
  OUTLINED_FUNCTION_155(v0, 1, v28);
  if (v42)
  {
    sub_2574695E4(v0, &qword_27F880938, &unk_25776E510);
    v43 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = v91;
    OUTLINED_FUNCTION_1_38();
    sub_25766E5F0(v0, v41);
    v89 = v1;
    v45 = *(v1 + 48);
    *v14 = 0x656C616353;
    v14[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v41, v14 + v46);
    sub_257469D34();
    v43 = v47;
    v48 = *(v47 + 16);
    if (v48 >= *(v47 + 24) >> 1)
    {
      sub_257469D34();
      v43 = v82;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v41, v49);
    *(v43 + 16) = v48 + 1;
    sub_25749E9A8(v14, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v48);
    v1 = v89;
  }

  NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
  v50 = v94;
  OUTLINED_FUNCTION_155(v27, 1, v94);
  if (v42)
  {
    sub_2574695E4(v27, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    sub_25766E5F0(v27, v39);
    v51 = *(v1 + 48);
    v52 = v92;
    *v92 = 0x74657366664FLL;
    v52[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v39, v54 + v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v43 = v83;
    }

    v57 = *(v43 + 16);
    if (v57 >= *(v43 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
      v43 = v84;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v39, v58);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v92, v59 + v60 * v57);
    v1 = v56;
  }

  NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
  OUTLINED_FUNCTION_155(v24, 1, v50);
  if (v42)
  {
    sub_2574695E4(v24, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    v61 = v93;
    sub_25766E5F0(v24, v93);
    v62 = *(v1 + 48);
    v63 = v95;
    *v95 = 1851876685;
    v63[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v61, v65 + v64);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    if ((v66 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v43 = v85;
    }

    v67 = *(v43 + 16);
    if (v67 >= *(v43 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
      v43 = v86;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v93, v68);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v95, v69 + v70 * v67);
  }

  v71 = v96;
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
  OUTLINED_FUNCTION_155(v71, 1, v50);
  if (v42)
  {
    sub_2574695E4(v71, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    v72 = v71;
    v73 = v97;
    sub_25766E5F0(v72, v97);
    v74 = *(v1 + 48);
    v75 = v90;
    *v90 = 0x65636E6169726156;
    *(v75 + 8) = 0xE800000000000000;
    OUTLINED_FUNCTION_2_36();
    sub_25766E64C(v73, v75 + v76);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    if ((v77 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_19();
      v43 = v87;
    }

    v78 = *(v43 + 16);
    if (v78 >= *(v43 + 24) >> 1)
    {
      OUTLINED_FUNCTION_13_13();
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v97, v79);
    OUTLINED_FUNCTION_6_27();
    sub_25749E9A8(v75, v80 + v81 * v78);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25766D2A0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v30 = v4;
  v5 = type metadata accessor for Proto_WeightParams(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_30_9();
  v21 = *(v0 + *(type metadata accessor for Proto_BatchnormLayerParams(v20) + 20));
  v22 = *v3;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v21 + v22, v1, &qword_27F87A1A0, &qword_257745750);
  v23 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574A172C(v21 + v22, v18, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_155(v18, 1, v5);
    if (v25)
    {
      *v11 = MEMORY[0x277D84F90];
      *(v11 + 8) = xmmword_257745740;
      *(v11 + 24) = xmmword_257745740;
      *(v11 + 40) = xmmword_257745740;
      *(v11 + 56) = 0;
      v26 = v11 + *(v5 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v27 = *(v5 + 40);
      v28 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(v11 + v27, 1, 1, v28);
      OUTLINED_FUNCTION_155(v18, 1, v5);
      if (!v25)
      {
        sub_2574695E4(v18, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      sub_25766E5F0(v18, v11);
    }

    sub_2576FF45C(v11, v30);
    v23 = 0;
  }

  v29 = type metadata accessor for NeuralNetwork.WeightParameters();
  __swift_storeEnumTagSinglePayload(v30, v23, 1, v29);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
    v4 = *(v1 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      v8 = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v6 + 16) = v2;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  result = OUTLINED_FUNCTION_296();
  v7 = *(v5 + 16);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v3[9] = v7;
    return sub_25766D5F8;
  }

  return result;
}

void sub_25766D5F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 80);
    v11 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    v8 = OUTLINED_FUNCTION_7_20();
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 16) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.setter(char a1)
{
  v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    v8 = OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v6 + 24) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + 24);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766D790(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    v9 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    v6 = OUTLINED_FUNCTION_7_20();
    *(v8 + v7) = v6;
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 24) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.setter(char a1)
{
  v3 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    v8 = OUTLINED_FUNCTION_7_20();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v6 + 25) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + 25);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766D900(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    v9 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    v6 = OUTLINED_FUNCTION_7_20();
    *(v8 + v7) = v6;
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    v7 = OUTLINED_FUNCTION_7_20();
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v7 + 28) = a1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.minimumVariance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_17_13(v2) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 80) = *(v4 + 28);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766DA78(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    v7 = OUTLINED_FUNCTION_7_20();
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_447();
  *(v7 + 28) = v2;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.scale.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766DC04()
{
  OUTLINED_FUNCTION_31();
  v42 = v2;
  v43 = v3;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for Proto_WeightParams(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v25 = type metadata accessor for NeuralNetwork.WeightParameters();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  sub_2574A172C(v6, v24, &qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_155(v24, 1, v25);
  if (v32)
  {
    sub_2574695E4(v24, &qword_27F880938, &unk_25776E510);
    v33 = *(type metadata accessor for Proto_BatchnormLayerParams(0) + 20);
    v34 = *(v4 + v33);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v35 = *(v4 + v33);
    }

    else
    {
      v37 = *(v4 + v33);
      v38 = type metadata accessor for Proto_BatchnormLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v38);

      v35 = sub_2575A5E88(v39);
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v33) = v35;
    }

    __swift_storeEnumTagSinglePayload(v1, 1, 1, v12);
    v40 = *v43;
    swift_beginAccess();
    sub_25763A1E4(v1, v35 + v40);
    swift_endAccess();
  }

  else
  {
    sub_25766E5F0(v24, v31);
    sub_25766E64C(v31 + *(v25 + 20), v18);
    v42(v18);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v31, v36);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.offset.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
  return OUTLINED_FUNCTION_15_10();
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.mean.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
  return OUTLINED_FUNCTION_15_10();
}

uint64_t sub_25766E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_2574A172C(a1, &v14 - v11, &qword_27F880938, &unk_25776E510);
  return a5(v12);
}

uint64_t NeuralNetwork.Layer.BatchNormalizeParameters.variance.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25766E180(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_2574A172C(a1[2], v4, &qword_27F880938, &unk_25776E510);
    a3(v4);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

void NeuralNetwork.Layer.BatchNormalizeParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_64();
  v33 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters();
  v16 = OUTLINED_FUNCTION_4(v33);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_25766E64C(v1, v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577503A0;
  OUTLINED_FUNCTION_23_7();
  *(v22 + 32) = 0xD000000000000011;
  *(v22 + 40) = v23;
  v24 = type metadata accessor for Proto_BatchnormLayerParams(0);
  OUTLINED_FUNCTION_328(v24);
  OUTLINED_FUNCTION_296();
  v25 = *(v0 + 16);
  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 48) = v25;
    OUTLINED_FUNCTION_23_7();
    *(v21 + 72) = v26;
    *(v21 + 80) = 0xD000000000000014;
    *(v21 + 88) = v27;
    OUTLINED_FUNCTION_296();
    v28 = MEMORY[0x277D839B0];
    *(v21 + 96) = *(v0 + 24);
    OUTLINED_FUNCTION_23_7();
    *(v21 + 120) = v28;
    *(v21 + 128) = 0xD000000000000015;
    *(v21 + 136) = v29;
    OUTLINED_FUNCTION_296();
    *(v21 + 144) = *(v0 + 25);
    *(v21 + 168) = v28;
    *(v21 + 176) = 0x566D756D696E696DLL;
    *(v21 + 184) = 0xEF65636E61697261;
    OUTLINED_FUNCTION_296();
    v30 = MEMORY[0x277D83A90];
    *(v21 + 192) = *(v0 + 28);
    *(v21 + 216) = v30;
    *(v21 + 224) = 0x656C616373;
    *(v21 + 232) = 0xE500000000000000;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
    *(v21 + 264) = v31;
    __swift_allocate_boxed_opaque_existential_0((v21 + 240));
    NeuralNetwork.Layer.BatchNormalizeParameters.scale.getter();
    *(v21 + 272) = 0x74657366666FLL;
    *(v21 + 280) = 0xE600000000000000;
    *(v21 + 312) = v31;
    __swift_allocate_boxed_opaque_existential_0((v21 + 288));
    NeuralNetwork.Layer.BatchNormalizeParameters.offset.getter();
    *(v21 + 320) = 1851876717;
    *(v21 + 328) = 0xE400000000000000;
    *(v21 + 360) = v31;
    __swift_allocate_boxed_opaque_existential_0((v21 + 336));
    NeuralNetwork.Layer.BatchNormalizeParameters.mean.getter();
    *(v21 + 368) = 0x65636E6169726176;
    *(v21 + 376) = 0xE800000000000000;
    *(v21 + 408) = v31;
    __swift_allocate_boxed_opaque_existential_0((v21 + 384));
    NeuralNetwork.Layer.BatchNormalizeParameters.variance.getter();
    v32 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v32);
    (*(v6 + 104))(v11, *MEMORY[0x277D84C38], v3);
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25766E598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25766E5F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25766E64C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25766E6AC()
{
  result = qword_27F87E1F8;
  if (!qword_27F87E1F8)
  {
    type metadata accessor for Proto_BatchnormLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E1F8);
  }

  return result;
}

uint64_t sub_25766E72C()
{
  result = type metadata accessor for Proto_BatchnormLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_27()
{
  *(v2 + 16) = v0;
  v3 = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v4 = *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_2575A5E88(v0);
}

void OUTLINED_FUNCTION_12_19()
{
  v2 = *(v0 + 16) + 1;

  sub_257469D34();
}

void OUTLINED_FUNCTION_13_13()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_BatchnormLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1)
{
  v2 = *(*a1 + 84);
  v3 = *(*(*a1 + 72) + *(*a1 + 80));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t static NeuralNetwork.Layer.concatenate(name:inputName:outputName:alongSequenceAxis:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OUTLINED_FUNCTION_12_13();
  v15 = OUTLINED_FUNCTION_42_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v20 = (v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v23 = *(type metadata accessor for Proto_ConcatLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v20 = a5;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a6 + v24) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v22);
  sub_2574897E0(v6);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v25);
  return sub_257634BB4(v20);
}

uint64_t static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = &a2[*(type metadata accessor for Proto_ConcatLayerParams(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.concatenate(name:inputNames:outputName:alongSequenceAxis:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, char a3@<W5>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OUTLINED_FUNCTION_12_13();
  v12 = OUTLINED_FUNCTION_42_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  LODWORD(a1) = *(type metadata accessor for Proto_ConcatLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v17 = a3;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a4 + v19) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v18);
  sub_2574897E0(v4);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  return sub_257634BB4(v17);
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.init(alongSequenceAxis:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = &a2[*(type metadata accessor for Proto_ConcatLayerParams(0) + 20)];
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = 0x8000000257780C60;
  v2 = 1702195828;
  if (!*v0)
  {
    v2 = 0x65736C6166;
  }

  v3 = 0xE500000000000000;
  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  *(result + 48) = v2;
  *(result + 56) = v3;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ConcatenateParameters.alongSequenceAxis.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NeuralNetwork.Layer.ConcatenateParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_ConcatLayerParams(0) + 20);
    sub_2577431B4();
    sub_25766F204(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConcatenateParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters();
  v13 = OUTLINED_FUNCTION_42_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25766F158(v1, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000257780C80;
  v19 = *v1;
  *(v18 + 72) = MEMORY[0x277D839B0];
  *(v18 + 48) = v19;
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters()
{
  result = qword_27F880950;
  if (!qword_27F880950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766F158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ConcatenateParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25766F204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25766F278()
{
  result = type metadata accessor for Proto_ConcatLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.squeeze(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OUTLINED_FUNCTION_12_13();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = OUTLINED_FUNCTION_13_6();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  v20 = OUTLINED_FUNCTION_13_6();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *v18 = MEMORY[0x277D84F90];
  *(v18 + 8) = 0;
  v21 = *(type metadata accessor for Proto_SqueezeLayerParams(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v22);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a5 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v20);
  sub_2574897E0(v5);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v24);
  return sub_257634BB4(v18);
}

uint64_t static NeuralNetwork.Layer.Kind.squeeze(axes:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Proto_SqueezeLayerParams(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.squeezeAll(name:inputName:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = OUTLINED_FUNCTION_12_13();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = OUTLINED_FUNCTION_13_6();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  v21 = OUTLINED_FUNCTION_13_6();
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *v19 = MEMORY[0x277D84F90];
  *(v19 + 8) = 0;
  v22 = *(type metadata accessor for Proto_SqueezeLayerParams(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(v19 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a5 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v5);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v24);
  return sub_257634BB4(v19);
}

uint64_t static NeuralNetwork.Layer.Kind.squeezeAll()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(OUTLINED_FUNCTION_3_36(MEMORY[0x277D84F90]) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(a1 + 8) = 1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.init(axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v3 = a2 + *(type metadata accessor for Proto_SqueezeLayerParams(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return NeuralNetwork.Layer.SqueezeParameters.axes.setter(a1);
}

uint64_t static NeuralNetwork.Layer.SqueezeParameters.allUnitDimensions()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(OUTLINED_FUNCTION_3_36(MEMORY[0x277D84F90]) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *(a1 + 8) = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 1936029761;
  *(v1 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  v2 = MEMORY[0x259C64F20]();
  v4 = v3;

  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0xD00000000000001BLL;
  *(v1 + 72) = 0x8000000257780CA0;
  v5 = 1702195828;
  if (!*(v0 + 8))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v6 = 0xE400000000000000;
  }

  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  return v1;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.axes.getter()
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
    v5 = *(v8 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v9 = result;
      if (v5 >= *(result + 24) >> 1)
      {
        sub_257483724();
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_25766FA00(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.SqueezeParameters.axes.setter(v2);
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.axes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2574845B8();
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_2574845B8();
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v9 = *v2;

  *v2 = v5;
  return result;
}

uint64_t (*NeuralNetwork.Layer.SqueezeParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  return sub_25766FB6C;
}

uint64_t sub_25766FB6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.SqueezeParameters.axes.setter(*a1);
  }

  v4 = *a1;

  NeuralNetwork.Layer.SqueezeParameters.axes.setter(v5);
}

_BYTE *(*NeuralNetwork.Layer.SqueezeParameters.squeezeAllUnitDimensions.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_25766FBF8;
}

BOOL static NeuralNetwork.Layer.SqueezeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((sub_257487374(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(type metadata accessor for Proto_SqueezeLayerParams(0) + 24);
    sub_2577431B4();
    sub_257670038(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SqueezeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_25766FF8C(v0, v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257743FF0;
  *(v17 + 32) = 1936029793;
  *(v17 + 40) = 0xE400000000000000;
  v18 = NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v17 + 48) = v18;
  *(v17 + 72) = v19;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x8000000257780CC0;
  v20 = *(v0 + 8);
  *(v17 + 120) = MEMORY[0x277D839B0];
  *(v17 + 96) = v20;
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.SqueezeParameters()
{
  result = qword_27F880960;
  if (!qword_27F880960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766FF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.SqueezeParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257670038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576700A8()
{
  result = type metadata accessor for Proto_SqueezeLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_36@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;

  return type metadata accessor for Proto_SqueezeLayerParams(0);
}

uint64_t sub_257670130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v107 = a2;
  v7 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v105 = v11;
  v12 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for FeatureType.StateParameters(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeatureType.SequenceParameters(0);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v104 = v23;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for FeatureType.ImageParameters(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v103 = v29;
  v30 = OUTLINED_FUNCTION_153();
  v31 = type metadata accessor for FeatureType.DictionaryParameters(v30);
  v32 = OUTLINED_FUNCTION_13(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  v102 = v35;
  OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v37 = OUTLINED_FUNCTION_13(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_1();
  v106 = v40;
  v41 = OUTLINED_FUNCTION_153();
  v42 = type metadata accessor for FeatureType(v41);
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v100 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v49 = OUTLINED_FUNCTION_13(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v100 - v52;
  v54 = MEMORY[0x277D84F90];
  v109 = MEMORY[0x277D84F90];
  v55 = v3[1];
  v56 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v55 & 0x2000000000000000) != 0)
  {
    v56 = HIBYTE(v55) & 0xF;
  }

  if (!v56)
  {
    v100 = a1;
    v101 = a3;
    v108 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v57 = sub_257743604();
    v59 = v58;
    sub_25746996C();
    v54 = v60;
    v61 = *(v60 + 16);
    if (v61 >= *(v60 + 24) >> 1)
    {
      sub_25746996C();
      v54 = v99;
    }

    *(v54 + 16) = v61 + 1;
    v62 = v54 + 48 * v61;
    *(v62 + 32) = 0;
    *(v62 + 40) = xmmword_25776E6E0;
    *(v62 + 56) = 3;
    *(v62 + 64) = v57;
    *(v62 + 72) = v59;
    v109 = v54;
    a1 = v100;
    a3 = v101;
  }

  v63 = type metadata accessor for Proto_FeatureDescription(0);
  sub_257635668(v4 + *(v63 + 28), v53);
  v64 = type metadata accessor for Proto_FeatureType(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v64);
  sub_25763559C(v53);
  if (EnumTagSinglePayload == 1)
  {
    v101 = v18;
    v108 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_8_19();
    v66 = sub_257743604();
    v68 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = *(v54 + 16);
      sub_25746996C();
      v54 = v97;
      v109 = v97;
    }

    v70 = *(v54 + 16);
    if (v70 >= *(v54 + 24) >> 1)
    {
      sub_25746996C();
      v54 = v98;
    }

    *(v54 + 16) = v70 + 1;
    v71 = v54 + 48 * v70;
    *(v71 + 32) = 0;
    *(v71 + 40) = xmmword_25776E6F0;
    *(v71 + 56) = 3;
    *(v71 + 64) = v66;
    *(v71 + 72) = v68;
    v109 = v54;
    v18 = v101;
  }

  FeatureDescription.type.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v75 = OUTLINED_FUNCTION_166();
      v47 = v103;
      sub_25767071C(v75, v103, v76);
      v77 = OUTLINED_FUNCTION_1_39();
      sub_257692C54(v77, v78, v79);
      OUTLINED_FUNCTION_7_21();
      v72 = type metadata accessor for FeatureType.ImageParameters;
      goto LABEL_20;
    case 4u:
      v73 = OUTLINED_FUNCTION_2_37();
      v47 = v106;
      sub_25767071C(v73, v106, v74);
      OUTLINED_FUNCTION_1_39();
      sub_257702A64();
      OUTLINED_FUNCTION_7_21();
      v72 = type metadata accessor for FeatureType.ShapedArrayParameters;
      goto LABEL_20;
    case 5u:
      v87 = OUTLINED_FUNCTION_166();
      v47 = v102;
      sub_25767071C(v87, v102, v88);
      OUTLINED_FUNCTION_1_39();
      sub_25772D020(v89);
      OUTLINED_FUNCTION_7_21();
      v72 = type metadata accessor for FeatureType.DictionaryParameters;
      goto LABEL_20;
    case 6u:
      v90 = OUTLINED_FUNCTION_166();
      v47 = v104;
      sub_25767071C(v90, v104, v91);
      v92 = OUTLINED_FUNCTION_1_39();
      sub_2576D7438(v92, v93, v94);
      OUTLINED_FUNCTION_7_21();
      v72 = type metadata accessor for FeatureType.SequenceParameters;
      goto LABEL_20;
    case 7u:
      v80 = OUTLINED_FUNCTION_166();
      sub_25767071C(v80, v18, v81);
      FeatureType.StateParameters.elementType.getter(v105);
      v82 = OUTLINED_FUNCTION_2_37();
      v83 = v106;
      sub_25767071C(v82, v106, v84);
      sub_257702A64();
      sub_25767077C(v83, type metadata accessor for FeatureType.ShapedArrayParameters);
      OUTLINED_FUNCTION_7_21();
      v85 = type metadata accessor for FeatureType.StateParameters;
      v86 = v18;
      goto LABEL_21;
    default:
      v72 = type metadata accessor for FeatureType;
LABEL_20:
      v85 = v72;
      v86 = v47;
LABEL_21:
      result = sub_25767077C(v86, v85);
      *a3 = v109;
      return result;
  }
}

uint64_t sub_25767071C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_25767077C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_39()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_7_21()
{
  v2 = *(v0 - 96);

  sub_25763D14C(v2);
}

uint64_t NeuralNetwork.Layer.L2NormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_9_18();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v6;
  return v1;
}

uint64_t NeuralNetwork.Layer.L2NormalizeParameters.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Proto_L2NormalizeLayerParams(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.L2NormalizeParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_L2NormalizeLayerParams(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_37();
    sub_2576713A8(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.LRNParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  *(v1 + 32) = 0x6168706C41;
  *(v1 + 40) = 0xE500000000000000;
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  *(v1 + 64) = 1635018050;
  *(v1 + 72) = 0xE400000000000000;
  v4 = v0[1];
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v5;
  *(v1 + 96) = 0x6953206C61636F4CLL;
  *(v1 + 104) = 0xEA0000000000657ALL;
  v10 = *(v0 + 1);
  *(v1 + 112) = sub_257743974();
  *(v1 + 120) = v6;
  *(v1 + 128) = 107;
  *(v1 + 136) = 0xE100000000000000;
  v7 = v0[4];
  *(v1 + 144) = sub_257743794();
  *(v1 + 152) = v8;
  return v1;
}

uint64_t NeuralNetwork.Layer.LRNParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_LRNLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.LRNParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(type metadata accessor for Proto_LRNLayerParams(0) + 32);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_37();
    sub_2576713A8(v3, v4);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0xD000000000000010;
  *(v1 + 40) = 0x8000000257780CE0;
  v2 = *(v0 + *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v20 = v2;
    v21 = v1;
    v22 = MEMORY[0x277D84F90];

    sub_257483754(0, v4, 0);
    v5 = 32;
    do
    {
      v23 = *(v3 + v5);
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v22 + 16);
      v9 = *(v22 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v22 + 16) = v10 + 1;
      v11 = v22 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v5 += 8;
      --v4;
    }

    while (v4);

    v2 = v20;
    v1 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  *(v1 + 48) = v12;
  *(v1 + 56) = v14;
  OUTLINED_FUNCTION_9_18();
  *(v1 + 64) = v15;
  *(v1 + 72) = v16;
  OUTLINED_FUNCTION_296();
  v17 = *(v2 + 24);
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v18;
  return v1;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.namedWeights.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = *(v1 - 8);
  v69 = v1;
  v70 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  v68 = v4;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v5);
  v7 = (&v65 - v6);
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_0();
  v67 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for NeuralNetwork.WeightParameters();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_25_0();
  v66 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  v19 = (&v65 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_25_0();
  v65 = v22;
  OUTLINED_FUNCTION_158();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v32 = *(v0 + *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20));
  v33 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__gamma;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v32 + v33, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v8);
  sub_25749E940(v31);
  v35 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_25749E8D0(v32 + v33, v29);
    OUTLINED_FUNCTION_65(v29);
    if (v36)
    {
      *v13 = MEMORY[0x277D84F90];
      *(v13 + 8) = xmmword_257745740;
      *(v13 + 24) = xmmword_257745740;
      *(v13 + 40) = xmmword_257745740;
      v13[56] = 0;
      v37 = &v13[*(v8 + 36)];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v38 = *(v8 + 40);
      v39 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(&v13[v38], 1, 1, v39);
      OUTLINED_FUNCTION_65(v29);
      if (!v36)
      {
        sub_25749E940(v29);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_25749EA18(v29, v13, v40);
    }

    sub_2576FF45C(v13, v19);
    v41 = *(v69 + 48);
    *v7 = 0x616D6D6147;
    v7[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v19, v7 + v42, v43);
    sub_257469D34();
    v35 = v44;
    if (*(v44 + 16) >= *(v44 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_4();
      v35 = v61;
    }

    OUTLINED_FUNCTION_6_28();
    sub_25749E9A8(v7, v45);
  }

  v46 = OBJC_IVAR____TtCV20MLModelSpecification35Proto_LayerNormalizationLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__beta;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v32 + v46, v26);
  v47 = __swift_getEnumTagSinglePayload(v26, 1, v8);
  sub_25749E940(v26);
  if (v47 != 1)
  {
    v48 = v65;
    sub_25749E8D0(v32 + v46, v65);
    OUTLINED_FUNCTION_65(v48);
    if (v36)
    {
      v52 = v67;
      *v67 = MEMORY[0x277D84F90];
      *(v52 + 1) = xmmword_257745740;
      *(v52 + 3) = xmmword_257745740;
      *(v52 + 5) = xmmword_257745740;
      *(v52 + 56) = 0;
      v49 = v52 + *(v8 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v50 = *(v8 + 40);
      v51 = type metadata accessor for Proto_QuantizationParams(0);
      __swift_storeEnumTagSinglePayload(v52 + v50, 1, 1, v51);
      OUTLINED_FUNCTION_65(v48);
      v54 = v68;
      if (!v36)
      {
        sub_25749E940(v48);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      v52 = v67;
      sub_25749EA18(v48, v67, v53);
      v54 = v68;
    }

    v55 = v66;
    sub_2576FF45C(v52, v66);
    v56 = *(v69 + 48);
    *v54 = 1635018050;
    v54[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_25749EA18(v55, v54 + v57, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = *(v35 + 16);
      sub_257469D34();
      v35 = v63;
    }

    if (*(v35 + 16) >= *(v35 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_4();
      v35 = v64;
    }

    OUTLINED_FUNCTION_6_28();
    sub_25749E9A8(v54, v59);
  }

  return v35;
}

uint64_t NeuralNetwork.Layer.LayerNormalizeParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_LayerNormalizationLayerParams(0) + 20);
  if (qword_27F8798C0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27F87BF48;
}

uint64_t sub_2576713A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257671510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static NeuralNetwork.Layer.scatterND(name:inputNames:outputName:mode:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_12_13();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = v6;
  *(v21 + 40) = v4;
  *v19 = 0;
  *(v19 + 8) = 1;
  v22 = *(type metadata accessor for Proto_ScatterNDLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v19 = v20;
  *(v19 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v8 + v23) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v0);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v24);
  sub_257634BB4(v19);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.scatterND(mode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_6_29(a1, a2) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void sub_2576718A4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_12_13();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  v23 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = v9;
  *(v24 + 40) = v7;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  LODWORD(v2) = *(v2(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v22 = v27;
  *(v22 + 8) = v23;
  *(v22 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v11 + v25) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v0);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v26);
  sub_257634BB4(v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257671A9C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = a4 + *(a3(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = 1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ScatterNDParameters.init(mode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(OUTLINED_FUNCTION_6_29(a1, a2) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t sub_257671B94@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = a4 + *(a3(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = 1;
  return result;
}

void NeuralNetwork.Layer.ScatterParameters.mode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t (*NeuralNetwork.Layer.ScatterParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

unsigned __int8 *NeuralNetwork.Layer.ScatterParameters.mode.setter(unsigned __int8 *result)
{
  *(v1 + 8) = *result;
  *(v1 + 16) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ScatterParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_257671CA0;
}

uint64_t *sub_257671CA0(uint64_t *result)
{
  v1 = *result;
  *(v1 + 8) = *(result + 8);
  *(v1 + 16) = 1;
  return result;
}

double NeuralNetwork.Layer.ScatterNDParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = *v0;
    v2 = 0xE600000000000000;
    v3 = 0x657461647055;
    switch(v1)
    {
      case 1:
        v2 = 0xE300000000000000;
        v3 = 6579265;
        break;
      case 2:
        v2 = 0xE800000000000000;
        v3 = 0x7463617274627553;
        break;
      case 3:
        v2 = 0xE800000000000000;
        v3 = 0x796C7069746C754DLL;
        break;
      case 4:
        v3 = 0x656469766944;
        break;
      case 5:
        v2 = 0xE700000000000000;
        v4 = 1769496909;
        goto LABEL_10;
      case 6:
        v2 = 0xE700000000000000;
        v4 = 1768843597;
LABEL_10:
        v3 = v4 | 0x6D756D00000000;
        break;
      default:
        break;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x657461647055;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  return result;
}

void NeuralNetwork.Layer.ScatterNDParameters.mode.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NeuralNetwork.Layer.ScatterNDParameters.mode.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ScatterNDParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

void NeuralNetwork.Layer.ScatterNDParameters.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = sub_257743A84();
  v25 = OUTLINED_FUNCTION_35_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters(0);
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  sub_2576724E4(v20, v44 - v43, type metadata accessor for NeuralNetwork.Layer.ScatterNDParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2577442B0;
  *(v45 + 32) = 1701080941;
  *(v45 + 40) = 0xE400000000000000;
  *(v45 + 72) = &type metadata for NeuralNetwork.Layer.ScatterMode;
  NeuralNetwork.Layer.ScatterNDParameters.mode.getter((v45 + 48));
  v46 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v46);
  (*(v27 + 104))(v32, *MEMORY[0x277D84C38], v21);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV17ScatterParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  if (*(v0 + 16) == 1)
  {
    v1 = 0xE600000000000000;
    v2 = 0x657461647055;
    switch(v0[1])
    {
      case 1:
        v1 = 0xE300000000000000;
        v2 = 6579265;
        break;
      case 2:
        v1 = 0xE800000000000000;
        v2 = 0x7463617274627553;
        break;
      case 3:
        v1 = 0xE800000000000000;
        v2 = 0x796C7069746C754DLL;
        break;
      case 4:
        v2 = 0x656469766944;
        break;
      case 5:
        v1 = 0xE700000000000000;
        v3 = 1769496909;
        goto LABEL_10;
      case 6:
        v1 = 0xE700000000000000;
        v3 = 1768843597;
LABEL_10:
        v2 = v3 | 0x6D756D00000000;
        break;
      default:
        break;
    }
  }

  else
  {
    v1 = 0xE600000000000000;
    v2 = 0x657461647055;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  *(v4 + 32) = 1936291905;
  *(v4 + 40) = 0xE400000000000000;
  v7 = *v0;
  *(v4 + 48) = sub_257743974();
  *(v4 + 56) = v5;
  *(v4 + 64) = 1701080909;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v2;
  *(v4 + 88) = v1;
  return v4;
}

uint64_t (*NeuralNetwork.Layer.ScatterAlongAxisParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257673058;
}

uint64_t sub_25767247C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576724E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t *(*NeuralNetwork.Layer.ScatterAlongAxisParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25767306C;
}

uint64_t static NeuralNetwork.Layer.ScatterAlongAxisParameters.== infix(_:_:)(void *a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = *(a2 + 8);
    if (*(a2 + 16) == 1)
    {
      switch(v3)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_7;
        case 5:
          if (v2 != 5)
          {
            return 0;
          }

          goto LABEL_7;
        case 6:
          if (v2 != 6)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v2)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v2 == v3)
    {
LABEL_7:
      v4 = *(type metadata accessor for Proto_ScatterAlongAxisLayerParams(0) + 24);
      sub_2577431B4();
      sub_25767247C(&qword_27F879B68, MEMORY[0x277D216C8]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_257672704(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_19();

  return sub_2577435F4();
}

uint64_t sub_2576727B8(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_9_19();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257672884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_9_19();
  sub_2577435F4();
  return sub_257743A64();
}

void sub_257672940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_257743A84();
  v31 = OUTLINED_FUNCTION_35_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  v45 = v29(0);
  OUTLINED_FUNCTION_4(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  sub_2576724E4(v20, &a9 - v49, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_257743FF0;
  *(v50 + 32) = 1936291937;
  *(v50 + 40) = 0xE400000000000000;
  v51 = MEMORY[0x277D83B88];
  *(v50 + 48) = *v20;
  *(v50 + 72) = v51;
  *(v50 + 80) = 1701080941;
  *(v50 + 88) = 0xE400000000000000;
  *(v50 + 120) = &type metadata for NeuralNetwork.Layer.ScatterMode;
  v25();
  v52 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v52);
  (*(v33 + 104))(v38, *MEMORY[0x277D84C38], v21);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

unint64_t NeuralNetwork.Layer.ScatterMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257672D40@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ScatterMode.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257672D6C()
{
  result = qword_27F8809B8;
  if (!qword_27F8809B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8809B8);
  }

  return result;
}

uint64_t sub_257672E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s11ScatterModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11ScatterModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_29@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;

  return type metadata accessor for Proto_ScatterNDLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_25767247C(v1, v0);
}

void sub_2576730B4()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Value();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v51 = v6 - v5;
  v7 = OUTLINED_FUNCTION_153();
  v54 = type metadata accessor for MLProgram.Argument.Binding(v7);
  v8 = OUTLINED_FUNCTION_63(v54);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  MLProgram.Argument.bindings.getter();
  v20 = *(v19 + 16);

  MLProgram.Argument.bindings.getter();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v20 != 1)
  {
    if (v23)
    {
      v27 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
      sub_257484040(v27, v23, 0);
      v28 = v57;
      v29 = *(v10 + 80);
      OUTLINED_FUNCTION_193();
      v50 = v22;
      v31 = v22 + v30;
      v52 = *(v10 + 72);
      v53 = v0;
      do
      {
        sub_257677F00(v31, v16);
        v32 = OUTLINED_FUNCTION_322();
        sub_257677F00(v32, v33);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_1_40();
          v34 = v51;
          sub_257675D28(v0, v51);
          sub_25771810C();
          v36 = v35;
          v38 = v37;
          v40 = v39;
          OUTLINED_FUNCTION_5_28();
          sub_257677F58(v34, v41);
        }

        else
        {
          v42 = *v0;
          v43 = v0[1];
          v55 = 0x2228666552;
          v56 = 0xE500000000000000;
          MEMORY[0x259C64E90](v42, v43);

          MEMORY[0x259C64E90](10530, 0xE200000000000000);
          v40 = 0;
          v36 = v55;
          v38 = v56;
        }

        OUTLINED_FUNCTION_0_51();
        v44 = v16;
        sub_257677F58(v16, v45);
        v57 = v28;
        v47 = *(v28 + 16);
        v46 = *(v28 + 24);
        if (v47 >= v46 >> 1)
        {
          v49 = OUTLINED_FUNCTION_13_1(v46);
          sub_257484040(v49, v47 + 1, 1);
          v28 = v57;
        }

        *(v28 + 16) = v47 + 1;
        v48 = v28 + 24 * v47;
        *(v48 + 32) = v36;
        *(v48 + 40) = v38;
        *(v48 + 48) = v40;
        v31 += v52;
        --v23;
        v16 = v44;
        v0 = v53;
      }

      while (v23);
    }

    goto LABEL_13;
  }

  if (v23)
  {
    v24 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_2_38();
    sub_257677F00(v22 + v25, v18);

    sub_257676174();
    OUTLINED_FUNCTION_0_51();
    sub_257677F58(v18, v26);
LABEL_13:
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
}

void sub_2576733B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v152 = v24;
  v25 = OUTLINED_FUNCTION_30();
  v26 = type metadata accessor for MLProgram.Value.BlobFileValue(v25);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v151 = (v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  OUTLINED_FUNCTION_13(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v156 = (&v147 - v36);
  v37 = OUTLINED_FUNCTION_153();
  v150 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v37);
  v38 = OUTLINED_FUNCTION_4(v150);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_196();
  v43 = OUTLINED_FUNCTION_38_0(v42);
  v148 = type metadata accessor for MLProgram.Value.ImmediateValue(v43);
  v44 = OUTLINED_FUNCTION_4(v148);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v153 = (v48 - v47);
  v49 = OUTLINED_FUNCTION_153();
  v50 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v49);
  v51 = OUTLINED_FUNCTION_13(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  v155 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_196();
  v154 = v56;
  v57 = OUTLINED_FUNCTION_153();
  v167 = type metadata accessor for MLProgram.Value.Representation(v57);
  v58 = OUTLINED_FUNCTION_4(v167);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  v159 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_196();
  v158 = v63;
  v64 = OUTLINED_FUNCTION_153();
  v163 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v64);
  v65 = OUTLINED_FUNCTION_4(v163);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_25_0();
  v157 = v68;
  OUTLINED_FUNCTION_158();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v147 - v71;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_196();
  v161 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v77);
  v162 = &v147 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  OUTLINED_FUNCTION_13(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_40();
  v83 = type metadata accessor for MLProgram.Value();
  v84 = OUTLINED_FUNCTION_13(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3();
  v89 = v88 - v87;
  v90 = type metadata accessor for MLProgram.Argument.Binding(0);
  v91 = OUTLINED_FUNCTION_63(v90);
  v165 = v92;
  v166 = v91;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_11();
  v97 = v95 - v96;
  MEMORY[0x28223BE20](v98);
  v100 = &v147 - v99;
  v168 = v20;
  MLProgram.Argument.bindings.getter();
  v102 = *(v101 + 16);

  v164 = v102;
  if (v102)
  {
    v103 = 0;
    v160 = v89;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      if (v103 >= *(v104 + 16))
      {
        break;
      }

      v105 = v72;
      v106 = *(v165 + 80);
      OUTLINED_FUNCTION_193();
      sub_257677F00(v107 + v108 + *(v109 + 72) * v103, v100);

      sub_257677F00(v100, v97);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_257675D28(v97, v89);
        v110 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
        v111 = v162;
        sub_257487308();
        v112 = 1;
        OUTLINED_FUNCTION_155(v111, 1, v163);
        v72 = v105;
        if (!v113)
        {
          v114 = v161;
          sub_257675D28(v162, v161);
          OUTLINED_FUNCTION_31_7();
          sub_257677F00(v114, v105);
          v115 = v157;
          sub_257677F00(v105, v157);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v105, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            sub_257677F58(v161, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            OUTLINED_FUNCTION_4_27();
            v116 = v115;
            v72 = v105;
            v117 = v158;
            sub_257675D28(v116, v158);
            v89 = v160;
          }

          else
          {
            v118 = v115;
            v119 = v154;
            sub_257675D28(v118, v154);
            OUTLINED_FUNCTION_22_13();
            sub_257677F00(v119, v155);
            v120 = v156;
            sub_257487308();
            OUTLINED_FUNCTION_155(v120, 1, v150);
            if (v113)
            {
              sub_2574695E4(v156, &qword_27F87B190, &qword_25774C170);
              OUTLINED_FUNCTION_36_6();
              sub_257677F58(v155, v121);
              sub_257677F58(v154, v120);
              OUTLINED_FUNCTION_34_7();
              sub_257677F58(v105, v122);
              sub_257677F58(v161, v120);
              v123 = v153;
              *v153 = MEMORY[0x277D84F90];
              v123[1] = 0;
              *(v123 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v124 = v149;
              sub_257675D28(v156, v149);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_38_6(&a18);
              sub_257677F00(v125, v126);
              sub_257663CD4();
              OUTLINED_FUNCTION_19_16();
              v127 = v124;
              v72 = v105;
              sub_257677F58(v127, v128);
              OUTLINED_FUNCTION_36_6();
              sub_257677F58(v155, v129);
              sub_257677F58(v154, v120);
              OUTLINED_FUNCTION_34_7();
              sub_257677F58(v105, v130);
              sub_257677F58(v161, v120);
            }

            v89 = v160;
            OUTLINED_FUNCTION_7_22();
            v117 = v158;
            sub_257675D28(v153, v158);
          }

          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          sub_257675D28(v117, v21);
          v112 = 0;
        }

        v131 = v112;
        v132 = v167;
        __swift_storeEnumTagSinglePayload(v21, v131, 1, v167);
        OUTLINED_FUNCTION_155(v21, 1, v132);
        if (v113)
        {
          sub_257677F58(v89, type metadata accessor for MLProgram.Value);
          OUTLINED_FUNCTION_0_51();
          sub_257677F58(v100, v133);
          sub_2574695E4(v21, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          v134 = v159;
          sub_257677F00(v21, v159);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 1)
          {
            v136 = v21;
            v137 = v151;
            sub_257675D28(v134, v151);
            v138 = *v137;
            v139 = v137[1];

            v140 = v139;
            v72 = v105;
            sub_25771BACC(&v169, v138, v140);

            v141 = v137;
            v21 = v136;
            v89 = v160;
            sub_257677F58(v141, type metadata accessor for MLProgram.Value.BlobFileValue);
            OUTLINED_FUNCTION_5_28();
            sub_257677F58(v89, v142);
            OUTLINED_FUNCTION_0_51();
            v144 = v100;
          }

          else
          {
            sub_257677F58(v89, type metadata accessor for MLProgram.Value);
            OUTLINED_FUNCTION_0_51();
            sub_257677F58(v100, v145);
            OUTLINED_FUNCTION_3_38();
            v144 = v134;
          }

          sub_257677F58(v144, v143);
          OUTLINED_FUNCTION_3_38();
          sub_257677F58(v21, v146);
        }
      }

      else
      {
        sub_257677F58(v100, type metadata accessor for MLProgram.Argument.Binding);
        sub_257677F58(v97, type metadata accessor for MLProgram.Argument.Binding);
      }

      if (v164 == ++v103)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_35();
  }
}

void sub_257673C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v212 = v26;
  v27 = OUTLINED_FUNCTION_30();
  v28 = type metadata accessor for MLProgram.Value.BlobFileValue(v27);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_196();
  v211 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  v35 = OUTLINED_FUNCTION_13(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_196();
  v220 = v39;
  v40 = OUTLINED_FUNCTION_153();
  v219 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v40);
  v41 = OUTLINED_FUNCTION_4(v219);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_196();
  v46 = OUTLINED_FUNCTION_38_0(v45);
  v209 = type metadata accessor for MLProgram.Value.ImmediateValue(v46);
  v47 = OUTLINED_FUNCTION_4(v209);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_196();
  v52 = OUTLINED_FUNCTION_38_0(v51);
  v214 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v52);
  v53 = OUTLINED_FUNCTION_4(v214);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v224 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_196();
  v223 = v58;
  v59 = OUTLINED_FUNCTION_153();
  v228 = type metadata accessor for MLProgram.Value.Representation(v59);
  v60 = OUTLINED_FUNCTION_4(v228);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v208 - v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_196();
  v222 = v68;
  v69 = OUTLINED_FUNCTION_153();
  v239 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v69);
  v70 = OUTLINED_FUNCTION_4(v239);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_25_0();
  v221 = v73;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_167();
  v227 = v75;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_196();
  v231 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  v79 = OUTLINED_FUNCTION_13(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_11();
  v84 = v82 - v83;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_167();
  v226 = v86;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_196();
  v233 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v90 = OUTLINED_FUNCTION_13(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_25_0();
  v225 = v93;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_167();
  v230 = v95;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_167();
  v229 = v97;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_196();
  v232 = v99;
  v100 = OUTLINED_FUNCTION_153();
  v101 = type metadata accessor for MLProgram.Argument.Binding(v100);
  v102 = OUTLINED_FUNCTION_63(v101);
  v237 = v103;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_3();
  v238 = v107 - v106;
  OUTLINED_FUNCTION_153();
  v108 = type metadata accessor for MLProgram.Value();
  v109 = OUTLINED_FUNCTION_13(v108);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_3();
  v236 = v113 - v112;
  v240 = v20;
  MLProgram.Argument.bindings.getter();
  v115 = *(v114 + 16);

  v235 = v115;
  if (v115)
  {
    v210 = v66;
    v215 = v21;
    v213 = v25;
    v116 = 0;
    v117 = v228;
    v217 = v84;
    v118 = v232;
    v216 = v101;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      v120 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v120);
        v120 = v206;
      }

      v121 = v238;
      if (v116 >= *(v120 + 16))
      {
        break;
      }

      v122 = *(v237 + 80);
      OUTLINED_FUNCTION_193();
      v125 = v120 + v123 + *(v124 + 72) * v116;
      OUTLINED_FUNCTION_2_38();
      sub_257677F00(v125, v121);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_257677F58(v125, type metadata accessor for MLProgram.Argument.Binding);
        OUTLINED_FUNCTION_1_40();
        sub_257675D28(v121, v236);
        v234 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
        v126 = v233;
        sub_257487308();
        v127 = 1;
        OUTLINED_FUNCTION_155(v126, 1, v239);
        if (!v128)
        {
          v129 = v231;
          sub_257675D28(v233, v231);
          OUTLINED_FUNCTION_31_7();
          v130 = v129;
          v131 = v227;
          sub_257677F00(v130, v227);
          v132 = v221;
          sub_257677F00(v131, v221);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v131, type metadata accessor for Proto_MILSpec_Value.OneOf_Value);
            OUTLINED_FUNCTION_4_27();
            sub_257675D28(v132, v222);
          }

          else
          {
            v133 = v223;
            sub_257675D28(v132, v223);
            OUTLINED_FUNCTION_22_13();
            sub_257677F00(v133, v224);
            v134 = v220;
            sub_257487308();
            OUTLINED_FUNCTION_155(v134, 1, v219);
            if (v128)
            {
              sub_2574695E4(v220, &qword_27F87B190, &qword_25774C170);
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v224, v135);
              v136 = v218;
              *v218 = MEMORY[0x277D84F90];
              v136[1] = 0;
              *(v136 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              OUTLINED_FUNCTION_38_6(&v236);
              sub_257675D28(v137, v138);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_29_10(&v237);
              sub_257677F00(v139, v140);
              v117 = v228;
              sub_257663CD4();
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v224, v141);
              OUTLINED_FUNCTION_19_16();
              sub_257677F58(v134, v142);
            }

            v143 = v222;
            v118 = v232;
            OUTLINED_FUNCTION_7_22();
            sub_257675D28(v218, v143);
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v227, v144);
            OUTLINED_FUNCTION_6_30();
            sub_257677F58(v223, v145);
          }

          OUTLINED_FUNCTION_373();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          v146 = OUTLINED_FUNCTION_44_1();
          sub_257675D28(v146, v147);
          OUTLINED_FUNCTION_9_20();
          sub_257677F58(v231, v148);
          v127 = 0;
        }

        __swift_storeEnumTagSinglePayload(v118, v127, 1, v117);
        v149 = OUTLINED_FUNCTION_64_6();
        if (__swift_getEnumTagSinglePayload(v149, v150, v117))
        {
          v151 = v125;
          v152 = v229;
          sub_257487308();
          v153 = v230;
          sub_257487308();
          v154 = OUTLINED_FUNCTION_64_6();
          OUTLINED_FUNCTION_155(v154, v155, v117);
          if (v128)
          {
            sub_2574695E4(v152, &qword_27F880A30, &qword_25776ED00);
            v156 = sub_2574695E4(v153, &qword_27F880A30, &qword_25776ED00);
            v157 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_38_6(&a13);
            sub_257677F00(v163, v164);
            OUTLINED_FUNCTION_373();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              sub_2574695E4(v229, &qword_27F880A30, &qword_25776ED00);
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10(&a12);
              sub_257675D28(v166, v167);
              OUTLINED_FUNCTION_4_27();
              sub_257675D28(v153, v226);
            }

            else
            {
              OUTLINED_FUNCTION_38_6(&a10);
              sub_257675D28(v181, v182);
              OUTLINED_FUNCTION_44();
              v183 = v219;
              __swift_storeEnumTagSinglePayload(v184, v185, v186, v219);
              OUTLINED_FUNCTION_67_5(&a9);
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1(&a11);
              v187 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v187, v188);
              sub_2574695E4(v229, &qword_27F880A30, &qword_25776ED00);
              v189 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v189, v190, v191, v183);
              sub_25751BB28();
            }

            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_3_38();
            v156 = sub_257677F58(v230, v192);
            v157 = 0;
            v117 = v228;
          }

          OUTLINED_FUNCTION_61_3(v156, v157);
          v193 = v236;
          sub_25751BB28();
          v118 = v232;
          sub_2574695E4(v232, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          OUTLINED_FUNCTION_38_6(&a16);
          sub_257677F00(v158, v159);
          OUTLINED_FUNCTION_373();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_257677F58(v118, type metadata accessor for MLProgram.Value.Representation);
            v160 = v211;
            sub_257675D28(v127, v211);
            v161 = v160[1];
            v162 = v213;

            v118 = v232;
            v117 = v228;

            *v160 = v212;
            v160[1] = v162;
            sub_257675D28(v160, v118);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            sub_257677F58(v127, type metadata accessor for MLProgram.Value.Representation);
          }

          v168 = v118;
          v169 = v225;
          sub_257487308();
          v170 = OUTLINED_FUNCTION_64_6();
          v151 = v125;
          if (__swift_getEnumTagSinglePayload(v170, v171, v117) == 1)
          {
            sub_2574695E4(v168, &qword_27F880A30, &qword_25776ED00);
            v172 = OUTLINED_FUNCTION_205();
            sub_2574695E4(v172, v173, &qword_25776ED00);
            v174 = 1;
            v175 = v239;
            v118 = v168;
            v176 = v217;
          }

          else
          {
            OUTLINED_FUNCTION_38_6(&v238);
            sub_257677F00(v177, v178);
            OUTLINED_FUNCTION_373();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              OUTLINED_FUNCTION_29_10(&a12);
              sub_257675D28(v179, v180);
              OUTLINED_FUNCTION_4_27();
              v176 = v217;
              sub_257675D28(v169, v217);
            }

            else
            {
              OUTLINED_FUNCTION_38_6(&a10);
              sub_257675D28(v194, v195);
              v176 = v217;
              OUTLINED_FUNCTION_44();
              v196 = v219;
              __swift_storeEnumTagSinglePayload(v197, v198, v199, v219);
              OUTLINED_FUNCTION_67_5(&a9);
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1(&a11);
              v200 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v200, v201);
              v202 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v202, v203, v204, v196);
              sub_25751BB28();
            }

            v175 = v239;
            swift_storeEnumTagMultiPayload();
            v118 = v232;
            sub_2574695E4(v232, &qword_27F880A30, &qword_25776ED00);
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v225, v205);
            v174 = 0;
            v117 = v228;
          }

          __swift_storeEnumTagSinglePayload(v176, v174, 1, v175);
          v193 = v236;
          sub_25751BB28();
        }

        sub_257675D28(v193, v151);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_257677F58(v121, type metadata accessor for MLProgram.Argument.Binding);
      }

      ++v116;
      MLProgram.Argument.bindings.setter();
      if (v235 == v116)
      {

        OUTLINED_FUNCTION_35();
        return;
      }
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_35();
  }
}

void sub_257674A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v236 = v24;
  OUTLINED_FUNCTION_30();
  v235 = sub_257743094();
  v25 = OUTLINED_FUNCTION_63(v235);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_38_0(v31 - v30);
  v33 = type metadata accessor for MLProgram.Value.BlobFileValue(v32);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_196();
  v246 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  v40 = OUTLINED_FUNCTION_13(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_196();
  v45 = OUTLINED_FUNCTION_38_0(v44);
  v244 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v45);
  v46 = OUTLINED_FUNCTION_4(v244);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_196();
  v51 = OUTLINED_FUNCTION_38_0(v50);
  v231 = type metadata accessor for MLProgram.Value.ImmediateValue(v51);
  v52 = OUTLINED_FUNCTION_4(v231);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_196();
  v57 = OUTLINED_FUNCTION_38_0(v56);
  v238 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(v57);
  v58 = OUTLINED_FUNCTION_4(v238);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_11();
  v63 = v61 - v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_196();
  v66 = OUTLINED_FUNCTION_38_0(v65);
  v67 = type metadata accessor for MLProgram.Value.Representation(v66);
  v68 = OUTLINED_FUNCTION_4(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_196();
  v75 = OUTLINED_FUNCTION_38_0(v74);
  v259 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v75);
  v76 = OUTLINED_FUNCTION_4(v259);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_196();
  v252 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  v83 = OUTLINED_FUNCTION_13(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  v87 = MEMORY[0x28223BE20](v86);
  v89 = &v230 - v88;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_196();
  v254 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v92 = OUTLINED_FUNCTION_13(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_11();
  v97 = v95 - v96;
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_167();
  v249 = v99;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_167();
  v251 = v101;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_196();
  v262 = v103;
  v104 = OUTLINED_FUNCTION_153();
  v260 = type metadata accessor for MLProgram.Argument.Binding(v104);
  v105 = OUTLINED_FUNCTION_63(v260);
  v257 = v106;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_3();
  v258 = v110 - v109;
  OUTLINED_FUNCTION_153();
  v111 = type metadata accessor for MLProgram.Value();
  v112 = OUTLINED_FUNCTION_13(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_3();
  v256 = v116 - v115;
  v261 = v20;
  MLProgram.Argument.bindings.getter();
  v118 = *(v117 + 16);

  v255 = v118;
  if (v118)
  {
    v119 = 0;
    v233 = (v27 + 16);
    v232 = (v27 + 8);
    v240 = v67;
    v247 = v89;
    v248 = v21;
    v245 = v97;
    v237 = v63;
    while (1)
    {
      MLProgram.Argument.bindings.getter();
      v121 = v120;
      v122 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v121);
        v121 = v229;
      }

      v124 = v258;
      v123 = v259;
      if (v119 >= *(v121 + 16))
      {
        break;
      }

      v125 = *(v257 + 80);
      OUTLINED_FUNCTION_193();
      v128 = v121 + v126 + *(v127 + 72) * v119;
      OUTLINED_FUNCTION_2_38();
      sub_257677F00(v128, v124);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_0_51();
        sub_257677F58(v128, v129);
        OUTLINED_FUNCTION_1_40();
        sub_257675D28(v124, v256);
        v130 = *(type metadata accessor for Proto_MILSpec_Value(0) + 20);
        v131 = v254;
        sub_257487308();
        v132 = 1;
        OUTLINED_FUNCTION_155(v131, 1, v123);
        v67 = v122;
        if (!v133)
        {
          v134 = v252;
          sub_257675D28(v254, v252);
          v135 = v134;
          v136 = v248;
          sub_257677F00(v135, v248);
          v137 = v241;
          sub_257677F00(v136, v241);
          OUTLINED_FUNCTION_205();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v136, v138);
            OUTLINED_FUNCTION_4_27();
            OUTLINED_FUNCTION_29_10(&a14);
            sub_257675D28(v139, v140);
          }

          else
          {
            OUTLINED_FUNCTION_29_10(&a15);
            sub_257675D28(v142, v143);
            OUTLINED_FUNCTION_22_13();
            OUTLINED_FUNCTION_29_10(&v262);
            sub_257677F00(v144, v145);
            v146 = v239;
            sub_257487308();
            OUTLINED_FUNCTION_155(v146, 1, v244);
            if (v133)
            {
              v147 = OUTLINED_FUNCTION_176();
              sub_2574695E4(v147, v148, &qword_25774C170);
              OUTLINED_FUNCTION_6_30();
              sub_257677F58(v137, v149);
              v150 = v243;
              *v243 = MEMORY[0x277D84F90];
              v150[1] = 0;
              *(v150 + 16) = 0;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              OUTLINED_FUNCTION_38_6(&v254);
              sub_257675D28(v151, v152);
              OUTLINED_FUNCTION_20_10();
              OUTLINED_FUNCTION_29_10(&v255);
              sub_257677F00(v153, v154);
              sub_257663CD4();
              OUTLINED_FUNCTION_6_30();
              v67 = v240;
              sub_257677F58(v137, v155);
              OUTLINED_FUNCTION_19_16();
              sub_257677F58(v123, v156);
            }

            OUTLINED_FUNCTION_7_22();
            OUTLINED_FUNCTION_29_10(&a14);
            sub_257675D28(v157, v158);
            OUTLINED_FUNCTION_9_20();
            sub_257677F58(v248, v159);
            OUTLINED_FUNCTION_6_30();
            sub_257677F58(v242, v160);
          }

          OUTLINED_FUNCTION_55_4();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_19();
          sub_257675D28(v137, v262);
          OUTLINED_FUNCTION_9_20();
          sub_257677F58(v252, v161);
          v132 = 0;
        }

        v162 = v262;
        __swift_storeEnumTagSinglePayload(v262, v132, 1, v67);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v162, 1, v67);
        v164 = v251;
        if (EnumTagSinglePayload)
        {
          v253 = v128;
          sub_257487308();
          v165 = v249;
          sub_257487308();
          OUTLINED_FUNCTION_155(v165, 1, v67);
          if (v133)
          {
            v166 = OUTLINED_FUNCTION_176();
            sub_2574695E4(v166, v167, &qword_25776ED00);
            v168 = sub_2574695E4(v165, &qword_27F880A30, &qword_25776ED00);
            v169 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_21_14();
            OUTLINED_FUNCTION_29_10(&a10);
            sub_257677F00(v179, v180);
            OUTLINED_FUNCTION_55_4();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              v182 = OUTLINED_FUNCTION_176();
              sub_2574695E4(v182, v183, &qword_25776ED00);
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10(&v266);
              sub_257675D28(v184, v185);
              OUTLINED_FUNCTION_4_27();
              sub_257675D28(&qword_25776ED00, v247);
            }

            else
            {
              OUTLINED_FUNCTION_7_22();
              OUTLINED_FUNCTION_38_6(&v264);
              sub_257675D28(v187, v188);
              v250 = v130;
              OUTLINED_FUNCTION_44();
              v189 = v164;
              v190 = v244;
              __swift_storeEnumTagSinglePayload(v191, v192, v193, v244);
              OUTLINED_FUNCTION_67_5(&v263);
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1(&v265 + 8);
              v194 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v194, v195);
              sub_2574695E4(v189, &qword_27F880A30, &qword_25776ED00);
              v196 = OUTLINED_FUNCTION_39_7();
              v165 = v249;
              __swift_storeEnumTagSinglePayload(v196, v197, v198, v190);
              sub_25751BB28();
            }

            OUTLINED_FUNCTION_205();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_3_38();
            v168 = sub_257677F58(v165, v199);
            v169 = 0;
          }

          OUTLINED_FUNCTION_61_3(v168, v169);
          sub_25751BB28();
          sub_2574695E4(v262, &qword_27F880A30, &qword_25776ED00);
        }

        else
        {
          OUTLINED_FUNCTION_21_14();
          OUTLINED_FUNCTION_29_10(&a12);
          sub_257677F00(v170, v171);
          OUTLINED_FUNCTION_55_4();
          v172 = swift_getEnumCaseMultiPayload();
          v250 = v130;
          if (v172 == 1)
          {
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v262, v173);
            OUTLINED_FUNCTION_8_20();
            sub_257675D28(v132, v246);
            v174 = v234;
            v175 = v235;
            (*v233)(v234, v236, v235);
            v176 = sub_257743054();
            v178 = v177;
            (*v232)(v174, v175);
            if (sub_2577436F4())
            {
            }

            else
            {
              *&v265 = v176;
              *(&v265 + 1) = v178;

              MEMORY[0x259C64E90](47, 0xE100000000000000);
            }

            v200 = v246;
            v201 = *v246;
            v202 = v246[1];
            OUTLINED_FUNCTION_44_1();
            v203 = sub_2577436E4();

            if (v203)
            {
              OUTLINED_FUNCTION_44_1();
              sub_2577436A4();

              sub_2577436B4();
              v264 = v202;
              strcpy(&v265, "@model_path/");
              BYTE13(v265) = 0;
              HIWORD(v265) = -5120;
              v263 = v201;
              sub_2576682AC();
              sub_257743684();

              v204 = v264;
              *v200 = v263;
              v200[1] = v204;
            }

            else
            {
            }

            OUTLINED_FUNCTION_8_20();
            sub_257675D28(v246, v262);
            v67 = v240;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            OUTLINED_FUNCTION_3_38();
            sub_257677F58(v132, v186);
          }

          v205 = v245;
          sub_257487308();
          OUTLINED_FUNCTION_155(v205, 1, v67);
          if (v133)
          {
            sub_2574695E4(v262, &qword_27F880A30, &qword_25776ED00);
            v206 = sub_2574695E4(v205, &qword_27F880A30, &qword_25776ED00);
            v207 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_21_14();
            OUTLINED_FUNCTION_29_10(&v258);
            sub_257677F00(v208, v209);
            OUTLINED_FUNCTION_55_4();
            v210 = swift_getEnumCaseMultiPayload();
            if (v210 == 1)
            {
              OUTLINED_FUNCTION_8_20();
              OUTLINED_FUNCTION_29_10(&v266);
              sub_257675D28(v211, v212);
              OUTLINED_FUNCTION_4_27();
              OUTLINED_FUNCTION_29_10(&a11);
              sub_257675D28(v213, v214);
            }

            else
            {
              OUTLINED_FUNCTION_7_22();
              OUTLINED_FUNCTION_38_6(&v264);
              sub_257675D28(v215, v216);
              OUTLINED_FUNCTION_44();
              v217 = v244;
              __swift_storeEnumTagSinglePayload(v218, v219, v220, v244);
              OUTLINED_FUNCTION_67_5(&v263);
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              OUTLINED_FUNCTION_68_1(&v265 + 8);
              v221 = OUTLINED_FUNCTION_11_19();
              sub_257677F58(v221, v222);
              v223 = OUTLINED_FUNCTION_39_7();
              __swift_storeEnumTagSinglePayload(v223, v224, v225, v217);
              sub_25751BB28();
            }

            OUTLINED_FUNCTION_205();
            swift_storeEnumTagMultiPayload();
            sub_2574695E4(v262, &qword_27F880A30, &qword_25776ED00);
            OUTLINED_FUNCTION_3_38();
            v206 = sub_257677F58(v245, v226);
            v207 = 0;
          }

          OUTLINED_FUNCTION_61_3(v206, v207);
          sub_25751BB28();
        }

        OUTLINED_FUNCTION_1_40();
        v227 = OUTLINED_FUNCTION_373();
        sub_257675D28(v227, v228);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        OUTLINED_FUNCTION_0_51();
        sub_257677F58(v124, v141);
        v67 = v122;
      }

      ++v119;
      MLProgram.Argument.bindings.setter();
      if (v255 == v119)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_35();
  }
}

void MLProgram.Argument.bindings.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v60 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_196();
  v65 = v12;
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for MLProgram.Argument.Binding(v13);
  v15 = OUTLINED_FUNCTION_63(v14);
  v63 = v16;
  v64 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_167();
  v62 = v23;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_167();
  v61 = v25;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_196();
  v66 = v27;
  v28 = OUTLINED_FUNCTION_153();
  v29 = type metadata accessor for Proto_MILSpec_Argument.Binding(v28);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(*v1 + 16);
  if (v34)
  {
    v35 = *v1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v36 = *(v31 + 72);
    v37 = MEMORY[0x277D84F90];
    do
    {
      sub_257677F00(v35, v33);
      sub_257487308();
      sub_257677F58(v33, type metadata accessor for Proto_MILSpec_Argument.Binding);
      v38 = OUTLINED_FUNCTION_64_6();
      OUTLINED_FUNCTION_155(v38, v39, v6);
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_205();
        sub_2574695E4(v41, v42, &qword_257744798);
      }

      else
      {
        v43 = v6;
        v44 = v65;
        sub_257675D28(v0, v65);
        v45 = v60;
        sub_257675D28(v44, v60);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_17_14();
          sub_257675D28(v45, v21);
        }

        else
        {
          v47 = v45[1];
          *v21 = *v45;
          v21[1] = v47;
        }

        swift_storeEnumTagMultiPayload();
        v48 = v62;
        sub_257675D28(v21, v62);
        v49 = v48;
        v50 = v61;
        sub_257675D28(v49, v61);
        sub_257675D28(v50, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_257469E14(0, *(v37 + 16) + 1, 1, v37);
          v37 = v57;
        }

        v52 = *(v37 + 16);
        v51 = *(v37 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_257469E14(v51 > 1, v52 + 1, 1, v37);
          v37 = v58;
        }

        *(v37 + 16) = v52 + 1;
        v53 = *(v63 + 80);
        OUTLINED_FUNCTION_193();
        v55 = *(v54 + 72);
        OUTLINED_FUNCTION_23_12();
        sub_257675D28(v66, v56);
        v6 = v43;
      }

      v35 += v36;
      --v34;
    }

    while (v34);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_257675D28(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

void sub_257675D80(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Argument.bindings.setter();
}

void MLProgram.Argument.bindings.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for MLProgram.Value();
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v49 = v8 - v7;
  v9 = OUTLINED_FUNCTION_153();
  v52 = type metadata accessor for MLProgram.Argument.Binding(v9);
  v10 = OUTLINED_FUNCTION_63(v52);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v51 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  v21 = OUTLINED_FUNCTION_63(v51);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v28 = (v27 - v26);
  v29 = *(v2 + 16);
  if (v29)
  {
    v48 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484B30();
    v30 = v53;
    v31 = *(v12 + 80);
    OUTLINED_FUNCTION_193();
    v47[1] = v2;
    v33 = v2 + v32;
    v50 = *(v12 + 72);
    do
    {
      sub_257677F00(v33, v20);
      v34 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
      v38 = v28 + *(v51 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v28, &qword_27F879E70, &qword_257744798);
      sub_257677F00(v20, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_1_40();
        v39 = v49;
        sub_257675D28(v17, v49);
        OUTLINED_FUNCTION_17_14();
        sub_257675D28(v39, v28);
      }

      else
      {
        v40 = v17[1];
        *v28 = *v17;
        v28[1] = v40;
      }

      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v34);
      OUTLINED_FUNCTION_0_51();
      sub_257677F58(v20, v41);
      v53 = v30;
      v43 = *(v30 + 16);
      v42 = *(v30 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v42);
        sub_257484B30();
        v30 = v53;
      }

      *(v30 + 16) = v43 + 1;
      v44 = *(v23 + 80);
      OUTLINED_FUNCTION_193();
      sub_257675D28(v28, v30 + v45 + *(v23 + 72) * v43);
      v33 += v50;
      --v29;
    }

    while (v29);

    v0 = v48;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v46 = *v0;

  *v0 = v30;
  OUTLINED_FUNCTION_35();
}

void (*MLProgram.Argument.bindings.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Argument.bindings.getter();
  *a1 = v3;
  return sub_25767611C;
}

void sub_25767611C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    MLProgram.Argument.bindings.setter();
  }

  else
  {
    v5 = *a1;
    MLProgram.Argument.bindings.setter();
  }
}

uint64_t sub_257676174()
{
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_47_7();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_2_38();
  v10 = OUTLINED_FUNCTION_292();
  sub_257677F00(v10, v11);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v12 = OUTLINED_FUNCTION_205();
    sub_257675D28(v12, v13);
    sub_25771810C();
    v15 = v14;
    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v1, v16);
  }

  else
  {
    MEMORY[0x259C64E90](*v0, v0[1]);

    MEMORY[0x259C64E90](10530, 0xE200000000000000);
    return 0x2228666552;
  }

  return v15;
}

uint64_t MLProgram.Argument.init(binding:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = v1 + *(type metadata accessor for Proto_MILSpec_Argument(v3) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E80, &qword_2577447A8);
  v5 = (type metadata accessor for Proto_MILSpec_Argument.Binding(0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2577442B0;
  v9 = v8 + v7;
  v10 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = v9 + v5[7];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574695E4(v9, &qword_27F879E70, &qword_257744798);
  sub_257676FD8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  OUTLINED_FUNCTION_0_51();
  result = sub_257677F58(a1, v15);
  *v1 = v8;
  return result;
}

void sub_2576763E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MLProgram.Value();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v44 - v12);
  v51 = type metadata accessor for MLProgram.Argument.Binding(0);
  v14 = *(v51 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v51);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v49 = &v44 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v44 - v22);
  MEMORY[0x28223BE20](v21);
  v54 = &v44 - v24;
  v25 = *(type metadata accessor for Proto_MILSpec_Argument(0) + 20);
  v44 = a2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_257484B30();
  v27 = v55;
  v50 = v14;
  if (!v26)
  {
    goto LABEL_10;
  }

  v28 = 0;
  v29 = *(a1 + 16);
  v46 = a1;
  v47 = v29;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  while (v47 != v28)
  {
    v30 = v45 + *(v14 + 72) * v28;
    v31 = v49;
    sub_257677F00(v30, v49);
    v32 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v32);
    v33 = v11 + *(v53 + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    sub_2574695E4(v11, &qword_27F879E70, &qword_257744798);
    sub_257677F00(v31, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v48;
      sub_257675D28(v18, v48);
      sub_257675D28(v34, v11);
    }

    else
    {
      v35 = v18[1];
      *v11 = *v18;
      v11[1] = v35;
    }

    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v32);
    sub_257677F58(v49, type metadata accessor for MLProgram.Argument.Binding);
    v55 = v27;
    v36 = *(v27 + 16);
    if (v36 >= *(v27 + 24) >> 1)
    {
      sub_257484B30();
      v27 = v55;
    }

    ++v28;
    *(v27 + 16) = v36 + 1;
    sub_257675D28(v11, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v36);
    a1 = v46;
    v14 = v50;
    if (v26 == v28)
    {
      while (1)
      {
LABEL_10:
        v37 = *(a1 + 16);
        if (v26 == v37)
        {

          *v44 = v27;
          return;
        }

        if (v26 >= v37)
        {
          break;
        }

        v38 = v54;
        sub_257677F00(a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v26, v54);
        v39 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v39);
        v40 = v13 + *(v53 + 20);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        sub_2574695E4(v13, &qword_27F879E70, &qword_257744798);
        sub_257677F00(v38, v23);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = v48;
          sub_257675D28(v23, v48);
          sub_257675D28(v41, v13);
        }

        else
        {
          v42 = v23[1];
          *v13 = *v23;
          v13[1] = v42;
        }

        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v13, 0, 1, v39);
        sub_257677F58(v54, type metadata accessor for MLProgram.Argument.Binding);
        v55 = v27;
        v43 = *(v27 + 16);
        if (v43 >= *(v27 + 24) >> 1)
        {
          sub_257484B30();
          v27 = v55;
        }

        *(v27 + 16) = v43 + 1;
        sub_257675D28(v13, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v43);
        ++v26;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

uint64_t MLProgram.Argument.init<A>(bindings:)()
{
  v3 = OUTLINED_FUNCTION_60_2();
  v4 = v2 + *(type metadata accessor for Proto_MILSpec_Argument(v3) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = type metadata accessor for Proto_MILSpec_Argument.Binding(0);
  v10 = OUTLINED_FUNCTION_62_5(v5, v6, v7, v5, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  result = (*(*(v1 - 8) + 8))(v0, v1);
  *v2 = v10;
  return result;
}

uint64_t sub_257676AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_MILSpec_Argument.Binding(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2574695E4(a1, &qword_27F879E70, &qword_257744798);
  sub_257676FD8();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

BOOL static MLProgram.Argument.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v1 = *v0;
  v3 = *v2;
  sub_25747CD74();
  result = 0;
  if (v4)
  {
    v5 = *(type metadata accessor for Proto_MILSpec_Argument(0) + 20);
    sub_2577431B4();
    sub_257677FB0(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t MLProgram.Argument.hash(into:)()
{
  type metadata accessor for Proto_MILSpec_Argument(0);
  OUTLINED_FUNCTION_33_6();
  sub_257677FB0(v0, v1);

  return sub_2577435F4();
}

uint64_t MLProgram.Argument.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Argument(0);
  OUTLINED_FUNCTION_33_6();
  sub_257677FB0(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257676CE8()
{
  sub_257743A14();
  type metadata accessor for Proto_MILSpec_Argument(0);
  sub_257677FB0(&qword_27F87B678, type metadata accessor for Proto_MILSpec_Argument);
  sub_2577435F4();
  return sub_257743A64();
}

void MLProgram.Argument.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for MLProgram.Argument(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_257677F00(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = 0x73676E69646E6962;
  *(v18 + 40) = 0xE800000000000000;
  MLProgram.Argument.bindings.getter();
  v20 = v19;
  *(v18 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8809F0, &qword_25776EB68);
  *(v18 + 48) = v20;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.debugDescription.getter()
{
  sub_2576730B4();
  v1 = v0;
  sub_2576A66C8(0, v2, v3, v0);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_205();
  sub_257483A28(v6, v7, v1);
  return v5;
}

uint64_t sub_257676FD8()
{
  OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_47_7();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_38();
  v10 = OUTLINED_FUNCTION_176();
  sub_257677F00(v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v12 = OUTLINED_FUNCTION_173();
    sub_257675D28(v12, v13);
    OUTLINED_FUNCTION_17_14();
    v14 = OUTLINED_FUNCTION_44_1();
    sub_257675D28(v14, v15);
  }

  else
  {
    v16 = v1[1];
    *v0 = *v1;
    v0[1] = v16;
  }

  type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(0);
  return swift_storeEnumTagMultiPayload();
}

void static MLProgram.Argument.Binding.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for MLProgram.Value();
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_47_7();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = (&a9 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8809F8, &qword_25776EB70);
  OUTLINED_FUNCTION_13(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_56_2();
  v47 = (v20 + *(v46 + 56));
  sub_257677F00(v27, v20);
  sub_257677F00(v25, v47);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_38();
    sub_257677F00(v20, v38);
    OUTLINED_FUNCTION_322();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_1_40();
      sub_257675D28(v47, v21);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
      sub_257677F58(v21, type metadata accessor for MLProgram.Value);
      sub_257677F58(v38, type metadata accessor for MLProgram.Value);
      OUTLINED_FUNCTION_0_51();
      sub_257677F58(v20, v48);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v38, v53);
LABEL_7:
    sub_2574695E4(v20, &qword_27F8809F8, &qword_25776EB70);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_38();
  v49 = OUTLINED_FUNCTION_55_4();
  sub_257677F00(v49, v50);
  v52 = *v41;
  v51 = v41[1];
  OUTLINED_FUNCTION_322();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v52 == *v47 && v51 == v47[1])
  {
    v55 = v47[1];
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_257743994();
  }

  OUTLINED_FUNCTION_0_51();
  sub_257677F58(v20, v56);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.Binding.hash(into:)()
{
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for MLProgram.Argument.Binding(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_2_38();
  v10 = OUTLINED_FUNCTION_176();
  sub_257677F00(v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v12 = OUTLINED_FUNCTION_292();
    sub_257675D28(v12, v13);
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_MILSpec_Value(0);
    sub_257677FB0(&qword_27F87B570, type metadata accessor for Proto_MILSpec_Value);
    sub_2577435F4();
    OUTLINED_FUNCTION_5_28();
    return sub_257677F58(v0, v14);
  }

  else
  {
    v16 = *v1;
    v17 = v1[1];
    MEMORY[0x259C651F0](0);
    OUTLINED_FUNCTION_44_1();
    sub_257743694();
  }
}

uint64_t MLProgram.Argument.Binding.hashValue.getter()
{
  sub_257743A14();
  MLProgram.Argument.Binding.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_257677508()
{
  sub_257743A14();
  MLProgram.Argument.Binding.hash(into:)();
  return sub_257743A64();
}

uint64_t MLProgram.Argument.Binding.debugDescription.getter()
{
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_47_7();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_2_38();
  v10 = OUTLINED_FUNCTION_292();
  sub_257677F00(v10, v11);
  OUTLINED_FUNCTION_98_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_40();
    v12 = OUTLINED_FUNCTION_205();
    sub_257675D28(v12, v13);
    sub_25771810C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_2576A66C8(0, v14, v16, v18);
    sub_257483A28(v15, v17, v19);
    OUTLINED_FUNCTION_5_28();
    sub_257677F58(v1, v20);
  }

  else
  {
    v22 = *v0;
    v21 = v0[1];
  }

  return OUTLINED_FUNCTION_292();
}

uint64_t MLProgram.Argument.init(name:)()
{
  OUTLINED_FUNCTION_267();
  v3 = type metadata accessor for MLProgram.Argument.Binding(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v2[1] = v0;
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v2);
}

void MLProgram.Argument.init(names:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v13 = *(v2 + 16);
  if (v13)
  {
    v22 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484D90();
    v14 = v23;
    v15 = (v2 + 40);
    do
    {
      v16 = *v15;
      *v12 = *(v15 - 1);
      v12[1] = v16;
      OUTLINED_FUNCTION_322();
      swift_storeEnumTagMultiPayload();
      v17 = *(v23 + 16);
      v18 = *(v23 + 24);

      if (v17 >= v18 >> 1)
      {
        sub_257484D90();
      }

      *(v23 + 16) = v17 + 1;
      v19 = *(v7 + 80);
      OUTLINED_FUNCTION_193();
      v20 = *(v7 + 72);
      OUTLINED_FUNCTION_23_12();
      sub_257675D28(v12, v21);
      v15 += 2;
      --v13;
    }

    while (v13);

    v0 = v22;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  sub_2576763E0(v14, v0);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.init(value:)(uint64_t a1)
{
  v3 = type metadata accessor for MLProgram.Argument.Binding(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35_6();
  v7 = OUTLINED_FUNCTION_98_2();
  sub_257677F00(v7, v8);
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  MLProgram.Argument.init(binding:)(v1);
  OUTLINED_FUNCTION_5_28();
  return sub_257677F58(a1, v9);
}

void MLProgram.Argument.init(values:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *(v2 + 16);
  if (v13)
  {
    v23 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484D90();
    v14 = v24;
    v15 = *(type metadata accessor for MLProgram.Value() - 8);
    v16 = v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_35_6();
      sub_257677F00(v16, v12);
      OUTLINED_FUNCTION_322();
      swift_storeEnumTagMultiPayload();
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v18);
        sub_257484D90();
      }

      *(v24 + 16) = v19 + 1;
      v20 = *(v7 + 80);
      OUTLINED_FUNCTION_193();
      v21 = *(v7 + 72);
      OUTLINED_FUNCTION_23_12();
      sub_257675D28(v12, v22);
      v16 += v17;
      --v13;
    }

    while (v13);

    v0 = v23;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  sub_2576763E0(v14, v0);
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Argument.init<A>(values:)()
{
  v3 = OUTLINED_FUNCTION_60_2();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v9 = OUTLINED_FUNCTION_62_5(v4, v5, v6, v4, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  sub_2576763E0(v9, v2);
  v10 = *(*(v1 - 8) + 8);

  return v10(v0, v1);
}

uint64_t sub_257677B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_257677F00(a1, a2);
  type metadata accessor for MLProgram.Argument.Binding(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MLProgram.Argument.init(value:)()
{
  v1 = type metadata accessor for MLProgram.Argument.Binding(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  MLProgram.Value.init(_:)();
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v0);
}

{
  v1 = type metadata accessor for MLProgram.Argument.Binding(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  MLProgram.Value.init(_:)();
  OUTLINED_FUNCTION_176();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v0);
}

uint64_t MLProgram.Argument.init(value:)(float a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  MLProgram.Value.init(_:)(a1);
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

uint64_t MLProgram.Argument.init(value:)(double a1)
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Argument.Binding(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  MLProgram.Value.init(_:)(a1);
  OUTLINED_FUNCTION_173();
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v1);
}

uint64_t MLProgram.Argument.init(value:shape:)(uint64_t a1, uint64_t a2)
{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

{
  return sub_257677E28(a1, a2, MLProgram.Value.init(_:shape:));
}

uint64_t sub_257677E28(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for MLProgram.Argument.Binding(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_173();
  a3(v11);
  swift_storeEnumTagMultiPayload();
  return MLProgram.Argument.init(binding:)(v10);
}

uint64_t sub_257677F00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_257677F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257677FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257678118()
{
  result = type metadata accessor for Proto_MILSpec_Argument(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257678184()
{
  result = type metadata accessor for MLProgram.Value();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return type metadata accessor for MLProgram.Argument.Binding(0);
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_257665DA0(v8, 0, v10, a4, a5, v9, a7, a8);
}

void OUTLINED_FUNCTION_68_1(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  sub_257663A58();
}

uint64_t NeuralNetwork.Layer.SliceParameters.propertyDescriptions.getter()
{
  if (*(v0 + 32) == 1)
  {
    v1 = v0[3];
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 0xE600000000000000;
        v3 = 0x746867696548;
      }

      else
      {
        v2 = 0xE500000000000000;
        v3 = 0x6874646957;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      v3 = 0x6C656E6E616843;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  *(v4 + 32) = 0x6E49207472617453;
  *(v4 + 40) = 0xEB00000000786564;
  v11 = *v0;
  *(v4 + 48) = OUTLINED_FUNCTION_5_29();
  *(v4 + 56) = v5;
  OUTLINED_FUNCTION_11_20();
  *(v4 + 64) = v6 | 0x65646E4900000000;
  *(v4 + 72) = 0xE900000000000078;
  v12 = v0[1];
  *(v4 + 80) = OUTLINED_FUNCTION_5_29();
  *(v4 + 88) = v7;
  OUTLINED_FUNCTION_9_21();
  *(v4 + 96) = v8;
  *(v4 + 104) = 0xE600000000000000;
  v13 = v0[2];
  *(v4 + 112) = sub_257743974();
  *(v4 + 120) = v9;
  *(v4 + 128) = 1936291905;
  *(v4 + 136) = 0xE400000000000000;
  *(v4 + 144) = v3;
  *(v4 + 152) = v2;
  return v4;
}

BOOL static NeuralNetwork.Layer.SliceParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_65_2(v4, v5);
    if (v6)
    {
      if (*(v3 + 16) == *(v2 + 16))
      {
        v7 = *(v2 + 32);
        if (sub_257487360(*(v3 + 24), *(v3 + 32), *(v2 + 24)))
        {
          v8 = *(type metadata accessor for Proto_SliceLayerParams(0) + 32);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_52();
          sub_257678EC4(v9, v10);
          if (OUTLINED_FUNCTION_4_2())
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SliceBySizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_12_20(v2, 1702521171);
  *(v2 + 48) = OUTLINED_FUNCTION_5_29();
  *(v2 + 56) = v3;
  *(v2 + 64) = 1936291905;
  *(v2 + 72) = v1;
  v6 = *(v0 + 8);
  *(v2 + 80) = OUTLINED_FUNCTION_5_29();
  *(v2 + 88) = v4;
  return v2;
}

uint64_t NeuralNetwork.Layer.SliceBySizeParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_SliceBySizeLayerParams(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.SliceBySizeParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_65_2(v2, v3);
    if (v4)
    {
      v5 = *(type metadata accessor for Proto_SliceBySizeLayerParams(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_52();
      sub_257678EC4(v6, v7);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SliceStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257745520;
  *(v1 + 32) = 0x4449206E69676542;
  *(v1 + 40) = 0xE900000000000073;
  v2 = MEMORY[0x277D84A28];
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D84A28]);
  *(v1 + 56) = v3;
  OUTLINED_FUNCTION_8_21();
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = MEMORY[0x277D839B0];
  *(v1 + 80) = MEMORY[0x259C64F20](v0[1], MEMORY[0x277D839B0]);
  *(v1 + 88) = v7;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 96) = v8 | 0x73444900000000;
  *(v1 + 104) = 0xE700000000000000;
  *(v1 + 112) = MEMORY[0x259C64F20](v0[2], v2);
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 128) = v10 | 0x6B73614D00000000;
  *(v1 + 136) = 0xE900000000000073;
  *(v1 + 144) = MEMORY[0x259C64F20](v0[3], v6);
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_9_21();
  *(v1 + 160) = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v1 + 168) = 0xE700000000000000;
  *(v1 + 176) = MEMORY[0x259C64F20](v0[4], v2);
  *(v1 + 184) = v13;
  OUTLINED_FUNCTION_7_23();
  *(v1 + 192) = v14;
  *(v1 + 200) = v15;
  *(v1 + 208) = MEMORY[0x259C64F20](v0[5], v6);
  *(v1 + 216) = v16;
  return v1;
}

uint64_t NeuralNetwork.Layer.SliceStaticParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  v3 = a1 + *(type metadata accessor for Proto_SliceStaticLayerParams(0) + 40);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.SliceDynamicParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_8_21();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = MEMORY[0x277D839B0];
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D839B0]);
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 64) = v7 | 0x73444900000000;
  *(v1 + 72) = 0xE700000000000000;
  v8 = MEMORY[0x277D84A28];
  *(v1 + 80) = MEMORY[0x259C64F20](v0[1], MEMORY[0x277D84A28]);
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_11_20();
  *(v1 + 96) = v10 | 0x6B73614D00000000;
  *(v1 + 104) = 0xE900000000000073;
  *(v1 + 112) = MEMORY[0x259C64F20](v0[2], v5);
  *(v1 + 120) = v11;
  OUTLINED_FUNCTION_9_21();
  *(v1 + 128) = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v1 + 136) = 0xE700000000000000;
  *(v1 + 144) = MEMORY[0x259C64F20](v0[3], v8);
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_7_23();
  *(v1 + 160) = v14;
  *(v1 + 168) = v15;
  *(v1 + 176) = MEMORY[0x259C64F20](v0[4], v5);
  *(v1 + 184) = v16;
  return v1;
}

uint64_t NeuralNetwork.Layer.SliceDynamicParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  v3 = a1 + *(type metadata accessor for Proto_SliceDynamicLayerParams(0) + 36);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.SlidingWindowsParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_12_20(v2, 1936291905);
  *(v2 + 48) = sub_257743974();
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x5320776F646E6957;
  *(v2 + 72) = 0xEB00000000657A69;
  v7 = *(v0 + 8);
  *(v2 + 80) = OUTLINED_FUNCTION_5_29();
  *(v2 + 88) = v4;
  *(v2 + 96) = 1885697107;
  *(v2 + 104) = v1;
  v8 = *(v0 + 16);
  *(v2 + 112) = OUTLINED_FUNCTION_5_29();
  *(v2 + 120) = v5;
  return v2;
}

uint64_t NeuralNetwork.Layer.SlidingWindowsParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v3 = a1 + *(v2 + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.SlidingWindowsParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_104_0(a1, a2);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_65_2(v4, v5);
    if (v6)
    {
      if (*(v3 + 16) == *(v2 + 16))
      {
        v7 = *(type metadata accessor for Proto_SlidingWindowsLayerParams(0) + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_52();
        sub_257678EC4(v8, v9);
        if (OUTLINED_FUNCTION_4_2())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t NeuralNetwork.Layer.SliceParameters.Axis.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257678EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257678F14@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SliceParameters.Axis.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257678F40()
{
  result = qword_27F880A38;
  if (!qword_27F880A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880A38);
  }

  return result;
}

uint64_t sub_257679174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15SliceParametersV4AxisOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_12_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  v3 = *v2;
  return result;
}

void Analysis.append(severity:kind:property:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_257466F40(*a2, v9, v10);

  sub_25767A064();
  v11 = *(*v4 + 16);
  sub_25767A0B0(v11);
  OUTLINED_FUNCTION_1_41(v11 + 1);
  v14 = v13 + v11 * v12;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  *(v14 + 64) = a3;
  *(v14 + 72) = a4;
  *v4 = v13;
}

Swift::Void __swiftcall Analysis.append(contentsOf:)(MLModelSpecification::Analysis contentsOf)
{
  v1 = *contentsOf.elements._rawValue;

  sub_25763D14C(v2);
}

void Analysis.errors.getter()
{
  OUTLINED_FUNCTION_9_22();
  v6 = MEMORY[0x277D84F90];
  v7 = 48;
LABEL_2:
  v8 = v5 + v3 * v7;
  while (v0 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_7_24(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_2_39();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v1;
      v16 = v6;
      v14 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_28();
        OUTLINED_FUNCTION_8_22();
      }

      v1 = *(v6 + 16);
      v11 = *(v6 + 24);
      v2 = v1 + 1;
      if (v1 >= v11 >> 1)
      {
        v7 = &v16;
        sub_257484DE8((v11 > 1), v1 + 1, 1);
        OUTLINED_FUNCTION_8_22();
      }

      *(v6 + 16) = v2;
      v12 = v6 + v1 * v7;
      *(v12 + 32) = 0;
      OUTLINED_FUNCTION_3_39(v12, v13, v14, v15);
      goto LABEL_2;
    }
  }
}

void Analysis.warnings.getter()
{
  OUTLINED_FUNCTION_9_22();
  v6 = MEMORY[0x277D84F90];
  v7 = 48;
LABEL_2:
  v8 = v5 + v3 * v7;
  while (v0 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_7_24(v8);
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_2_39();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v1;
      v16 = v6;
      v14 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_28();
        OUTLINED_FUNCTION_8_22();
      }

      v1 = *(v6 + 16);
      v11 = *(v6 + 24);
      v2 = v1 + 1;
      if (v1 >= v11 >> 1)
      {
        v7 = &v16;
        sub_257484DE8((v11 > 1), v1 + 1, 1);
        OUTLINED_FUNCTION_8_22();
      }

      *(v6 + 16) = v2;
      v12 = v6 + v1 * v7;
      *(v12 + 32) = 1;
      OUTLINED_FUNCTION_3_39(v12, v13, v14, v15);
      goto LABEL_2;
    }
  }
}

void Analysis.init(severity:kind:property:)(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  *a5 = MEMORY[0x277D84F90];
  sub_25767A064();
  v12 = *(*a5 + 16);
  sub_25767A0B0(v12);
  OUTLINED_FUNCTION_1_41(v12 + 1);
  v15 = v14 + v12 * v13;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
}

void Analysis.append(_:)(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 4);
  v5 = *(a1 + 5);
  v7 = a1[24];
  sub_257466F40(v3, v4, v7);

  sub_25767A064();
  v8 = *(*v1 + 16);
  sub_25767A0B0(v8);
  OUTLINED_FUNCTION_1_41(v8 + 1);
  v11 = v10 + v8 * v9;
  *(v11 + 32) = v2;
  *(v11 + 40) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v7;
  *(v11 + 64) = v6;
  *(v11 + 72) = v5;
  *v1 = v10;
}

Swift::Int __swiftcall Analysis.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Analysis.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t Analysis.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 48 * result;
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = *(v3 + 56);
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_257466F40(v4, v5, v8);
}

double sub_2576797DC@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v15 = v4;
  Analysis.subscript.getter(v5, v10);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  *a3 = v10[0];
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  return result;
}

void sub_25767983C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 24);
  v9[0] = *a1;
  v10 = v5;
  v11 = v4;
  v12 = v8;
  v13 = v6;
  v14 = v7;
  sub_257466F40(v5, v4, v8);

  Analysis.subscript.setter(v9, v3);
}

void Analysis.subscript.setter(char *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A138(v10);
  v10 = v17;
  *v2 = v17;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v10 + 16) > a2)
  {
    v12 = v10 + 48 * a2;
    v13 = *(v12 + 40);
    v14 = *(v12 + 48);
    v15 = *(v12 + 72);
    *(v12 + 32) = v4;
    *(v12 + 40) = v5;
    *(v12 + 48) = v6;
    v16 = *(v12 + 56);
    *(v12 + 56) = v7;
    *(v12 + 64) = v8;
    *(v12 + 72) = v9;
    sub_257467018(v13, v14, v16);

    *v2 = v10;
    return;
  }

LABEL_7:
  __break(1u);
}

void (*Analysis.subscript.modify(void (**a1)(unsigned __int8 **a1, char a2), unint64_t a2))(unsigned __int8 **a1, char a2)
{
  result = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = result;
  *(result + 6) = a2;
  *(result + 7) = v2;
  v6 = *v2;
  *(result + 8) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v6 + 16) > a2)
  {
    v7 = result;
    v8 = v6 + 48 * a2;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 56);
    *v7 = *(v8 + 32);
    *(v7 + 1) = v9;
    *(v7 + 2) = v10;
    *(v7 + 24) = v13;
    *(v7 + 4) = v11;
    *(v7 + 5) = v12;
    sub_257466F40(v9, v10, v13);

    return sub_257679A28;
  }

  __break(1u);
  return result;
}

void sub_257679A28(unsigned __int8 **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v6 = *(*a1 + 4);
  v5 = *(*a1 + 5);
  v8 = *(*a1 + 7);
  v7 = *(*a1 + 8);
  if (a2)
  {
    sub_257466F40(*(*a1 + 1), *(*a1 + 2), (*a1)[24]);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v7;
    v10 = v3[8];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = v3[7];
      sub_25767A138(v3[8]);
      v10 = v17;
      *v16 = v17;
    }

    v11 = v3[6];
    if (*(v10 + 16) > v11)
    {
      OUTLINED_FUNCTION_0_53(v11);
      *v2 = v10;
      v12 = v3[5];
      sub_257467018(v3[1], v3[2], *(v3 + 24));

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v13 = *(*a1 + 8);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v7;
  v10 = v3[8];
  if ((v14 & 1) == 0)
  {
LABEL_13:
    v18 = v3[7];
    sub_25767A138(v10);
    v10 = v19;
    *v18 = v19;
  }

  v15 = v3[6];
  if (*(v10 + 16) <= v15)
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_0_53(v15);
  *v2 = v10;
LABEL_9:

  free(v3);
}

uint64_t (*sub_257679B60(void (***a1)(unsigned __int8 **a1, char a2), unint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = Analysis.subscript.modify(v4, *a2);
  return sub_25767A6E8;
}

uint64_t (*sub_257679BD8(void (***a1)(uint64_t **a1, char a2), uint64_t *a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_25771F448(v4, *a2, a2[1]);
  return sub_257679C3C;
}

void sub_257679C40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_257679C88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_25771FD3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_257679D08(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = Analysis.index(before:)(v2);
  *v1 = result;
  return result;
}

void *sub_257679D30(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_257679D48(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

uint64_t sub_257679D7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    while (result - a3 + v3)
    {
      v4 = result + v3 - 1;
      if (__OFSUB__(result + v3, 1))
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (--v3 <= a2)
      {
        return v4;
      }
    }

    return 0;
  }

  if (a2)
  {
    while (a3 != result)
    {
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_15;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_257679DFC(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_257679E5C@<X0>(uint64_t *a1@<X8>)
{
  result = Analysis.count.getter();
  *a1 = result;
  return result;
}

void (*sub_257679E84(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v4;
  Analysis.subscript.getter(*a2, v4);
  return sub_257679EEC;
}

void sub_257679EEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  sub_257467018(*(*a1 + 8), *(v1 + 16), *(v1 + 24));

  free(v1);
}

uint64_t sub_257679F5C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_31(a1);
  v5 = *v2;
  result = sub_257679D7C(v3, v6, *v4);
  *v1 = result;
  *(v1 + 8) = v8 & 1;
  return result;
}

Swift::Int sub_257679FD4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = Analysis.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_257679FFC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void sub_25767A064()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_25746996C();
    *v0 = v4;
  }
}

void sub_25767A0B0(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_25746996C();
    *v1 = v2;
  }
}

unint64_t sub_25767A150()
{
  result = qword_27F880A90;
  if (!qword_27F880A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880A90);
  }

  return result;
}

unint64_t sub_25767A1EC()
{
  result = qword_27F880AA8;
  if (!qword_27F880AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AA8);
  }

  return result;
}

unint64_t sub_25767A244()
{
  result = qword_27F880AB0;
  if (!qword_27F880AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880AB8, &qword_25776F040);
    sub_25767A2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AB0);
  }

  return result;
}

unint64_t sub_25767A2C8()
{
  result = qword_27F880AC0;
  if (!qword_27F880AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AC0);
  }

  return result;
}

uint64_t sub_25767A364(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880AA0, &qword_25776EFC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25767A3E0()
{
  result = qword_27F880AD0;
  if (!qword_27F880AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880AD0);
  }

  return result;
}

uint64_t sub_25767A50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25767A560(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25767A5A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_53@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v1 + 56);
  v10 = v6 + 48 * a1;
  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  v13 = *(v10 + 72);
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v10 + 48) = v4;
  v14 = *(v10 + 56);
  *(v10 + 56) = v3;
  *(v10 + 64) = v7;
  *(v10 + 72) = v2;
  sub_257467018(v11, v12, v14);
}

uint64_t OUTLINED_FUNCTION_2_39()
{
  v1 = v0[1];
  v4 = *v0;
  sub_257466F40(*(v0 - 3), *(v0 - 2), *(v0 - 8));
}

void OUTLINED_FUNCTION_3_39(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = a4;
  *(a1 + 48) = a3;
  *(a1 + 56) = v4;
  *(a1 + 64) = a2;
  *(a1 + 72) = v5;
}

char *OUTLINED_FUNCTION_4_28()
{
  v2 = *(v0 + 16) + 1;

  return sub_257484DE8(0, v2, 1);
}

uint64_t sub_25767A828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  v1 = OUTLINED_FUNCTION_3_40(inited, 0x6E49u);
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = inited;
    v17 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_269();
    sub_257484040(v3, v4, v5);
    v6 = 32;
    v7 = v17;
    do
    {
      v16 = *(v1 + v6);
      v8 = sub_257743674();
      v10 = v9;
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_257484040((v11 > 1), v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 24 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      *(v13 + 48) = 0;
      v6 += 8;
      --v2;
    }

    while (v2);

    inited = v15;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v7;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  return sub_2576A6964(inited);
}

uint64_t ArrayFeatureExtractorConfiguration.indices.getter()
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
        OUTLINED_FUNCTION_2_26(v7);
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

void sub_25767AA3C(uint64_t *a1)
{
  v1 = *a1;

  ArrayFeatureExtractorConfiguration.indices.setter(v2);
}

void ArrayFeatureExtractorConfiguration.indices.setter(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v9 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_269();
    sub_257484698();
    v4 = v9;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_4_29();
      if (v6)
      {
        OUTLINED_FUNCTION_2_26(v5);
        sub_257484698();
        v4 = v9;
      }

      OUTLINED_FUNCTION_2_40();
      if (v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
LABEL_10:
    v8 = *v2;

    *v2 = v4;
  }
}

void (*ArrayFeatureExtractorConfiguration.indices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ArrayFeatureExtractorConfiguration.indices.getter();
  return sub_25767AB7C;
}

void sub_25767AB7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    ArrayFeatureExtractorConfiguration.indices.setter(v5);
  }

  else
  {
    ArrayFeatureExtractorConfiguration.indices.setter(*a1);
  }
}

void ArrayFeatureExtractorConfiguration.init(indices:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_ArrayFeatureExtractor() + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (*(a1 + 16))
  {
    v9 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_269();
    sub_257484698();
    v5 = v9;
    while ((*(a1 + 32) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_4_29();
      if (v7)
      {
        OUTLINED_FUNCTION_2_26(v6);
        sub_257484698();
        v5 = v9;
      }

      OUTLINED_FUNCTION_2_40();
      if (v8)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
LABEL_10:
    *a2 = v5;
  }
}

BOOL static ArrayFeatureExtractorConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_ArrayFeatureExtractor() + 20);
    sub_2577431B4();
    sub_25767B070(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ArrayFeatureExtractorConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ArrayFeatureExtractorConfiguration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_25767AFC4(v0, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  v14 = OUTLINED_FUNCTION_3_40(v13, 0x6E69u);
  *(v13 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v13 + 48) = v14;
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for ArrayFeatureExtractorConfiguration()
{
  result = qword_281537558;
  if (!qword_281537558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767AFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArrayFeatureExtractorConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25767B070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25767B0E0()
{
  result = type metadata accessor for Proto_ArrayFeatureExtractor();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_40@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>)
{
  *(a1 + 32) = a2 | 0x73656369640000;
  *(a1 + 40) = 0xE700000000000000;

  return ArrayFeatureExtractorConfiguration.indices.getter();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV26BroadcastableModParametersV2eeoiySbAG_AGtFZ_0()
{
  sub_2577431B4();
  sub_25767B37C(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_25767B37C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25767B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static NeuralNetwork.Layer.unidirectionalLSTM(name:inputNames:outputNames:inputSize:outputSize:sequenceOutput:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_3();
  v7 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)();
  OUTLINED_FUNCTION_280();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v2 + v14) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();

  sub_25752842C(v15);
  sub_2574897E0(v0);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_25752846C();
  sub_25763E764(v13, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.unidirectionalLSTM(inputSize:outputSize:sequenceOutput:)()
{
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)();
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  v16 = type metadata accessor for Proto_LSTMParams(v15);
  v17 = OUTLINED_FUNCTION_32_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_0();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = 0;
  v20 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  v21 = v10 + v20[8];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = v20[9];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v0);
  v26 = v20[10];
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v10 = v8;
  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v10 + 8) = v6;
  sub_2574A172C(v10 + v22, v2, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_26_0(v2);
  if (v31)
  {
    *(v1 + 8) = 0;
    *(v1 + 1) = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v2);
    if (!v31)
    {
      sub_2574695E4(v2, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *v1 = v4 & 1;
  sub_2574695E4(v10 + v22, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  sub_25767DB50(v1, v10 + v22);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F80, &qword_25776BFA0);
  v35 = *(type metadata accessor for NeuralNetwork.Layer.Activation(0) - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = xmmword_2577442C0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_257744000;
  *(result + 32) = 0x6953207475706E49;
  *(result + 40) = 0xEA0000000000657ALL;
  if (*v0 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = result;
  v11 = *v0;
  result = sub_257743974();
  *(v2 + 48) = result;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x532074757074754FLL;
  *(v2 + 72) = 0xEB00000000657A69;
  if (v0[1] < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = v0[1];
  *(v2 + 80) = sub_257743974();
  *(v2 + 88) = v4;
  *(v2 + 96) = 0x65636E6575716553;
  *(v2 + 104) = 0xEF74757074754F20;
  v5 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter();
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  *(v2 + 112) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 0xD000000000000013;
  *(v2 + 136) = 0x8000000257780D00;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter();
  *(v2 + 144) = sub_257743794();
  *(v2 + 152) = v8;
  strcpy((v2 + 160), "Reverse Input");
  *(v2 + 174) = -4864;
  if (*(v0 + 24))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v2 + 176) = v9;
  *(v2 + 184) = v10;
  return v2;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *v1;
  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

float NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *(v1 + 8);
  OUTLINED_FUNCTION_3_41();
  return v13;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.namedWeights.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.getter();
  v7 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
  OUTLINED_FUNCTION_5_19();
  sub_25763E764(v6, v8);
  return v7;
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.getter()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_280();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for Proto_LSTMWeightParams(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_17_3();
  v17 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v16);
  sub_2574A172C(v0 + *(v17 + 40), v2, &qword_27F87CA48, &unk_257752540);
  if (__swift_getEnumTagSinglePayload(v2, 1, v12) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v18 = *(v12 + 20);
    if (qword_27F879590 != -1)
    {
      OUTLINED_FUNCTION_23_13();
    }

    *(v1 + v18) = qword_27F87BF38;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v12);

    if (EnumTagSinglePayload != 1)
    {
      sub_2574695E4(v2, &qword_27F87CA48, &unk_257752540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_25767DB50(v2, v1);
  }

  OUTLINED_FUNCTION_6_32();
  sub_25767DB50(v1, v4);
  OUTLINED_FUNCTION_434();
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_17_3();
  v63 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v12);
  v13 = OUTLINED_FUNCTION_4(v63);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v60 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  v20 = type metadata accessor for Proto_ActivationParams(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_11();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - v27;
  v29 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v30 = OUTLINED_FUNCTION_10_17(v29);
  v62 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v58 - v38;
  v40 = *(v0 + 16);
  v41 = *(v40 + 16);
  if (v41)
  {
    v58 = v7;
    v65 = MEMORY[0x277D84F90];
    sub_257484720();
    v42 = v65;
    v43 = *(v21 + 80);
    OUTLINED_FUNCTION_193();
    v45 = v40 + v44;
    v61 = *(v21 + 72);
    do
    {
      sub_25767DBAC(v45, v28);
      sub_25767DBAC(v28, v25);
      sub_2574A172C(v25, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v63) == 1)
      {
        v46 = v1;
        v47 = &qword_27F879CC0;
        v48 = &unk_257752A20;
      }

      else
      {
        v49 = v59;
        sub_25767DB50(v1, v59);
        v50 = v49;
        v51 = v60;
        sub_25767DB50(v50, v60);
        v52 = v58;
        sub_2576B7CC8(v51, v58);
        if (__swift_getEnumTagSinglePayload(v52, 1, v64) != 1)
        {
          sub_25763E764(v25, type metadata accessor for Proto_ActivationParams);
          sub_25763E764(v28, type metadata accessor for Proto_ActivationParams);
          OUTLINED_FUNCTION_10_25();
          sub_25767DB50(v52, v36);
          goto LABEL_9;
        }

        v46 = v52;
        v47 = &qword_27F880410;
        v48 = &unk_25776BFB0;
      }

      sub_2574695E4(v46, v47, v48);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_25763E764(v25, type metadata accessor for Proto_ActivationParams);
      sub_25763E764(v28, type metadata accessor for Proto_ActivationParams);
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_10_25();
      sub_25767DB50(v36, v39);
      v65 = v42;
      v53 = *(v42 + 16);
      if (v53 >= *(v42 + 24) >> 1)
      {
        sub_257484720();
        v42 = v65;
      }

      *(v42 + 16) = v53 + 1;
      v54 = *(v62 + 80);
      OUTLINED_FUNCTION_193();
      v56 = *(v55 + 72);
      OUTLINED_FUNCTION_10_25();
      sub_25767DB50(v39, v57);
      v45 += v61;
      --v41;
    }

    while (v41);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25767C52C(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = OUTLINED_FUNCTION_1_42();
  v8 = type metadata accessor for Proto_ActivationParams(v7);
  v9 = OUTLINED_FUNCTION_10_17(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = *(v3 + 16);
  if (v17)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2574846C8();
    v18 = v36;
    v19 = *(v5 + 80);
    OUTLINED_FUNCTION_193();
    v21 = v3 + v20;
    v22 = *(v5 + 72);
    do
    {
      sub_25767DBAC(v21, v1);
      v23 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
      v27 = v16 + *(v35 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_2574695E4(v16, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
      sub_25763E764(v1, type metadata accessor for NeuralNetwork.Layer.Activation);
      v31 = *(v36 + 16);
      if (v31 >= *(v36 + 24) >> 1)
      {
        sub_2574846C8();
      }

      *(v36 + 16) = v31 + 1;
      v32 = *(v11 + 80);
      OUTLINED_FUNCTION_193();
      sub_25767DB50(v16, v36 + v33 + *(v11 + 72) * v31);
      v21 += v22;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 16);

  *(v0 + 16) = v18;
  OUTLINED_FUNCTION_35();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.getter();
  *a1 = v3;
  return sub_25767C818;
}

void sub_25767C818(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  }

  else
  {
    v5 = *a1;
    NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.setter();
  }
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for Proto_LSTMParams(v13);
  v15 = OUTLINED_FUNCTION_32_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_42();
  v19 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v18);
  OUTLINED_FUNCTION_13_14(v19);
  OUTLINED_FUNCTION_26_0(v3);
  if (v20)
  {
    *(v2 + 8) = 0;
    *(v2 + 1) = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v20)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *v2 = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.modify(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767C9D8;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *(v1 + 1);
  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for Proto_LSTMParams(v13);
  v15 = OUTLINED_FUNCTION_32_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_42();
  v19 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v18);
  OUTLINED_FUNCTION_13_14(v19);
  OUTLINED_FUNCTION_26_0(v3);
  if (v20)
  {
    *v2 = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v20)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 1) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.modify(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767CC50;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *(v1 + 2);
  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for Proto_LSTMParams(v13);
  v15 = OUTLINED_FUNCTION_32_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_42();
  v19 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v18);
  OUTLINED_FUNCTION_13_14(v19);
  OUTLINED_FUNCTION_26_0(v3);
  if (v20)
  {
    *v2 = 0;
    *(v2 + 3) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v20)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 2) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.modify(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767CEC4;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *(v1 + 3);
  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for Proto_LSTMParams(v13);
  v15 = OUTLINED_FUNCTION_32_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_42();
  v19 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v18);
  OUTLINED_FUNCTION_13_14(v19);
  OUTLINED_FUNCTION_26_0(v3);
  if (v20)
  {
    *v2 = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v20)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 3) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.modify(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767D13C;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.getter()
{
  v2 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_10();
  v7 = OUTLINED_FUNCTION_32_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = OUTLINED_FUNCTION_1_42();
  v11 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v10);
  OUTLINED_FUNCTION_12_21(v11);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_37_10();
  }

  v13 = *(v1 + 4);
  OUTLINED_FUNCTION_3_41();
  return OUTLINED_FUNCTION_33_7();
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.setter()
{
  OUTLINED_FUNCTION_433();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_280();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for Proto_LSTMParams(v13);
  v15 = OUTLINED_FUNCTION_32_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_42();
  v19 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v18);
  OUTLINED_FUNCTION_13_14(v19);
  OUTLINED_FUNCTION_26_0(v3);
  if (v20)
  {
    *(v2 + 8) = 0;
    *v2 = 0;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v20)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    OUTLINED_FUNCTION_38_7();
  }

  *(v2 + 4) = v6 & 1;
  sub_2574695E4(v0 + v4, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v1);
  OUTLINED_FUNCTION_434();
}

void (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.modify(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.getter();
  OUTLINED_FUNCTION_17_15(v1);
  return sub_25767D3AC;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.setter(float a1)
{
  v4 = OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Proto_LSTMParams(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_17_3();
  v15 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v14) + 36);
  sub_2574A172C(v1 + v15, v9, &qword_27F87CA40, &qword_257752538);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    *(v2 + 4) = 0;
    *v2 = 0;
    v16 = v2 + *(v10 + 40);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2574695E4(v9, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    sub_25767DB50(v9, v2);
  }

  *(v2 + 8) = a1;
  sub_2574695E4(v1 + v15, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_0_54();
  sub_25767DB50(v2, v1 + v15);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v10);
}

uint64_t (*NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.modify(void *a1))(float *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  *(v1 + 8) = NeuralNetwork.Layer.UnidirectionalLSTMParameters.cellClipThreshold.getter();
  return sub_25767D59C;
}

uint64_t sub_25767D5C4(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25767DBAC(a1, v5);
  return NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.setter(v5);
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_LSTMWeightParams(0);
  v6 = OUTLINED_FUNCTION_32_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_0();
  sub_25767DB50(a1, v3);
  v9 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0) + 40);
  sub_2574695E4(v1 + v9, &qword_27F87CA48, &unk_257752540);
  sub_25767DB50(v3, v1 + v9);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
}

void NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_LSTMWeightParams(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v3[6] = v14;
  v15 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0) + 40);
  *(v3 + 14) = v15;
  sub_2574A172C(v0 + v15, v6, &qword_27F87CA48, &unk_257752540);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v16 = *(v7 + 20);
    if (qword_27F879590 != -1)
    {
      OUTLINED_FUNCTION_23_13();
    }

    *&v10[v16] = qword_27F87BF38;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_2574695E4(v6, &qword_27F87CA48, &unk_257752540);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_25767DB50(v6, v10);
  }

  OUTLINED_FUNCTION_6_32();
  sub_25767DB50(v10, v14);
  OUTLINED_FUNCTION_35();
}

void sub_25767D920()
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
    sub_25767DBAC((*v0)[6], v2);
    OUTLINED_FUNCTION_20_11();
    sub_25767DB50(v2, v4);
    sub_2574695E4(v8 + v1, &qword_27F87CA48, &unk_257752540);
    sub_25767DB50(v4, v8 + v1);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_20_11();
    sub_25767DB50(v3, v4);
    sub_2574695E4(v8 + v1, &qword_27F87CA48, &unk_257752540);
    sub_25767DB50(v4, v8 + v1);
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

_BYTE *(*NeuralNetwork.Layer.UnidirectionalLSTMParameters.reverseInput.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_25767DAA0;
}

uint64_t NeuralNetwork.Layer.UnidirectionalLSTMParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v2 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  v3 = a1 + v2[8];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = v2[9];
  type metadata accessor for Proto_LSTMParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[10];
  type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_25767DB50(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25767DBAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25767DC0C()
{
  result = qword_27F87DEB0;
  if (!qword_27F87DEB0)
  {
    type metadata accessor for Proto_UniDirectionalLSTMLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DEB0);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters()
{
  result = qword_27F880B38;
  if (!qword_27F880B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767DCD8()
{
  result = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_25763E764(v0, type metadata accessor for Proto_LSTMParams);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  *(v1 + 8) = 0;
  *v1 = 0;
  *(v1 + 4) = 0;
  v3 = v1 + *(v0 + 40);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1)
{
  v6 = v2 + *(a1 + 36);

  return sub_2574A172C(v6, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{
  v6 = v1 + *(a1 + 36);

  return sub_2574A172C(v6, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return type metadata accessor for Proto_LSTMParams(0);
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_13()
{
  v3 = v1 + *(v0 + 40);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_10()
{

  return sub_25767DB50(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return sub_25767DB50(v1, v0);
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return sub_25767DB50(v1, v0 + v2);
}

uint64_t sub_25767DF4C()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577503A0;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v62 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v22;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v23 = *(v0 + 1);
  v24 = *(v0 + 2);
  v62 = 34;
  v63 = 0xE100000000000000;
  MEMORY[0x259C64E90](v23, v24);
  OUTLINED_FUNCTION_7_25();
  v25 = v63;
  *(inited + 88) = v62;
  *(inited + 96) = v25;
  *(inited + 104) = 0;
  *(inited + 112) = 1936154964;
  *(inited + 120) = 0xE400000000000000;
  v26 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_25767ED54(v0 + *(v26 + 44), v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v8);
  v28 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v20, v14, v30);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v14, v1, v31);
    v29 = *v1;

    sub_25767EE20(v1);
  }

  v32 = *(v29 + 16);
  if (v32)
  {
    v59 = inited;
    v60 = v2;
    v62 = v28;
    result = sub_257484040(0, v32, 0);
    v34 = 0;
    v28 = v62;
    v35 = (v29 + 40);
    v61 = v29;
    while (v34 < *(v29 + 16))
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v62 = v28;
      v38 = *(v28 + 16);
      v39 = *(v28 + 24);

      if (v38 >= v39 >> 1)
      {
        result = sub_257484040((v39 > 1), v38 + 1, 1);
        v28 = v62;
      }

      ++v34;
      *(v28 + 16) = v38 + 1;
      v40 = v28 + 24 * v38;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      *(v40 + 48) = 0;
      v35 += 2;
      v29 = v61;
      if (v32 == v34)
      {

        inited = v59;
        v2 = v60;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    *(inited + 128) = v28;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    *(inited + 152) = 0xD000000000000012;
    *(inited + 160) = 0x8000000257780D20;
    v41 = v2[3];
    v42 = v2[4];
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v43 = v63;
    *(inited + 168) = v62;
    *(inited + 176) = v43;
    *(inited + 184) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 192) = 0xD000000000000016;
    *(inited + 200) = v44;
    v45 = v2[5];
    v46 = v2[6];
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v47 = v63;
    *(inited + 208) = v62;
    *(inited + 216) = v47;
    *(inited + 224) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 232) = 0xD00000000000001BLL;
    *(inited + 240) = v48;
    v49 = v2[7];
    v50 = v2[8];
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v51 = v63;
    *(inited + 248) = v62;
    *(inited + 256) = v51;
    *(inited + 264) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 272) = 0xD000000000000019;
    *(inited + 280) = v52;
    v53 = v2[9];
    v54 = v2[10];
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_7_25();
    v55 = v63;
    *(inited + 288) = v62;
    *(inited + 296) = v55;
    *(inited + 304) = 0;
    OUTLINED_FUNCTION_23_7();
    *(inited + 312) = 0xD000000000000014;
    *(inited + 320) = v56;
    v57 = v2[12];
    v62 = v2[11];
    v63 = v57;
    sub_257486740(v62, v57);
    *(inited + 328) = sub_257743674();
    *(inited + 336) = v58;
    *(inited + 344) = 0;
    return sub_2576AACFC(inited);
  }

  return result;
}

unint64_t WordTaggerConfiguration.revision.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*WordTaggerConfiguration.revision.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25767E390;
}

unint64_t *sub_25767E390(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v2))
    {
LABEL_7:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v2))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t WordTaggerConfiguration.language.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25767E3F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordTaggerConfiguration.language.setter();
}

uint64_t WordTaggerConfiguration.language.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.language.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 16), *(v0 + 8));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E4B4(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_22(a1);
  if (v4)
  {

    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
  }

  else
  {

    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokensOutputFeatureName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25767E550(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordTaggerConfiguration.tokensOutputFeatureName.setter();
}

uint64_t WordTaggerConfiguration.tokensOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokensOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 32), *(v0 + 24));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E60C(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_22(a1);
  if (v4)
  {

    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
  }

  else
  {

    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenTagsOutputFeatureName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25767E6A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordTaggerConfiguration.tokenTagsOutputFeatureName.setter();
}

uint64_t WordTaggerConfiguration.tokenTagsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenTagsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 48), *(v0 + 40));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E764(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_22(a1);
  if (v4)
  {

    *(v3 + 40) = v2;
    *(v3 + 48) = v1;
  }

  else
  {

    *(v3 + 40) = v2;
    *(v3 + 48) = v1;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenLocationsOutputFeatureName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25767E800(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordTaggerConfiguration.tokenLocationsOutputFeatureName.setter();
}

uint64_t WordTaggerConfiguration.tokenLocationsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenLocationsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 64), *(v0 + 56));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767E8BC(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_22(a1);
  if (v4)
  {

    *(v3 + 56) = v2;
    *(v3 + 64) = v1;
  }

  else
  {

    *(v3 + 56) = v2;
    *(v3 + 64) = v1;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tokenLengthsOutputFeatureName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25767E958(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WordTaggerConfiguration.tokenLengthsOutputFeatureName.setter();
}

uint64_t WordTaggerConfiguration.tokenLengthsOutputFeatureName.setter()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t WordTaggerConfiguration.tokenLengthsOutputFeatureName.modify()
{
  OUTLINED_FUNCTION_14_11(*(v0 + 80), *(v0 + 72));

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_25767EA14(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_22(a1);
  if (v4)
  {

    *(v3 + 72) = v2;
    *(v3 + 80) = v1;
  }

  else
  {

    *(v3 + 72) = v2;
    *(v3 + 80) = v1;
  }

  return result;
}

uint64_t WordTaggerConfiguration.modelParameterData.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_205();
  sub_257486740(v3, v4);
  return OUTLINED_FUNCTION_205();
}

uint64_t WordTaggerConfiguration.modelParameterData.setter()
{
  OUTLINED_FUNCTION_7_1();
  result = sub_257486798(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t (*WordTaggerConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_25767EB74;
}

uint64_t sub_25767EB74(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v7, v8);
    sub_257486798(v5, v6);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
    v9 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v9, v10);
  }

  else
  {
    result = sub_257486798(*(v3 + 88), *(v3 + 96));
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
  }

  return result;
}

uint64_t WordTaggerConfiguration.tags.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_38();
  v21 = type metadata accessor for Proto_CoreMLModels_WordTagger(v20);
  sub_25767ED54(v1 + *(v21 + 44), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v9);
  if (result == 1)
  {
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v3, v15, v24);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v15, v2, v25);
    v23 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v23;
  return result;
}

uint64_t sub_25767ED54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25767EDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_25767EE20(uint64_t a1)
{
  v2 = type metadata accessor for Proto_StringVector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25767EE7C@<X0>(void *a1@<X8>)
{
  result = WordTaggerConfiguration.tags.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25767EEB8(uint64_t *a1)
{
  v2 = *a1;

  return WordTaggerConfiguration.tags.setter(&v2);
}

uint64_t WordTaggerConfiguration.tags.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_271();
  v8 = *a1;
  v9 = v2 + *(type metadata accessor for Proto_StringVector(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v8;
  v10 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v11 = OUTLINED_FUNCTION_21_15(v10);
  return sub_25767EF98(v2, v1 + *(v11 + 44));
}

uint64_t sub_25767EF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*WordTaggerConfiguration.tags.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  OUTLINED_FUNCTION_19_17(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v11, v7, v14);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25767FC8C;
}

uint64_t WordTaggerConfiguration.stringTags.getter()
{
  v2 = type metadata accessor for Proto_StringVector(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_25767ED54(v0 + *(v19 + 44), v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_43();
  sub_25767EDC4(v18, v1, v21);
  OUTLINED_FUNCTION_0_55();
  sub_25767EDC4(v1, v8, v22);
  v20 = *v8;

  sub_25767EE20(v8);
  return v20;
}

uint64_t sub_25767F2C8(uint64_t *a1)
{
  v1 = *a1;

  return WordTaggerConfiguration.stringTags.setter(v2);
}

uint64_t WordTaggerConfiguration.stringTags.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_271();
  v8 = v2 + *(type metadata accessor for Proto_StringVector(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v9 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v10 = OUTLINED_FUNCTION_21_15(v9);
  return sub_25767EF98(v2, v1 + *(v10 + 44));
}

uint64_t (*WordTaggerConfiguration.stringTags.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  OUTLINED_FUNCTION_19_17(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_25767EDC4(v11, v7, v14);
    OUTLINED_FUNCTION_0_55();
    sub_25767EDC4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_25767F4FC;
}

void sub_25767F500(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = *((*a1)[2] + 20);
  v5 = *(*a1 + 16);
  v6 = (*a1)[6];
  v7 = (*a1)[7];
  v9 = (*a1)[4];
  v8 = (*a1)[5];
  v10 = (*a1)[1];
  if (a2)
  {
    v11 = **a1;

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_15_11();
    v12 = *v2;
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_15_11();
  }

  free(v7);
  free(v6);
  free(v8);
  free(v3);

  free(v2);
}

uint64_t WordTaggerConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = xmmword_257745740;
  v2 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v3 = *(v2 + 44);
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 48);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t WordTaggerConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v47 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38();
  v46 = type metadata accessor for WordTaggerConfiguration();
  v10 = OUTLINED_FUNCTION_4(v46);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25767F9C0(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577503A0;
  *(v15 + 32) = 0x6E6F697369766572;
  *(v15 + 40) = 0xE800000000000000;
  v16 = MEMORY[0x277D83B88];
  *(v15 + 48) = *v0;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0x65676175676E616CLL;
  v18 = v0[1];
  v17 = v0[2];
  *(v15 + 88) = 0xE800000000000000;
  *(v15 + 96) = v18;
  *(v15 + 104) = v17;
  OUTLINED_FUNCTION_13_15();
  *(v15 + 120) = v19;
  *(v15 + 128) = 0xD000000000000017;
  v20 = v0[3];
  v21 = v0[4];
  *(v15 + 136) = v22;
  *(v15 + 144) = v20;
  *(v15 + 152) = v21;
  OUTLINED_FUNCTION_13_15();
  *(v15 + 168) = v24;
  *(v15 + 176) = v23 | 8;
  v25 = v0[5];
  v26 = v0[6];
  *(v15 + 184) = v27;
  *(v15 + 192) = v25;
  *(v15 + 200) = v26;
  OUTLINED_FUNCTION_13_15();
  *(v15 + 216) = v29;
  *(v15 + 224) = v28 | 0xD;
  v30 = v0[7];
  v31 = v0[8];
  *(v15 + 232) = v32;
  *(v15 + 240) = v30;
  *(v15 + 248) = v31;
  OUTLINED_FUNCTION_13_15();
  *(v15 + 264) = v34;
  *(v15 + 272) = v33 + 11;
  v35 = v0[9];
  v36 = v0[10];
  *(v15 + 280) = v37;
  *(v15 + 288) = v35;
  *(v15 + 296) = v36;
  OUTLINED_FUNCTION_13_15();
  *(v15 + 312) = v38;
  *(v15 + 320) = v39;
  v40 = MEMORY[0x277CC9318];
  v42 = v0[11];
  v41 = v0[12];
  *(v15 + 328) = v43;
  *(v15 + 336) = v42;
  *(v15 + 344) = v41;
  *(v15 + 360) = v40;
  *(v15 + 368) = 1936154996;
  *(v15 + 376) = 0xE400000000000000;
  *(v15 + 408) = &type metadata for WordTaggerConfiguration.Tags;

  sub_257486740(v42, v41);
  WordTaggerConfiguration.tags.getter((v15 + 384));
  v44 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v44);
  (*(v48 + 104))(v47, *MEMORY[0x277D84C38], v49);
  return sub_257743AA4();
}

uint64_t type metadata accessor for WordTaggerConfiguration()
{
  result = qword_281537A30;
  if (!qword_281537A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25767F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordTaggerConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void WordTaggerConfiguration.Tags.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x259C651F0](0);

  sub_2576679DC(a1, v3);
}

uint64_t WordTaggerConfiguration.Tags.hashValue.getter()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC(v3, v1);
  return sub_257743A64();
}

uint64_t sub_25767FAE0()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC(v3, v1);
  return sub_257743A64();
}

unint64_t sub_25767FB38()
{
  result = qword_27F87BB30;
  if (!qword_27F87BB30)
  {
    type metadata accessor for Proto_CoreMLModels_WordTagger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87BB30);
  }

  return result;
}

unint64_t sub_25767FB94()
{
  result = qword_27F880B48;
  if (!qword_27F880B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880B48);
  }

  return result;
}

uint64_t sub_25767FC10()
{
  result = type metadata accessor for Proto_CoreMLModels_WordTagger(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_7_25()
{

  JUMPOUT(0x259C64E90);
}

uint64_t *OUTLINED_FUNCTION_12_22(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v4 = result[2];
  v3 = result[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[2] = v3;
  v2[3] = result;
  *v2 = a2;
  v2[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_25767EF98(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 8) = v2;

  return type metadata accessor for Proto_StringVector(0);
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{
  v5 = *(a1 + 44);
  *(v2 + 64) = v5;

  return sub_25767ED54(v1 + v5, v3);
}

void OUTLINED_FUNCTION_20_12()
{
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_WordTagger(0);
}

uint64_t sub_25767FDD0()
{
  v2 = v0;
  OUTLINED_FUNCTION_25_11();
  v3 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = v0 + *(type metadata accessor for Proto_Imputer(0) + 20);
  v19 = *v18;
  v20 = *(v18 + 16);
  if (!*(v18 + 16))
  {
    v60 = *v18;
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    v60 = *v18;
LABEL_7:
    v22 = sub_257743674();
    v23 = v24;
    goto LABEL_8;
  }

  if (v20 != 2)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v21 = *(v18 + 8);
  v60 = 34;
  v61 = 0xE100000000000000;
  sub_25745D184(v19, v21, 2);
  MEMORY[0x259C64E90](v19, v21);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  sub_257467084(v19, v21, 2);
  v22 = v60;
  v23 = v61;
LABEL_8:
  sub_257469AE0();
  v26 = v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  v1 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    OUTLINED_FUNCTION_174(v27);
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v26 = v58;
  }

  *(v26 + 16) = v1;
  OUTLINED_FUNCTION_25_11();
  *(v29 + 32) = v30;
  *(v29 + 40) = v1;
  *(v29 + 48) = v22;
  *(v29 + 56) = v23;
  *(v29 + 64) = 0;
LABEL_12:
  sub_257680590(v2, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v3);
  if (EnumTagSinglePayload == 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    sub_25768378C(v17, v11);
    OUTLINED_FUNCTION_1_44();
    v42 = OUTLINED_FUNCTION_368();
    sub_257681988(v42, v43);
    sub_257680758(v9, &v60);
    v39 = v60;
    v40 = v61;
    v41 = v62;
    EnumTagSinglePayload = sub_2574D7A2C(v11, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
  }

  v60 = v39;
  v61 = v40;
  v62 = v41;
  v44 = sub_2576811A4(EnumTagSinglePayload, v32, v33, v34, v35, v36, v37, v38);
  v46 = v45;
  v48 = v47;
  v49 = OUTLINED_FUNCTION_277();
  sub_257680E94(v49, v50, v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = *(v26 + 16);
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v26 = v56;
  }

  v52 = *(v26 + 16);
  v51 = *(v26 + 24);
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_174(v51);
    OUTLINED_FUNCTION_19_18();
    sub_257469AE0();
    v26 = v57;
  }

  *(v26 + 16) = v52 + 1;
  v53 = v26 + 40 * v52;
  *(v53 + 32) = 0x2064657475706D49;
  *(v53 + 40) = v1;
  *(v53 + 48) = v44;
  *(v53 + 56) = v46;
  *(v53 + 64) = v48;
  return sub_2576AACFC(v26);
}