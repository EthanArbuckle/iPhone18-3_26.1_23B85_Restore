uint64_t sub_25744D128(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  valid = type metadata accessor for Proto_ValidPadding(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, valid);
}

uint64_t sub_25744D16C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  valid = type metadata accessor for Proto_ValidPadding(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, valid);
}

uint64_t sub_25744D1B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CopyLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744D1F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CopyLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744D228()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744D260()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744D298()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopBreakLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744D2D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopBreakLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744D308()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopContinueLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744D340()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LoopContinueLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

BOOL sub_25744D68C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

char *sub_25744D808(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

uint64_t sub_25744D82C()
{
  OUTLINED_FUNCTION_220();
  result = Model.specificationVersion.getter();
  *v0 = result;
  return result;
}

void sub_25744D87C()
{
  OUTLINED_FUNCTION_220();
  Model.versionString.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744D8A8()
{
  OUTLINED_FUNCTION_220();
  Model.modelDescription.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744D8D4()
{
  OUTLINED_FUNCTION_220();
  Model.author.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744D900()
{
  OUTLINED_FUNCTION_220();
  Model.license.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744D92C()
{
  OUTLINED_FUNCTION_220();
  Model.metadata.getter();
  *v0 = v1;
}

void sub_25744D958()
{
  OUTLINED_FUNCTION_220();
  Model.inputs.getter();
  *v0 = v1;
}

void sub_25744D984()
{
  OUTLINED_FUNCTION_220();
  Model.outputs.getter();
  *v0 = v1;
}

void sub_25744D9B0()
{
  OUTLINED_FUNCTION_220();
  Model.predictedFeatureName.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744D9DC()
{
  OUTLINED_FUNCTION_220();
  Model.predictedProbabilitiesName.getter();
  *v0 = v1;
  v0[1] = v2;
}

void sub_25744DA08()
{
  OUTLINED_FUNCTION_220();
  Model.trainingInput.getter();
  *v0 = v1;
}

uint64_t sub_25744DA34()
{
  OUTLINED_FUNCTION_220();
  result = Model.isUpdatable.getter();
  *v0 = result & 1;
  return result;
}

void sub_25744DAB0()
{
  OUTLINED_FUNCTION_220();
  Model.functions.getter();
  *v0 = v1;
}

void sub_25744DADC()
{
  OUTLINED_FUNCTION_220();
  Model.defaultFunctionName.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_25744DB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Model(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25744DB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Model(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25744E5B8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.ArrayShapeMapping.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25744E5E0@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.layers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25744E610@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.preprocessors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25744E670(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetwork(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25744E6B4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetwork(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25744E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Normalizer();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25744E7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Normalizer();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25744E840()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Preprocessor.featureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25744EA10()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Preprocessor.MeanImageConfiguration.meanImage.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25744EA3C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkPreprocessing(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EA74()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkPreprocessing(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EAAC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkImageScaler(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EAE4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkImageScaler(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EB1C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkMeanImage(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EB54()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NeuralNetworkMeanImage(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25744EBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25744EC20@<X0>(uint64_t *a1@<X8>)
{
  result = MLProgram.NamedValueType.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25744EC58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_NamedValueType(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25744EC9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_NamedValueType(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25744ED2C@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.CropParameters.offset.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25744ED5C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CropLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744ED94()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CropLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EDCC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ResizeBilinearLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EE04()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ResizeBilinearLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EE3C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CropResizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EE74()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CropResizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EEAC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.TileParameters.repetitions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25744EEDC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SequenceRepeatLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EF14()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SequenceRepeatLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EF4C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReorganizeDataLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EF84()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReorganizeDataLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744EFBC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_TileLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744EFF4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_TileLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F02C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReverseLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744F064()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReverseLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F09C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReverseSeqLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744F0D4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReverseSeqLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F10C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744F144()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F17C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744F1B4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F1EC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25744F224()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FillDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25744F2AC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BranchLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25744F2F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BranchLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25744F338(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_25744F3C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25744F440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_25744F4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A388, &unk_257745F50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_25744F5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v5 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
    v7 = *(a3 + 24);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_25744F648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2577431B4();
  v9 = OUTLINED_FUNCTION_18_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_25744F6F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_7();
  }

  v6 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
    v8 = *(a3 + 60);
  }

  v9 = OUTLINED_FUNCTION_13_2(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_25744F7B4()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 56);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
      v8 = *(v4 + 60);
    }

    v9 = OUTLINED_FUNCTION_13_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_25744F87C()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_25744F8CC()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_25744F920(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_12_7();
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_25744F994()
{
  OUTLINED_FUNCTION_267();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_25744FA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 253)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 <= 1)
      {
        return 0;
      }

      else
      {
        return v9 ^ 0xFF;
      }
    }

    v7 = sub_2577431B4();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_25744FB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + *(a4 + 20) + 16) = ~a2;
      return result;
    }

    v9 = sub_2577431B4();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_25744FC20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_25744FCA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25744FD28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v3 = *(a1 + 16);
    if (v3 <= 5)
    {
      return 0;
    }

    else
    {
      return v3 ^ 0xFF;
    }
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_13_2(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25744FDA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 249)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_13_2(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_25744FE1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_13_2(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25744FEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_13_2(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_25744FF54()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();
  if (*(*(v2 - 8) + 84) == v0)
  {
    v3 = v2;
    v4 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
    v4 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v3);
}

uint64_t sub_25744FFF4(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_267();
  v6 = sub_2577431B4();
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A618, &unk_257776600);
    v8 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_storeEnumTagSinglePayload(v8, v3, v3, v7);
}

uint64_t sub_257450128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2574501D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A848, &unk_257748540);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_257450280()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v1 = OUTLINED_FUNCTION_72_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2574502C0()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_257450304()
{
  OUTLINED_FUNCTION_41_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = OUTLINED_FUNCTION_18_3(v7);
    if (*(v9 + 84) == v0)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
      OUTLINED_FUNCTION_96_0();
    }

    v5 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_2574503E4()
{
  OUTLINED_FUNCTION_33_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_18_3(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v4 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
      v7 = *(v0 + 24);
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_25745051C()
{
  OUTLINED_FUNCTION_41_2();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
    v3 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_2574505B0()
{
  OUTLINED_FUNCTION_33_1();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_257450644()
{
  OUTLINED_FUNCTION_41_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v5 = sub_2577431B4();
    v6 = *(v2 + 32);
  }

  return __swift_getEnumTagSinglePayload(v1 + v6, v0, v5);
}

uint64_t sub_2574506DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_18_3(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 24);
  }

  else
  {
    sub_2577431B4();
    v9 = *(a4 + 32);
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t _s20MLModelSpecification17Proto_SamePaddingV15SamePaddingModeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_88_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574507D4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_88_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2574507F0()
{
  OUTLINED_FUNCTION_41_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    if (v0 == 254)
    {
      v7 = *(v1 + *(v2 + 20));
      if (v7 >= 2)
      {
        return ((v7 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    sub_2577431B4();
    OUTLINED_FUNCTION_96_0();
    v5 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t sub_2574508C4()
{
  OUTLINED_FUNCTION_33_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  result = OUTLINED_FUNCTION_18_3(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    if (v3 == 254)
    {
      *(v1 + *(v2 + 20)) = v0 + 1;
      return result;
    }

    sub_2577431B4();
    v7 = v1 + *(v2 + 24);
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_257450A80()
{
  OUTLINED_FUNCTION_5_12();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  v5 = v1;
  sub_2577431B4();
  v6 = OUTLINED_FUNCTION_13_2(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257450AF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_13_2(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_257450B6C()
{
  OUTLINED_FUNCTION_5_12();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  v5 = v1;
  sub_2577431B4();
  v6 = OUTLINED_FUNCTION_13_2(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257450BE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_13_2(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_257450C58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*(a1 + 16));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 28);
  }

  else
  {
    sub_2577431B4();
    v5 = *(a3 + 32);
  }

  v6 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257450D20()
{
  OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      sub_2577431B4();
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_13_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_257450DE4(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*a1);
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_257450E5C()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257450ECC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    sub_2577431B4();
    v5 = *(a3 + 36);
  }

  v6 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257450F90()
{
  OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      sub_2577431B4();
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_13_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_257451054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2574510C8()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257451148()
{
  OUTLINED_FUNCTION_5_12();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  v4 = v0;
  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2574511B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_13_2(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_257451230()
{
  OUTLINED_FUNCTION_5_12();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  v4 = v0;
  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2574512A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_13_2(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_257451318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257451360(uint64_t a1, uint64_t a2)
{
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2574513AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 252)
    {
      v9 = *(a1 + *(a3 + 20) + 16);
      if (v9 <= 2)
      {
        return 0;
      }

      else
      {
        return v9 ^ 0xFF;
      }
    }

    v7 = sub_2577431B4();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_257451484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 252)
    {
      *(a1 + *(a4 + 20) + 16) = ~a2;
      return result;
    }

    v9 = sub_2577431B4();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2574515C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_25745161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_257451674()
{
  OUTLINED_FUNCTION_5_12();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = v5[11];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
    OUTLINED_FUNCTION_18_3(v10);
    if (*(v11 + 84) == v6)
    {
      v9 = v5[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
      v9 = v5[13];
    }
  }

  v12 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_257451780(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = v7[11];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
      OUTLINED_FUNCTION_18_3(v12);
      if (*(v13 + 84) == v8)
      {
        v11 = v7[12];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
        v11 = v7[13];
      }
    }

    v14 = OUTLINED_FUNCTION_13_2(v11);

    __swift_storeEnumTagSinglePayload(v14, v15, a2, v16);
  }
}

uint64_t sub_257451894()
{
  OUTLINED_FUNCTION_5_12();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  v5 = v1;
  sub_2577431B4();
  v6 = OUTLINED_FUNCTION_13_2(*(v5 + 28));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257451908(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_12();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_13_2(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2574519D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  v5 = OUTLINED_FUNCTION_18_3(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = a1;
  }

  else
  {
    sub_2577431B4();
    v8 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_257451A74()
{
  OUTLINED_FUNCTION_33_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AFB0, &unk_25774BD30);
  v4 = OUTLINED_FUNCTION_18_3(v3);
  if (*(v5 + 84) == v2)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_2577431B4();
    v7 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_257451CB4(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v2 = *(a1 + 8) >> 60;
    if (((4 * v2) & 0xC) != 0)
    {
      return 16 - ((4 * v2) & 0xC | (v2 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_0();
    v5 = OUTLINED_FUNCTION_13_2(v4);

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_257451D34(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_257451DE0()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_257451E30()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_257451E80(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_0();
    v7 = OUTLINED_FUNCTION_13_2(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_257451EF4()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257451FDC()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();
  v3 = OUTLINED_FUNCTION_18_3(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
    v6 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_257452078()
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  v1 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_257452110()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257452174()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_2574521DC()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 24));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25745223C()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v4 = OUTLINED_FUNCTION_48_1(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2574522A8()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_25745230C()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_25745236C()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == v6)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    v10 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v10);
    if (*(v11 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
      v9 = *(v5 + 28);
    }
  }

  v12 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_257452470()
{
  OUTLINED_FUNCTION_4_7();
  if (v2)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
    OUTLINED_FUNCTION_18_3(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      v6 = sub_2577431B4();
      OUTLINED_FUNCTION_18_3(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = *(v0 + 24);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
        v5 = *(v0 + 28);
      }
    }

    v8 = OUTLINED_FUNCTION_48_1(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_25745256C()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2574525CC()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_25745262C()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_2574526D8()
{
  OUTLINED_FUNCTION_4_7();
  if (v2)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v3 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
      v5 = *(v0 + 24);
    }

    v6 = OUTLINED_FUNCTION_48_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_2574529B4()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257452A18()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257452A84()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257452AE8()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v4 = OUTLINED_FUNCTION_48_1(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257452B4C()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257452BB0()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 40));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257452C10()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_257452CC0()
{
  OUTLINED_FUNCTION_4_7();
  if (v2)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
      v7 = *(v3 + 28);
    }

    v8 = OUTLINED_FUNCTION_48_1(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_257452D78()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  v5 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
    v7 = *(v2 + 52);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_257452E28()
{
  OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
      v9 = *(v5 + 52);
    }

    v10 = OUTLINED_FUNCTION_48_1(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_257452EE4()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v4 = OUTLINED_FUNCTION_13_2(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257452F48()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v2 = OUTLINED_FUNCTION_48_1(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257452FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_376();
  v6 = sub_2577431B4();
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_7_7(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_257453040()
{
  v4 = OUTLINED_FUNCTION_63_0();
  result = OUTLINED_FUNCTION_18_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_55_0();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_2574531EC()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_257453230()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_257453274()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_2574532C4()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_257453314(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 253)
    {
      v11 = *(v4 + a3[5] + 16);
      if (v11 <= 1)
      {
        return 0;
      }

      else
      {
        return v11 ^ 0xFF;
      }
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
    v14 = OUTLINED_FUNCTION_18_3(v13);
    if (*(v15 + 84) == v3)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = sub_2577431B4();
      v18 = OUTLINED_FUNCTION_18_3(v17);
      if (*(v19 + 84) == v3)
      {
        v9 = v18;
        v16 = a3[7];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
        v21 = OUTLINED_FUNCTION_18_3(v20);
        if (*(v22 + 84) == v3)
        {
          v9 = v21;
          v16 = a3[8];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
          v16 = a3[9];
        }
      }
    }

    v10 = v4 + v16;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_2574534C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  result = OUTLINED_FUNCTION_18_3(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    if (a3 == 253)
    {
      *(v5 + a4[5] + 16) = ~v4;
      return result;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
    OUTLINED_FUNCTION_18_3(v11);
    if (*(v12 + 84) == a3)
    {
      v13 = a4[6];
    }

    else
    {
      v14 = sub_2577431B4();
      OUTLINED_FUNCTION_18_3(v14);
      if (*(v15 + 84) == a3)
      {
        v16 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
        OUTLINED_FUNCTION_18_3(v17);
        if (*(v18 + 84) == a3)
        {
          v19 = a4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
          v20 = a4[9];
        }
      }
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_257453674(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
    v9 = OUTLINED_FUNCTION_18_3(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
      v14 = OUTLINED_FUNCTION_18_3(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v11 = sub_2577431B4();
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void sub_257453794()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[6];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
      OUTLINED_FUNCTION_18_3(v9);
      if (*(v10 + 84) == v5)
      {
        v11 = v4[7];
      }

      else
      {
        sub_2577431B4();
        v12 = v4[8];
      }
    }

    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

uint64_t sub_257453C04()
{
  OUTLINED_FUNCTION_147_0();
  sub_257609C20();
  OUTLINED_FUNCTION_12_10();
  return sub_257743284();
}

uint64_t sub_257453C54()
{
  OUTLINED_FUNCTION_147_0();
  sub_257609C74();
  OUTLINED_FUNCTION_12_10();
  return sub_257743284();
}

uint64_t sub_257454398()
{
  OUTLINED_FUNCTION_147_0();
  sub_257609DC4();
  OUTLINED_FUNCTION_12_10();
  return sub_257743284();
}

uint64_t sub_2574545E8()
{
  OUTLINED_FUNCTION_264_0();
  if (v2)
  {
    v3 = *(v0 + 76);
    OUTLINED_FUNCTION_238_0();
    v6 = (v4 + v5) & 0x7FFFFFFF;
    if (v7)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    v9 = OUTLINED_FUNCTION_13_2(*(v1 + 76));

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_257454658()
{
  OUTLINED_FUNCTION_107_0();
  if (v3)
  {
    *(v1 + 76) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    v4 = OUTLINED_FUNCTION_48_1(*(v2 + 76));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2574546E0()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *(v0 + 16);
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_290_0();
    v9 = OUTLINED_FUNCTION_13_2(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_25745474C()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_295_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_25745480C()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *(v0 + 16);
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    v8 = OUTLINED_FUNCTION_61_0();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_257454878()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_274_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2574548D8()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_257454938()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_274_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257454994(uint64_t a1, int a2)
{
  if (a2 == 250)
  {
    v2 = *(a1 + 16);
    if (v2 <= 4)
    {
      return 0;
    }

    else
    {
      return v2 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_117_0();
    v5 = OUTLINED_FUNCTION_13_2(v4);

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_257454A00()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 250)
  {
    *(v1 + 16) = ~v0;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_122_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257454A64()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *(v0 + 16);
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    v8 = OUTLINED_FUNCTION_84_2();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_257454AD0()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257454B58()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  v1 = OUTLINED_FUNCTION_72_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_257454B98()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_257454C2C()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 16));
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = *(v5 + 28);
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_289_0();
  }

  v10 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_257454CE4()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C6E8, &unk_257773F00);
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_256_0();
    }

    else
    {
      sub_2577431B4();
      OUTLINED_FUNCTION_294_0();
    }

    v5 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_257454E10()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    v8 = OUTLINED_FUNCTION_84_2();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_257454E7C()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257454EDC()
{
  OUTLINED_FUNCTION_267();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C8F0, &qword_257752208);
  OUTLINED_FUNCTION_18_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    v6 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_117_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
      OUTLINED_FUNCTION_96_0();
    }

    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_257454FBC()
{
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_267();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C8F0, &qword_257752208);
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v3 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v3);
    if (*(v4 + 84) == v0)
    {
      OUTLINED_FUNCTION_122_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
      OUTLINED_FUNCTION_255_0();
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_25745509C()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*(v0 + 8));
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_84_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2574550FC()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_155_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257455160()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == v6)
  {
    OUTLINED_FUNCTION_271_0();
  }

  else
  {
    v10 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v10);
    if (*(v11 + 84) == v6)
    {
      OUTLINED_FUNCTION_289_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
      v9 = *(v5 + 44);
    }
  }

  v12 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_257455260()
{
  OUTLINED_FUNCTION_4_7();
  if (v2)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA28, &unk_2577700F0);
    OUTLINED_FUNCTION_18_3(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_274_0();
    }

    else
    {
      v6 = sub_2577431B4();
      OUTLINED_FUNCTION_18_3(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_294_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87C788, &unk_257751EA0);
        v5 = *(v0 + 44);
      }
    }

    v8 = OUTLINED_FUNCTION_48_1(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_257455358()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  v3 = OUTLINED_FUNCTION_61_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_2574553B8()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_274_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_257455414()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_271_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
    OUTLINED_FUNCTION_18_3(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_290_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
      OUTLINED_FUNCTION_289_0();
    }
  }

  v9 = OUTLINED_FUNCTION_13_2(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_257455504()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_274_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
      OUTLINED_FUNCTION_18_3(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_295_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
        OUTLINED_FUNCTION_294_0();
      }
    }

    v7 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_2574555F8()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_290_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257455658()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_295_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_2574556B4()
{
  OUTLINED_FUNCTION_52_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_7(*v0);
  }

  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_289_0();
  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_257455714()
{
  OUTLINED_FUNCTION_4_7();
  if (v0)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_294_0();
    v2 = OUTLINED_FUNCTION_48_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_2574557B4()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *(v0 + 8);
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    v8 = OUTLINED_FUNCTION_84_2();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_257455820()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_256_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_2574558BC()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_290_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
    OUTLINED_FUNCTION_289_0();
  }

  v7 = OUTLINED_FUNCTION_13_2(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_257455964()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_295_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
      OUTLINED_FUNCTION_294_0();
    }

    v5 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_257455A10()
{
  OUTLINED_FUNCTION_264_0();
  if (v1)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_238_0();
    v5 = (v3 + v4) & 0x7FFFFFFF;
    if (v6)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_289_0();
    v9 = OUTLINED_FUNCTION_13_2(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_257455A7C()
{
  OUTLINED_FUNCTION_107_0();
  if (v2)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    OUTLINED_FUNCTION_294_0();
    v4 = OUTLINED_FUNCTION_48_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_257455B04()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  v5 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
    OUTLINED_FUNCTION_18_3(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_271_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CF60, &unk_257753020);
      OUTLINED_FUNCTION_290_0();
    }
  }

  v10 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_257455BF8()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_256_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A208, &unk_2577458B8);
      OUTLINED_FUNCTION_18_3(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_274_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CF60, &unk_257753020);
        OUTLINED_FUNCTION_295_0();
      }
    }

    v7 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_257455D3C()
{
  OUTLINED_FUNCTION_267();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_18_3(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_117_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_96_0();
  }

  v4 = OUTLINED_FUNCTION_13_2(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_257455DD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_18_3(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    sub_2577431B4();
    v9 = *(a4 + 24);
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_257455E78()
{
  OUTLINED_FUNCTION_52_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_7(*v1);
  }

  v4 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_290_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
    OUTLINED_FUNCTION_289_0();
  }

  v7 = OUTLINED_FUNCTION_13_2(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_257455F20()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_200_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_295_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
      OUTLINED_FUNCTION_294_0();
    }

    v5 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_257456020()
{
  OUTLINED_FUNCTION_52_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_7_7(*(v1 + 16));
  }

  v5 = OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_2574560CC()
{
  OUTLINED_FUNCTION_4_7();
  if (v1)
  {
    OUTLINED_FUNCTION_304_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    v2 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_255_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
      OUTLINED_FUNCTION_256_0();
    }

    v5 = OUTLINED_FUNCTION_48_1(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2574566C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  v12 = OUTLINED_FUNCTION_18_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_2577431B4();
    v14 = a3[14];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[8] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2574567F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  v9 = OUTLINED_FUNCTION_18_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
    result = OUTLINED_FUNCTION_18_3(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v11 = sub_2577431B4();
      v16 = a4[14];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_25745694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_2574569A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_2574569F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_257456A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257456B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_2577431B4();
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_257456BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FB98, &unk_257767D60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_2577431B4();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_257456CBC(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_16_3();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_257456D3C()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    sub_2577431B4();
    v3 = OUTLINED_FUNCTION_16_3();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_257456DD4()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_257456E24()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_257456E78(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_2577431B4();
    v4 = OUTLINED_FUNCTION_16_3();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_257456EF8()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_2577431B4();
    v3 = OUTLINED_FUNCTION_16_3();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_257456F94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_25745701C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25745709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_257457140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_2574571EC()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_257457230()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_257457288()
{
  OUTLINED_FUNCTION_267();
  v2 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2574572CC()
{
  OUTLINED_FUNCTION_267();
  sub_2577431B4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_25745730C()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_257457354()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 20);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_25745739C()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 28);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_173_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_2574573E4()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 28);
  sub_2577431B4();
  v2 = OUTLINED_FUNCTION_115_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_25745745C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_2577431B4();
    v12 = OUTLINED_FUNCTION_18_3(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[6];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
      v16 = OUTLINED_FUNCTION_18_3(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[7];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
        v14 = a3[8];
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_257457594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_18_3(v6);
  if (*(v7 + 84) == a3)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v8 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v8);
    if (*(v9 + 84) == a3)
    {
      v10 = a4[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
      OUTLINED_FUNCTION_18_3(v11);
      if (*(v12 + 84) == a3)
      {
        v13 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
        v14 = a4[8];
      }
    }
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_2574576D4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  v8 = OUTLINED_FUNCTION_18_3(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
    v13 = OUTLINED_FUNCTION_18_3(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[10];
    }

    else
    {
      v15 = sub_2577431B4();
      v16 = OUTLINED_FUNCTION_18_3(v15);
      if (*(v17 + 84) == a2)
      {
        v10 = v16;
        v11 = a3[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
        v11 = a3[12];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_257457830()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[5];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
      OUTLINED_FUNCTION_18_3(v9);
      if (*(v10 + 84) == v5)
      {
        v11 = v4[10];
      }

      else
      {
        v12 = sub_2577431B4();
        OUTLINED_FUNCTION_18_3(v12);
        if (*(v13 + 84) == v5)
        {
          v14 = v4[11];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
          v15 = v4[12];
        }
      }
    }

    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

uint64_t sub_257457990()
{
  OUTLINED_FUNCTION_267();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v3 = OUTLINED_FUNCTION_18_3(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_2577431B4();
    v6 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_257457A2C(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_267();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_257457B6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*(a1 + 16));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 28);
  }

  else
  {
    sub_2577431B4();
    v5 = *(a3 + 32);
  }

  v6 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257457C34()
{
  OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      sub_2577431B4();
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_13_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_257457CF8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*a1);
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_257457D70()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257457DE0()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_257457E30()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 24);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_257457E84(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = a3[5];
  }

  else
  {
    v8 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v8);
    if (*(v9 + 84) == v3)
    {
      v7 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
      v7 = a3[7];
    }
  }

  v10 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t sub_257457F6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_267();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    v10 = sub_2577431B4();
    OUTLINED_FUNCTION_18_3(v10);
    if (*(v11 + 84) == a3)
    {
      v9 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
      v9 = a4[7];
    }
  }

  v12 = OUTLINED_FUNCTION_13_2(v9);

  return __swift_storeEnumTagSinglePayload(v12, v13, v4, v14);
}

uint64_t sub_25745805C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v5 = sub_2577431B4();
  OUTLINED_FUNCTION_18_3(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
    v7 = *(a3 + 24);
  }

  v8 = OUTLINED_FUNCTION_13_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_2574580F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2577431B4();
  v9 = OUTLINED_FUNCTION_18_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_2574581A4(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*a1);
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_25745821C()
{
  OUTLINED_FUNCTION_267();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257458294(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*(a1 + 72));
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 56));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_25745830C()
{
  OUTLINED_FUNCTION_267();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 72) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 56));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257458478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_25745851C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_2574585C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_257458650()
{
  OUTLINED_FUNCTION_267();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_2577431B4();
    v6 = v1 + *(v4 + 24);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_2574586CC()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_25745871C()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 20);
  v4 = sub_2577431B4();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_257458770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2577431B4();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2574587F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2577431B4();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_257458878(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*(a1 + 16));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0) - 8) + 84) == a2)
  {
    v5 = *(a3 + 44);
  }

  else
  {
    sub_2577431B4();
    v5 = *(a3 + 48);
  }

  v6 = OUTLINED_FUNCTION_13_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_257458940()
{
  OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 44);
    }

    else
    {
      sub_2577431B4();
      v8 = *(v5 + 48);
    }

    v9 = OUTLINED_FUNCTION_13_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_257458A04(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_7(*a1);
  }

  sub_2577431B4();
  v5 = OUTLINED_FUNCTION_13_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_257458A7C()
{
  OUTLINED_FUNCTION_4_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_13_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_257458AFC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.TransposeParameters.axes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257458B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransposeLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257458B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransposeLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257458BC0@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureDescription.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257458C18@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureDescription.featureDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257458C48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_FeatureDescription(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257458C8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_FeatureDescription(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257458CD4@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SoftmaxNDParameters.axis.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257458D28()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SoftmaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257458D64()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SoftmaxLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257458DA4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SoftmaxNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257458DE0()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SoftmaxNDLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257458E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Proto_ClipLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_257458E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Proto_ClipLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_257458F20()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_AddLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_257458F60()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_AddLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257458F98()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_AddBroadcastableLayerParams(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_257458FD8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_AddBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574594C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LSTMWeightParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257459508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_LSTMWeightParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257459554()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574595A4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.getter();
  *v0 = result;
  return result;
}

void sub_2574595F4()
{
  OUTLINED_FUNCTION_220();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter();
  *v0 = v1;
}

void sub_257459620()
{
  OUTLINED_FUNCTION_220();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.getter();
  *v0 = v1;
}

uint64_t sub_25745964C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2574596A0()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574596CC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257459710(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257459758@<X0>(uint64_t *a1@<X8>)
{
  result = LinearRegressorConfiguration.weights.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257459788@<X0>(uint64_t *a1@<X8>)
{
  result = LinearRegressorConfiguration.offset.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2574597C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMRegressor(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257459808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMRegressor(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2574598BC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceL1LayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574598F4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceL1LayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745992C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceL2LayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459964()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceL2LayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745999C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574599D4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459A0C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459A44()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459A7C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459AB4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459AEC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceProdLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459B24()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceProdLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459B5C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMeanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459B94()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceMeanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459BCC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLogSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459C04()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLogSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459C3C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceSumSquareLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459C74()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceSumSquareLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459CAC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLogSumExpLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459CE4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLogSumExpLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459D1C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_WhereBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459D54()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_WhereBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459D8C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_AverageLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459DC4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_AverageLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459DFC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459E34()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459E6C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459EA4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459EDC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459F14()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReduceLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459F4C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MinBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459F84()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MinBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257459FBC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MaxBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257459FF4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MaxBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745A02C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgMinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745A064()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgMinLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745A09C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgMaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745A0D4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ArgMaxLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745A10C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_WhereNonZeroLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745A144()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_WhereNonZeroLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745A17C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CumSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745A1B4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_CumSumLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745A1EC@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.DotProductParameters.normalizeInputs.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745A244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DotProductLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745A28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DotProductLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745A2D8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745A308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ExpandDimsLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745A350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ExpandDimsLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745A3EC()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Operation.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_25745A418()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Operation.inputs.getter();
  *v0 = v1;
}

uint64_t sub_25745A444()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Operation.outputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A470()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Operation.blocks.getter();
  *v0 = result;
  return result;
}

void sub_25745A49C()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Operation.attributes.getter();
  *v0 = v1;
}

uint64_t sub_25745A4C8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Operation(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745A50C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Operation(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745A5B4()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorClassifierConfiguration.supportVectorCountPerClass.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A640()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorClassifierConfiguration.coefficients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A66C()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorClassifierConfiguration.rho.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A698()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorClassifierConfiguration.probabilityA.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A6C4()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorClassifierConfiguration.probabilityB.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A6F8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_SupportVectorClassifier(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745A73C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_SupportVectorClassifier(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745A784@<X0>(uint64_t *a1@<X8>)
{
  result = SerializedModelConfiguration.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745A7B4@<X0>(uint64_t *a1@<X8>)
{
  result = SerializedModelConfiguration.data.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745A7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SerializedModel(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745A82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SerializedModel(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

unint64_t sub_25745A904(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_257743A04();
  return sub_2576537B8(a1, v4);
}

uint64_t sub_25745A940()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Function.inputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745A96C()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Function.opset.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_25745A998()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Function.blockSpecializations.getter();
  *v0 = v1;
}

void sub_25745A9C4()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Function.attributes.getter();
  *v0 = v1;
}

uint64_t sub_25745A9F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Function(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745AA34(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Function(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745AA7C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioFeaturePrintKind.SoundParameters.version.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745AAD0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745AB14(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint.Sound(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745AB64(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Quantization.LinearParameters.scale.setter(v2);
}

uint64_t sub_25745AB90@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Quantization.bitCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745AC10@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Quantization.LinearParameters.bias.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745AC40@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Quantization.LinearParameters.scale.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745AC6C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_QuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745ACA4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_QuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745ACDC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearQuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745AD14()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearQuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745AD4C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LookUpTableQuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745AD84()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LookUpTableQuantizationParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745ADC4()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.version.getter();
  *v0 = result;
  return result;
}

void sub_25745AE14()
{
  OUTLINED_FUNCTION_220();
  MLProgram.functions.getter();
  *v0 = v1;
}

uint64_t sub_25745AE68()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.documentation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_25745AE94()
{
  OUTLINED_FUNCTION_220();
  MLProgram.attributes.getter();
  *v0 = v1;
}

uint64_t sub_25745AEC0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Program(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745AF04(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Program(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745AFE4@<X0>(uint64_t *a1@<X8>)
{
  result = ODIELibrary.fileName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745B014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Odie_Library();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745B05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Odie_Library();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745B0A8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_25745B134@<X0>(uint64_t *a1@<X8>)
{
  result = NearestNeighborsConfiguration.neighborCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745B210()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_KNearestNeighborsClassifier(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B248()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_KNearestNeighborsClassifier(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B280()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_UniformWeighting(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B2B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_UniformWeighting(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B2F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_InverseDistanceWeighting(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B328()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_InverseDistanceWeighting(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B4D4(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Value.List.elements.setter(v2);
}

uint64_t sub_25745B550()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Value.BlobFileValue.fileName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745B57C()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Value.BlobFileValue.offset.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745B5CC()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Value.List.elements.getter();
  *v0 = result;
  return result;
}

void sub_25745B5F8()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  *v0 = v1;
}

uint64_t sub_25745B624()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B65C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_Value.BlobFileValue(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B694()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TupleValue(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B6CC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TupleValue(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B704()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_ListValue(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B73C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_ListValue(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B774()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_DictionaryValue(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745B7AC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_DictionaryValue(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745B960(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_SupportVectorRegressor(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745B9A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_SupportVectorRegressor(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745B9EC@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.nodes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745BA1C@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.predictionSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745BA70@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.basePrediction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745BAA0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_TreeEnsembleParameters(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745BAE4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_TreeEnsembleParameters(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745BB2C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745BB7C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BatchNormalizeParameters.computesMeanVariance.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25745BBD0()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.BatchNormalizeParameters.instanceNormalization.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25745BDB4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BatchnormLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745BDF8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_BatchnormLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745BE40@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.ConcatenateParameters.alongSequenceAxis.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745BE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConcatLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745BEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConcatLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745BF2C@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SqueezeParameters.axes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745BF5C@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.SqueezeParameters.squeezeAllUnitDimensions.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745BFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SqueezeLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745BFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SqueezeLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745C068()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_L2NormalizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C0A0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_L2NormalizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C0D8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LRNLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C110()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LRNLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C148()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LayerNormalizationLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C180()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LayerNormalizationLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C280@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ScatterParameters.axis.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745C2E4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C31C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C354()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C38C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C3C4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterAlongAxisLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C3FC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ScatterAlongAxisLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C4A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Argument(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745C4E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Argument(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745C530()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C568()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C5A0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceBySizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C5D8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceBySizeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C610()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C648()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C680()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C6B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SliceDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C6F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SlidingWindowsLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C728()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SlidingWindowsLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C788(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_31(a1);
  v4 = *v2;
  result = sub_257679D48(v3, v5);
  *v1 = result;
  return result;
}

uint64_t sub_25745C7F4@<X0>(uint64_t *a1@<X8>)
{
  result = ArrayFeatureExtractorConfiguration.indices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745C824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureExtractor();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745C86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureExtractor();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745C8BC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ModBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C8F4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ModBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C92C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PowBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C964()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PowBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745C99C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_DivideBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745C9D4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_DivideBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745CA0C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FloorDivBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745CA44()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FloorDivBroadcastableLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745CA7C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.UnidirectionalLSTMParameters.inputSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745CACC()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.UnidirectionalLSTMParameters.outputSize.getter();
  *v0 = result;
  return result;
}

void sub_25745CB1C()
{
  OUTLINED_FUNCTION_220();
  NeuralNetwork.Layer.UnidirectionalLSTMParameters.activations.getter();
  *v0 = v1;
}

uint64_t sub_25745CB48()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.sequenceOutput.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CB94()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasBias.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CBE0()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasForgetBias.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CC2C()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.hasPeepholeConnections.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CC78()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.coupledInputAndForgetGate.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CD3C()
{
  OUTLINED_FUNCTION_220();
  v0 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.reverseInput.getter();
  return OUTLINED_FUNCTION_27_13(v0);
}

uint64_t sub_25745CD88(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745CDCC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745CE14()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.revision.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745CE64()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CE90()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.tokensOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CEBC()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.tokenTagsOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CEE8()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.tokenLocationsOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CF14()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.tokenLengthsOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CF40()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.modelParameterData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25745CF74()
{
  OUTLINED_FUNCTION_220();
  result = WordTaggerConfiguration.stringTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745CFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745CFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745D0F8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_Imputer(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745D13C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_Imputer(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745D184(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_257466F40(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25745D198@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.scalingFactor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745D1C8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.UpsampleParameters.fractionalScalingFactor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745D208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_UpsampleLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745D250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_UpsampleLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745D2F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_DictVectorizer(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745D338(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_DictVectorizer(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745D388@<X0>(_BYTE *a1@<X8>)
{
  result = OneHotEncoderConfiguration.sparseOutput.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745D3E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_OneHotEncoder(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745D42C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_OneHotEncoder(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745D49C@<X0>(uint64_t *a1@<X8>)
{
  result = TextClassifierConfiguration.language.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745D4CC@<X0>(uint64_t *a1@<X8>)
{
  result = TextClassifierConfiguration.modelParameterData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745D504@<X0>(uint64_t *a1@<X8>)
{
  result = TextClassifierConfiguration.stringClassLabels.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745D534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745D57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745D5C8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetworkClassifier.layers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745D5F8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetworkClassifier.preprocessors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745D660@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetworkClassifier.labelProbabilityLayerName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25745D690(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkClassifier(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745D6D4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkClassifier(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745D71C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D754()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_EqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745D78C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NotEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D7C4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NotEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745D7FC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LessThanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D834()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LessThanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745D86C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LessEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D8A4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LessEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745D8DC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GreaterThanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D914()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GreaterThanLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745D94C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GreaterEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745D984()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GreaterEqualLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745DB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745DCB8@<X0>(_BYTE *a1@<X8>)
{
  result = FeatureType.isOptional.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745DDE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745DE34(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745DE78(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745DEC8()
{
  OUTLINED_FUNCTION_220();
  result = PipelineConfiguration.models.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745DEF4()
{
  OUTLINED_FUNCTION_220();
  result = PipelineConfiguration.names.getter();
  *v0 = result;
  return result;
}

void sub_25745DF20()
{
  OUTLINED_FUNCTION_220();
  PipelineClassifierConfiguration.models.getter();
  *v0 = v1;
}

uint64_t sub_25745DF4C()
{
  OUTLINED_FUNCTION_220();
  result = PipelineClassifierConfiguration.names.getter();
  *v0 = result;
  return result;
}

void sub_25745DF78()
{
  OUTLINED_FUNCTION_220();
  PipelineRegressorConfiguration.models.getter();
  *v0 = v1;
}

uint64_t sub_25745DFA4()
{
  OUTLINED_FUNCTION_220();
  result = PipelineRegressorConfiguration.names.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745DFD0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Pipeline(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E008()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Pipeline(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E040()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PipelineClassifier(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E078()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PipelineClassifier(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E0B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PipelineRegressor(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E0E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PipelineRegressor(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E170()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Block.inputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E19C()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Block.outputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E1C8()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.Block.operations.getter();
  *v0 = result;
  return result;
}

void sub_25745E1F4()
{
  OUTLINED_FUNCTION_220();
  MLProgram.Block.attributes.getter();
  *v0 = v1;
}

uint64_t sub_25745E220(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Block(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745E264(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_MILSpec_Block(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745E2D4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.leadingHeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E320()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.trailingHeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E36C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.leadingWidth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E3B8()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.trailingWidth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E404()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.EdgeSizes.leading.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E450()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Border.EdgeSizes.trailing.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25745E49C()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_BorderAmounts(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25745E4DC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BorderAmounts(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E514()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_BorderAmounts.EdgeSizes(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25745E554()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BorderAmounts.EdgeSizes(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E5B8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E5F0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E628()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E660()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E698()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E6D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BroadcastToDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E708()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FlattenTo2DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E740()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FlattenTo2DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E778()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReshapeLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E7B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReshapeLikeLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E7E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReshapeDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745E820()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ReshapeDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745E8AC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ConstantPadParameters.amounts.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745E8DC@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.ConstantPadParameters.padsToOutputSize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745E934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745E97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745E9F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleRegressor(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745EA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleRegressor(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745EB8C@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.ScaleParameters.hasBias.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745EBE4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_ScaleLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_25745EC28(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_ScaleLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_25745EC70@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.StackParameters.axis.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745ECC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StackLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745ED0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StackLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745ED58@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.GatherParameters.axis.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745EDAC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745EDE4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745EE1C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745EE54()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherNDLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745EE8C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherAlongAxisLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745EEC4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GatherAlongAxisLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745EF34@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.shape.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745EFC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Proto_ArrayFeatureType(0);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_25745F050(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Proto_ArrayFeatureType(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25745F0F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25745F108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25745F1C8@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.MeanVarianceNormalizeParameters.acrossChannels.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745F220@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.MeanVarianceNormalizeParameters.normalizeVariance.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25745F2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745F3E8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745F418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745F460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25745F4C0@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ImageParameters.width.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745F514@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ImageParameters.height.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745F598(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Proto_ImageFeatureType(0);
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_25745F620(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Proto_ImageFeatureType(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25745F8FC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ClampedReLULayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745F934()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ClampedReLULayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745F96C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationReLU(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745F9A4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationReLU(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745F9DC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationLeakyReLU(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FA14()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationLeakyReLU(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FA4C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationTanh(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FA84()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationTanh(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FABC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationScaledTanh(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FAF4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationScaledTanh(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FB2C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSigmoid(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FB64()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSigmoid(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FB9C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationLinear(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FBD4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationLinear(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FC0C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSigmoidHard(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FC44()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSigmoidHard(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FC7C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationPReLU(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FCB4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationPReLU(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FCEC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationELU(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FD24()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationELU(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FD5C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationThresholdedReLU(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FD94()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationThresholdedReLU(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FDCC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSoftsign(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FE04()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSoftsign(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FE3C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSoftplus(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FE74()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationSoftplus(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FEAC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationParametricSoftplus(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25745FEE4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ActivationParametricSoftplus(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25745FF54@<X0>(uint64_t *a1@<X8>)
{
  result = ScalerConfiguration.offset.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745FF84@<X0>(uint64_t *a1@<X8>)
{
  result = ScalerConfiguration.scale.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25745FFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Scaler();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25745FFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Scaler();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257460048@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ReshapeStaticParameters.targetShape.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2574600C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25746010C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureVectorizerConfiguration.inputs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25746013C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureVectorizerConfiguration.Input.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25746016C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureVectorizerConfiguration.Input.size.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2574601C0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FeatureVectorizer(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574601FC()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FeatureVectorizer(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_25746023C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460278()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_2574602C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SamePadding(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257460308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SamePadding(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25746037C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_2577204FC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_2574603A4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_257720614(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

void sub_2574603D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_257720AD4();
}

uint64_t sub_25746041C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  result = sub_2577204D4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_257460444(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_31(a1);
  v4 = *v3;
  result = sub_25772058C(v2);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2574605C0@<X0>(uint64_t *a1@<X8>)
{
  result = DenseSupportVectorCollection.vectors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460624@<X0>(uint64_t *a1@<X8>)
{
  result = DenseSupportVector.values.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257460654@<X0>(unint64_t *a1@<X1>, void *a2@<X8>)
{
  result = DenseSupportVector.subscript.getter(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_257460690()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_DenseSupportVectors(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_2574606D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_DenseSupportVectors(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460708()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_DenseVector(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_257460748()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_DenseVector(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460780()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RangeStaticLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574607BC()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RangeStaticLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_2574607FC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RangeDynamicLayerParams(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460838()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RangeDynamicLayerParams(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_2574608A0()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.featureCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574608F0()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.features.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25746096C()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.regressionInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460998()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.optimismInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2574609C4()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.samplingScaleInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2574609F0()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.samplingTruncationInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460A1C()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.meanOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460A48()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.varianceOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460A74()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.pessimisticProbabilityOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460AA0()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.sampledProbabilityOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257460ACC()
{
  OUTLINED_FUNCTION_220();
  result = BayesianProbitRegressorConfiguration.FeatureWeight.weights.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257460BE8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460C20()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460C58()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460C90()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460CC8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460D00()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460D38()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257460D70()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257460DB8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetworkRegressor.layers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460DE8@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetworkRegressor.preprocessors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460E48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkRegressor(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257460E8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkRegressor(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257460ED4@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SliceParameters.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460F28@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SliceParameters.stride.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460F84@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.SliceParameters.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257460FE8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MatrixBandPartLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461020()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MatrixBandPartLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461058()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LowerTriangularLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461090()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LowerTriangularLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574610C8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_UpperTriangularLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461100()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_UpperTriangularLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461170(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_TreeEnsembleClassifier(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_2574611B4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_TreeEnsembleClassifier(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257461520@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.PoolParameters.averageExcludesPadding.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_257461578@<X0>(_BYTE *a1@<X8>)
{
  result = NeuralNetwork.Layer.PoolParameters.doesGlobalPooling.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2574615D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PoolingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461608()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PoolingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461640()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Pooling3DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461678()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Pooling3DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574616B0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GlobalPooling3DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574616E8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_GlobalPooling3DLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461838()
{
  OUTLINED_FUNCTION_220();
  result = SupportVectorKernel.Polynomial.degree.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257461928()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Kernel(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461960()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_Kernel(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461998()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearKernel(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574619D0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearKernel(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461A08()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RBFKernel(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461A40()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_RBFKernel(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461A78()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PolyKernel(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461AB0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PolyKernel(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461AE8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SigmoidKernel(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257461B20()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SigmoidKernel(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257461B68@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.TensorDescriptor.rank.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257461BBC@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.TensorDescriptor.shape.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257461BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Tensor(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257461C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Tensor(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257461C80@<X0>(uint64_t *a1@<X8>)
{
  result = WordEmbeddingConfiguration.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257461CD4@<X0>(uint64_t *a1@<X8>)
{
  result = WordEmbeddingConfiguration.language.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257461D04@<X0>(uint64_t *a1@<X8>)
{
  result = WordEmbeddingConfiguration.modelParameterData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257461D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordEmbedding();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257461D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordEmbedding();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257461DC8()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.itemItemSimilarities.getter();
  *v0 = result;
  return result;
}

void sub_257461DF4()
{
  OUTLINED_FUNCTION_220();
  ItemSimilarityRecommenderConfiguration.itemStringIDs.getter();
  *v0 = v1;
}

void sub_257461E20()
{
  OUTLINED_FUNCTION_220();
  ItemSimilarityRecommenderConfiguration.itemIntIDs.getter();
  *v0 = v1;
}

uint64_t sub_257461E4C()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.itemInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461E78()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.recommendationCountInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461EA4()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.itemInclusionInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461ED0()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.itemExclusionInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461EFC()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.recommendedItemsOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461F28()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.recommendedItemScoresOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257461F54()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.ItemScore.itemID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257461FA4()
{
  OUTLINED_FUNCTION_220();
  result = ItemSimilarityRecommenderConfiguration.SimilarItems.similarItems.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257462070()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574620A8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574620E0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462118()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257462150()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462188()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_ItemSimilarityRecommender.ConnectedItem(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257462270()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574622A8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574622E0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462318()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingConstant(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257462350()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingReflection(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462388()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingReflection(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574623C0()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingReplication(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574623F8()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_PaddingLayerParams.PaddingReplication(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257462430()
{
  OUTLINED_FUNCTION_220();
  result = FunctionDescription.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25746245C()
{
  OUTLINED_FUNCTION_220();
  result = FunctionDescription.inputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257462488()
{
  OUTLINED_FUNCTION_220();
  result = FunctionDescription.outputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574624B4()
{
  OUTLINED_FUNCTION_220();
  result = FunctionDescription.predictedFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2574624E0()
{
  OUTLINED_FUNCTION_220();
  result = FunctionDescription.predictedProbabilitiesName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25746250C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_FunctionDescription(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257462550(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_FunctionDescription(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_2574625D0@<X0>(uint64_t *a1@<X8>)
{
  result = NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.leafSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257462624@<X0>(uint64_t *a1@<X8>)
{
  result = NearestNeighborsConfiguration.Parameters.weights.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2574626A4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NearestNeighborsIndex(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574626DC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NearestNeighborsIndex(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25746273C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearIndex(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462774()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LinearIndex(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574627AC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SingleKdTreeIndex(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574627E4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SingleKdTreeIndex(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_25746281C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SquaredEuclideanDistance(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462854()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_SquaredEuclideanDistance(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257462894@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ReshapeParameters.targetShape.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2574628CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ReshapeLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257462914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ReshapeLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257462A50()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.confidenceInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462A7C()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462AA8()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462AD4()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462B00()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462B2C()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462B60()
{
  OUTLINED_FUNCTION_220();
  result = NonMaximumSuppressorConfiguration.SelectTopConfiguration.perClass.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257462BB4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppression(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462BF0()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppression(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257462C30()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppression.PickTop(v0);
  v1 = OUTLINED_FUNCTION_44_1();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_257462C6C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_NonMaximumSuppression.PickTop(v1);
  v2 = OUTLINED_FUNCTION_44_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v0, v4);
}

uint64_t sub_257462CB4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257462D08()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.inputNames.getter();
  *v0 = result;
  return result;
}

void sub_257462D34()
{
  OUTLINED_FUNCTION_220();
  NeuralNetwork.Layer.inputTensors.getter();
  *v0 = v1;
}

uint64_t sub_257462D60()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.outputNames.getter();
  *v0 = result;
  return result;
}

void sub_257462D8C()
{
  OUTLINED_FUNCTION_220();
  NeuralNetwork.Layer.outputTensors.getter();
  *v0 = v1;
}

uint64_t sub_257462DB8()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.isUpdatable.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257462E0C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkLayer(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257462E50(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_NeuralNetworkLayer(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257463008()
{
  OUTLINED_FUNCTION_220();
  result = MLProgram.ValueType.TensorParameters.rank.getter();
  *v0 = result;
  return result;
}

void sub_257463058()
{
  OUTLINED_FUNCTION_220();
  MLProgram.ValueType.TensorParameters.shape.getter();
  *v0 = v1;
}

void sub_257463084()
{
  OUTLINED_FUNCTION_220();
  MLProgram.ValueType.TensorParameters.attributes.getter();
  *v0 = v1;
}

void sub_2574630B0()
{
  OUTLINED_FUNCTION_220();
  MLProgram.ValueType.TupleParameters.types.getter();
  *v0 = v1;
}

uint64_t sub_2574631A4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TensorType(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574631DC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TensorType(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257463214()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TupleType(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25746324C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_TupleType(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257463284()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_ListType(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_2574632BC()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_ListType(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574632F4()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_DictionaryType(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25746332C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_DictionaryType(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_257463364()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_StateType(v0);
  v1 = OUTLINED_FUNCTION_2_0();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_25746339C()
{
  v0 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_MILSpec_StateType(v0);
  v1 = OUTLINED_FUNCTION_1_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2574633E4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CategoricalMapping(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257463428(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_CategoricalMapping(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257463524()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.shape.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257463550()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.floatValues.getter();
  *v0 = result;
  return result;
}

uint64_t sub_25746357C()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.float16Data.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2574635A8()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.float16Values.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2574635D4()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.quantizedData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257463600()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.int8QuantizedData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_257463654()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.WeightParameters.isUpdatable.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2574636A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Proto_WeightParams(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_257463730(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Proto_WeightParams(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2574637F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257701EC4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_257463824()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257463874()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_257463914()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.InnerProductParameters.hasBias.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_257463968()
{
  OUTLINED_FUNCTION_220();
  result = NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2574639BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_InnerProductLayerParams(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_257463A00(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Proto_InnerProductLayerParams(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_257463A48@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.PermuteParameters.permutation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_257463A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PermuteLayerParams(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_257463AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PermuteLayerParams(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_257463B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257743094();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_257463BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_257743094();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_257463C68@<X0>(uint64_t *a1@<X8>)
{
  result = ClassConfidenceThresholding.precisionRecallCurves.getter();
  *a1 = result;
  return result;
}