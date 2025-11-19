uint64_t sub_25763317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v9 & 1) != 0)
    {
      return result;
    }

    if (!v7 & v6)
    {
      switch(result)
      {
        case 200:
          v10 = OUTLINED_FUNCTION_205();
          sub_257633280(v10, v11, a2, a3);
          break;
        case 10:
          goto LABEL_13;
        case 100:
          OUTLINED_FUNCTION_10_7();
          sub_2577432D4();
          break;
        case 1:
          OUTLINED_FUNCTION_10_7();
          sub_2577433A4();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 20:
        case 21:
        case 22:
        case 23:
          break;
        default:
          JUMPOUT(0);
      }

LABEL_13:
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }
}

uint64_t sub_257633280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v37 - v27;
  __swift_storeEnumTagSinglePayload(&v37 - v27, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_CoreMLModels_WordTagger(0) + 44);
  v40 = a1;
  v38 = v29;
  sub_2574AD5D8(a1 + v29, v14, &qword_27F880330, &unk_25776B7D0);
  v39 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F880330, &unk_25776B7D0);
  }

  else
  {
    sub_2576342EC(v14, v21, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
    sub_2576342EC(v21, v19, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    sub_2576342EC(v19, v10, type metadata accessor for Proto_StringVector);
    sub_2576342EC(v10, v28, type metadata accessor for Proto_StringVector);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
  }

  sub_2576341BC(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v31 = v42;
  sub_2577433D4();
  if (v31)
  {
    v32 = v28;
    return sub_2574695E4(v32, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v28, v26, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    v32 = v26;
    return sub_2574695E4(v32, &qword_27F87A878, &unk_257748700);
  }

  v34 = v41;
  sub_2576342EC(v26, v41, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  v35 = v40;
  v36 = v38;
  sub_2574695E4(v40 + v38, &qword_27F880330, &unk_25776B7D0);
  sub_2576342EC(v34, v35 + v36, type metadata accessor for Proto_StringVector);
  return __swift_storeEnumTagSinglePayload(v35 + v36, 0, 1, v39);
}

uint64_t sub_257633738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (result = sub_257743544(), !v4))
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    OUTLINED_FUNCTION_1_6();
    if (!v12 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
    {
      v13 = *(v3 + 24);
      v14 = *(v3 + 32);
      OUTLINED_FUNCTION_1_6();
      if (!v15 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
      {
        v16 = *(v3 + 40);
        v17 = *(v3 + 48);
        OUTLINED_FUNCTION_1_6();
        if (!v18 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
        {
          v19 = *(v3 + 56);
          v20 = *(v3 + 64);
          OUTLINED_FUNCTION_1_6();
          if (!v21 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
          {
            v22 = *(v3 + 72);
            v23 = *(v3 + 80);
            OUTLINED_FUNCTION_1_6();
            if (!v24 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
            {
              if (sub_2576FF394(*(v3 + 88), *(v3 + 96)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), (v5 = v4) == 0))
              {
                result = sub_2576338C0(v3, a1, a2, a3);
                if (!v5)
                {
                  v25 = v3 + *(type metadata accessor for Proto_CoreMLModels_WordTagger(0) + 48);
                  OUTLINED_FUNCTION_10_7();
                  return sub_257743194();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2576338C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_2574AD5D8(a1 + *(v13 + 44), v8, &qword_27F880330, &unk_25776B7D0);
  v14 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    return sub_2574695E4(v8, &qword_27F880330, &unk_25776B7D0);
  }

  sub_2576342EC(v8, v12, type metadata accessor for Proto_StringVector);
  sub_2576341BC(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  sub_257743574();
  return sub_257634294(v12, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification23WordTaggerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880330, &unk_25776B7D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880360, &unk_25776B9B0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_37;
  }

  v20 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v20 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v21 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v21 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v22 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (!v23 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_37;
  }

  v24 = *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80);
  if (!v24 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_37;
  }

  v35 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v25 = *(v35 + 44);
  v26 = *(v14 + 48);
  sub_2574AD5D8(a1 + v25, v19, &qword_27F880330, &unk_25776B7D0);
  sub_2574AD5D8(a2 + v25, &v19[v26], &qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_65(v19);
  if (v20)
  {
    OUTLINED_FUNCTION_65(&v19[v26]);
    if (v20)
    {
      sub_2574695E4(v19, &qword_27F880330, &unk_25776B7D0);
LABEL_40:
      v31 = *(v35 + 48);
      sub_2577431B4();
      OUTLINED_FUNCTION_3_21();
      sub_2576341BC(v32, v33);
      v28 = sub_257743644();
      return v28 & 1;
    }

    goto LABEL_36;
  }

  sub_2574AD5D8(v19, v13, &qword_27F880330, &unk_25776B7D0);
  OUTLINED_FUNCTION_65(&v19[v26]);
  if (v27)
  {
    sub_257634294(v13, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
LABEL_36:
    sub_2574695E4(v19, &qword_27F880360, &unk_25776B9B0);
    goto LABEL_37;
  }

  sub_2576342EC(&v19[v26], v9, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  v30 = sub_257632C38(v13, v9);
  sub_257634294(v9, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  sub_257634294(v13, type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags);
  sub_2574695E4(v19, &qword_27F880330, &unk_25776B7D0);
  if (v30)
  {
    goto LABEL_40;
  }

LABEL_37:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_257633E40()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  sub_2576341BC(&qword_27F880340, type metadata accessor for Proto_CoreMLModels_WordTagger);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257633F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576341BC(&qword_27F880350, type metadata accessor for Proto_CoreMLModels_WordTagger);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257633F94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25763403C(uint64_t a1)
{
  v2 = sub_2576341BC(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576340AC()
{
  sub_2576341BC(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger);

  return sub_257743424();
}

uint64_t sub_2576341BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257634294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576342EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_257634348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLProgram.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2577431D4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Proto_MILSpec_Program(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_257486740(a1, a2);
  sub_2577431C4();
  sub_257634524();
  sub_257743404();
  result = sub_257486798(a1, a2);
  if (!v3)
  {
    return sub_25763457C(v12, a3);
  }

  return result;
}

unint64_t sub_257634524()
{
  result = qword_27F87B6B8;
  if (!qword_27F87B6B8)
  {
    type metadata accessor for Proto_MILSpec_Program(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B6B8);
  }

  return result;
}

uint64_t sub_25763457C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_MILSpec_Program(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLProgram.serialized()()
{
  type metadata accessor for Proto_MILSpec_Program(0);
  sub_257634524();
  return sub_2577433F4();
}

uint64_t static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a1;
  v30 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = swift_allocObject();
  v27 = xmmword_2577442B0;
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 32) = v28;
  *(v21 + 40) = a6;
  *v19 = MEMORY[0x277D84F90];
  v22 = *(type metadata accessor for Proto_TransposeLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.TransposeParameters.axes.setter(v23);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v24) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v14);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v25);
  sub_25752846C();
  return sub_257634BB4(v19);
}

uint64_t static NeuralNetwork.Layer.Kind.transpose(axes:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_TransposeLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.TransposeParameters.axes.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.TransposeParameters.init(axes:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a2 + *(type metadata accessor for Proto_TransposeLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  NeuralNetwork.Layer.TransposeParameters.axes.setter(a1);
}

uint64_t NeuralNetwork.Layer.TransposeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 1936029761;
  *(v0 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.TransposeParameters.axes.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.TransposeParameters.axes.getter()
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

void sub_257634A90(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.TransposeParameters.axes.setter(v2);
}

void NeuralNetwork.Layer.TransposeParameters.axes.setter(uint64_t a1)
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

uint64_t sub_257634BB4(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NeuralNetwork.Layer.TransposeParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.TransposeParameters.axes.getter();
  return sub_257634C58;
}

void sub_257634C58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.TransposeParameters.axes.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.TransposeParameters.axes.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.TransposeParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_TransposeLayerParams(0) + 20);
    sub_2577431B4();
    sub_257635070(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.TransposeParameters.customMirror.getter()
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
  v10 = &v19 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_257634FC4(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = 1936029793;
  *(v15 + 40) = 0xE400000000000000;
  v16 = NeuralNetwork.Layer.TransposeParameters.axes.getter();
  *(v15 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v15 + 48) = v16;
  v17 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.TransposeParameters()
{
  result = qword_27F880368;
  if (!qword_27F880368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257634FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.TransposeParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257635070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576350E0()
{
  result = type metadata accessor for Proto_TransposeLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeatureDescription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeatureDescription.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Proto_FeatureDescription(0);
  v3 = a1 + *(v2 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Proto_FeatureType(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t FeatureDescription.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeatureDescription.type.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for Proto_FeatureType(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_25768E090();
  sub_257635540(v0);
  v10 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
  sub_25763559C(v1 + v10);
  sub_257635604(v9, v1 + v10);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
}

uint64_t sub_2576352CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FeatureDescription.name.setter(v1, v2);
}

uint64_t (*FeatureDescription.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void FeatureDescription.type.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_64();
  v7 = type metadata accessor for Proto_FeatureType(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for Proto_FeatureDescription(0);
  sub_257635668(v0 + *(v14 + 28), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    v15 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
    *(v13 + *(v7 + 20)) = 0;
    v16 = v13 + *(v7 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
    {
      sub_25763559C(v1);
    }
  }

  else
  {
    sub_257635604(v1, v13);
  }

  sub_25768DB44();
}

uint64_t sub_2576354A4(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_257635FA4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return FeatureDescription.type.setter();
}

uint64_t sub_257635540(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763559C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257635604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_FeatureType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257635668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*FeatureDescription.type.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for Proto_FeatureType(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for FeatureType(0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  FeatureDescription.type.getter();
  return sub_2576357A0;
}

void sub_2576357A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_257635FA4((*a1)[4], v3);
    sub_25768E090();
    sub_257635540(v3);
    v8 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
    sub_25763559C(v7 + v8);
    sub_257635604(v5, v7 + v8);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
    sub_257635540(v4);
  }

  else
  {
    v12 = (*a1)[2];
    v13 = (*a1)[4];
    sub_25768E090();
    sub_257635540(v4);
    v14 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
    sub_25763559C(v7 + v14);
    sub_257635604(v5, v7 + v14);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t FeatureDescription.featureDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2576358F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FeatureDescription.featureDescription.setter(v1, v2);
}

uint64_t FeatureDescription.featureDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*FeatureDescription.featureDescription.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_2576359C0;
}

uint64_t sub_2576359C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  return result;
}

uint64_t FeatureDescription.init(name:type:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for Proto_FeatureType(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  a6[2] = 0;
  a6[3] = 0xE000000000000000;
  v19 = type metadata accessor for Proto_FeatureDescription(0);
  v20 = a6 + *(v19 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(v19 + 28);
  __swift_storeEnumTagSinglePayload(a6 + v21, 1, 1, v12);
  *a6 = a1;
  a6[1] = a2;
  sub_25768E090();
  sub_257635540(a3);
  sub_25763559C(a6 + v21);
  sub_257635604(v18, a6 + v21);
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  a6[2] = a4;
  a6[3] = a5;
  return result;
}

uint64_t FeatureDescription.hash(into:)()
{
  type metadata accessor for Proto_FeatureDescription(0);
  OUTLINED_FUNCTION_2_22();
  sub_257636090(v0, v1);

  return sub_2577435F4();
}

uint64_t FeatureDescription.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_FeatureDescription(0);
  OUTLINED_FUNCTION_2_22();
  sub_257636090(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257635C34()
{
  sub_257743A14();
  type metadata accessor for Proto_FeatureDescription(0);
  sub_257636090(&qword_27F87BA38, type metadata accessor for Proto_FeatureDescription);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t FeatureDescription.customMirror.getter()
{
  v29 = sub_257743A84();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_64();
  v11 = type metadata accessor for FeatureDescription();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257635FA4(v0, v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2577442C0;
  *(v17 + 32) = 1701667182;
  *(v17 + 40) = 0xE400000000000000;
  v18 = v0[1];
  v19 = MEMORY[0x277D837D0];
  *(v17 + 48) = *v0;
  *(v17 + 56) = v18;
  *(v17 + 72) = v19;
  *(v17 + 80) = 1701869940;
  *(v17 + 88) = 0xE400000000000000;
  *(v17 + 120) = type metadata accessor for FeatureType(0);
  __swift_allocate_boxed_opaque_existential_0((v17 + 96));

  FeatureDescription.type.getter();
  *(v17 + 128) = 0xD000000000000012;
  *(v17 + 136) = 0x8000000257780820;
  v20 = v0[2];
  v21 = v0[3];
  *(v17 + 168) = v19;
  *(v17 + 144) = v20;
  *(v17 + 152) = v21;
  v22 = *MEMORY[0x277D84C10];
  v23 = sub_257743A74();
  OUTLINED_FUNCTION_4(v23);
  (*(v24 + 104))(v1, v22, v23);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v29);

  return sub_257743AA4();
}

uint64_t type metadata accessor for FeatureDescription()
{
  result = qword_281537E08;
  if (!qword_281537E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257635FA4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257636090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257636104()
{
  result = type metadata accessor for Proto_FeatureDescription(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static NeuralNetwork.Layer.softmax(name:inputName:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_12_13();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = OUTLINED_FUNCTION_13_6();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  v23 = OUTLINED_FUNCTION_13_6();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a5 + v24) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v5);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v25);
  return sub_257634BB4(v21);
}

uint64_t static NeuralNetwork.Layer.softmaxND(name:inputName:outputName:axis:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
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
  v22 = (v21 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v23 = OUTLINED_FUNCTION_13_6();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  v24 = OUTLINED_FUNCTION_13_6();
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v25 = *(type metadata accessor for Proto_SoftmaxNDLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v22 = a5;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a6 + v26) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v24);
  sub_2574897E0(v6);
  v27 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v27);
  return sub_257634BB4(v22);
}

uint64_t static NeuralNetwork.Layer.Kind.softmaxND(axis:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_SoftmaxNDLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.init(axis:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_SoftmaxNDLayerParams(0) + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

uint64_t static NeuralNetwork.Layer.SoftmaxParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_2_23();
  sub_2576366A4(v0, v1);
  return sub_257743644() & 1;
}

uint64_t sub_2576366A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NeuralNetwork.Layer.SoftmaxParameters.customMirror.getter()
{
  v0 = sub_257743A84();
  v1 = OUTLINED_FUNCTION_63(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = type metadata accessor for NeuralNetwork.Layer.SoftmaxParameters(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_257636F4C();
  v21[1] = MEMORY[0x277D84F90];
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  (*(v3 + 104))(v8, *MEMORY[0x277D84C38], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  v4 = *v0;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  return v1;
}

uint64_t (*NeuralNetwork.Layer.SoftmaxNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

BOOL static NeuralNetwork.Layer.SoftmaxNDParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_0_0();
    v3 = *(type metadata accessor for Proto_SoftmaxNDLayerParams(v2) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_23();
    sub_2576366A4(v4, v5);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257636B34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_17();

  return sub_2577435F4();
}

uint64_t sub_257636BE8(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_6_17();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257636CB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_6_17();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.SoftmaxNDParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.SoftmaxNDParameters(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  sub_257636F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = 1936291937;
  *(v21 + 40) = 0xE400000000000000;
  v22 = *v1;
  *(v21 + 72) = MEMORY[0x277D83B88];
  *(v21 + 48) = v22;
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v23);
  (*(v5 + 104))(v10, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_257636F4C()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257637148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_2576366A4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_25752846C();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return type metadata accessor for NeuralNetwork.Layer.Kind();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_allocObject();
}

uint64_t static NeuralNetwork.Layer.clip(name:inputName:outputName:minimum:maximum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>)
{
  v31 = a1;
  v32 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v25 = swift_allocObject();
  v30 = xmmword_2577442B0;
  *(v25 + 16) = xmmword_2577442B0;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 32) = a5;
  *(v26 + 40) = a6;
  *(v24 + *(type metadata accessor for NeuralNetwork.Layer.ClipParameters() + 24)) = 0;
  LODWORD(a5) = *(type metadata accessor for Proto_ClipLayerParams(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v24 = a8;
  v24[1] = a9;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v27) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v26);
  sub_2574897E0(v19);
  v28 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v28);
  sub_25752846C();
  return sub_257634BB4(v24);
}

uint64_t static NeuralNetwork.Layer.Kind.clip(minimum:maximum:)()
{
  v4 = OUTLINED_FUNCTION_1_24();
  v5 = v1 + *(OUTLINED_FUNCTION_2_24(v4) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v3;
  v0[1] = v2;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ClipParameters.init(minimum:maximum:)()
{
  v4 = OUTLINED_FUNCTION_1_24();
  v5 = v1 + *(OUTLINED_FUNCTION_2_24(v4) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ClipParameters()
{
  result = qword_27F8803B8;
  if (!qword_27F8803B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ClipParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  *(v1 + 32) = 0x6D756D696E694DLL;
  *(v1 + 40) = 0xE700000000000000;
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x6D756D6978614DLL;
  *(v1 + 72) = 0xE700000000000000;
  v4 = v0[1];
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v5;
  return v1;
}

uint64_t static NeuralNetwork.Layer.ClipParameters.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1])
  {
    v4 = *(type metadata accessor for NeuralNetwork.Layer.ClipParameters() + 24);
    v5 = (a2 + v4);
    if (*(a1 + v4) == *v5 && *(a1 + v4 + 4) == v5[1])
    {
      v6 = *(type metadata accessor for Proto_ClipLayerParams(0) + 24);
      sub_2577431B4();
      sub_257637C28(&qword_27F879B68, MEMORY[0x277D216C8]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t NeuralNetwork.Layer.ClipParameters.hash(into:)()
{
  *v0;
  sub_257743A44();
  v0[1];
  sub_257743A44();
  v1 = *(type metadata accessor for NeuralNetwork.Layer.ClipParameters() + 24);
  type metadata accessor for Proto_ClipLayerParams(0);
  sub_257637C28(&qword_27F87D688, type metadata accessor for Proto_ClipLayerParams);
  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.ClipParameters.hashValue.getter()
{
  sub_257743A14();
  NeuralNetwork.Layer.ClipParameters.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_2576378CC()
{
  sub_257743A14();
  NeuralNetwork.Layer.ClipParameters.hash(into:)();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.ClipParameters.customMirror.getter()
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
  v11 = &v21 - v10;
  v12 = type metadata accessor for NeuralNetwork.Layer.ClipParameters();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257637B34(v1, v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257743FF0;
  v17 = v1[1];
  *(v16 + 48) = *v1;
  *(v16 + 32) = 0x6D756D696E696DLL;
  *(v16 + 40) = 0xE700000000000000;
  v18 = MEMORY[0x277D83A90];
  *(v16 + 72) = MEMORY[0x277D83A90];
  *(v16 + 80) = 0x6D756D6978616DLL;
  *(v16 + 88) = 0xE700000000000000;
  *(v16 + 120) = v18;
  *(v16 + 96) = v17;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_257637B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ClipParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257637C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257637C9C()
{
  result = type metadata accessor for Proto_ClipLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return type metadata accessor for NeuralNetwork.Layer.ClipParameters();
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1)
{
  *(v1 + *(a1 + 24)) = 0;

  return type metadata accessor for Proto_ClipLayerParams(0);
}

uint64_t static NeuralNetwork.Layer.add(name:inputName:outputName:scalar:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_12_13();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = OUTLINED_FUNCTION_13_6();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  v23 = OUTLINED_FUNCTION_13_6();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  v24 = *(type metadata accessor for Proto_AddLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v7 = a6;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a5 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v6);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v26);
  return sub_257634BB4(v7);
}

uint64_t static NeuralNetwork.Layer.Kind.add(scalar:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    *a2 = 0;
    v6 = type metadata accessor for Proto_AddLayerParams(0);
    OUTLINED_FUNCTION_192_0(v6);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_30();
    v5 = type metadata accessor for Proto_AddLayerParams(v4);
    OUTLINED_FUNCTION_192_0(v5);
    *a2 = v2;
  }

  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.add(name:inputNames:outputName:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_12_13();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v16 = OUTLINED_FUNCTION_13_6();
  *(v16 + 16) = xmmword_2577442B0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *v4 = 0;
  LODWORD(a1) = *(type metadata accessor for Proto_AddLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a3 + v17) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();
  sub_25752842C(v16);
  sub_2574897E0(v3);
  v18 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v18);
  return sub_257634BB4(v4);
}

uint64_t static NeuralNetwork.Layer.add(name:inputNames:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_12_13();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257743FF0;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  v23 = OUTLINED_FUNCTION_13_6();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *v8 = 0;
  LODWORD(a1) = *(type metadata accessor for Proto_AddLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(a7 + v24) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v7);
  v25 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v25);
  return sub_257634BB4(v8);
}

uint64_t NeuralNetwork.Layer.AddParameters.init(scalar:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  v4 = type metadata accessor for Proto_AddLayerParams(0);
  result = OUTLINED_FUNCTION_192_0(v4);
  *a1 = a2;
  return result;
}

uint64_t NeuralNetwork.Layer.AddParameters.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Proto_AddLayerParams(0);
  return OUTLINED_FUNCTION_192_0(v1);
}

uint64_t NeuralNetwork.Layer.AddParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_14_6(v1, 25427);
  v2 = *v0;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v3;
  return v1;
}

float (*NeuralNetwork.Layer.AddParameters.scalar.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

BOOL static NeuralNetwork.Layer.AddParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    v3 = *(type metadata accessor for Proto_AddLayerParams(v2) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_23();
    sub_257638550(v4, v5);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257638550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NeuralNetwork.Layer.AddParameters.customMirror.getter()
{
  v2 = v0;
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
  OUTLINED_FUNCTION_12_6();
  v16 = type metadata accessor for NeuralNetwork.Layer.AddParameters(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  sub_257638D00(v2, v21 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  v23 = OUTLINED_FUNCTION_14_6(v22, 25459);
  v24 = *v2;
  *(v23 + 72) = MEMORY[0x277D83A90];
  *(v23 + 48) = v24;
  v25 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v25);
  (*(v6 + 104))(v11, *MEMORY[0x277D84C38], v3);
  return sub_257743AA4();
}

uint64_t static NeuralNetwork.Layer.BroadcastableAddParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_3_23();
  sub_257638550(v0, v1);
  return sub_257743644() & 1;
}

uint64_t sub_257638910(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_16();

  return sub_2577435F4();
}

uint64_t sub_2576389C4(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_10_16();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257638A90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_10_16();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.BroadcastableAddParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.BroadcastableAddParameters(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  sub_257638D00(v1, v22 - v21);
  v25[1] = MEMORY[0x277D84F90];
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v23);
  (*(v5 + 104))(v10, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t sub_257638D00(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_257638F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_257638550(v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x72616C610000;
  *(result + 40) = 0xE600000000000000;
  return result;
}

uint64_t NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_25_0();
  v237 = v4;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_167();
  v236 = v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_167();
  v234 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  v231 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_167();
  v241 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v228 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  v240 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  v225 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  v239 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v238 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v221 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v219 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  v217 = v28;
  OUTLINED_FUNCTION_158();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v216 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v216 - v33;
  v35 = type metadata accessor for Proto_WeightParams(0);
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  v235 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  v233 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  v230 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  v229 = v45;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_167();
  v227 = v47;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  v226 = v49;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  v224 = v51;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  v223 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_167();
  v222 = v55;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_167();
  v220 = v57;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_167();
  v218 = v59;
  OUTLINED_FUNCTION_158();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = (v216 - v62);
  v64 = MEMORY[0x28223BE20](v61);
  v66 = (v216 - v65);
  v67 = MEMORY[0x28223BE20](v64);
  v69 = v216 - v68;
  MEMORY[0x28223BE20](v67);
  v71 = (v216 - v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v72 = (*(*(v242 - 8) + 80) + 32) & ~*(*(v242 - 8) + 80);
  v244 = *(*(v242 - 8) + 72);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_257751110;
  v232 = v73;
  v74 = (v73 + v72);
  *v74 = 0x6147207475706E49;
  v74[1] = 0xEA00000000006574;
  v243 = v73 + v72;
  v75 = *(v216[1] + *(type metadata accessor for Proto_LSTMWeightParams(0) + 20));
  v76 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v76, v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    *v71 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(xmmword_257745740);
    v77 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v71 + v76, v78, v79, v77);
    OUTLINED_FUNCTION_34_0(v34);
    if (!v80)
    {
      sub_25749E940(v34);
    }
  }

  else
  {
    sub_25763A118(v34, v71);
  }

  v81 = v243;
  sub_2576FF45C(v71, (v243 + *(v242 + 48)));
  v82 = (v81 + v244);
  *v82 = 0x4720746567726F46;
  v82[1] = 0xEB00000000657461;
  v83 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v83, v32);
  OUTLINED_FUNCTION_34_0(v32);
  if (v80)
  {
    *v69 = MEMORY[0x277D84F90];
    *(v69 + 8) = xmmword_257745740;
    *(v69 + 24) = xmmword_257745740;
    *(v69 + 40) = xmmword_257745740;
    v69[56] = 0;
    v84 = &v69[*(v35 + 36)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v85 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(&v69[v83], v86, v87, v85);
    OUTLINED_FUNCTION_34_0(v32);
    if (!v80)
    {
      sub_25749E940(v32);
    }
  }

  else
  {
    sub_25763A118(v32, v69);
  }

  v88 = v242;
  sub_2576FF45C(v69, (v82 + *(v242 + 48)));
  v89 = (v243 + 2 * v244);
  *v89 = 0x6E49206B636F6C42;
  v89[1] = 0xEB00000000747570;
  v90 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix;
  OUTLINED_FUNCTION_296();
  v91 = v217;
  sub_25749E8D0(v75 + v90, v217);
  OUTLINED_FUNCTION_34_0(v91);
  if (v80)
  {
    *v66 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    v92 = v66 + *(v35 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v93 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v66 + v90, v94, v95, v93);
    OUTLINED_FUNCTION_34_0(v91);
    v96 = v91;
    v97 = v225;
    if (!v80)
    {
      sub_25749E940(v96);
    }
  }

  else
  {
    sub_25763A118(v91, v66);
    v97 = v225;
  }

  sub_2576FF45C(v66, (v89 + *(v88 + 48)));
  v98 = (v243 + 3 * v244);
  *v98 = 0x472074757074754FLL;
  v98[1] = 0xEB00000000657461;
  v99 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_296();
  v100 = v219;
  sub_25749E8D0(v75 + v99, v219);
  OUTLINED_FUNCTION_34_0(v100);
  if (v80)
  {
    *v63 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(xmmword_257745740);
    v101 = *(v35 + 40);
    v102 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v63 + v101, v103, v104, v102);
    OUTLINED_FUNCTION_34_0(v100);
    if (!v80)
    {
      sub_25749E940(v100);
    }
  }

  else
  {
    sub_25763A118(v100, v63);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v63, v105);
  v106 = (v243 + 4 * v244);
  OUTLINED_FUNCTION_23_7();
  *v106 = 0xD000000000000014;
  v106[1] = v107;
  v108 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix;
  OUTLINED_FUNCTION_296();
  v109 = v221;
  sub_25749E8D0(v75 + v108, v221);
  OUTLINED_FUNCTION_34_0(v109);
  if (v80)
  {
    v110 = v218;
    *v218 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(xmmword_257745740);
    v111 = OUTLINED_FUNCTION_33_3();
    v112 = v110 + v108;
    v115 = v110;
    OUTLINED_FUNCTION_25_5(v112, v113, v114, v111);
    OUTLINED_FUNCTION_34_0(v109);
    v116 = v231;
    if (!v80)
    {
      sub_25749E940(v109);
    }
  }

  else
  {
    v115 = v218;
    sub_25763A118(v109, v218);
    v116 = v231;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v115, v117);
  v118 = (v243 + 5 * v244);
  OUTLINED_FUNCTION_23_7();
  *v118 = 0xD000000000000015;
  v118[1] = v119;
  v120 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix;
  OUTLINED_FUNCTION_296();
  v121 = v75 + v120;
  v122 = v238;
  sub_25749E8D0(v121, v238);
  OUTLINED_FUNCTION_34_0(v122);
  if (v80)
  {
    v128 = v220;
    *v220 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(xmmword_257745740);
    v123 = OUTLINED_FUNCTION_33_3();
    v124 = v128 + v122;
    v125 = v238;
    OUTLINED_FUNCTION_25_5(v124, v126, v127, v123);
    OUTLINED_FUNCTION_34_0(v125);
    if (!v80)
    {
      sub_25749E940(v125);
    }
  }

  else
  {
    v128 = v220;
    sub_25763A118(v122, v220);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v128, v129);
  OUTLINED_FUNCTION_31_3(6);
  OUTLINED_FUNCTION_23_7();
  *v118 = 0xD000000000000015;
  v118[1] = v130;
  v131 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix;
  OUTLINED_FUNCTION_296();
  v132 = v75 + v131;
  v133 = v239;
  sub_25749E8D0(v132, v239);
  OUTLINED_FUNCTION_34_0(v133);
  if (v80)
  {
    v139 = v222;
    *v222 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(xmmword_257745740);
    v134 = OUTLINED_FUNCTION_33_3();
    v135 = v139 + v133;
    v136 = v239;
    OUTLINED_FUNCTION_25_5(v135, v137, v138, v134);
    OUTLINED_FUNCTION_34_0(v136);
    if (!v80)
    {
      sub_25749E940(v136);
    }
  }

  else
  {
    v139 = v222;
    sub_25763A118(v133, v222);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v139, v140);
  v141 = (v243 - v244 + 8 * v244);
  OUTLINED_FUNCTION_23_7();
  *v141 = 0xD000000000000015;
  v141[1] = v142;
  v143 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v143, v97);
  OUTLINED_FUNCTION_34_0(v97);
  if (v80)
  {
    v148 = v223;
    *v223 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(xmmword_257745740);
    v144 = *(v35 + 40);
    v145 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v148 + v144, v146, v147, v145);
    OUTLINED_FUNCTION_34_0(v97);
    v149 = v116;
    if (!v80)
    {
      sub_25749E940(v97);
    }
  }

  else
  {
    v148 = v223;
    sub_25763A118(v97, v223);
    v149 = v116;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v148, v150);
  v151 = (v243 + 8 * v244);
  *v151 = 0x6147207475706E49;
  v151[1] = 0xEF73616942206574;
  v152 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector;
  OUTLINED_FUNCTION_296();
  v153 = v75 + v152;
  v154 = v240;
  sub_25749E8D0(v153, v240);
  OUTLINED_FUNCTION_34_0(v154);
  v155 = v228;
  if (v80)
  {
    v161 = v224;
    *v224 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(xmmword_257745740);
    v156 = OUTLINED_FUNCTION_33_3();
    v157 = v161 + v154;
    v158 = v240;
    OUTLINED_FUNCTION_25_5(v157, v159, v160, v156);
    OUTLINED_FUNCTION_34_0(v158);
    if (!v80)
    {
      sub_25749E940(v158);
    }
  }

  else
  {
    v161 = v224;
    sub_25763A118(v154, v224);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v161, v162);
  v163 = (v243 + 9 * v244);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000010;
  v163[1] = v164;
  v165 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v165, v155);
  OUTLINED_FUNCTION_34_0(v155);
  if (v80)
  {
    v170 = v226;
    *v226 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(xmmword_257745740);
    v166 = *(v35 + 40);
    v167 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v170 + v166, v168, v169, v167);
    OUTLINED_FUNCTION_34_0(v155);
    v171 = v234;
    if (!v80)
    {
      sub_25749E940(v155);
    }
  }

  else
  {
    v170 = v226;
    sub_25763A118(v155, v226);
    v171 = v234;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v170, v172);
  OUTLINED_FUNCTION_31_3(10);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000010;
  v163[1] = v173;
  v174 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector;
  OUTLINED_FUNCTION_296();
  v175 = v75 + v174;
  v176 = v241;
  sub_25749E8D0(v175, v241);
  OUTLINED_FUNCTION_34_0(v176);
  if (v80)
  {
    v182 = v227;
    *v227 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(xmmword_257745740);
    v177 = OUTLINED_FUNCTION_33_3();
    v178 = v182 + v176;
    v179 = v241;
    OUTLINED_FUNCTION_25_5(v178, v180, v181, v177);
    OUTLINED_FUNCTION_34_0(v179);
    if (!v80)
    {
      sub_25749E940(v179);
    }
  }

  else
  {
    v182 = v227;
    sub_25763A118(v176, v227);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v182, v183);
  OUTLINED_FUNCTION_31_3(11);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000010;
  v163[1] = v184;
  v185 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v185, v149);
  OUTLINED_FUNCTION_34_0(v149);
  if (v80)
  {
    v189 = v229;
    *v229 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_20_5(xmmword_257745740);
    v186 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_25_5(v182 + v189, v187, v188, v186);
    OUTLINED_FUNCTION_34_0(v149);
    v190 = v236;
    if (!v80)
    {
      sub_25749E940(v149);
    }
  }

  else
  {
    v189 = v229;
    sub_25763A118(v149, v229);
    v190 = v236;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v189, v191);
  OUTLINED_FUNCTION_31_3(12);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000013;
  v163[1] = v192;
  v193 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v193, v171);
  OUTLINED_FUNCTION_34_0(v171);
  if (v80)
  {
    v197 = v230;
    *v230 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_8_11(xmmword_257745740);
    v194 = OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_25_5(v197 + v193, v195, v196, v194);
    OUTLINED_FUNCTION_34_0(v171);
    if (!v80)
    {
      sub_25749E940(v171);
    }
  }

  else
  {
    v197 = v230;
    sub_25763A118(v171, v230);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v197, v198);
  OUTLINED_FUNCTION_31_3(13);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000014;
  v163[1] = v199;
  v200 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v200, v190);
  OUTLINED_FUNCTION_34_0(v190);
  if (v80)
  {
    v204 = v233;
    *v233 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21_7(xmmword_257745740);
    v201 = OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_25_5(v204 + v200, v202, v203, v201);
    OUTLINED_FUNCTION_34_0(v190);
    v205 = v237;
    if (!v80)
    {
      sub_25749E940(v190);
    }
  }

  else
  {
    v204 = v233;
    sub_25763A118(v190, v233);
    v205 = v237;
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v204, v206);
  OUTLINED_FUNCTION_31_3(14);
  OUTLINED_FUNCTION_23_7();
  *v163 = 0xD000000000000014;
  v163[1] = v207;
  v208 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v75 + v208, v205);
  OUTLINED_FUNCTION_34_0(v205);
  if (v80)
  {
    v213 = v235;
    *v235 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_19_7(xmmword_257745740);
    v209 = *(v35 + 40);
    v210 = type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_25_5(v213 + v209, v211, v212, v210);
    OUTLINED_FUNCTION_34_0(v205);
    if (!v80)
    {
      sub_25749E940(v205);
    }
  }

  else
  {
    v213 = v235;
    sub_25763A118(v205, v235);
  }

  OUTLINED_FUNCTION_22_7();
  sub_2576FF45C(v213, v214);
  return v232;
}

uint64_t sub_257639FE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Proto_WeightParams(0);
  v12 = OUTLINED_FUNCTION_4_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_LSTMWeightParams(0);
  OUTLINED_FUNCTION_206(v18);
  v19 = *a1;
  OUTLINED_FUNCTION_296();
  sub_25749E8D0(v2 + v19, v10);
  OUTLINED_FUNCTION_1_25();
  if (v20)
  {
    *v17 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v21 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v21);
    if (!v20)
    {
      sub_25749E940(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  return sub_2576FF45C(v17, a2);
}

uint64_t sub_25763A118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_WeightParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25763A188(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.WeightParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763A1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25763A390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_25763A3FC(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Proto_WeightParams(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = type metadata accessor for NeuralNetwork.WeightParameters();
  sub_25763A390(a1 + *(v19 + 20), v18, type metadata accessor for Proto_WeightParams);
  v20 = *(type metadata accessor for Proto_LSTMWeightParams(0) + 20);
  v21 = *(v2 + v20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_25763A188(a1);
    v22 = *(v2 + v20);
  }

  else
  {
    v23 = *(v2 + v20);
    v24 = type metadata accessor for Proto_LSTMWeightParams._StorageClass(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    sub_2575C2590();
    v22 = v27;
    sub_25763A188(a1);

    *(v4 + v20) = v22;
  }

  sub_25763A118(v18, v11);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v28 = *a2;
  swift_beginAccess();
  sub_25763A1E4(v11, v22 + v28);
  return swift_endAccess();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInput.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGate.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInputRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGateRecursion.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.blockInputBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGateBias.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.inputGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void NeuralNetwork.Layer.LSTMWeightParameters.forgetGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_25763B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for NeuralNetwork.WeightParameters();
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  sub_25763A390(a1, v12 - v11, type metadata accessor for NeuralNetwork.WeightParameters);
  return a5(v13);
}

void NeuralNetwork.Layer.LSTMWeightParameters.outputGatePeephole.modify()
{
  OUTLINED_FUNCTION_433();
  v2 = OUTLINED_FUNCTION_18_10();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_7(v6);
  OUTLINED_FUNCTION_4_14(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_12_14(v9);
  OUTLINED_FUNCTION_13(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_17_8(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_11_12(v14);
  OUTLINED_FUNCTION_206(v15);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_1_25();
  if (v16)
  {
    *v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    OUTLINED_FUNCTION_28_6();
    v17 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_0_34(v17);
    if (!v16)
    {
      sub_25749E940(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
  }

  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_434();
}

void sub_25763B82C()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 24);
  if (v8)
  {
    sub_25763A390(*(*v0 + 56), v3, type metadata accessor for NeuralNetwork.WeightParameters);
    v2(v3);
    sub_25763A188(v4);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v4);
  free(v3);
  free(v6);
  free(v5);
  OUTLINED_FUNCTION_434();

  free(v9);
}

uint64_t NeuralNetwork.Layer.LSTMWeightParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_LSTMWeightParams(0) + 20);
  if (qword_27F879590 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27F87BF38;
}

unint64_t sub_25763B970()
{
  result = qword_27F87DEC8;
  if (!qword_27F87DEC8)
  {
    type metadata accessor for Proto_LSTMWeightParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DEC8);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters()
{
  result = qword_27F8803F8;
  if (!qword_27F8803F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763BA3C()
{
  result = type metadata accessor for Proto_LSTMWeightParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_3_24(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_11(__n128 a1)
{
  *(v2 + 8) = a1;
  *(v2 + 24) = a1;
  *(v2 + 40) = a1;
  *(v2 + 56) = 0;
  v4 = v2 + *(v1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  *(v1 + 56) = a1;

  return type metadata accessor for Proto_LSTMWeightParams(0);
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for NeuralNetwork.WeightParameters();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Proto_WeightParams(0);
}

uint64_t OUTLINED_FUNCTION_19_7(__n128 a1)
{
  *(v2 + 8) = a1;
  *(v2 + 24) = a1;
  *(v2 + 40) = a1;
  *(v2 + 56) = 0;
  v4 = v2 + *(v1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_20_5(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
  v4 = v1 + *(v2 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_21_7(__n128 a1)
{
  *(v2 + 8) = a1;
  *(v2 + 24) = a1;
  *(v2 + 40) = a1;
  *(v2 + 56) = 0;
  v4 = v2 + *(v1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_25763A118(v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_6()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Proto_QuantizationParams(0);
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  v3 = v0 + *(v1 + 36);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_2576FF45C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_25749E8D0(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_33_3()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Proto_QuantizationParams(0);
}

uint64_t OUTLINED_FUNCTION_37_6()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Proto_QuantizationParams(0);
}

void static NeuralNetwork.Layer.bidirectionalLSTM(name:inputNames:outputNames:inputSize:outputSize:sequenceOutput:)()
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
  OUTLINED_FUNCTION_24_9();
  v13 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(v6, v4, v2, (v18 - v17));
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v8 + v20) = qword_27F87BEE8;

  sub_257528334();

  sub_2575283BC();

  sub_25752842C(v21);
  sub_2574897E0(v0);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_25752846C();
  sub_25763E764(v19, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.bidirectionalLSTM(inputSize:outputSize:sequenceOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(a1, a2, a3, a4);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.init(inputSize:outputSize:sequenceOutput:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_46_4();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_0();
  v18 = MEMORY[0x277D84F90];
  a4[2] = MEMORY[0x277D84F90];
  a4[3] = v18;
  a4[4] = v18;
  v19 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v20 = a4 + *(v19 + 36);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(v19 + 40);
  __swift_storeEnumTagSinglePayload(a4 + v21, 1, 1, v14);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *a4 = a1;
  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  a4[1] = a2;
  sub_2574A172C(a4 + v21, v5, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_26_0(v5);
  if (v22)
  {
    OUTLINED_FUNCTION_48_3();
    OUTLINED_FUNCTION_26_0(v5);
    if (!v22)
    {
      sub_2574695E4(v5, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    v23 = OUTLINED_FUNCTION_222();
    sub_25763EB5C(v23, v24);
  }

  *v4 = a3 & 1;
  sub_2574695E4(a4 + v21, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_1_26();
  sub_25763EB5C(v4, a4 + v21);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F80, &qword_25776BFA0);
  v28 = *(type metadata accessor for NeuralNetwork.Layer.Activation(0) - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_2577442C0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.setter();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter();
  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.setter();
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442C0;
  *(result + 32) = 0x6953207475706E49;
  *(result + 40) = 0xEA0000000000657ALL;
  if (*v0 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v8 = *v0;
  result = sub_257743974();
  v2[6] = result;
  v2[7] = v3;
  v2[8] = 0x532074757074754FLL;
  v2[9] = 0xEB00000000657A69;
  if (v0[1] < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = v0[1];
  v2[10] = sub_257743974();
  v2[11] = v4;
  v2[12] = 0x65636E6575716553;
  v2[13] = 0xEF74757074754F20;
  v5 = NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter();
  v6 = 1702195828;
  if ((v5 & 1) == 0)
  {
    v6 = 0x65736C6166;
  }

  v7 = 0xE500000000000000;
  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  v2[14] = v6;
  v2[15] = v7;
  return v2;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Proto_LSTMParams(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v12 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  sub_2574A172C(v0 + *(v12 + 40), v7, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_26_0(v7);
  if (v13)
  {
    *(v1 + 2) = 0;
    *v1 = 0;
    v1[4] = 0;
    v14 = &v1[*(v8 + 40)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v7);
    if (!v13)
    {
      sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    sub_25763EB5C(v7, v1);
  }

  v15 = *v1;
  sub_25763E764(v1, type metadata accessor for Proto_LSTMParams);
  return v15;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v75 = *(v80 - 8);
  v1 = *(v75 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_11();
  v74 = (v2 - v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_7();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v70 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = (&v70 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880408, &qword_25776BFA8);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v77 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  v30 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  v31 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  sub_25763CBF4(v31, v20);

  v76 = v21;
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2574695E4(v20, &qword_27F880408, &qword_25776BFA8);
    v32 = v77;
  }

  else
  {
    v73 = v17;
    OUTLINED_FUNCTION_6_19();
    sub_25763EB5C(v20, v29);
    v33 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
    v34 = *(v33 + 16);
    if (v34)
    {
      v71 = v29;
      v72 = v0;
      v83 = v30;
      sub_2574847D0();
      v30 = v83;
      v35 = v75;
      v36 = *(v75 + 80);
      OUTLINED_FUNCTION_193();
      v70 = v33;
      v79 = v37;
      v38 = v33 + v37;
      v78 = *(v35 + 72);
      do
      {
        sub_2574A172C(v38, v8, &qword_27F879B38, &qword_2577448C0);
        v39 = v80;
        v40 = *(v80 + 48);
        v81 = 0x2064726177726F46;
        v82 = 0xE800000000000000;
        MEMORY[0x259C64E90](*v8, v8[1]);
        v41 = v82;
        *v10 = v81;
        v10[1] = v41;
        OUTLINED_FUNCTION_40_6();

        v42 = OUTLINED_FUNCTION_16_6(*(v39 + 48));
        sub_25763EB5C(v42, v10 + v40);
        v43 = OUTLINED_FUNCTION_222();
        sub_2574695E4(v43, v44, &qword_2577448C0);
        v83 = v30;
        v45 = *(v30 + 16);
        if (v45 >= *(v30 + 24) >> 1)
        {
          OUTLINED_FUNCTION_38_3();
          v30 = v83;
        }

        *(v30 + 16) = v45 + 1;
        v46 = v78;
        sub_25749E9A8(v10, v30 + v79 + v45 * v78);
        v38 += v46;
        --v34;
      }

      while (v34);

      v32 = v77;
      v29 = v71;
    }

    else
    {

      v32 = v77;
    }

    sub_25763D02C(v30);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v29, v47);
    v17 = v73;
    v30 = MEMORY[0x277D84F90];
  }

  v48 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  sub_25763D480(1, v48, sub_25763E9FC);
  sub_25763CCAC(v49, v50, v51, v17);
  swift_unknownObjectRelease();
  if (__swift_getEnumTagSinglePayload(v17, 1, v76) == 1)
  {
    sub_2574695E4(v17, &qword_27F880408, &qword_25776BFA8);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    sub_25763EB5C(v17, v32);
    v52 = NeuralNetwork.Layer.LSTMWeightParameters.namedWeights.getter();
    v53 = *(v52 + 16);
    if (v53)
    {
      v83 = v30;
      sub_2574847D0();
      v54 = v83;
      v55 = *(v75 + 80);
      OUTLINED_FUNCTION_193();
      v76 = v52;
      v79 = v56;
      v57 = v52 + v56;
      v78 = *(v58 + 72);
      v59 = v74;
      do
      {
        sub_2574A172C(v57, v8, &qword_27F879B38, &qword_2577448C0);
        v60 = v80;
        v61 = *(v80 + 48);
        v81 = 0x647261776B636142;
        v82 = 0xE900000000000020;
        MEMORY[0x259C64E90](*v8, v8[1]);
        v62 = v82;
        *v59 = v81;
        v59[1] = v62;
        OUTLINED_FUNCTION_40_6();

        v63 = OUTLINED_FUNCTION_16_6(*(v60 + 48));
        sub_25763EB5C(v63, v59 + v61);
        v64 = OUTLINED_FUNCTION_222();
        sub_2574695E4(v64, v65, &qword_2577448C0);
        v83 = v54;
        v66 = *(v54 + 16);
        v67 = v59;
        if (v66 >= *(v54 + 24) >> 1)
        {
          OUTLINED_FUNCTION_38_3();
          v67 = v74;
          v54 = v83;
        }

        *(v54 + 16) = v66 + 1;
        v68 = v78;
        sub_25749E9A8(v67, v54 + v79 + v66 * v78);
        v57 += v68;
        --v53;
        v59 = v67;
      }

      while (v53);

      v32 = v77;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
    }

    sub_25763D02C(v54);
    OUTLINED_FUNCTION_5_19();
    sub_25763E764(v32, v69);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter()
{
  v1 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(v0 + 32);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v23 = MEMORY[0x277D84F90];
    sub_257484778();
    v12 = v23;
    v13 = type metadata accessor for Proto_LSTMWeightParams(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_19_8();
      sub_25763E7BC(v15, v9);
      v18 = *(v23 + 16);
      if (v18 >= *(v23 + 24) >> 1)
      {
        sub_257484778();
      }

      *(v23 + 16) = v18 + 1;
      v19 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      v20 = *(v4 + 72);
      OUTLINED_FUNCTION_6_19();
      sub_25763EB5C(v9, v21);
      v15 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_25763CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v6 = v5;
  if (v4)
  {
    sub_25763E7BC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_25763CCAC(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
    sub_25763E7BC(a1 + *(*(v10 - 8) + 72) * a2, a4);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t sub_25763CD70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  result = sub_25774107C(a1);
  if (v12)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v13 = *(v4 + 48);
    *a2 = sub_257653F04(&v9[v13], result, v11, 0, a1);
    a2[1] = v14;
    sub_25763EB5C(&v9[v13], a2 + *(v4 + 48));
    OUTLINED_FUNCTION_21();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }
}

void sub_25763CEB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469388);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B60, &unk_257744120);
  OUTLINED_FUNCTION_28_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763CF70(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469AE0);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B30, &unk_2577440F0);
  OUTLINED_FUNCTION_28_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25763D02C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(result, 1, sub_257469D34);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_25763D14C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_25746996C);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D200(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469ED4);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D2B0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_257469BAC);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B50, &unk_257744110);
  OUTLINED_FUNCTION_28_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25763D36C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_25(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25763E984(v4, 1, sub_25746A0C8);
  OUTLINED_FUNCTION_31_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(type metadata accessor for FeatureDescription() - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_29_6();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25763D480(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_25763EB10(0, result, v4);
    if (v5)
    {
      result = v4;
    }

    if (v4 >= result)
    {
      v6 = a3();

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.BidirectionalLSTMParameters.inputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t *sub_25763D564(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.setter(uint64_t result)
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

uint64_t *(*NeuralNetwork.Layer.BidirectionalLSTMParameters.outputSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
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

uint64_t *sub_25763D5CC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_24_9();
  v69 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v11);
  v12 = OUTLINED_FUNCTION_4(v69);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_27_7();
  v16 = MEMORY[0x28223BE20](v15);
  v24 = OUTLINED_FUNCTION_39_4(v16, v17, v18, v19, v20, v21, v22, v23, v66[0]);
  v25 = OUTLINED_FUNCTION_24(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_47_4();
  v35 = OUTLINED_FUNCTION_10_17(v34);
  v68 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v66 - v43;
  v45 = *(v0 + 16);
  v46 = *(v45 + 16);
  if (v46)
  {
    OUTLINED_FUNCTION_36_2();
    v47 = v71;
    v48 = *(v27 + 80);
    OUTLINED_FUNCTION_193();
    v50 = v45 + v49;
    v67 = *(v27 + 72);
    do
    {
      OUTLINED_FUNCTION_18_11();
      sub_25763E7BC(v50, v2);
      sub_25763E7BC(v2, v32);
      v51 = &unk_257752A20;
      sub_2574A172C(v32, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v69) == 1)
      {
        OUTLINED_FUNCTION_41_6();
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        sub_25763EB5C(v1, v66[1]);
        v55 = v66[2];
        OUTLINED_FUNCTION_41_6();
        sub_25763EB5C(v56, v57);
        v51 = v66[0];
        sub_2576B7CC8(v55, v66[0]);
        if (__swift_getEnumTagSinglePayload(v51, 1, v70) != 1)
        {
          OUTLINED_FUNCTION_20_6();
          v51 = v59;
          sub_25763E764(v32, v59);
          OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_0_35();
          sub_25763EB5C(v55, v41);
          goto LABEL_9;
        }

        v52 = v51;
        v53 = &qword_27F880410;
        v54 = &unk_25776BFB0;
      }

      sub_2574695E4(v52, v53, v54);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_21_8();
      sub_25763E764(v32, v58);
      OUTLINED_FUNCTION_49_1();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v41, v44);
      OUTLINED_FUNCTION_43_4();
      if (v61)
      {
        OUTLINED_FUNCTION_13_1(v60);
        sub_257484720();
        v47 = v71;
      }

      *(v47 + 16) = v51;
      v62 = *(v68 + 80);
      OUTLINED_FUNCTION_193();
      v64 = *(v63 + 72);
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v44, v65);
      v50 += v67;
      --v46;
    }

    while (v46);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25763D9A8(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.setter();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for Proto_ActivationParams(0);
  v10 = OUTLINED_FUNCTION_10_17(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v2 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574846C8();
    v17 = v29;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v2 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_22_8();
      v22 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_37_7(v22);
      sub_2574695E4(v15, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v2);
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_44_3();
      if (v27)
      {
        OUTLINED_FUNCTION_13_1(v26);
        sub_2574846C8();
        v17 = v29;
      }

      OUTLINED_FUNCTION_14_7();
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v28 = *(v0 + 16);

  *(v0 + 16) = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.forwardActivations.getter();
  *a1 = v3;
  return sub_25763DBF0;
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_24_9();
  v69 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(v11);
  v12 = OUTLINED_FUNCTION_4(v69);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_27_7();
  v16 = MEMORY[0x28223BE20](v15);
  v24 = OUTLINED_FUNCTION_39_4(v16, v17, v18, v19, v20, v21, v22, v23, v66[0]);
  v25 = OUTLINED_FUNCTION_24(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_47_4();
  v35 = OUTLINED_FUNCTION_10_17(v34);
  v68 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v66 - v43;
  v45 = *(v0 + 24);
  v46 = *(v45 + 16);
  if (v46)
  {
    OUTLINED_FUNCTION_36_2();
    v47 = v71;
    v48 = *(v27 + 80);
    OUTLINED_FUNCTION_193();
    v50 = v45 + v49;
    v67 = *(v27 + 72);
    do
    {
      OUTLINED_FUNCTION_18_11();
      sub_25763E7BC(v50, v2);
      sub_25763E7BC(v2, v32);
      v51 = &unk_257752A20;
      sub_2574A172C(v32, v1, &qword_27F879CC0, &unk_257752A20);
      if (__swift_getEnumTagSinglePayload(v1, 1, v69) == 1)
      {
        OUTLINED_FUNCTION_41_6();
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        sub_25763EB5C(v1, v66[1]);
        v55 = v66[2];
        OUTLINED_FUNCTION_41_6();
        sub_25763EB5C(v56, v57);
        v51 = v66[0];
        sub_2576B7CC8(v55, v66[0]);
        if (__swift_getEnumTagSinglePayload(v51, 1, v70) != 1)
        {
          OUTLINED_FUNCTION_20_6();
          v51 = v59;
          sub_25763E764(v32, v59);
          OUTLINED_FUNCTION_49_1();
          OUTLINED_FUNCTION_0_35();
          sub_25763EB5C(v55, v41);
          goto LABEL_9;
        }

        v52 = v51;
        v53 = &qword_27F880410;
        v54 = &unk_25776BFB0;
      }

      sub_2574695E4(v52, v53, v54);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_21_8();
      sub_25763E764(v32, v58);
      OUTLINED_FUNCTION_49_1();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v41, v44);
      OUTLINED_FUNCTION_43_4();
      if (v61)
      {
        OUTLINED_FUNCTION_13_1(v60);
        sub_257484720();
        v47 = v71;
      }

      *(v47 + 16) = v51;
      v62 = *(v68 + 80);
      OUTLINED_FUNCTION_193();
      v64 = *(v63 + 72);
      OUTLINED_FUNCTION_0_35();
      sub_25763EB5C(v44, v65);
      v50 += v67;
      --v46;
    }

    while (v46);
  }

  OUTLINED_FUNCTION_35();
}

void sub_25763DFC0(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.setter();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for Proto_ActivationParams(0);
  v10 = OUTLINED_FUNCTION_10_17(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v2 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574846C8();
    v17 = v29;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v2 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_22_8();
      v22 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
      OUTLINED_FUNCTION_37_7(v22);
      sub_2574695E4(v15, &qword_27F879CC0, &unk_257752A20);
      sub_2576B76DC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v2);
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_44_3();
      if (v27)
      {
        OUTLINED_FUNCTION_13_1(v26);
        sub_2574846C8();
        v17 = v29;
      }

      OUTLINED_FUNCTION_14_7();
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v28 = *(v0 + 24);

  *(v0 + 24) = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.BidirectionalLSTMParameters.backwardActivations.getter();
  *a1 = v3;
  return sub_25763E208;
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.setter(char a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46_4();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *(type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0) + 40);
  sub_2574A172C(v1 + v13, v3, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_26_0(v3);
  if (v14)
  {
    OUTLINED_FUNCTION_48_3();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v14)
    {
      sub_2574695E4(v3, &qword_27F87CA40, &qword_257752538);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_26();
    v15 = OUTLINED_FUNCTION_222();
    sub_25763EB5C(v15, v16);
  }

  *v2 = a1 & 1;
  sub_2574695E4(v1 + v13, &qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_1_26();
  sub_25763EB5C(v2, v1 + v13);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v9);
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = NeuralNetwork.Layer.BidirectionalLSTMParameters.sequenceOutput.getter() & 1;
  return sub_25763E3BC;
}

void sub_25763E3E4(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.setter();
}

void NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_LSTMWeightParams(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *(v3 + 16);
  if (v19)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484810();
    v20 = v31;
    v21 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v23 = v3 + v22;
    v24 = *(v7 + 72);
    do
    {
      sub_25763E7BC(v23, v1);
      OUTLINED_FUNCTION_19_8();
      sub_25763E7BC(v1, v18);
      OUTLINED_FUNCTION_5_19();
      sub_25763E764(v1, v25);
      v27 = *(v31 + 16);
      v26 = *(v31 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v26);
        sub_257484810();
      }

      *(v31 + 16) = v27 + 1;
      v28 = *(v13 + 80);
      OUTLINED_FUNCTION_193();
      sub_25763EB5C(v18, v31 + v29 + *(v13 + 72) * v27);
      v23 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 32);

  *(v0 + 32) = v20;
  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.BidirectionalLSTMParameters.weights.getter();
  return sub_25763E65C;
}

uint64_t sub_25763E674(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t NeuralNetwork.Layer.BidirectionalLSTMParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = MEMORY[0x277D84F90];
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = v2;
  a1[4] = v2;
  v3 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v4 = a1 + *(v3 + 36);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(v3 + 40);
  v6 = type metadata accessor for Proto_LSTMParams(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_25763E764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25763E7BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25763E81C()
{
  result = qword_27F87DE98;
  if (!qword_27F87DE98)
  {
    type metadata accessor for Proto_BiDirectionalLSTMLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DE98);
  }

  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BidirectionalLSTMParameters()
{
  result = qword_27F880418;
  if (!qword_27F880418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763E8E8()
{
  result = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25763E984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_25763E9FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for NeuralNetwork.Layer.LSTMWeightParameters() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_25763EAA4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25763EB10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25763EB5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t result)
{
  *(v1 - 96) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v4 + 16) = v0;
  v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;

  return sub_25763EB5C(v3, v6);
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_25763E7BC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_25763E764(v0, type metadata accessor for NeuralNetwork.Layer.Activation);
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_36_2()
{
  *(v2 - 144) = v1;
  *(v2 - 88) = v0;

  sub_257484720();
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v3 = v1 + *(*(v2 - 96) + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_38_3()
{

  sub_2574847D0();
}

uint64_t OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 136) = &a9 - v9;

  return type metadata accessor for Proto_ActivationParams(0);
}

uint64_t OUTLINED_FUNCTION_40_6()
{
  v5 = *(v3 - 128);

  return sub_2574A172C(v1, v5, v0, v2);
}

void OUTLINED_FUNCTION_43_4()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_44_3()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return type metadata accessor for Proto_LSTMParams(0);
}

uint64_t OUTLINED_FUNCTION_47_4()
{

  return type metadata accessor for NeuralNetwork.Layer.Activation(0);
}

uint64_t OUTLINED_FUNCTION_48_3()
{
  *(v1 + 8) = 0;
  *(v1 + 1) = 0;
  v3 = v1 + *(v0 + 40);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_25763E764(v0, v1);
}

uint64_t sub_25763EF6C()
{
  v1 = v0;
  v2 = LinearRegressorConfiguration.weights.getter();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    v4 = *(LinearRegressorConfiguration.weights.getter() + 16);

    v34 = sub_257743974();
    v36 = v5;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);
    v6 = *(v3 + 16);

    v7 = sub_257743974();
    MEMORY[0x259C64E90](v7);

    sub_257469AE0();
    v9 = v8;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      OUTLINED_FUNCTION_174(v10);
      sub_257469AE0();
      v9 = v31;
    }

    OUTLINED_FUNCTION_23_7();
    *(v9 + 16) = v11 + 1;
    v12 = v9 + 40 * v11;
    *(v12 + 32) = 0xD000000000000014;
    *(v12 + 40) = v13;
    *(v12 + 48) = v34;
    *(v12 + 56) = v36;
    *(v12 + 64) = 0;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  if (*(*(v1 + 8) + 16))
  {
    v35 = *(*(v1 + 8) + 16);
    v14 = sub_257743674();
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_25();
      v9 = v32;
    }

    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    if (v18 >= v17 >> 1)
    {
      OUTLINED_FUNCTION_174(v17);
      sub_257469AE0();
      v9 = v33;
    }

    OUTLINED_FUNCTION_23_7();
    *(v9 + 16) = v18 + 1;
    v19 = v9 + 40 * v18;
    *(v19 + 32) = 0xD000000000000012;
    *(v19 + 40) = v20;
    *(v19 + 48) = v14;
    *(v19 + 56) = v16;
    *(v19 + 64) = 0;
  }

  if (*(v1 + 24) == 1)
  {
    v21 = *(v1 + 16);
    v22 = *&aIdentitylogit[8 * v21];
    v23 = qword_25776C200[v21];
  }

  else
  {
    v23 = 0xE800000000000000;
    v22 = 0x797469746E656469;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_25();
    v9 = v29;
  }

  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  if (v25 >= v24 >> 1)
  {
    OUTLINED_FUNCTION_174(v24);
    sub_257469AE0();
    v9 = v30;
  }

  OUTLINED_FUNCTION_23_7();
  *(v9 + 16) = v25 + 1;
  v26 = v9 + 40 * v25;
  *(v26 + 32) = 0xD000000000000018;
  *(v26 + 40) = v27;
  *(v26 + 48) = v22;
  *(v26 + 56) = v23;
  *(v26 + 64) = 0;
  return sub_2576AACFC(v9);
}

uint64_t LinearRegressorConfiguration.weights.getter()
{
  v1 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2574840F8();
    v9 = v16;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_25763FF0C(v10, v6, type metadata accessor for Proto_GLMRegressor.DoubleArray);
      v12 = *v6;

      sub_25763FE00(v6);
      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_174(v13);
        sub_2574840F8();
      }

      *(v16 + 16) = v14 + 1;
      *(v16 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_25763F390(uint64_t *a1)
{
  v1 = *a1;

  return LinearRegressorConfiguration.weights.setter(v2);
}

uint64_t LinearRegressorConfiguration.weights.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = *(a1 + 16);
  if (v12)
  {
    v21 = v1;
    v22 = MEMORY[0x277D84F90];
    sub_257484868();
    v13 = 32;
    v14 = v22;
    do
    {
      v15 = *(a1 + v13);
      v16 = *(v3 + 20);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v11 = v15;
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_174(v17);
        sub_257484868();
      }

      *(v22 + 16) = v18 + 1;
      sub_25763FE5C(v11, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
      v13 += 8;
      --v12;
    }

    while (v12);

    v1 = v21;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v19 = *v1;

  *v1 = v14;
  return result;
}

uint64_t (*LinearRegressorConfiguration.weights.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = LinearRegressorConfiguration.weights.getter();
  return sub_25763F590;
}

uint64_t sub_25763F590(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return LinearRegressorConfiguration.weights.setter(*a1);
  }

  v4 = *a1;

  LinearRegressorConfiguration.weights.setter(v5);
}

uint64_t sub_25763F5F0(uint64_t *a1)
{
  v1 = *a1;

  return LinearRegressorConfiguration.offset.setter(v2);
}

uint64_t LinearRegressorConfiguration.offset.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*LinearRegressorConfiguration.offset.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

uint64_t sub_25763F698(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 8) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 8) = v4;
  }

  return result;
}

void LinearRegressorConfiguration.postEvaluationFunction.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *LinearRegressorConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*LinearRegressorConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25763F7F4;
}

uint64_t *sub_25763F7F4(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 8);
  *(v1 + 24) = 1;
  return result;
}

uint64_t LinearRegressorConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v3 = a1 + *(type metadata accessor for Proto_GLMRegressor(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t LinearRegressorConfiguration.init(weights:offset:postEvaluationFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = *a3;
  *a4 = MEMORY[0x277D84F90];
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  v9 = a4 + *(type metadata accessor for Proto_GLMRegressor(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  result = LinearRegressorConfiguration.weights.setter(a1);
  *(a4 + 8) = a2;
  *(a4 + 16) = v8;
  *(a4 + 24) = 1;
  return result;
}

BOOL static LinearRegressorConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_257480000();
  result = 0;
  if (v6 & 1) != 0 && (sub_257479D04(a1[1], a2[1]))
  {
    v7 = *(a2 + 24);
    if (sub_257487360(a1[2], *(a1 + 24), a2[2]))
    {
      v8 = *(type metadata accessor for Proto_GLMRegressor(0) + 28);
      sub_2577431B4();
      sub_257640004(&qword_27F879B68, MEMORY[0x277D216C8]);
      if (sub_257743644())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t LinearRegressorConfiguration.hash(into:)()
{
  type metadata accessor for Proto_GLMRegressor(0);
  OUTLINED_FUNCTION_0_36();
  sub_257640004(v0, v1);

  return sub_2577435F4();
}

uint64_t LinearRegressorConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_GLMRegressor(0);
  OUTLINED_FUNCTION_0_36();
  sub_257640004(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25763FAA0()
{
  sub_257743A14();
  type metadata accessor for Proto_GLMRegressor(0);
  sub_257640004(&qword_27F87AE30, type metadata accessor for Proto_GLMRegressor);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t LinearRegressorConfiguration.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for LinearRegressorConfiguration();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  sub_25763FF0C(v0, v17 - v16, type metadata accessor for LinearRegressorConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442C0;
  *(v18 + 32) = 0x73746867696577;
  *(v18 + 40) = 0xE700000000000000;
  v19 = LinearRegressorConfiguration.weights.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880430, &unk_25776C040);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0x74657366666FLL;
  *(v18 + 88) = 0xE600000000000000;
  v21 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
  *(v18 + 96) = v21;
  OUTLINED_FUNCTION_23_7();
  *(v18 + 120) = v22;
  *(v18 + 128) = 0xD000000000000016;
  *(v18 + 136) = v23;
  *(v18 + 168) = &type metadata for LinearRegressorConfiguration.PostEvaluationFunction;
  LinearRegressorConfiguration.postEvaluationFunction.getter((v18 + 144));
  v24 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v24);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);

  return sub_257743AA4();
}

MLModelSpecification::LinearRegressorConfiguration::PostEvaluationFunction_optional __swiftcall LinearRegressorConfiguration.PostEvaluationFunction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25763FDD8@<X0>(uint64_t *a1@<X8>)
{
  result = LinearRegressorConfiguration.PostEvaluationFunction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25763FE00(uint64_t a1)
{
  v2 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25763FE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LinearRegressorConfiguration()
{
  result = qword_281537820;
  if (!qword_281537820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25763FF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257640004(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257640050()
{
  result = qword_27F880440;
  if (!qword_27F880440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880440);
  }

  return result;
}

uint64_t sub_2576400CC()
{
  result = type metadata accessor for Proto_GLMRegressor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinearRegressorConfiguration.PostEvaluationFunction(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_3_25()
{
  v2 = *(v0 + 16) + 1;

  sub_257469AE0();
}

BOOL sub_2576402C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = 0;
  if ((sub_257487374(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9))
  {
    v6 = *(a3(0) + 28);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_27();
    sub_25764134C(v7, v8);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV18ReduceL1ParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 1936029761;
  *(v1 + 40) = 0xE400000000000000;
  *(v1 + 48) = MEMORY[0x259C64F20](*v0, MEMORY[0x277D84A28]);
  *(v1 + 56) = v2;
  *(v1 + 64) = 0xD000000000000010;
  *(v1 + 72) = 0x8000000257780A00;
  v3 = 1702195828;
  if (*(v0 + 8))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = 0x4120656375646552;
  *(v1 + 104) = 0xEA00000000006C6CLL;
  if (*(v0 + 9))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0x65736C6166;
    v6 = 0xE500000000000000;
  }

  *(v1 + 112) = v3;
  *(v1 + 120) = v6;
  return v1;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV13MaxParametersV2eeoiySbAG_AGtFZ_0()
{
  sub_2577431B4();
  OUTLINED_FUNCTION_1_27();
  sub_25764134C(v0, v1);
  return sub_257743644() & 1;
}

uint64_t NeuralNetwork.Layer.ReduceParameters.propertyDescriptions.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = 0xE300000000000000;
    v2 = 7173491;
    switch(*v0)
    {
      case 1:
        v2 = 6780513;
        break;
      case 2:
        v1 = 0xE400000000000000;
        v2 = 1685025392;
        break;
      case 3:
        v1 = 0xE600000000000000;
        v2 = 0x6D7573676F6CLL;
        break;
      case 4:
        v1 = 0xE900000000000065;
        v2 = 0x72617571736D7573;
        break;
      case 5:
        v1 = 0xE200000000000000;
        v2 = 12652;
        break;
      case 6:
        v1 = 0xE200000000000000;
        v2 = 12908;
        break;
      case 7:
        v2 = 7889261;
        break;
      case 8:
        v2 = 7235949;
        break;
      case 9:
        v1 = 0xE600000000000000;
        v2 = 0x78616D677261;
        break;
      default:
        break;
    }
  }

  else
  {
    v1 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E55;
  }

  if (*(v0 + 24) == 1)
  {
    v3 = 0xE300000000000000;
    v4 = 5720131;
    switch(*(v0 + 16))
    {
      case 1:
        v3 = 0xE200000000000000;
        v4 = 22344;
        break;
      case 2:
        v3 = 0xE100000000000000;
        v4 = 67;
        break;
      case 3:
        v3 = 0xE100000000000000;
        v4 = 72;
        break;
      case 4:
        v3 = 0xE100000000000000;
        v4 = 87;
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
    v3 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2577442C0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v2;
  *(v5 + 56) = v1;
  *(v5 + 64) = 0x6E6F6C69737045;
  *(v5 + 72) = 0xE700000000000000;
  v6 = *(v0 + 12);
  *(v5 + 80) = sub_257743794();
  *(v5 + 88) = v7;
  *(v5 + 96) = 1936291905;
  *(v5 + 104) = 0xE400000000000000;
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;
  return v5;
}

uint64_t NeuralNetwork.Layer.ReduceParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Proto_ReduceLayerParams(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

__n128 *sub_2576409B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v1, xmmword_257743FF0);
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v2;
  OUTLINED_FUNCTION_7_13(0x8000000257780A20);
  v5 = v4 | 0x65750000u;
  if (v3)
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (!v3)
  {
    v6 = v0;
  }

  v1[5].n128_u64[0] = v5;
  v1[5].n128_u64[1] = v6;
  return v1;
}

uint64_t sub_257640A88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_257640AE4(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_6_20(a1, a2);
    if (v3)
    {
      v4 = *(v2(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_27();
      sub_25764134C(v5, v6);
      if (OUTLINED_FUNCTION_4_2())
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 *NeuralNetwork.Layer.CumulativeSumParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  OUTLINED_FUNCTION_7_13(0x8000000257780A40);
  v6 = v5 | 0x65750000u;
  if (v4)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = v6;
  }

  if (v4)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = v1;
  }

  v2[5].n128_u64[0] = v7;
  v2[5].n128_u64[1] = v8;
  v2[6].n128_u64[0] = 0x65737265766552;
  v2[6].n128_u64[1] = 0xE700000000000000;
  if (*(v0 + 9))
  {
    v9 = v1;
  }

  else
  {
    v6 = 0x65736C6166;
    v9 = 0xE500000000000000;
  }

  v2[7].n128_u64[0] = v6;
  v2[7].n128_u64[1] = v9;
  return v2;
}

uint64_t sub_257640C84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  v3 = a3 + *(a2(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.CumulativeSumParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_6_20(a1, a2);
    if (v4)
    {
      if (*(v3 + 9) == *(v2 + 9))
      {
        v5 = *(type metadata accessor for Proto_CumSumLayerParams(0) + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_27();
        sub_25764134C(v6, v7);
        if (OUTLINED_FUNCTION_4_2())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25764134C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257641B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_5_20(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1936291905;
  result[2].n128_u64[1] = 0xE400000000000000;
  v3 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_13(uint64_t a1@<X8>)
{
  *(v3 + 64) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v3 + 72) = a1;
  v4 = *(v2 + 8) == 0;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Proto_DotProductLayerParams(0) + 20)];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t static NeuralNetwork.Layer.dotProduct(name:inputNames:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_3_26(a1, a2, a3, a4, a5, a6, a7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OUTLINED_FUNCTION_12_13();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_4_15(v18, xmmword_257743FF0);
  v20 = *(OUTLINED_FUNCTION_6_21(v19, xmmword_2577442B0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v7 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v8);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.cosineSimilarity(name:inputNames:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_3_26(a1, a2, a3, a4, a5, a6, a7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OUTLINED_FUNCTION_12_13();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_4_15(v18, xmmword_257743FF0);
  v20 = *(OUTLINED_FUNCTION_6_21(v19, xmmword_2577442B0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v17 = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v7 + v21) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v8);
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.DotProductParameters.cosineSimilarity()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = &a1[*(type metadata accessor for Proto_DotProductLayerParams(0) + 20)];
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = 1;
  return result;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0xD000000000000010;
  *(result + 40) = 0x8000000257780A60;
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

uint64_t (*NeuralNetwork.Layer.DotProductParameters.normalizeInputs.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NeuralNetwork.Layer.DotProductParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(type metadata accessor for Proto_DotProductLayerParams(0) + 20);
    sub_2577431B4();
    sub_257642710(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.DotProductParameters.hash(into:)()
{
  type metadata accessor for Proto_DotProductLayerParams(0);
  OUTLINED_FUNCTION_0_37();
  sub_257642710(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.DotProductParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_DotProductLayerParams(0);
  OUTLINED_FUNCTION_0_37();
  sub_257642710(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257642338()
{
  sub_257743A14();
  type metadata accessor for Proto_DotProductLayerParams(0);
  sub_257642710(&qword_27F87DF48, type metadata accessor for Proto_DotProductLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.DotProductParameters.customMirror.getter()
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
  v12 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25764261C(v1, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = 0x7A696C616D726F6ELL;
  *(v18 + 40) = 0xEF737475706E4965;
  v19 = *v1;
  *(v18 + 72) = MEMORY[0x277D839B0];
  *(v18 + 48) = v19;
  v20 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.DotProductParameters()
{
  result = qword_27F8805A0;
  if (!qword_27F8805A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25764261C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.DotProductParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257642710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257642784()
{
  result = type metadata accessor for Proto_DotProductLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 112) = a5;
  *(v7 - 104) = a7;
  *(v7 - 96) = result;
  *(v7 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = *(v5 - 112);
  a1[3].n128_u64[1] = v2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_21(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v4 - 104);
  a1[2].n128_u64[1] = v3;
  *v2 = 0;

  return type metadata accessor for Proto_DotProductLayerParams(0);
}

uint64_t static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a1;
  v29 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v20 = swift_allocObject();
  v26 = xmmword_2577442B0;
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 32) = v27;
  *(v21 + 40) = a6;

  NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)(v22, v19);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v21);
  sub_2574897E0(v14);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  sub_25752846C();
  return sub_257634BB4(v19);
}

uint64_t static NeuralNetwork.Layer.Kind.expandDimensions(axes:)@<X0>(void *a1@<X8>)
{

  NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)(v2, a1);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.init(axes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for Proto_ExpandDimsLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_5_21();
    v5 = v11;
    v6 = *(v11 + 16);
    do
    {
      OUTLINED_FUNCTION_4_16();
      if (v8)
      {
        OUTLINED_FUNCTION_2_26(v7);
        sub_2574845B8();
        v5 = v11;
      }

      OUTLINED_FUNCTION_1_28();
    }

    while (!v9);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 1936029761;
  *(v0 + 40) = 0xE400000000000000;
  NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter()
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
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_2_26(v8);
        sub_257483724();
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_257642D10(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(v2);
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_5_21();
    v3 = v10;
    v4 = *(v10 + 16);
    do
    {
      OUTLINED_FUNCTION_4_16();
      if (v6)
      {
        OUTLINED_FUNCTION_2_26(v5);
        sub_2574845B8();
        v3 = v10;
      }

      OUTLINED_FUNCTION_1_28();
    }

    while (!v7);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v8 = *v2;

  *v2 = v3;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ExpandDimensionsParameters.axes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  return sub_257642E3C;
}

uint64_t sub_257642E3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(*a1);
  }

  v4 = *a1;

  NeuralNetwork.Layer.ExpandDimensionsParameters.axes.setter(v5);
}

BOOL static NeuralNetwork.Layer.ExpandDimensionsParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_ExpandDimsLayerParams(0) + 20);
    sub_2577431B4();
    sub_257643414(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.hash(into:)()
{
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  OUTLINED_FUNCTION_0_38();
  sub_257643414(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  OUTLINED_FUNCTION_0_38();
  sub_257643414(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257643038()
{
  sub_257743A14();
  type metadata accessor for Proto_ExpandDimsLayerParams(0);
  sub_257643414(&qword_27F87D7E8, type metadata accessor for Proto_ExpandDimsLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.ExpandDimensionsParameters.customMirror.getter()
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
  v10 = &v19 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_257643320(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = 1936029793;
  *(v15 + 40) = 0xE400000000000000;
  v16 = NeuralNetwork.Layer.ExpandDimensionsParameters.axes.getter();
  *(v15 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v15 + 48) = v16;
  v17 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters()
{
  result = qword_27F8805B8;
  if (!qword_27F8805B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257643320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ExpandDimensionsParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257643414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257643484()
{
  result = type metadata accessor for Proto_ExpandDimsLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_5_21()
{

  sub_2574845B8();
}

uint64_t MLProgram.Operation.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_25764359C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Operation.name.setter(v1, v2);
}

uint64_t MLProgram.Operation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*MLProgram.Operation.name.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

void MLProgram.Operation.inputs.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Argument(0);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v28 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for Proto_MILSpec_Argument(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805C8, &qword_25776CBC0);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      OUTLINED_FUNCTION_55_3(v20);
      OUTLINED_FUNCTION_42_6();
      sub_25764953C(v22, v0);
      OUTLINED_FUNCTION_40_7();
      v23 = v0;
      v0 = v28;
      sub_257649420(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_31_5();
      sub_257649420(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257643808(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Operation.inputs.setter(v2);
}

uint64_t MLProgram.Operation.inputs.setter(uint64_t a1)
{
  sub_257648D5C(a1);
  v3 = v2;

  v4 = *(v1 + 16);

  *(v1 + 16) = v3;
  return result;
}

uint64_t MLProgram.Operation.inputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  MLProgram.Operation.inputs.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576438C4(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257648D5C(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 16);

    *(v3 + 16) = v2;
  }

  else
  {
    sub_257648D5C(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 16);

    *(v3 + 16) = v2;
  }

  return result;
}

uint64_t MLProgram.Operation.outputs.getter()
{
  v3 = type metadata accessor for MLProgram.NamedValueType();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v0 + 24);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_2574848C0();
    v14 = v25;
    v15 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_2574848C0();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_257649420(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_257643AE0(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Operation.outputs.setter();
}

void MLProgram.Operation.outputs.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for MLProgram.NamedValueType();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = *(v0 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257484918();
    v19 = v30;
    v20 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v0 + v21;
    v23 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_24_10();
      sub_25764953C(v22, v2);
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v2, v17);
      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();
      OUTLINED_FUNCTION_27_2();
      if (v25)
      {
        OUTLINED_FUNCTION_174(v24);
        sub_257484918();
        v19 = v30;
      }

      *(v19 + 16) = v6;
      v26 = *(v12 + 80);
      OUTLINED_FUNCTION_193();
      v27 = *(v12 + 72);
      OUTLINED_FUNCTION_45_2();
      sub_257649420(v17, v28);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v29 = *(v1 + 24);

  *(v1 + 24) = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.outputs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = MLProgram.Operation.outputs.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t MLProgram.Operation.blocks.getter()
{
  v3 = type metadata accessor for MLProgram.Block();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(v0 + 32);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    OUTLINED_FUNCTION_17_2();
    sub_257484970();
    v14 = v25;
    v15 = type metadata accessor for Proto_MILSpec_Block(0);
    OUTLINED_FUNCTION_24(v15);
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v19 = *(v18 + 72);
    do
    {
      OUTLINED_FUNCTION_44_4();
      sub_25764953C(v17, v11);
      OUTLINED_FUNCTION_24_2();
      if (v21)
      {
        OUTLINED_FUNCTION_174(v20);
        sub_257484970();
        v14 = v25;
      }

      *(v14 + 16) = v1;
      v22 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      sub_257649420(v11, v14 + v23 + *(v6 + 72) * v2);
      v17 += v19;
      --v13;
    }

    while (v13);
  }

  return v14;
}

void sub_257643EC0(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Operation.blocks.setter();
}

void MLProgram.Operation.blocks.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_376();
  v3 = type metadata accessor for MLProgram.Block();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for Proto_MILSpec_Block(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = *(v0 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_2574849C8();
    v19 = v29;
    v20 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v22 = v0 + v21;
    v23 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_30_5();
      sub_25764953C(v22, v2);
      OUTLINED_FUNCTION_44_4();
      sub_25764953C(v2, v17);
      OUTLINED_FUNCTION_29_7();
      sub_2576494E8();
      OUTLINED_FUNCTION_27_2();
      if (v25)
      {
        OUTLINED_FUNCTION_174(v24);
        sub_2574849C8();
        v19 = v29;
      }

      *(v19 + 16) = v6;
      v26 = *(v12 + 80);
      OUTLINED_FUNCTION_193();
      sub_257649420(v17, v19 + v27 + *(v12 + 72) * v0);
      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v28 = *(v1 + 32);

  *(v1 + 32) = v19;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.blocks.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  *v1 = MLProgram.Operation.blocks.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257644128(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void MLProgram.Operation.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Value();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v28 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v12 = type metadata accessor for Proto_MILSpec_Value(v11);
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v16);
  v17 = *(v1 + 40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v19 = sub_2577438E4();
  OUTLINED_FUNCTION_35_3(v19);
  if (v2)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v22 = OUTLINED_FUNCTION_55_3(v20);
      sub_25764953C(v22, v0);
      v23 = v0;
      v0 = v28;
      sub_257649420(v23, v28);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_28_8();
      sub_257649420(v28, v24);
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v18 + 16) = v27;

      if (!v2)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      ++v21;
      if (*(v3 + 8 * v4))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25764435C(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.Operation.attributes.setter(v2);
}

uint64_t MLProgram.Operation.attributes.setter(uint64_t a1)
{
  v2 = sub_257648FB0(a1);

  v3 = *(v1 + 40);

  *(v1 + 40) = v2;
  return result;
}

uint64_t MLProgram.Operation.attributes.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_375(a1);
  MLProgram.Operation.attributes.getter();
  *v1 = v2;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257644418(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_257648FB0(v5);
    OUTLINED_FUNCTION_84_4();
    v6 = *(v3 + 40);

    *(v3 + 40) = v2;
  }

  else
  {
    sub_257648FB0(v4);
    OUTLINED_FUNCTION_84_4();
    v8 = *(v3 + 40);

    *(v3 + 40) = v2;
  }

  return result;
}

void sub_2576444AC()
{
  OUTLINED_FUNCTION_31();
  v365 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for MLProgram.Block();
  v2 = OUTLINED_FUNCTION_24(v1);
  v321 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v346 = v6;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E00, &qword_257744720);
  OUTLINED_FUNCTION_63(v345);
  v347 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v344 = (&v305 - v11);
  v12 = OUTLINED_FUNCTION_153();
  v336 = type metadata accessor for MLProgram.ValueType.ListParameters(v12);
  v13 = OUTLINED_FUNCTION_4(v336);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v339 = v16;
  v17 = OUTLINED_FUNCTION_153();
  v349 = type metadata accessor for MLProgram.ValueType.TensorParameters(v17);
  v18 = OUTLINED_FUNCTION_4(v349);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v348 = v21;
  v22 = OUTLINED_FUNCTION_153();
  v335 = type metadata accessor for MLProgram.ValueType.StateParameters(v22);
  v23 = OUTLINED_FUNCTION_4(v335);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v311 = v26;
  OUTLINED_FUNCTION_158();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v305 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v305 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_196();
  v342 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v334 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v35);
  v36 = OUTLINED_FUNCTION_4(v334);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_1();
  v338 = v39;
  v40 = OUTLINED_FUNCTION_153();
  v333 = type metadata accessor for MLProgram.ValueType.TupleParameters(v40);
  v41 = OUTLINED_FUNCTION_4(v333);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_1();
  v337 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v46 = OUTLINED_FUNCTION_13(v45);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v305 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_167();
  v326 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  v55 = &v305 - v54;
  v355 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v56 = OUTLINED_FUNCTION_4(v355);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  v318 = v59;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_167();
  v315 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_167();
  v325 = v63;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_167();
  v322 = v65;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_167();
  v354 = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_196();
  v343 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v71 = OUTLINED_FUNCTION_13(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25_0();
  v313 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_167();
  v314 = v76;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_167();
  v317 = v78;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_167();
  v319 = v80;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_167();
  v324 = v82;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_167();
  v332 = v84;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_196();
  v353 = v86;
  v87 = OUTLINED_FUNCTION_153();
  v356 = type metadata accessor for Proto_MILSpec_ValueType(v87);
  v88 = OUTLINED_FUNCTION_4(v356);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_25_0();
  v312 = v91;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_167();
  v316 = v93;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_167();
  v323 = v95;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_196();
  v352 = v97;
  OUTLINED_FUNCTION_153();
  v98 = type metadata accessor for MLProgram.NamedValueType();
  v99 = OUTLINED_FUNCTION_24(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_3();
  v106 = (v105 - v104);
  v331 = v0;
  v107 = MLProgram.Operation.outputs.getter();
  v108 = *(v107 + 16);
  if (v108)
  {
    v309 = v51;
    v310 = v33;
    v308 = v30;
    v362[0] = MEMORY[0x277D84F90];
    v109 = v107;
    sub_257484060();
    v110 = *(v101 + 80);
    OUTLINED_FUNCTION_193();
    v320 = v109;
    v361 = v362[0];
    v350 = *(v101 + 72);
    v329 = xmmword_2577442B0;
    v351 = v55;
    v330 = v106;
    do
    {
      v357 = v108;
      OUTLINED_FUNCTION_24_10();
      v360 = v111;
      sub_25764953C(v111, v106);
      OUTLINED_FUNCTION_82_2();
      MEMORY[0x259C64E90](*v106, v106[1]);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      v358 = v364;
      v359 = v363;
      v112 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
      v113 = v106;
      v114 = v353;
      sub_2574AD5D8(v106 + *(v112 + 24), v353, &qword_27F879E10, &qword_257744730);
      v115 = OUTLINED_FUNCTION_188();
      v116 = v356;
      OUTLINED_FUNCTION_155(v115, v117, v356);
      if (v118)
      {
        v123 = v352;
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v119 = *(v116 + 20);
        if (qword_27F878FF0 != -1)
        {
          OUTLINED_FUNCTION_12_15();
          swift_once();
        }

        *(v123 + v119) = qword_27F87B038;
        v120 = OUTLINED_FUNCTION_188();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v120, v121, v116);

        if (EnumTagSinglePayload != 1)
        {
          sub_2574695E4(v114, &qword_27F879E10, &qword_257744730);
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_12();
        v123 = v352;
        sub_257649420(v114, v352);
      }

      v124 = *(v123 + *(v116 + 20));
      v125 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
      OUTLINED_FUNCTION_296();
      v126 = v124 + v125;
      v127 = &qword_257744660;
      sub_2574AD5D8(v126, v55, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_28_0(v55);
      if (v118)
      {
        sub_2574695E4(v55, &qword_27F879D40, &qword_257744660);
        swift_allocBox();
        LOBYTE(v363) = 3;
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        OUTLINED_FUNCTION_0_39();
        sub_2576494E8();
        v106 = v113;
LABEL_12:
        v128 = v357;
        swift_projectBox();
        OUTLINED_FUNCTION_7_14();
        sub_25764953C(v129, v348);
        sub_2576F1B84();
        v131 = v130;
        OUTLINED_FUNCTION_2_27();
        sub_2576494E8();
      }

      else
      {
        OUTLINED_FUNCTION_0_39();
        sub_2576494E8();
        v132 = v343;
        sub_257649420(v55, v343);
        v133 = v132;
        v127 = v354;
        sub_257649420(v133, v354);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v106 = v113;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            swift_allocBox();
            OUTLINED_FUNCTION_20_7();
            sub_257649420(v354, v149);
            OUTLINED_FUNCTION_9_10();
            sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v339);
            v131 = sub_2576F210C();
            OUTLINED_FUNCTION_4_17();
            goto LABEL_20;
          case 2:
            swift_allocBox();
            OUTLINED_FUNCTION_19_9();
            sub_257649420(v354, v146);
            OUTLINED_FUNCTION_11_14();
            sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v337);
            sub_2576F2344();
            v131 = v147;
            OUTLINED_FUNCTION_3_27();
            goto LABEL_20;
          case 3:
            swift_allocBox();
            OUTLINED_FUNCTION_21_9();
            sub_257649420(v354, v148);
            OUTLINED_FUNCTION_10_18();
            sub_25764953C(type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type, v338);
            v131 = sub_2576F4D1C();
            OUTLINED_FUNCTION_5_22();
LABEL_20:
            sub_2576494E8();
            v128 = v357;
            break;
          case 4:
            v341 = swift_allocBox();
            v137 = v136;
            OUTLINED_FUNCTION_25_6();
            sub_257649420(v354, v138);
            OUTLINED_FUNCTION_6_22();
            v139 = v342;
            sub_25764953C(v137, v342);
            v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_33_4(inited);
            v340 = v141;
            *(v141 + 40) = v142;
            v327 = type metadata accessor for Proto_MILSpec_StateType(0);
            v114 = *(v139 + *(v327 + 20));
            v143 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
            OUTLINED_FUNCTION_296();
            v144 = v332;
            sub_2574AD5D8(v114 + v143, v332, &qword_27F879E10, &qword_257744730);
            v145 = v356;
            v127 = __swift_getEnumTagSinglePayload(v144, 1, v356);
            sub_2574695E4(v144, &qword_27F879E10, &qword_257744730);
            v128 = v357;
            if (v127 == 1)
            {
              swift_allocBox();
              OUTLINED_FUNCTION_18_12();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              v106 = v330;
              goto LABEL_30;
            }

            v150 = v114 + v143;
            v151 = v324;
            sub_2574AD5D8(v150, v324, &qword_27F879E10, &qword_257744730);
            v152 = OUTLINED_FUNCTION_197();
            OUTLINED_FUNCTION_155(v152, v153, v145);
            if (v118)
            {
              v158 = v323;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v154 = *(v145 + 20);
              v106 = v330;
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
              }

              *(v158 + v154) = qword_27F87B038;
              v155 = OUTLINED_FUNCTION_197();
              v157 = __swift_getEnumTagSinglePayload(v155, v156, v145);

              if (v157 != 1)
              {
                sub_2574695E4(v151, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_12();
              v158 = v323;
              sub_257649420(v151, v323);
              v106 = v330;
            }

            v159 = *(v158 + v356[1].n128_i32[1]);
            v160 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
            OUTLINED_FUNCTION_296();
            v161 = v159 + v160;
            v114 = v326;
            v127 = &qword_27F879D40;
            sub_2574AD5D8(v161, v326, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_28_0(v114);
            if (v118)
            {
              sub_2574695E4(v114, &qword_27F879D40, &qword_257744660);
              swift_allocBox();
              OUTLINED_FUNCTION_18_12();
              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
              OUTLINED_FUNCTION_0_39();
              sub_2576494E8();
LABEL_30:
              swift_projectBox();
              OUTLINED_FUNCTION_7_14();
              sub_25764953C(v162, v348);
              sub_2576F1B84();
              v164 = v163;
              OUTLINED_FUNCTION_2_27();
              sub_2576494E8();
LABEL_31:
              v165 = v340;
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_0_39();
            sub_2576494E8();
            OUTLINED_FUNCTION_43_5();
            v171 = v114;
            v114 = v322;
            sub_257649420(v171, v322);
            v172 = v114;
            LOBYTE(v114) = v325;
            sub_257649420(v172, v325);
            v173 = swift_getEnumCaseMultiPayload();
            switch(v173)
            {
              case 1:
                swift_allocBox();
                OUTLINED_FUNCTION_20_7();
                sub_257649420(v325, v191);
                OUTLINED_FUNCTION_9_10();
                sub_25764953C(v158, v339);
                v164 = sub_2576F210C();
                OUTLINED_FUNCTION_4_17();
                goto LABEL_44;
              case 2:
                swift_allocBox();
                OUTLINED_FUNCTION_19_9();
                sub_257649420(v325, v188);
                OUTLINED_FUNCTION_11_14();
                sub_25764953C(v158, v337);
                sub_2576F2344();
                v164 = v189;
                OUTLINED_FUNCTION_3_27();
                goto LABEL_44;
              case 3:
                swift_allocBox();
                OUTLINED_FUNCTION_21_9();
                sub_257649420(v325, v190);
                OUTLINED_FUNCTION_10_18();
                sub_25764953C(v158, v338);
                v164 = sub_2576F4D1C();
                OUTLINED_FUNCTION_5_22();
LABEL_44:
                sub_2576494E8();
                goto LABEL_31;
              case 4:
                v307 = swift_allocBox();
                v176 = v175;
                OUTLINED_FUNCTION_25_6();
                sub_257649420(v325, v177);
                OUTLINED_FUNCTION_6_22();
                v178 = v176;
                v179 = v310;
                sub_25764953C(v178, v310);
                v180 = swift_initStackObject();
                OUTLINED_FUNCTION_33_4(v180);
                v306 = v181;
                *(v181 + 40) = v182;
                v114 = *(v179 + *(v327 + 20));
                v183 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296();
                v184 = v319;
                sub_2574AD5D8(v114 + v183, v319, &qword_27F879E10, &qword_257744730);
                v185 = v356;
                v127 = __swift_getEnumTagSinglePayload(v184, 1, v356);
                v186 = OUTLINED_FUNCTION_75_3();
                sub_2574695E4(v186, v187, &qword_257744730);
                if (v127 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_18_12();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  v106 = v330;
LABEL_54:
                  swift_projectBox();
                  OUTLINED_FUNCTION_7_14();
                  sub_25764953C(v205, v348);
                  sub_2576F1B84();
                  v207 = v206;
                  OUTLINED_FUNCTION_2_27();
                  sub_2576494E8();
                  goto LABEL_55;
                }

                v192 = v114 + v183;
                v193 = v317;
                sub_2574AD5D8(v192, v317, &qword_27F879E10, &qword_257744730);
                v194 = OUTLINED_FUNCTION_197();
                OUTLINED_FUNCTION_155(v194, v195, v185);
                if (v118)
                {
                  v196 = v316;
                  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                  v197 = *(v185 + 20);
                  v106 = v330;
                  if (qword_27F878FF0 != -1)
                  {
                    OUTLINED_FUNCTION_12_15();
                    swift_once();
                  }

                  *(v196 + v197) = qword_27F87B038;
                  v198 = OUTLINED_FUNCTION_197();
                  v200 = __swift_getEnumTagSinglePayload(v198, v199, v185);

                  v201 = v196;
                  if (v200 != 1)
                  {
                    sub_2574695E4(v193, &qword_27F879E10, &qword_257744730);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_8_12();
                  v201 = v316;
                  sub_257649420(v193, v316);
                  v106 = v330;
                }

                v202 = *(v201 + v356[1].n128_i32[1]);
                v203 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
                OUTLINED_FUNCTION_296();
                v204 = v202 + v203;
                v114 = v309;
                v127 = &qword_27F879D40;
                sub_2574AD5D8(v204, v309, &qword_27F879D40, &qword_257744660);
                OUTLINED_FUNCTION_28_0(v114);
                if (v118)
                {
                  sub_2574695E4(v114, &qword_27F879D40, &qword_257744660);
                  swift_allocBox();
                  OUTLINED_FUNCTION_18_12();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_0_39();
                  sub_2576494E8();
                  goto LABEL_54;
                }

                OUTLINED_FUNCTION_0_39();
                sub_2576494E8();
                OUTLINED_FUNCTION_43_5();
                v209 = v114;
                v114 = v315;
                sub_257649420(v209, v315);
                v210 = v114;
                LOBYTE(v114) = v318;
                sub_257649420(v210, v318);
                v211 = swift_getEnumCaseMultiPayload();
                switch(v211)
                {
                  case 1:
                    swift_allocBox();
                    OUTLINED_FUNCTION_20_7();
                    sub_257649420(v318, v229);
                    OUTLINED_FUNCTION_9_10();
                    sub_25764953C(v201, v339);
                    v207 = sub_2576F210C();
                    OUTLINED_FUNCTION_4_17();
                    goto LABEL_63;
                  case 2:
                    swift_allocBox();
                    OUTLINED_FUNCTION_19_9();
                    sub_257649420(v318, v226);
                    OUTLINED_FUNCTION_11_14();
                    sub_25764953C(v201, v337);
                    sub_2576F2344();
                    v207 = v227;
                    OUTLINED_FUNCTION_3_27();
                    goto LABEL_63;
                  case 3:
                    swift_allocBox();
                    OUTLINED_FUNCTION_21_9();
                    sub_257649420(v318, v228);
                    OUTLINED_FUNCTION_10_18();
                    sub_25764953C(v201, v338);
                    v207 = sub_2576F4D1C();
                    OUTLINED_FUNCTION_5_22();
LABEL_63:
                    sub_2576494E8();
                    break;
                  case 4:
                    v307 = swift_allocBox();
                    v214 = v213;
                    OUTLINED_FUNCTION_25_6();
                    sub_257649420(v318, v215);
                    OUTLINED_FUNCTION_6_22();
                    v216 = v214;
                    v217 = v308;
                    sub_25764953C(v216, v308);
                    v218 = swift_initStackObject();
                    OUTLINED_FUNCTION_33_4(v218);
                    v328 = v219;
                    *(v219 + 40) = v220;
                    v127 = *(v217 + *(v327 + 20));
                    v114 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                    OUTLINED_FUNCTION_296();
                    v221 = v314;
                    sub_2574AD5D8(v127 + v114, v314, &qword_27F879E10, &qword_257744730);
                    v222 = OUTLINED_FUNCTION_197();
                    v223 = v356;
                    v225 = __swift_getEnumTagSinglePayload(v222, v224, v356);
                    sub_2574695E4(v221, &qword_27F879E10, &qword_257744730);
                    if (v225 == 1)
                    {
                      swift_allocBox();
                      OUTLINED_FUNCTION_18_12();
                      MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                      v363 = v221;
                      v106 = v330;
                    }

                    else
                    {
                      v230 = v127 + v114;
                      v114 = v313;
                      sub_2574AD5D8(v230, v313, &qword_27F879E10, &qword_257744730);
                      OUTLINED_FUNCTION_28_0(v114);
                      if (v118)
                      {
                        v231 = v312;
                        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                        v232 = *(v223 + 20);
                        v106 = v330;
                        if (qword_27F878FF0 != -1)
                        {
                          OUTLINED_FUNCTION_12_15();
                          swift_once();
                        }

                        *(v231 + v232) = qword_27F87B038;
                        v233 = OUTLINED_FUNCTION_188();
                        v127 = __swift_getEnumTagSinglePayload(v233, v234, v223);

                        if (v127 != 1)
                        {
                          sub_2574695E4(v114, &qword_27F879E10, &qword_257744730);
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_8_12();
                        sub_257649420(v114, v312);
                        v106 = v330;
                      }

                      sub_2576F0F64();
                      v221 = v363;
                    }

                    switch(v221 >> 61)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_9_10();
                        sub_25764953C(v244, v339);
                        v237 = sub_2576F210C();
                        OUTLINED_FUNCTION_4_17();
                        goto LABEL_77;
                      case 2uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_11_14();
                        sub_25764953C(v241, v337);
                        sub_2576F2344();
                        v237 = v242;
                        OUTLINED_FUNCTION_3_27();
                        goto LABEL_77;
                      case 3uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_10_18();
                        sub_25764953C(v243, v338);
                        v237 = sub_2576F4D1C();
                        OUTLINED_FUNCTION_5_22();
                        goto LABEL_77;
                      case 4uLL:
                        OUTLINED_FUNCTION_85_2();
                        OUTLINED_FUNCTION_6_22();
                        sub_25764953C(v238, v311);
                        v237 = sub_2576F4F60();
                        v127 = v239;
                        LOBYTE(v114) = v240;
LABEL_77:
                        sub_2576494E8();
                        break;
                      default:
                        swift_projectBox();
                        OUTLINED_FUNCTION_7_14();
                        sub_25764953C(v235, v348);
                        sub_2576F1B84();
                        v237 = v236;
                        OUTLINED_FUNCTION_2_27();
                        sub_2576494E8();
                        break;
                    }

                    v245 = v328;
                    *(v328 + 48) = v237;
                    *(v245 + 56) = v127;
                    *(v245 + 64) = v114;
                    v207 = sub_2576A6964(v245);
                    OUTLINED_FUNCTION_22_9();
                    sub_2576494E8();
                    LOBYTE(v114) = 2;
                    break;
                  default:
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_6();
                    sub_257649420(v318, v212);
                    goto LABEL_54;
                }

LABEL_55:
                v165 = v340;

                v208 = v306;
                *(v306 + 48) = v207;
                *(v208 + 56) = v127;
                *(v208 + 64) = v114;
                v164 = sub_2576A6964(v208);
                OUTLINED_FUNCTION_22_9();
                sub_2576494E8();
                LOBYTE(v114) = 2;
                break;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_26_6();
                sub_257649420(v325, v174);
                goto LABEL_30;
            }

LABEL_32:

            *(v165 + 48) = v164;
            *(v165 + 56) = v127;
            *(v165 + 64) = v114;
            v131 = sub_2576A6964(v165);
            OUTLINED_FUNCTION_22_9();
            sub_2576494E8();
            LOBYTE(v114) = 2;
            break;
          default:
            swift_allocBox();
            OUTLINED_FUNCTION_26_6();
            sub_257649420(v354, v135);
            goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();

      v166 = v361;
      v362[0] = v361;
      v168 = *(v361 + 16);
      v167 = *(v361 + 24);
      if (v168 >= v167 >> 1)
      {
        OUTLINED_FUNCTION_174(v167);
        sub_257484060();
        v166 = v362[0];
      }

      *(v166 + 16) = v168 + 1;
      v361 = v166;
      v169 = v166 + 40 * v168;
      v170 = v358;
      *(v169 + 32) = v359;
      *(v169 + 40) = v170;
      *(v169 + 48) = v131;
      *(v169 + 56) = v127;
      *(v169 + 64) = v114;
      v55 = v351;
      v108 = v128 - 1;
    }

    while (v108);
  }

  else
  {

    v361 = MEMORY[0x277D84F90];
  }

  v246 = v331;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  v247 = swift_initStackObject();
  v248 = OUTLINED_FUNCTION_62_2(v247, xmmword_2577442B0);
  v249 = v246[1];
  v248[3].n128_u64[0] = *v246;
  v248[3].n128_u64[1] = v249;
  v248[4].n128_u8[0] = 0;
  MLProgram.Operation.inputs.getter();
  v251 = *(v250 + 16);

  if (!v251)
  {
LABEL_90:
    v254 = sub_2576AACFC(v361);
    v255 = v278;
    v253 = v247[1].n128_u64[0];
    v259 = v247[1].n128_u64[1];
    v252 = v253 + 1;
    if (v253 < v259 >> 1)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  MLProgram.Operation.inputs.getter();
  v363 = sub_2576A8D28();
  sub_2576479FC(&v363);
  v356 = v247;

  v252 = v363;
  v253 = *(v363 + 16);
  if (!v253)
  {

    v258 = MEMORY[0x277D84F90];
LABEL_89:
    v274 = sub_2576AACFC(v258);
    v276 = v275;
    sub_257469AE0();
    v247 = v277;
    v277[1].n128_u64[0] = 2;
    v277[4].n128_u64[1] = 0x737475706E69;
    v277[5].n128_u64[0] = 0xE600000000000000;
    v277[5].n128_u64[1] = v274;
    v277[6].n128_u64[0] = v276;
    v277[6].n128_u8[8] = 2;
    goto LABEL_90;
  }

  v362[0] = MEMORY[0x277D84F90];
  v254 = v362;
  sub_257484060();
  v255 = 0;
  v256 = *(v347 + 80);
  OUTLINED_FUNCTION_193();
  v357 = v252 + v257;
  v358 = v253;
  v258 = v362[0];
  v359 = v252;
  while (1)
  {
    v259 = *(v252 + 16);
    if (v255 >= v259)
    {
      break;
    }

    v260 = v344;
    sub_2574AD5D8(v357 + *(v347 + 72) * v255, v344, &qword_27F879E00, &qword_257744720);
    v261 = *v260;
    v262 = v260[1];
    v263 = *(v345 + 48);
    OUTLINED_FUNCTION_82_2();
    MEMORY[0x259C64E90]();
    MEMORY[0x259C64E90](34, 0xE100000000000000);
    v264 = v364;
    v360 = v363;
    v254 = (v260 + v263);
    sub_2576730B4();
    v266 = v265;
    v268 = v267;
    v270 = v269;
    sub_2574695E4(v260, &qword_27F879E00, &qword_257744720);
    v362[0] = v258;
    v272 = *(v258 + 16);
    v271 = *(v258 + 24);
    if (v272 >= v271 >> 1)
    {
      OUTLINED_FUNCTION_174(v271);
      v254 = v362;
      sub_257484060();
      v258 = v362[0];
    }

    ++v255;
    *(v258 + 16) = v272 + 1;
    v273 = v258 + 40 * v272;
    *(v273 + 32) = v360;
    *(v273 + 40) = v264;
    *(v273 + 48) = v266;
    *(v273 + 56) = v268;
    *(v273 + 64) = v270;
    v253 = v358;
    v252 = v359;
    if (v358 == v255)
    {

      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_174(v259);
  sub_257469AE0();
  v247 = v303;
LABEL_91:
  v247[1].n128_u64[0] = v252;
  v279 = v247 + 40 * v253;
  *(v279 + 4) = 0x7374757074756FLL;
  *(v279 + 5) = 0xE700000000000000;
  *(v279 + 6) = v254;
  *(v279 + 7) = v255;
  v279[64] = 2;
  v280 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v280)
  {
    v281 = MLProgram.Operation.blocks.getter();
    v282 = *(v281 + 16);
    if (v282)
    {
      v356 = v247;
      v363 = MEMORY[0x277D84F90];
      sub_257484040(0, v282, 0);
      v283 = v363;
      v284 = *(v321 + 80);
      OUTLINED_FUNCTION_193();
      v286 = v281 + v285;
      v288 = *(v287 + 72);
      v360 = v281;
      v361 = v288;
      do
      {
        OUTLINED_FUNCTION_30_5();
        v289 = sub_25764953C(v286, v346);
        v290 = sub_2576963A8(v289);
        v292 = v291;
        v294 = v293;
        OUTLINED_FUNCTION_29_7();
        sub_2576494E8();
        v363 = v283;
        v296 = *(v283 + 16);
        v295 = *(v283 + 24);
        if (v296 >= v295 >> 1)
        {
          v298 = OUTLINED_FUNCTION_174(v295);
          sub_257484040(v298, v296 + 1, 1);
          v283 = v363;
        }

        *(v283 + 16) = v296 + 1;
        v297 = v283 + 24 * v296;
        *(v297 + 32) = v290;
        *(v297 + 40) = v292;
        *(v297 + 48) = v294;
        v286 += v361;
        --v282;
      }

      while (v282);

      v247 = v356;
    }

    else
    {

      v283 = MEMORY[0x277D84F90];
    }

    v300 = v247[1].n128_u64[0];
    v299 = v247[1].n128_u64[1];
    if (v300 >= v299 >> 1)
    {
      OUTLINED_FUNCTION_174(v299);
      sub_257469AE0();
      v247 = v304;
    }

    v247[1].n128_u64[0] = v300 + 1;
    v301 = v247 + 40 * v300;
    *(v301 + 4) = 0x736B636F6C42;
    *(v301 + 5) = 0xE600000000000000;
    *(v301 + 6) = v283;
    *(v301 + 7) = 0;
    v301[64] = 1;
  }

  sub_2576AACFC(v247);
  v302 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

void MLProgram.Operation.init(name:inputs:outputs:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v46 = v5;
  v7 = v6;
  v8 = type metadata accessor for MLProgram.NamedValueType();
  v9 = OUTLINED_FUNCTION_24(v8);
  v44 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = type metadata accessor for Proto_MILSpec_NamedValueType(0);
  v17 = OUTLINED_FUNCTION_24(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  type metadata accessor for Proto_MILSpec_Argument(0);
  v25 = MEMORY[0x277D84F90];
  sub_2577435D4();
  v7[4] = v25;
  type metadata accessor for Proto_MILSpec_Value(0);
  v26 = v1;
  v7[5] = sub_2577435D4();
  v27 = v7 + *(type metadata accessor for Proto_MILSpec_Operation(0) + 36);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v7 = v45;
  v7[1] = v46;
  sub_257648D5C(v3);
  v29 = v28;

  v7[2] = v29;
  v30 = *(v26 + 16);
  if (v30)
  {
    sub_257484918();
    v31 = v25;
    v32 = *(v44 + 80);
    OUTLINED_FUNCTION_193();
    v34 = v26 + v33;
    v36 = *(v35 + 72);
    do
    {
      OUTLINED_FUNCTION_24_10();
      v37 = OUTLINED_FUNCTION_72_2();
      sub_25764953C(v37, v38);
      OUTLINED_FUNCTION_27_8();
      sub_25764953C(v15, v24);
      OUTLINED_FUNCTION_23_9();
      sub_2576494E8();
      v40 = *(v31 + 16);
      v39 = *(v31 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_174(v39);
        sub_257484918();
      }

      *(v31 + 16) = v40 + 1;
      v41 = *(v19 + 80);
      OUTLINED_FUNCTION_193();
      v42 = *(v19 + 72);
      OUTLINED_FUNCTION_45_2();
      sub_257649420(v24, v43);
      v34 += v36;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v7[3] = v31;
  OUTLINED_FUNCTION_35();
}

void sub_2576460F4()
{
  OUTLINED_FUNCTION_31();
  v73 = v2;
  v74 = v1;
  v76 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_30();
  v6 = type metadata accessor for MLProgram.Block();
  v7 = OUTLINED_FUNCTION_24(v6);
  v72 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_64_2(&v71 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40();
  MLProgram.Operation.inputs.getter();
  v25 = v23 + 64;
  v24 = *(v23 + 64);
  v77 = v23;
  v78 = v5;
  OUTLINED_FUNCTION_56_1(v23);
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  if ((v28 & v27) != 0)
  {
    while (1)
    {
      v32 = v26;
LABEL_6:
      v33 = *(v77 + 48);
      OUTLINED_FUNCTION_60_1();
      v36 = *v34;
      v35 = v34[1];
      MLProgram.Operation.inputs.getter();
      v38 = v37;

      sub_257657A94(v36, v35, v38, v0);

      type metadata accessor for MLProgram.Argument(0);
      v39 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v39, v40, v41);
      if (v42)
      {
        break;
      }

      v29 &= v29 - 1;

      v5 = v78;
      v76(v0, v78);
      OUTLINED_FUNCTION_41_7();
      sub_2576494E8();
      v26 = v32;
      if (!v29)
      {
        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v32 >= v31)
      {
        break;
      }

      v29 = *(v25 + 8 * v32);
      ++v26;
      if (v29)
      {
        goto LABEL_6;
      }
    }

    v43 = *(MLProgram.Operation.blocks.getter() + 16);

    v44 = v72;
    v45 = v73;
    if (v43)
    {
      v46 = 0;
      while (v46 < *(MLProgram.Operation.blocks.getter() + 16))
      {
        v47 = *(v44 + 80);
        OUTLINED_FUNCTION_193();
        v48 = *(v44 + 72);
        OUTLINED_FUNCTION_30_5();
        sub_25764953C(v49, v13);

        v45(v13, v5);
        OUTLINED_FUNCTION_29_7();
        sub_2576494E8();
        if (v43 == ++v46)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_24;
    }

LABEL_13:
    MLProgram.Operation.attributes.getter();
    v51 = v50;
    v53 = v50 + 64;
    v52 = *(v50 + 64);
    OUTLINED_FUNCTION_56_1(v50);
    v57 = v56 & v55;
    v59 = (v58 + 63) >> 6;
    if ((v56 & v55) == 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v60 = v54;
LABEL_18:
      v61 = *(v51 + 48);
      OUTLINED_FUNCTION_60_1();
      v64 = *v62;
      v63 = v62[1];
      MLProgram.Operation.attributes.getter();
      v66 = v65;

      v67 = v75;
      sub_257657A68(v64, v63, v66, v75);

      type metadata accessor for MLProgram.Value();
      v68 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v68, v69, v70);
      if (v42)
      {
        break;
      }

      v57 &= v57 - 1;

      v74(v67, v78);
      sub_2576494E8();
      v54 = v60;
      if (!v57)
      {
LABEL_15:
        while (1)
        {
          v60 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_23;
          }

          if (v60 >= v59)
          {

            OUTLINED_FUNCTION_35();
            return;
          }

          v57 = *(v53 + 8 * v60);
          ++v54;
          if (v57)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  __break(1u);
}

void sub_257646520()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v130 = v3;
  v136 = v4;
  v6 = v5;
  v148 = v7;
  OUTLINED_FUNCTION_30();
  v131 = type metadata accessor for MLProgram.Value();
  v8 = OUTLINED_FUNCTION_63(v131);
  v129 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v126 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v128 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_196();
  v141 = v19;
  v20 = OUTLINED_FUNCTION_153();
  v21 = type metadata accessor for MLProgram.Argument(v20);
  v22 = OUTLINED_FUNCTION_63(v21);
  v135 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  v127 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v134 = v31;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_196();
  v142 = v33;

  MLProgram.Operation.inputs.getter();
  v36 = v34 + 64;
  v35 = *(v34 + 64);
  v139 = v34;
  v37 = *(v34 + 32);
  OUTLINED_FUNCTION_41_0();
  v40 = v39 & v38;
  isUniquelyReferenced_nonNull_native = ((v41 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v44 = 0;
  v144 = v0;
  v145 = v6;
  v132 = isUniquelyReferenced_nonNull_native;
  v133 = v36;
  v137 = v2;
  if (!v40)
  {
    goto LABEL_3;
  }

  do
  {
    v146 = v44;
    v45 = v21;
LABEL_7:
    v47 = *(v139 + 48);
    OUTLINED_FUNCTION_60_1();
    v49 = *v48;
    v50 = v48[1];
    MLProgram.Operation.inputs.getter();
    v52 = v51;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v52;
    sub_25765368C(v49, v50);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v55, v56))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v57 = v53;
    v58 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
    if (sub_257743894())
    {
      v59 = sub_25765368C(v49, v50);
      v61 = v144;
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_49;
      }

      v57 = v59;
    }

    else
    {
      v61 = v144;
    }

    isUniquelyReferenced_nonNull_native = v45;
    if ((v58 & 1) == 0)
    {
      goto LABEL_47;
    }

    v62 = *(v149 + 56);
    v63 = *(v135 + 72) * v57;
    OUTLINED_FUNCTION_31_5();
    sub_257649420(v64 + v63, v142);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, isUniquelyReferenced_nonNull_native);

    v136(v142, v148, v145);
    sub_2574AD5D8(v142, v134, &qword_27F880610, &qword_25776CC98);
    OUTLINED_FUNCTION_155(v134, 1, isUniquelyReferenced_nonNull_native);
    if (v68)
    {
      sub_2574695E4(v134, &qword_27F880610, &qword_25776CC98);
      sub_2576493CC(*(v149 + 48) + 16 * v57);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v134, v127);
      sub_257649420(v127, *(v149 + 56) + v63);
    }

    v21 = isUniquelyReferenced_nonNull_native;
    v40 &= v40 - 1;
    sub_2574695E4(v142, &qword_27F880610, &qword_25776CC98);
    v44 = v146;
    sub_257648D5C(v149);
    v70 = v69;

    v71 = *(v61 + 16);

    *(v61 + 16) = v70;
    v2 = v137;
    v6 = v145;
    isUniquelyReferenced_nonNull_native = v132;
    v36 = v133;
  }

  while (v40);
  while (1)
  {
LABEL_3:
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v46 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v40 = *(v36 + 8 * v46);
    ++v43;
    if (v40)
    {
      v146 = v44;
      v45 = v21;
      v43 = v46;
      goto LABEL_7;
    }
  }

  v72 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v72)
  {
    v73 = 0;
    do
    {
      v74 = MLProgram.Operation.blocks.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A61C(v74);
        v74 = v79;
      }

      if (v73 >= *(v74 + 16))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = (v73 + 1);
      v75 = type metadata accessor for MLProgram.Block();
      OUTLINED_FUNCTION_24(v75);
      v78 = v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v77 + 72) * v73;

      v2(v78, v148, v6);
      MLProgram.Operation.blocks.setter();
      v73 = isUniquelyReferenced_nonNull_native;
    }

    while (v72 != isUniquelyReferenced_nonNull_native);
  }

  MLProgram.Operation.attributes.getter();
  v80 = 0;
  v82 = *(v81 + 64);
  v143 = v81;
  v83 = *(v81 + 32);
  OUTLINED_FUNCTION_41_0();
  v87 = v86 & v85;
  v89 = (v88 + 63) >> 6;
  v138 = v89;
  v140 = v84;
  if ((v86 & v85) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v147 = v44;
LABEL_30:
    v91 = *(v143 + 48);
    OUTLINED_FUNCTION_60_1();
    v94 = *v92;
    v93 = v92[1];
    MLProgram.Operation.attributes.getter();
    v96 = v95;

    swift_isUniquelyReferenced_nonNull_native();
    v97 = OUTLINED_FUNCTION_75_3();
    sub_25765368C(v97, v98);
    OUTLINED_FUNCTION_52_3();
    isUniquelyReferenced_nonNull_native = (v101 + v102);
    if (__OFADD__(v101, v102))
    {
      break;
    }

    v103 = v99;
    v104 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
    if (sub_257743894())
    {
      v105 = OUTLINED_FUNCTION_75_3();
      v107 = sub_25765368C(v105, v106);
      v109 = v145;
      if ((v104 & 1) != (v108 & 1))
      {
        goto LABEL_49;
      }

      v103 = v107;
    }

    else
    {
      v109 = v145;
    }

    if ((v104 & 1) == 0)
    {
      goto LABEL_48;
    }

    v110 = *(v96 + 56);
    v111 = *(v129 + 72) * v103;
    OUTLINED_FUNCTION_28_8();
    sub_257649420(v112 + v111, v141);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v131);

    v130(v141, v148, v109);
    isUniquelyReferenced_nonNull_native = &qword_27F880608;
    sub_2574AD5D8(v141, v128, &qword_27F880608, &unk_25776D460);
    OUTLINED_FUNCTION_155(v128, 1, v131);
    if (v68)
    {
      v116 = OUTLINED_FUNCTION_72_2();
      sub_2574695E4(v116, v117, &unk_25776D460);
      sub_2576493CC(*(v96 + 48) + 16 * v103);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v128, v126);
      sub_257649420(v126, *(v96 + 56) + v111);
    }

    v44 = v147;
    v87 &= v87 - 1;
    sub_2574695E4(v141, &qword_27F880608, &unk_25776D460);
    v118 = sub_257648FB0(v96);

    v119 = *(v144 + 40);

    *(v144 + 40) = v118;
    v89 = v138;
    v84 = v140;
    if (!v87)
    {
LABEL_26:
      while (1)
      {
        v90 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_43;
        }

        if (v90 >= v89)
        {
          swift_bridgeObjectRelease_n();

          OUTLINED_FUNCTION_35();
          return;
        }

        v87 = *(v84 + 8 * v90);
        ++v80;
        if (v87)
        {
          v147 = v44;
          v80 = v90;
          goto LABEL_30;
        }
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, isUniquelyReferenced_nonNull_native);
  __break(1u);
LABEL_48:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v131);
  __break(1u);
LABEL_49:
  swift_bridgeObjectRelease_n();
  sub_2577439B4();
  __break(1u);
}

void sub_257646D80()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for MLProgram.Value();
  v4 = OUTLINED_FUNCTION_63(v3);
  v130 = v5;
  v131 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v128 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v132 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_196();
  v140 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v17 = type metadata accessor for MLProgram.Argument(v16);
  v18 = OUTLINED_FUNCTION_63(v17);
  v136 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v129 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v24 = OUTLINED_FUNCTION_13(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v135 = v27;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v29);
  MLProgram.Operation.inputs.getter();
  v30 = 0;
  v31 = 0;
  v33 = *(v32 + 64);
  v138 = v32;
  v34 = *(v32 + 32);
  OUTLINED_FUNCTION_41_0();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;
  v141 = v0;
  v142 = v2;
  v133 = v40;
  v134 = v35;
  if ((v37 & v36) == 0)
  {
    goto LABEL_3;
  }

  do
  {
    OUTLINED_FUNCTION_78_2();
LABEL_7:
    v43 = *(v138 + 48);
    OUTLINED_FUNCTION_60_1();
    v46 = *v44;
    v45 = v44[1];
    MLProgram.Operation.inputs.getter();
    v48 = v47;

    swift_isUniquelyReferenced_nonNull_native();
    v49 = OUTLINED_FUNCTION_72_2();
    sub_25765368C(v49, v50);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v53, v54))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v55 = v51;
    v56 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
    if (sub_257743894())
    {
      v57 = OUTLINED_FUNCTION_72_2();
      v59 = sub_25765368C(v57, v58);
      if ((v56 & 1) != (v60 & 1))
      {
        goto LABEL_47;
      }

      v55 = v59;
    }

    if ((v56 & 1) == 0)
    {
      goto LABEL_45;
    }

    v61 = *(v48 + 56);
    v62 = *(v136 + 72) * v55;
    OUTLINED_FUNCTION_31_5();
    sub_257649420(v63 + v62, v143);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v31);
    v2 = v142;
    sub_257674A68(v143, v142, v67, v68, v69, v70, v71, v72, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v138, v140);
    sub_2574AD5D8(v143, v135, &qword_27F880610, &qword_25776CC98);
    OUTLINED_FUNCTION_155(v135, 1, v31);
    if (v73)
    {
      sub_2574695E4(v135, &qword_27F880610, &qword_25776CC98);
      sub_2576493CC(*(v48 + 48) + 16 * v55);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v135, v129);
      sub_257649420(v129, *(v48 + 56) + v62);
    }

    v31 = v145;
    v38 &= v38 - 1;
    sub_2574695E4(v143, &qword_27F880610, &qword_25776CC98);
    sub_257648D5C(v48);
    v75 = v74;

    v76 = *(v141 + 16);

    *(v141 + 16) = v75;
    v40 = v133;
    v35 = v134;
  }

  while (v38);
  while (1)
  {
LABEL_3:
    v41 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v41 >= v40)
    {
      break;
    }

    v38 = *(v35 + 8 * v41);
    ++v30;
    if (v38)
    {
      OUTLINED_FUNCTION_78_2();
      v30 = v42;
      goto LABEL_7;
    }
  }

  v77 = *(MLProgram.Operation.blocks.getter() + 16);

  if (v77)
  {
    v78 = 0;
    do
    {
      v79 = MLProgram.Operation.blocks.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A61C(v79);
        v79 = v83;
      }

      if (v78 >= *(v79 + 16))
      {
        goto LABEL_42;
      }

      v80 = type metadata accessor for MLProgram.Block();
      OUTLINED_FUNCTION_24(v80);
      sub_2576986A0(v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v82 + 72) * v78, v2);
      MLProgram.Operation.blocks.setter();
    }

    while (v77 != ++v78);
  }

  MLProgram.Operation.attributes.getter();
  v84 = 0;
  v86 = *(v85 + 64);
  v144 = v85;
  v87 = *(v85 + 32);
  OUTLINED_FUNCTION_41_0();
  v91 = v90 & v89;
  v93 = (v92 + 63) >> 6;
  v137 = v93;
  v139 = v88;
  if ((v90 & v89) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_78_2();
LABEL_29:
    v96 = *(v144 + 48);
    OUTLINED_FUNCTION_60_1();
    v99 = *v97;
    v98 = v97[1];
    MLProgram.Operation.attributes.getter();
    v101 = v100;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v99, v98);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v104, v105))
    {
      break;
    }

    v106 = v102;
    v107 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
    if (sub_257743894())
    {
      v108 = sub_25765368C(v99, v98);
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_47;
      }

      v106 = v108;
    }

    if ((v107 & 1) == 0)
    {
      goto LABEL_46;
    }

    v110 = *(v101 + 56);
    v111 = *(v130 + 72) * v106;
    OUTLINED_FUNCTION_28_8();
    sub_257649420(v112 + v111, v140);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v131);
    sub_257718008(v140, v142);
    v116 = v31;
    sub_2574AD5D8(v140, v132, v31, &unk_25776D460);
    OUTLINED_FUNCTION_28_0(v132);
    if (v73)
    {
      v117 = OUTLINED_FUNCTION_75_3();
      sub_2574695E4(v117, v118, &unk_25776D460);
      sub_2576493CC(*(v101 + 48) + 16 * v106);
      sub_2577438B4();
    }

    else
    {
      sub_257649420(v132, v128);
      sub_257649420(v128, *(v101 + 56) + v111);
    }

    v31 = v145;
    v91 &= v91 - 1;
    sub_2574695E4(v140, v116, &unk_25776D460);
    v119 = sub_257648FB0(v101);

    v120 = *(v141 + 40);

    *(v141 + 40) = v119;
    v93 = v137;
    v88 = v139;
    if (!v91)
    {
LABEL_25:
      while (1)
      {
        v94 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_41;
        }

        if (v94 >= v93)
        {

          OUTLINED_FUNCTION_35();
          return;
        }

        v91 = *(v88 + 8 * v94);
        ++v84;
        if (v91)
        {
          OUTLINED_FUNCTION_78_2();
          v84 = v95;
          goto LABEL_29;
        }
      }
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v31);
  __break(1u);
LABEL_46:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v131);
  __break(1u);
LABEL_47:
  sub_2577439B4();
  __break(1u);
}

void MLProgram.Operation.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v33 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v33);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for MLProgram.Operation();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_25764953C(v0, v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_62_2(v17, xmmword_257744000);
  v19 = v0[1];
  v20 = MEMORY[0x277D837D0];
  v18[3].n128_u64[0] = *v0;
  v18[3].n128_u64[1] = v19;
  v18[4].n128_u64[1] = v20;
  v18[5].n128_u64[0] = 0x737475706E69;
  v18[5].n128_u64[1] = 0xE600000000000000;
  MLProgram.Operation.inputs.getter();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D8, &qword_25776CBD0);
  v17[6].n128_u64[0] = v22;
  v17[7].n128_u64[1] = v23;
  v17[8].n128_u64[0] = 0x7374757074756FLL;
  v17[8].n128_u64[1] = 0xE700000000000000;

  v24 = MLProgram.Operation.outputs.getter();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E0, &qword_25776CBD8);
  v17[9].n128_u64[0] = v24;
  v17[10].n128_u64[1] = v25;
  v17[11].n128_u64[0] = 0x736B636F6C62;
  v17[11].n128_u64[1] = 0xE600000000000000;
  v26 = MLProgram.Operation.blocks.getter();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805E8, &qword_25776CBE0);
  v17[12].n128_u64[0] = v26;
  v17[13].n128_u64[1] = v27;
  v17[14].n128_u64[0] = 0x7475626972747461;
  v17[14].n128_u64[1] = 0xEA00000000007365;
  MLProgram.Operation.attributes.getter();
  v29 = v28;
  v17[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  v17[15].n128_u64[0] = v29;
  sub_257743A74();
  v30 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v32);
  (*(v4 + 104))(v1, *MEMORY[0x277D84C38], v33);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Operation.debugDescription.getter()
{
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000010, 0x8000000257780A80);
  MEMORY[0x259C64E90](*v0, v0[1]);
  MEMORY[0x259C64E90](0x737475706E69202CLL, 0xEA0000000000203ALL);
  MLProgram.Operation.inputs.getter();
  v1 = OUTLINED_FUNCTION_30();
  type metadata accessor for MLProgram.Argument(v1);
  sub_2577435C4();
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x74757074756F202CLL, 0xEB00000000203A73);
  MLProgram.Operation.outputs.getter();
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.NamedValueType();
  MEMORY[0x259C64F20](v0, v2);
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x736B636F6C62202CLL, 0xEA0000000000203ALL);
  MLProgram.Operation.blocks.getter();
  OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for MLProgram.Block();
  MEMORY[0x259C64F20](v0, v3);
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_69_0();

  MEMORY[0x259C64E90](0x626972747461202CLL, 0xEE00203A73657475);
  MLProgram.Operation.attributes.getter();
  OUTLINED_FUNCTION_376();
  type metadata accessor for MLProgram.Value();
  v4 = sub_2577435C4();
  v6 = v5;

  MEMORY[0x259C64E90](v4, v6);

  MEMORY[0x259C64E90](41, 0xE100000000000000);
  return 0;
}