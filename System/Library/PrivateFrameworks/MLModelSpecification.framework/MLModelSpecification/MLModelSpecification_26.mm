uint64_t MLProgram.ValueType.TensorParameters.dataType.setter(char *a1)
{
  v4 = *a1;
  result = sub_25773A814();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t (*MLProgram.ValueType.TensorParameters.dataType.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_25773A738(&v9);
  OUTLINED_FUNCTION_114_1();
  if (v7)
  {
    v5 = v6;
  }

  *(a1 + 8) = v5;
  return sub_2576F6CBC;
}

uint64_t sub_2576F6CBC(uint64_t *a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  result = sub_25773A814();
  v5 = *a1;
  *v5 = result;
  *(v5 + 8) = v6 & 1;
  return result;
}

void *(*MLProgram.ValueType.TensorParameters.rank.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_2576F6D50;
}

void MLProgram.ValueType.TensorParameters.shape.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v51 = (v7 - v6);
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v50 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_78();
  v20 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(v19);
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_196();
  v25 = OUTLINED_FUNCTION_153();
  v26 = type metadata accessor for Proto_MILSpec_Dimension(v25);
  v27 = OUTLINED_FUNCTION_24(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = *(v0 + 24);
  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_14:
    OUTLINED_FUNCTION_35();
    return;
  }

  v54 = MEMORY[0x277D84F90];
  sub_257484540(0, v36, 0);
  v37 = *(v29 + 80);
  OUTLINED_FUNCTION_193();
  v39 = v35 + v38;
  v52 = *(v29 + 72);
  v53 = v20;
  while (1)
  {
    sub_2576FA1C0();
    OUTLINED_FUNCTION_415();
    sub_257487308();
    sub_2576FA218(v34, type metadata accessor for Proto_MILSpec_Dimension);
    v40 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v40, v41, v20);
    if (!v42)
    {
      break;
    }

    sub_2574695E4(v1, &qword_27F879D28, &qword_257744648);
    v43 = 0;
LABEL_8:
    v45 = 1;
LABEL_11:
    v47 = *(v54 + 16);
    v46 = *(v54 + 24);
    if (v47 >= v46 >> 1)
    {
      v49 = OUTLINED_FUNCTION_13_1(v46);
      sub_257484540(v49, v47 + 1, 1);
    }

    *(v54 + 16) = v47 + 1;
    v48 = v54 + 16 * v47;
    *(v48 + 32) = v43;
    *(v48 + 40) = v45;
    v20 = v53;
    v39 += v52;
    if (!--v36)
    {
      goto LABEL_14;
    }
  }

  sub_2576FBBA0();
  sub_2576FBBA0();
  OUTLINED_FUNCTION_294();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576FBBA0();
    v43 = *v51;
    sub_2576FA218(v51, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    goto LABEL_8;
  }

  sub_2576FBBA0();
  v43 = *v50;
  sub_2576FA218(v50, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v45 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2576F7100(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.ValueType.TensorParameters.shape.setter();
}

void MLProgram.ValueType.TensorParameters.shape.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_78();
  v37 = type metadata accessor for Proto_MILSpec_Dimension(v9);
  v10 = OUTLINED_FUNCTION_63(v37);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_28();
  v15 = *(v4 + 16);
  if (v15)
  {
    v36 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574844E8();
    v16 = v38;
    v17 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
    v18 = (v4 + 40);
    v19 = v37;
    while (1)
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
      v25 = v2 + *(v19 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v21 == 1)
      {
        v26 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
        OUTLINED_FUNCTION_112_2(v26);
        *v1 = v20 & 1;
      }

      else
      {
        v27 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
        OUTLINED_FUNCTION_112_2(v27);
        if (v20 < 0)
        {
          __break(1u);
          return;
        }

        *v1 = v20;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v17);
      sub_25751BB28();
      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v31);
        sub_2574844E8();
        v19 = v37;
      }

      *(v38 + 16) = v32 + 1;
      v33 = *(v12 + 80);
      OUTLINED_FUNCTION_193();
      v34 = *(v12 + 72);
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
      v18 += 16;
      if (!--v15)
      {

        v0 = v36;
        goto LABEL_12;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_12:
  v35 = *(v0 + 24);

  *(v0 + 24) = v16;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.TensorParameters.shape.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TensorParameters.shape.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.TensorParameters.attributes.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = type metadata accessor for MLProgram.Value();
  v2 = OUTLINED_FUNCTION_24(v1);
  v35 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for Proto_MILSpec_Value(v6);
  v8 = OUTLINED_FUNCTION_24(v7);
  v34 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v12 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805D0, &qword_25776CBC8);
  v13 = sub_2577438E4();
  v14 = v13;
  v15 = 0;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v33 = v13 + 64;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v23 = v20 | (v15 << 6);
      v24 = (*(v12 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v12 + 56) + *(v34 + 72) * v23;
      sub_2576FA1C0();
      sub_2576FBBA0();
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (v14[6] + 16 * v23);
      *v28 = v25;
      v28[1] = v26;
      v29 = v14[7] + *(v35 + 72) * v23;
      sub_2576FBBA0();
      v30 = v14[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v14[2] = v32;

      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        OUTLINED_FUNCTION_35();
        return;
      }

      v22 = *(v12 + 64 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2576F7644(uint64_t *a1)
{
  v1 = *a1;

  return MLProgram.ValueType.TensorParameters.attributes.setter(v2);
}

uint64_t MLProgram.ValueType.TensorParameters.attributes.setter(uint64_t a1)
{
  v2 = sub_2576FB8C0(a1);

  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t MLProgram.ValueType.TensorParameters.attributes.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TensorParameters.attributes.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F7704(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_2576FB8C0(v4);

    v6 = *(v2 + 32);

    *(v2 + 32) = v5;
  }

  else
  {
    v8 = sub_2576FB8C0(v3);

    v9 = *(v2 + 32);

    *(v2 + 32) = v8;
  }

  return result;
}

uint64_t static MLProgram.ValueType.TensorParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  if (!sub_257476914(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v3 = *(v1 + 24);
  v4 = *(v0 + 24);
  sub_25747C000();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 32);
  v7 = *(v0 + 32);
  sub_257476DC8();
  if (v8 & 1) != 0 && (v9 = *(type metadata accessor for Proto_MILSpec_TensorType(0) + 32), sub_2577431B4(), OUTLINED_FUNCTION_17_27(), sub_2576FA2D0(v10, v11), (OUTLINED_FUNCTION_4_2()))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void MLProgram.ValueType.TensorParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for MLProgram.ValueType.TensorParameters(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257744E70;
  *(v17 + 32) = 0x6570795461746164;
  *(v17 + 40) = 0xE800000000000000;
  *(v17 + 72) = &type metadata for MLProgram.DataType;
  MLProgram.ValueType.TensorParameters.dataType.getter((v17 + 48));
  *(v17 + 80) = 1802396018;
  *(v17 + 88) = 0xE400000000000000;
  v18 = MEMORY[0x277D83B88];
  *(v17 + 96) = *(v0 + 16);
  *(v17 + 120) = v18;
  *(v17 + 128) = 0x6570616873;
  *(v17 + 136) = 0xE500000000000000;
  MLProgram.ValueType.TensorParameters.shape.getter();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881598, &unk_257775580);
  *(v17 + 144) = v20;
  *(v17 + 168) = v21;
  *(v17 + 176) = 0x7475626972747461;
  *(v17 + 184) = 0xEA00000000007365;
  MLProgram.ValueType.TensorParameters.attributes.getter();
  v23 = v22;
  *(v17 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v17 + 192) = v23;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v2);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

void MLProgram.ValueType.TupleParameters.types.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_196();
  v13 = OUTLINED_FUNCTION_153();
  v41 = type metadata accessor for Proto_MILSpec_ValueType(v13);
  v14 = OUTLINED_FUNCTION_63(v41);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_134_0();
  v23 = *v1;
  v24 = *(*v1 + 16);
  if (v24)
  {
    v40 = v8;
    v42 = MEMORY[0x277D84F90];
    sub_257484A20(0, v24, 0);
    v25 = *(v16 + 80);
    OUTLINED_FUNCTION_193();
    v27 = v23 + v26;
    v39 = *(v16 + 72);
    do
    {
      sub_2576FA1C0();
      sub_2576FA1C0();
      v28 = *(v21 + *(v41 + 20));
      OUTLINED_FUNCTION_296();
      sub_257487308();
      OUTLINED_FUNCTION_155(v0, 1, v40);
      if (v29)
      {
        sub_2574695E4(v0, &qword_27F879D40, &qword_257744660);
        v30 = OUTLINED_FUNCTION_120_1();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        sub_2576FA218(v2, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FA218(v21, type metadata accessor for Proto_MILSpec_ValueType);
      }

      else
      {
        sub_2576FA218(v2, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FA218(v21, type metadata accessor for Proto_MILSpec_ValueType);
        sub_2576FBBA0();
        OUTLINED_FUNCTION_153_0();
        sub_2576FBBA0();
        OUTLINED_FUNCTION_176();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 1:
            type metadata accessor for MLProgram.ValueType.ListParameters(0);
            v37 = swift_allocBox();
            OUTLINED_FUNCTION_8_39();
            sub_2576FBBA0();
            v30 = v37 | 0x2000000000000000;
            break;
          case 2:
            type metadata accessor for MLProgram.ValueType.TupleParameters(0);
            v35 = swift_allocBox();
            OUTLINED_FUNCTION_10_45();
            sub_2576FBBA0();
            v30 = v35 | 0x4000000000000000;
            break;
          case 3:
            type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
            v36 = swift_allocBox();
            OUTLINED_FUNCTION_9_37();
            sub_2576FBBA0();
            v30 = v36 | 0x6000000000000000;
            break;
          case 4:
            type metadata accessor for MLProgram.ValueType.StateParameters(0);
            v34 = swift_allocBox();
            OUTLINED_FUNCTION_11_39();
            sub_2576FBBA0();
            v30 = v34 | 0x8000000000000000;
            break;
          default:
            v30 = OUTLINED_FUNCTION_120_1();
            OUTLINED_FUNCTION_13_28();
            sub_2576FBBA0();
            break;
        }
      }

      v32 = *(v42 + 16);
      v31 = *(v42 + 24);
      if (v32 >= v31 >> 1)
      {
        v38 = OUTLINED_FUNCTION_13_1(v31);
        sub_257484A20(v38, v32 + 1, 1);
      }

      *(v42 + 16) = v32 + 1;
      *(v42 + 8 * v32 + 32) = v30;
      v27 += v39;
      --v24;
    }

    while (v24);
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576F7FA4(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.ValueType.TupleParameters.types.setter();
}

void MLProgram.ValueType.TupleParameters.types.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_153();
  v9 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v8);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_153();
  v14 = type metadata accessor for MLProgram.ValueType.TupleParameters(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = OUTLINED_FUNCTION_153();
  v19 = type metadata accessor for MLProgram.ValueType.ListParameters(v18);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = OUTLINED_FUNCTION_153();
  v24 = type metadata accessor for MLProgram.ValueType.TensorParameters(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v57 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v32 = OUTLINED_FUNCTION_63(v57);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_0();
  v37 = *(v3 + 16);
  if (v37)
  {
    v55 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257485260();
    v38 = 32;
    v39 = v58;
    v56 = v3;
    do
    {
      v40 = *(v3 + v38);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v41 = *(v57 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_12_15();
        swift_once();
      }

      *(v1 + v41) = qword_27F87B038;
      switch(v40 >> 61)
      {
        case 1uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_8_39();
          OUTLINED_FUNCTION_110_0();
          break;
        case 2uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_10_45();
          OUTLINED_FUNCTION_110_0();
          break;
        case 3uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_9_37();
          OUTLINED_FUNCTION_110_0();
          break;
        case 4uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_11_39();
          OUTLINED_FUNCTION_110_0();
          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          sub_2576FA1C0();
          OUTLINED_FUNCTION_13_28();
          OUTLINED_FUNCTION_110_0();
          break;
      }

      v42 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);

      v46 = *(v1 + v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v1 + v41);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
        OUTLINED_FUNCTION_448(v49);
        *(v1 + v41) = sub_2574E503C(v48);
      }

      OUTLINED_FUNCTION_93_2();
      sub_25751BB28();
      swift_endAccess();
      v51 = *(v58 + 16);
      v50 = *(v58 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v50);
        sub_257485260();
      }

      *(v58 + 16) = v51 + 1;
      v52 = *(v34 + 80);
      OUTLINED_FUNCTION_193();
      v53 = *(v34 + 72);
      OUTLINED_FUNCTION_14_27();
      sub_2576FBBA0();
      v38 += 8;
      --v37;
      v3 = v56;
    }

    while (v37);

    v0 = v55;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v54 = *v0;

  *v0 = v39;
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.TupleParameters.types.modify(void *a1)
{
  a1[1] = v1;
  MLProgram.ValueType.TupleParameters.types.getter();
  *a1 = v3;
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F84A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
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

uint64_t MLProgram.ValueType.TupleParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_MILSpec_TupleType(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static MLProgram.ValueType.TupleParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v1 = *v0;
  v3 = *v2;
  sub_2574796A0();
  result = 0;
  if (v4)
  {
    v5 = *(type metadata accessor for Proto_MILSpec_TupleType(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_17_27();
    sub_2576FA2D0(v6, v7);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

void MLProgram.ValueType.TupleParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v0 = sub_257743A84();
  v1 = OUTLINED_FUNCTION_63(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for MLProgram.ValueType.TupleParameters(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_4_57();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 0x7365707974;
  *(v13 + 40) = 0xE500000000000000;
  MLProgram.ValueType.TupleParameters.types.getter();
  v15 = v14;
  *(v13 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8815A0, &unk_257775590);
  *(v13 + 48) = v15;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *MEMORY[0x277D84C38];
  v21 = OUTLINED_FUNCTION_100_2();
  v22(v21);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.ValueType.ListParameters.type.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.ListParameters.type.getter();
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.ListParameters.length.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for Proto_MILSpec_Dimension(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B8D0, &qword_2577755A0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_134_0();
  v15 = *(v1 + *(type metadata accessor for Proto_MILSpec_ListType(0) + 20));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v16 = OUTLINED_FUNCTION_171_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v6);
  sub_2574695E4(v4, &qword_27F87B8D0, &qword_2577755A0);
  if (EnumTagSinglePayload == 1)
  {
    *v0 = 0;
    *(v0 + 8) = 1;
  }

  else
  {
    sub_257487308();
    v19 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v19, v20, v6);
    if (v21)
    {
      type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      v26 = v3 + *(v6 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v27 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v27, v28, v6);
      if (!v21)
      {
        sub_2574695E4(v2, &qword_27F87B8D0, &qword_2577755A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
    }

    sub_2577020B4(v3, v0);
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576F8B18(uint64_t a1@<X8>)
{
  MLProgram.ValueType.ListParameters.length.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

void sub_2576F8B5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  MLProgram.ValueType.ListParameters.length.setter();
}

void MLProgram.ValueType.ListParameters.length.setter()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_35_15();
  v8 = type metadata accessor for Proto_MILSpec_Dimension(v7);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = v13 + *(v9 + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v15 == 1)
  {
    v21 = &v0[*(type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0) + 20)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v0 = v14 & 1;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
    sub_25751BB28();
    sub_2574DE7E0();
    OUTLINED_FUNCTION_434();
    return;
  }

  v22 = &v0[*(type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if ((v14 & 0x8000000000000000) == 0)
  {
    *v0 = v14;
    goto LABEL_5;
  }

  __break(1u);
}

void (*MLProgram.ValueType.ListParameters.length.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v3[3] = OUTLINED_FUNCTION_125_1();
  v3[4] = OUTLINED_FUNCTION_125_1();
  v7 = type metadata accessor for Proto_MILSpec_Dimension(0);
  v3[5] = v7;
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v3[6] = OUTLINED_FUNCTION_125_1();
  v3[7] = OUTLINED_FUNCTION_125_1();
  MLProgram.ValueType.ListParameters.length.getter();
  return sub_2576F8DD0;
}

void sub_2576F8DD0()
{
  OUTLINED_FUNCTION_433();
  v1 = v0;
  v3 = *v2;
  v4 = (*v2)[5];
  v5 = **v2;
  v6 = *(*v2 + 8);
  v7 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  if (v1)
  {
    v8 = v3[6];
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    v12 = v8 + *(v4 + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v13 = v3[3];
    if (v6)
    {
      goto LABEL_5;
    }

    v20 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
    OUTLINED_FUNCTION_127_0(v20);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *v3[3] = v5;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = v3[7];
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  v18 = v14 + *(v4 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v13 = v3[4];
  if (!v6)
  {
    v21 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
    OUTLINED_FUNCTION_127_0(v21);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *v3[4] = v5;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_5:
  v19 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  OUTLINED_FUNCTION_127_0(v19);
  *v13 = v5 & 1;
LABEL_10:
  v23 = v3[6];
  v22 = v3[7];
  v24 = v3[3];
  v25 = v3[4];
  v26 = v3[2];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v7);
  sub_25751BB28();
  sub_2574DE7E0();
  free(v22);
  free(v23);
  free(v25);
  free(v24);
  OUTLINED_FUNCTION_434();

  free(v30);
}

void MLProgram.ValueType.ListParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v0 = sub_257743A84();
  v1 = OUTLINED_FUNCTION_63(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for MLProgram.ValueType.ListParameters(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  *(v13 + 32) = 1701869940;
  *(v13 + 40) = 0xE400000000000000;
  *(v13 + 72) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.ListParameters.type.getter();
  *(v13 + 80) = 0x6874676E656CLL;
  *(v13 + 88) = 0xE600000000000000;
  *(v13 + 120) = &type metadata for MLProgram.ShapeDimension;
  MLProgram.ValueType.ListParameters.length.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *MEMORY[0x277D84C38];
  v19 = OUTLINED_FUNCTION_100_2();
  v20(v19);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

void sub_2576F928C()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for Proto_MILSpec_ValueType(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v33[-v20];
  v22 = *(v1 + *(v6(0) + 20));
  v23 = *v4;
  OUTLINED_FUNCTION_296();
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v8);
  sub_2574695E4(v21, &qword_27F879E10, &qword_257744730);
  if (EnumTagSinglePayload == 1)
  {
    v25 = OUTLINED_FUNCTION_120_1();
    v33[7] = 3;
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    *v0 = v25;
  }

  else
  {
    sub_257487308();
    v26 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v26, v27, v8);
    if (v28)
    {
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v29 = *(v8 + 20);
      if (qword_27F878FF0 != -1)
      {
        OUTLINED_FUNCTION_12_15();
        swift_once();
      }

      *(v14 + v29) = qword_27F87B038;
      v30 = OUTLINED_FUNCTION_188();
      v32 = __swift_getEnumTagSinglePayload(v30, v31, v8);

      if (v32 != 1)
      {
        sub_2574695E4(v2, &qword_27F879E10, &qword_257744730);
      }
    }

    else
    {
      sub_2576FBBA0();
    }

    sub_2576F0F64();
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576F951C()
{
  OUTLINED_FUNCTION_433();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_78();
  v9 = type metadata accessor for Proto_MILSpec_ValueType(v8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *v3;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v10 + 28);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v14 + v16) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);

  v21 = *(v14 + v16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v22 = *(v14 + v16);
  }

  else
  {
    v23 = *(v14 + v16);
    v24 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v24);

    v26 = sub_2574E503C(v25);

    *(v14 + v16) = v26;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v1(v14);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.DictionaryParameters.keyType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.DictionaryParameters.keyType.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t MLProgram.ValueType.DictionaryParameters.valueType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.DictionaryParameters.valueType.getter();
  return OUTLINED_FUNCTION_43();
}

void MLProgram.ValueType.DictionaryParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v0 = sub_257743A84();
  v1 = OUTLINED_FUNCTION_63(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_28();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_126_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  *(v13 + 32) = 0x6570795479656BLL;
  *(v13 + 40) = 0xE700000000000000;
  *(v13 + 72) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.DictionaryParameters.keyType.getter();
  *(v13 + 80) = 0x70795465756C6176;
  *(v13 + 88) = 0xE900000000000065;
  *(v13 + 120) = &type metadata for MLProgram.ValueType;
  MLProgram.ValueType.DictionaryParameters.valueType.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *MEMORY[0x277D84C38];
  v19 = OUTLINED_FUNCTION_100_2();
  v20(v19);
  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F9ACC(uint64_t (*a1)(void))
{
  v3 = a1();
  OUTLINED_FUNCTION_87_4(v3, v4, v5);
  OUTLINED_FUNCTION_61_5();
  v6 = OUTLINED_FUNCTION_205();
  sub_257483A28(v6, v7, v1);
  return v2;
}

uint64_t sub_2576F9B7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t MLProgram.ValueType.StateParameters.wrappedType.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_73_2(a1);
  MLProgram.ValueType.StateParameters.wrappedType.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576F9C30(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;

    a3(&v7);
  }

  else
  {
    v7 = *a1;
    return (a3)(&v7);
  }
}

void MLProgram.ValueType.StateParameters.init(wrappedType:)()
{
  OUTLINED_FUNCTION_433();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for Proto_MILSpec_ValueType(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v14 = *v2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = *(type metadata accessor for Proto_MILSpec_StateType(0) + 20);
  if (qword_27F879030 != -1)
  {
    swift_once();
  }

  *(v4 + v15) = qword_27F87B050;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v10 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v0 + v16) = qword_27F87B038;
  v26 = v14;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);

  v21 = *(v0 + v16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v22 = *(v0 + v16);
  }

  else
  {
    v23 = *(v0 + v16);
    v24 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v24);
    OUTLINED_FUNCTION_118_2();

    sub_2574E503C(v25);
    OUTLINED_FUNCTION_118_2();

    *(v0 + v16) = &v26;
  }

  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  sub_2574DEA80();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_2576F9F0C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v2, v3);
  OUTLINED_FUNCTION_85_5();

  return sub_2577435F4();
}

uint64_t sub_2576F9FC4(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v2, v3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576FA098(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  v5 = OUTLINED_FUNCTION_176();
  sub_2576FA2D0(v5, v6);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t MLProgram.ValueType.StateParameters.debugDescription.getter()
{
  v0 = sub_2576F4F60();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

uint64_t sub_2576FA1C0()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_2576FA218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576FA2D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576FA318(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC274(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2576FA3CC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2576FA3CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2576FA780(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2576FA514(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2576FA514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        sub_257487308();
        sub_257487308();
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_257743994();
        sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
        result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          sub_25765C4AC(v23, v36);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_25765C4AC(v26, v20);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
      result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2576FA780(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v126 = *(v134 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v133 = &v114 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = (&v114 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v114 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v130 = (&v114 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = (&v114 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v118 = (&v114 - v21);
  MEMORY[0x28223BE20](v20);
  v117 = (&v114 - v22);
  v128 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_112:
    v26 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v25 + 16);
      for (i = *(v25 + 16); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = (v25 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = v110[1];
        v112 = v132;
        sub_2576FB128(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v26);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        v108[1] = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        memmove(v110, v110 + 2, 16 * v113);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v25 = sub_2576FB678(v25);
    goto LABEL_114;
  }

  v114 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v26 = &unk_257775F30;
  v123 = v15;
  while (1)
  {
    v27 = v24;
    v28 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v124 = v23;
      v29 = *v128;
      v30 = *(v126 + 72);
      v131 = v24 + 1;
      v31 = v117;
      sub_257487308();
      v127 = v30;
      v32 = v118;
      sub_257487308();
      if (*v31 == *v32 && v31[1] == v32[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v25;
      v26 = &unk_257775F30;
      sub_2574695E4(v118, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v117, &qword_27F879D18, &unk_257775F30);
      v116 = v27;
      v34 = v27 + 2;
      v35 = v127 * (v27 + 2);
      v36 = v29 + v35;
      v37 = v131;
      v38 = v127 * v131;
      v39 = v29 + v127 * v131;
      do
      {
        v28 = v34;
        v25 = v37;
        v40 = v38;
        v41 = v35;
        if (v34 >= v124)
        {
          break;
        }

        v131 = v34;
        v42 = v129;
        sub_257487308();
        v43 = v130;
        sub_257487308();
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v28 = v131;
        sub_2574695E4(v130, &qword_27F879D18, &unk_257775F30);
        v26 = &unk_257775F30;
        sub_2574695E4(v129, &qword_27F879D18, &unk_257775F30);
        v34 = v28 + 1;
        v36 += v127;
        v39 += v127;
        v37 = v25 + 1;
        v38 = v40 + v127;
        v35 = v41 + v127;
        v15 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v28 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v28)
        {
          v25 = v115;
          v27 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v25)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v26 = v48 + v47;
            sub_25765C4AC(v48 + v47, v122);
            v49 = v47 < v40 || v26 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_25765C4AC(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v25--);
      }

      v25 = v115;
      v27 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v28 < v51)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_142;
      }

      if (v28 - v27 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v28 < v27)
    {
      goto LABEL_141;
    }

    v131 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v25 + 16);
      sub_257469A28();
      v25 = v104;
    }

    v62 = *(v25 + 16);
    v63 = v62 + 1;
    v24 = v131;
    if (v62 >= *(v25 + 24) >> 1)
    {
      sub_257469A28();
      v24 = v131;
      v25 = v105;
    }

    *(v25 + 16) = v63;
    v64 = v25 + 32;
    v65 = (v25 + 32 + 16 * v62);
    *v65 = v27;
    v65[1] = v24;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v26 = v63 - 1;
        v66 = (v64 + 16 * (v63 - 1));
        v67 = (v25 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v26 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v26 - 1 >= v63)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v25;
        v98 = (v64 + 16 * (v26 - 1));
        v99 = *v98;
        v100 = (v64 + 16 * v26);
        v25 = v100[1];
        v101 = v132;
        sub_2576FB128(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v25, v127);
        v132 = v101;
        if (v101)
        {
          goto LABEL_110;
        }

        if (v25 < v99)
        {
          goto LABEL_123;
        }

        v102 = *(v97 + 16);
        if (v26 > v102)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        v98[1] = v25;
        if (v26 >= v102)
        {
          goto LABEL_125;
        }

        v63 = v102 - 1;
        memmove((v64 + 16 * v26), v100 + 2, 16 * (v102 - 1 - v26));
        v25 = v97;
        *(v97 + 16) = v102 - 1;
        v24 = v131;
        if (v102 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = v64 + 16 * v63;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v26 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v128[1];
    v26 = &unk_257775F30;
    if (v24 >= v23)
    {
      goto LABEL_112;
    }
  }

  v52 = v27 + v114;
  if (__OFADD__(v27, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v27)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v28 == v52)
  {
    goto LABEL_59;
  }

  v115 = v25;
  v116 = v27;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v28 - 1);
  v26 = -v54;
  v56 = v27 - v28;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v28 * v54;
LABEL_46:
  v131 = v28;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_257487308();
    v58 = v135;
    sub_257487308();
    if (*v15 == *v58 && v15[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
LABEL_57:
      v28 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v28 = v121;
        v25 = v115;
        v27 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_25765C4AC(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_25765C4AC(v61, v55);
    v55 += v26;
    v57 += v26;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_2576FB128(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = (&v55 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v55 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v67 = a1;
  v66 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_257483500(a1, v21 / v20, a4);
    v29 = v28;
    v63 = a4 + v26 * v20;
    v65 = v63;
    v61 = a3;
    while (1)
    {
      if (a4 >= v63 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_257487308();
      sub_257487308();
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
      }

      else
      {
        v33 = sub_257743994();
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v61;
          }

          else
          {
            a3 = v61;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v66 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v61;
LABEL_37:
      a1 += v20;
      v67 = a1;
    }
  }

  v38 = v23;
  sub_257483500(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v60 = -v20;
  v57 = a4;
LABEL_42:
  v43 = a3;
  v44 = v42;
  v61 = v39;
  v58 = v42;
  v59 = v39 + v41;
  while (1)
  {
    if (v40 <= a4)
    {
      v67 = v39;
      v65 = v44;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v56 = v44;
    v45 = v60;
    v46 = v40 + v60;
    v47 = v62;
    sub_257487308();
    v48 = v63;
    sub_257487308();
    if (*v47 == *v48 && v47[1] == v48[1])
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_257743994();
    }

    a3 = v43 + v45;
    sub_2574695E4(v63, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v62, &qword_27F879D18, &unk_257775F30);
    if (v50)
    {
      v52 = v43 < v61 || a3 >= v61;
      a4 = v57;
      if (v52)
      {
        v53 = v59;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v53;
        v42 = v56;
        v41 = v60;
      }

      else
      {
        v42 = v56;
        v54 = v59;
        v41 = v60;
        v39 = v59;
        if (v43 != v61)
        {
          v42 = v56;
          swift_arrayInitWithTakeBackToFront();
          v39 = v54;
        }
      }

      goto LABEL_42;
    }

    v51 = v43 < v40 || a3 >= v40;
    a4 = v57;
    if (v51)
    {
      swift_arrayInitWithTakeFrontToBack();
      v43 = a3;
      v40 = v46;
      v44 = v46;
      v39 = v61;
      v42 = v58;
    }

    else
    {
      v44 = v46;
      v22 = v40 == v43;
      v43 = a3;
      v40 = v46;
      v39 = v61;
      v42 = v58;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v61;
        v43 = a3;
        v40 = v46;
        v44 = v46;
      }
    }
  }

  v67 = v39;
  v65 = v42;
LABEL_70:
  sub_2576FB6B8(&v67, &v66, &v65, &qword_27F879D18, &unk_257775F30);
  return 1;
}

uint64_t sub_2576FB6B8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_20;
  }

  v13 = v6 + (v7 - v6) / v11 * v11;
  if (v5 < v6 || v5 >= v13)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2576FB794(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2576FB7C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B18, &qword_257775B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2576FB8C0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLProgram.Value();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v9 = result;
  v10 = 0;
  v39 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = result + 64;
  v34 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v39 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v35;
      v26 = *(v39 + 56) + *(v36 + 72) * v21;
      sub_2576FA1C0();
      sub_2576FA1C0();

      sub_2576FA218(v25, type metadata accessor for MLProgram.Value);
      v9 = v34;
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      v28 = v9[7] + *(v38 + 72) * v21;
      result = sub_2576FBBA0();
      v29 = v9[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v9[2] = v31;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576FBBA0()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

unint64_t sub_2576FBBFC()
{
  result = qword_27F8815A8;
  if (!qword_27F8815A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8815A8);
  }

  return result;
}

uint64_t sub_2576FBF74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2576FBFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2576FC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_15_25(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x2064657070617257;
  return result;
}

__n128 *OUTLINED_FUNCTION_45_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869908;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return sub_257743AA4();
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  __swift_getEnumTagSinglePayload(v1, 1, *(v0 + 640));

  return sub_2574695E4(v1, v2, v3);
}

void OUTLINED_FUNCTION_80_2()
{
  *(v1 - 232) = 0x3C726F736E6554;
  *(v1 - 224) = 0xE700000000000000;
  v3 = *v0;
  v4 = *(v0 + 8);

  sub_25773A738((v1 - 96));
}

__n128 *OUTLINED_FUNCTION_83_4(__n128 *result, __n128 a2)
{
  result[3] = a2;
  result[4].n128_u8[0] = 0;
  return result;
}

void OUTLINED_FUNCTION_87_4(uint64_t a1, uint64_t a2, char a3)
{

  sub_2576A66C8(0, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_95_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  v3 = *(*(v2 + 504) + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_96_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  v3 = *(*(v2 + 528) + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_4()
{
  v2 = *(v0 + 648);

  return sub_2576FA1C0();
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_2576FBBA0();
}

uint64_t OUTLINED_FUNCTION_111_2(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void OUTLINED_FUNCTION_113_1()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_120_1()
{
  type metadata accessor for MLProgram.ValueType.TensorParameters(0);

  return swift_allocBox();
}

uint64_t OUTLINED_FUNCTION_123_1()
{
  *(v0 + 528) = v1 & 0x1FFFFFFFFFFFFFFFLL;

  return swift_projectBox();
}

void *OUTLINED_FUNCTION_125_1()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_126_1()
{

  return sub_2576FA1C0();
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576FC990()
{
  v1 = v0;
  v28 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  *(inited + 32) = 0x676E697070614DLL;
  *(inited + 40) = 0xE700000000000000;
  v3 = CategoricalMappingConfiguration.mappingDictionary.getter(&v24);
  v26 = v24;
  v27 = v25;
  v11 = sub_2576FD53C(v3, v4, v5, v6, v7, v8, v9, v10);
  v13 = v12;

  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 64) = 2;
  v14 = v1 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  v15 = *(v14 + 16);
  if (v15 != 255)
  {
    v16 = *v14;
    if (v15)
    {
      v24 = *v14;
      v17 = sub_257743674();
      v19 = v18;
    }

    else
    {
      v20 = *(v14 + 8);
      v24 = 34;
      v25 = 0xE100000000000000;
      sub_2574670D4(v16, v20, v15);
      MEMORY[0x259C64E90](v16, v20);
      MEMORY[0x259C64E90](34, 0xE100000000000000);
      sub_25746706C(v16, v20, v15);
      v17 = v24;
      v19 = v25;
    }

    sub_257469AE0();
    inited = v21;
    *(v21 + 16) = 2;
    strcpy((v21 + 72), "Default Value");
    *(v21 + 86) = -4864;
    *(v21 + 88) = v17;
    *(v21 + 96) = v19;
    *(v21 + 104) = 0;
  }

  result = sub_2576AACFC(inited);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CategoricalMappingConfiguration.mappingDictionary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Proto_Int64ToStringMap(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Proto_StringToInt64Map(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v46 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v46 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &v46 - v34;
  sub_2576FCE44(v2, &v46 - v34);
  if (__swift_getEnumTagSinglePayload(v35, 1, v18) == 1)
  {
    result = sub_2577435D4();
    v37 = result;
    v38 = 0;
  }

  else
  {
    sub_2576FDC1C(v35, v29);
    sub_2576FDD30(v29, v27);
    sub_2576FDD30(v27, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v38 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2576FDC1C(v24, v10);
      sub_25772EE64();
      v37 = v40;
      OUTLINED_FUNCTION_0_94();
      sub_2574AD524(v27, v41);
      v43 = v10;
      v44 = type metadata accessor for Proto_Int64ToStringMap;
    }

    else
    {
      sub_2576FDC1C(v24, v17);
      v37 = sub_25772ED48();
      OUTLINED_FUNCTION_0_94();
      sub_2574AD524(v27, v42);
      v43 = v17;
      v44 = type metadata accessor for Proto_StringToInt64Map;
    }

    sub_2574AD524(v43, v44);
    OUTLINED_FUNCTION_0_94();
    result = sub_2574AD524(v29, v45);
  }

  *a1 = v37;
  *(a1 + 8) = v38;
  return result;
}

uint64_t sub_2576FCE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576FCEB4@<X0>(uint64_t a1@<X8>)
{
  result = CategoricalMappingConfiguration.mappingDictionary.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2576FCEF8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return CategoricalMappingConfiguration.mappingDictionary.setter(&v3);
}

uint64_t CategoricalMappingConfiguration.mappingDictionary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  v8 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if (a1)
  {
    sub_25772EA84(v9, v7);
  }

  else
  {
    sub_25772E910(v9, v7);
  }

  v10 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = OUTLINED_FUNCTION_205();
  return sub_2576FDC74(v14, v15);
}

void (*CategoricalMappingConfiguration.mappingDictionary.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CategoricalMappingConfiguration.mappingDictionary.getter(v3);
  return sub_2576FD0C8;
}

void sub_2576FD0C8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 8);

  if (a2)
  {
    v6 = v3[3];
    if (v5)
    {
      sub_25772EA84(v4, v6);
    }

    else
    {
      sub_25772E910(v4, v6);
    }

    v9 = v3[3];
    v8 = v3[4];
    v10 = v3[2];
    v11 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    sub_2576FDC74(v9, v10);
    v15 = *v3;
  }

  else
  {
    v7 = v3[4];
    if (v5)
    {
      sub_25772EA84(v4, v7);
    }

    else
    {
      sub_25772E910(v4, v7);
    }

    v9 = v3[3];
    v8 = v3[4];
    v16 = v3[2];
    v17 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(0);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    sub_2576FDC74(v8, v16);
  }

  free(v8);
  free(v9);

  free(v3);
}

uint64_t CategoricalMappingConfiguration.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Proto_CategoricalMapping(0);
  v4 = v1 + *(result + 20);
  v5 = *(v4 + 16);
  if (v5 == 255)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v8 = -1;
  }

  else
  {
    v6 = *v4;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v4 + 8);
      result = sub_25745B0A8(*v4, v7, 0);
    }

    *a1 = v6;
    *(a1 + 8) = v7;
    v8 = v5 & 1;
  }

  *(a1 + 16) = v8;
  return result;
}

double sub_2576FD290@<D0>(uint64_t a1@<X8>)
{
  CategoricalMappingConfiguration.defaultValue.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2576FD2D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_2574670D4(v4[0], v1, v2);
  return CategoricalMappingConfiguration.defaultValue.setter(v4);
}

uint64_t CategoricalMappingConfiguration.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = *a1;
  }

  if (v3 == 255)
  {
    v6 = -1;
  }

  else
  {
    v6 = v3 & 1;
  }

  v7 = v1 + *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  result = sub_25746706C(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = v5;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6;
  return result;
}

void (*CategoricalMappingConfiguration.defaultValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(type metadata accessor for Proto_CategoricalMapping(0) + 20);
  *(v3 + 5) = v4;
  v5 = (v1 + v4);
  v6 = *v5;
  v3[4] = *v5;
  v7 = v5[1];
  v3[5] = v7;
  v8 = *(v5 + 16);
  *(v3 + 17) = v8;
  if (v8 == 255)
  {
    *v3 = 0;
    v3[1] = 0;
    v9 = -1;
  }

  else
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_263();
      sub_25745B0A8(v10, v11, 0);
    }

    *v3 = v6;
    v3[1] = v7;
    v9 = v8 & 1;
  }

  *(v3 + 16) = v9;
  return sub_2576FD448;
}

void sub_2576FD448(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  if (a2)
  {
    if (v5 == 255)
    {
      v4 = 0;
      v3 = 0;
    }

    else if (v5)
    {
      v3 = 0;
      LOBYTE(v5) = 1;
    }

    else
    {
      v12 = (*a1)[1];

      LOBYTE(v5) = 0;
    }

    v13 = v2[3] + *(v2 + 5);
    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v13 = v4;
    *(v13 + 8) = v3;
    *(v13 + 16) = v5;
    sub_25746706C(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    v6 = *(v2 + 17);
    v7 = v2[4];
    v8 = v2[5];
    if (v5 == 255)
    {
      sub_25746706C(v7, v8, v6);
      v4 = 0;
      v10 = 0;
      v9 = -1;
    }

    else
    {
      sub_25746706C(v7, v8, v6);
      v9 = v5 & 1;
      if (v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v3;
      }
    }

    v11 = v2[3] + *(v2 + 5);
    *v11 = v4;
    *(v11 + 8) = v10;
    *(v11 + 16) = v9;
  }

  free(v2);
}

uint64_t sub_2576FD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {
    sub_2576A8B7C(v9, a2, a3, a4, a5, a6, a7, a8, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, vars0, vars8);
    v38 = v24;
    sub_2576FE2E8(&v38);
    v25 = v38;
    v26 = *(v38 + 16);
    if (v26)
    {
      v38 = MEMORY[0x277D84F90];
      sub_257484060();
      v13 = v38;
      v27 = (v25 + 48);
      do
      {
        v28 = *(v27 - 2);
        v29 = *(v27 - 1);
        v40 = *v27;

        v30 = sub_257743674();
        v32 = v31;
        v38 = v13;
        v33 = *(v13 + 16);
        if (v33 >= *(v13 + 24) >> 1)
        {
          sub_257484060();
          v13 = v38;
        }

        v27 += 3;
        *(v13 + 16) = v33 + 1;
        v34 = v13 + 40 * v33;
        *(v34 + 32) = v28;
        *(v34 + 40) = v29;
        *(v34 + 48) = v30;
        *(v34 + 56) = v32;
        *(v34 + 64) = 0;
        --v26;
      }

      while (v26);
      goto LABEL_13;
    }

LABEL_14:

    v13 = MEMORY[0x277D84F90];
    return sub_2576AACFC(v13);
  }

  sub_2576A8B50(v9, a2, a3, a4, a5, a6, a7, a8, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, vars0, vars8);
  v38 = v10;
  sub_2576FE244(&v38);
  v11 = v38;
  v12 = *(v38 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

  v40 = MEMORY[0x277D84F90];
  sub_257484060();
  v13 = v40;
  v14 = (v11 + 48);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v38 = *(v14 - 2);

    v17 = sub_257743974();
    v19 = v18;
    v38 = 34;
    v39 = 0xE100000000000000;
    MEMORY[0x259C64E90](v15, v16);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    v21 = v38;
    v20 = v39;
    v40 = v13;
    v22 = *(v13 + 16);
    if (v22 >= *(v13 + 24) >> 1)
    {
      sub_257484060();
      v13 = v40;
    }

    *(v13 + 16) = v22 + 1;
    v23 = v13 + 40 * v22;
    *(v23 + 32) = v17;
    *(v23 + 40) = v19;
    *(v23 + 48) = v21;
    *(v23 + 56) = v20;
    *(v23 + 64) = 0;
    v14 += 3;
    --v12;
  }

  while (v12);
LABEL_13:

  return sub_2576AACFC(v13);
}

uint64_t CategoricalMappingConfiguration.init(mapping:defaultValue:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(v11);
  v13 = OUTLINED_FUNCTION_11_40();
  v14 = a3 + *(v13 + 20);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = a3 + *(v13 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  sub_25772E910(v16, v3);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  result = sub_2576FDC74(v3, a3);
  if ((a2 & 1) == 0)
  {
    *v14 = a1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
  }

  return result;
}

uint64_t CategoricalMappingConfiguration.init(mapping:defaultValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for Proto_CategoricalMapping.OneOf_MappingType(v11);
  v13 = OUTLINED_FUNCTION_11_40();
  v14 = a3 + *(v13 + 20);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = a3 + *(v13 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  sub_25772EA84(v16, v3);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  result = sub_2576FDC74(v3, a3);
  if (a2)
  {
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
  }

  return result;
}

uint64_t CategoricalMappingConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_64();
  v12 = type metadata accessor for CategoricalMappingConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2576FDD30(v0, v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000257781A30;
  *(v18 + 72) = &type metadata for CategoricalMappingConfiguration.MappingDictionary;
  CategoricalMappingConfiguration.mappingDictionary.getter(v18 + 48);
  strcpy((v18 + 80), "defaultValue");
  *(v18 + 93) = 0;
  *(v18 + 94) = -5120;
  *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881628, &qword_257775BD8);
  CategoricalMappingConfiguration.defaultValue.getter(v18 + 96);
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v19);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_2576FDC1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_2576FDC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A4F8, &unk_257746A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CategoricalMappingConfiguration()
{
  result = qword_281537630;
  if (!qword_281537630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576FDD30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t static CategoricalMappingConfiguration.MappingDictionary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (a2[1])
    {
      v5 = *a2;

      sub_257476B20();
LABEL_7:
      v7 = v6;

      return v7 & 1;
    }
  }

  else if ((a2[1] & 1) == 0)
  {
    v8 = *a2;

    v6 = sub_257487370(v9, v3);
    goto LABEL_7;
  }

  v7 = 0;
  return v7 & 1;
}

BOOL static CategoricalMappingConfiguration.DefaultValue.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v7 = OUTLINED_FUNCTION_205();
      sub_257466FC8(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_263();
      sub_257466FC8(v9, v10, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {
    v12 = *(a1 + 8);

LABEL_6:
    v13 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v13, v14, v6);
    v15 = OUTLINED_FUNCTION_205();
    sub_257466FC8(v15, v16, v4);
    v17 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v17, v18, v6);
    return 0;
  }

  v19 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_25745B0A8(v19, v3, 0);
    v32 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v38, v39, v40);
    return 1;
  }

  else
  {
    v21 = sub_257743994();
    v22 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v22, v23, 0);
    v24 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v30, v31, 0);
    return v21 & 1;
  }
}

uint64_t CategoricalMappingConfiguration.DefaultValue.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x259C651F0](1);
    return MEMORY[0x259C651F0](v1);
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x259C651F0](0);

    return sub_257743694();
  }
}

uint64_t CategoricalMappingConfiguration.DefaultValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257743A14();
  if (v3)
  {
    MEMORY[0x259C651F0](1);
    MEMORY[0x259C651F0](v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257743694();
  }

  return sub_257743A64();
}

uint64_t sub_2576FE04C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257743A14();
  if (v3)
  {
    MEMORY[0x259C651F0](1);
    MEMORY[0x259C651F0](v1);
  }

  else
  {
    MEMORY[0x259C651F0](0);
    sub_257743694();
  }

  return sub_257743A64();
}

unint64_t sub_2576FE0D0()
{
  result = qword_27F87A510;
  if (!qword_27F87A510)
  {
    type metadata accessor for Proto_CategoricalMapping(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A510);
  }

  return result;
}

unint64_t sub_2576FE12C()
{
  result = qword_27F881630;
  if (!qword_27F881630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881630);
  }

  return result;
}

uint64_t sub_2576FE1AC()
{
  result = type metadata accessor for Proto_CategoricalMapping(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576FE244(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC244(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576FE38C(v6, &qword_27F87A020, &unk_257775E10, sub_2576FE604, sub_2576FE4A8);
  *a1 = v2;
  return result;
}

uint64_t sub_2576FE2E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC25C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2576FE38C(v6, &qword_27F87A010, &qword_257744948, sub_2576FEB14, sub_2576FE52C);
  *a1 = v2;
  return result;
}

uint64_t sub_2576FE38C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_257743964();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_257743764();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2576FE4A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2576FE52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2576FE604(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_257469A28();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2576FF19C((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2576FF064(&v90, *a1, a3);
LABEL_89:
}

void sub_2576FEB14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_257743994();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_257743994()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_257469A28();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_257683374((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2576830B8(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_2576FF064(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2576FB678(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2576FF19C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2576FF19C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2574834A8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_2574834A8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);

  return type metadata accessor for Proto_CategoricalMapping(0);
}

BOOL sub_2576FF394(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

BOOL sub_2576FF418(void (*a1)(void))
{
  a1();

  v3 = *((a1)(v2) + 16);

  return v3 == 0;
}

uint64_t sub_2576FF45C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for Proto_QuantizationParams(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = (v15 - v14);
  v17 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  sub_257701E14();
  v18 = *(*a1 + 16);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v19 = OUTLINED_FUNCTION_26_18();
    *(v19 + 16) = xmmword_2577442B0;
    *(v19 + 32) = v18;
LABEL_18:
    result = sub_257701E6C(a1, type metadata accessor for Proto_WeightParams);
    *a2 = v19;
    return result;
  }

  if (!sub_2576FF394(*(a1 + 8), *(a1 + 16)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v19 = OUTLINED_FUNCTION_26_18();
    *(v19 + 16) = xmmword_2577442B0;
    v20 = MEMORY[0x259C648F0](*(a1 + 8), *(a1 + 16)) / 2;
LABEL_17:
    *(v19 + 32) = v20;
    goto LABEL_18;
  }

  if (sub_2576FF394(*(a1 + 24), *(a1 + 32)))
  {
    if (sub_2576FF394(*(a1 + 40), *(a1 + 48)))
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
      v19 = OUTLINED_FUNCTION_26_18();
      *(v19 + 16) = xmmword_2577442B0;
      *(v19 + 32) = MEMORY[0x259C648F0](*(a1 + 40), *(a1 + 48));
    }

    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v19 = OUTLINED_FUNCTION_26_18();
  *(v19 + 16) = xmmword_2577442B0;
  result = MEMORY[0x259C648F0](*(a1 + 24), *(a1 + 32));
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = result;
  v23 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  sub_257487308();
  v24 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v24, v25, v10);
  if (v26)
  {
    *v16 = 0;
    v27 = *(v10 + 20);
    type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    v32 = v16 + *(v10 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v33 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v33, v34, v10);
    if (!v26)
    {
      sub_2574695E4(v9, &qword_27F879C90, &unk_2577530D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
  }

  v35 = *v16;
  result = sub_257701E6C(v16, type metadata accessor for Proto_QuantizationParams);
  if (v35 < 0)
  {
    goto LABEL_20;
  }

  if (v35)
  {
    v20 = 8 * v22 / v35;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2576FF77C(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.WeightParameters.shape.setter(v2);
}

uint64_t NeuralNetwork.WeightParameters.shape.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.shape.modify(void *a1)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return OUTLINED_FUNCTION_44_1();
}

uint64_t NeuralNetwork.WeightParameters.data.getter()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  result = OUTLINED_FUNCTION_12_42(v0);
  v3 = *(*v2 + 16);
  if (!v3)
  {
    v8 = v2[1];
    v9 = v2[2];
    switch(v9 >> 62)
    {
      case 1uLL:
        v11 = v8;
        v12 = v8 >> 32;
        goto LABEL_13;
      case 2uLL:
        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
LABEL_13:
        if (v11 == v12)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      case 3uLL:
        goto LABEL_14;
      default:
        if ((v9 & 0xFF000000000000) != 0)
        {
LABEL_16:
          v15 = OUTLINED_FUNCTION_205();
          sub_257486740(v15, v16);
        }

        else
        {
LABEL_14:
          v13 = v2[3];
          v14 = v2[4];
          switch(v14 >> 62)
          {
            case 1uLL:
              v17 = v13;
              v18 = v13 >> 32;
              goto LABEL_20;
            case 2uLL:
              v17 = *(v13 + 16);
              v18 = *(v13 + 24);
LABEL_20:
              if (v17 == v18)
              {
                goto LABEL_21;
              }

              goto LABEL_16;
            case 3uLL:
              goto LABEL_21;
            default:
              if ((v14 & 0xFF000000000000) != 0)
              {
                goto LABEL_16;
              }

LABEL_21:
              v19 = v2[5];
              v20 = v2[6];
              switch(v20 >> 62)
              {
                case 1uLL:
                  v23 = v19;
                  v24 = v19 >> 32;
                  goto LABEL_26;
                case 2uLL:
                  v23 = *(v19 + 16);
                  v24 = *(v19 + 24);
LABEL_26:
                  if (v23 == v24)
                  {
                    return OUTLINED_FUNCTION_205();
                  }

                  goto LABEL_23;
                case 3uLL:
                  return OUTLINED_FUNCTION_205();
                default:
                  if ((v20 & 0xFF000000000000) != 0)
                  {
LABEL_23:
                    v21 = OUTLINED_FUNCTION_263();
                    sub_257486740(v21, v22);
                  }

                  break;
              }

              break;
          }
        }

        break;
    }

    return OUTLINED_FUNCTION_205();
  }

  if (!(v3 >> 61))
  {
    v4 = 4 * v3;
    if ((4 * v3) < 15)
    {
      sub_2577430A4();
    }

    else
    {
      v5 = sub_257742F94();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_257742F54();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_2577430E4();
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        *(v10 + 24) = v4;
      }
    }

    return OUTLINED_FUNCTION_205();
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.WeightParameters.floatValues.getter()
{
  v1 = *(v0 + *(type metadata accessor for NeuralNetwork.WeightParameters() + 20));
}

uint64_t NeuralNetwork.WeightParameters.float16Data.getter()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_12_42(v0);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_205();
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_205();
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.getter()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_12_42(v0);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_205();
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_205();
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.getter()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_12_42(v0);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = OUTLINED_FUNCTION_205();
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576FFADC(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.WeightParameters.floatValues.setter(v2);
}

uint64_t NeuralNetwork.WeightParameters.floatValues.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.floatValues.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return OUTLINED_FUNCTION_44_1();
}

uint64_t NeuralNetwork.WeightParameters.float16Data.setter()
{
  v3 = OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39(v3);
  result = sub_257486798(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.float16Data.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2576FFC6C(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_52(a1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v7, v8);
    v9 = OUTLINED_FUNCTION_263();
    sub_257486798(v9, v10);
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
    v11 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v11, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v14, v15);
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.float16Values.getter()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_12_42(v0);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  switch(v2 >> 62)
  {
    case 1uLL:
      v6 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v7 = v3;
      goto LABEL_7;
    case 2uLL:
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
LABEL_7:
      v4 = sub_257701BC8(v7, v6);
      break;
    case 3uLL:
      break;
    default:
      __src = v3;
      v11 = v2;
      v12 = BYTE2(v2);
      v13 = BYTE3(v2);
      v14 = BYTE4(v2);
      v5 = (v2 >> 49) & 0x7F;
      v15 = BYTE5(v2);
      if (v5)
      {
        v4 = sub_257701B00((v2 >> 49) & 0x7F, 0);
        memcpy((v4 + 32), &__src, 2 * v5);
      }

      break;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2576FFE54(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.WeightParameters.float16Values.setter(v2);
}

uint64_t NeuralNetwork.WeightParameters.float16Values.setter(uint64_t result)
{
  v2 = *(result + 16);
  if (v2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_2576FFFC4(result + 32, result + 32 + 2 * v2);
    v5 = v4;

    v6 = v1 + *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
    result = sub_257486798(*(v6 + 8), *(v6 + 16));
    *(v6 + 8) = v3;
    *(v6 + 16) = v5;
  }

  return result;
}

void *sub_2576FFEF4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 1) >= 3))
  {
    v7 = v5 / 2;
    if (v5 <= 1)
    {
      v8 = 2 * v7;
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881660, &unk_257775F20);
      v8 = 2 * v7;
      v6 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 2);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2576FFFC4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2577430A4();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x259C64880]();
    }

    else
    {
      v6 = MEMORY[0x259C648A0]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t NeuralNetwork.WeightParameters.float16Values.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.WeightParameters.float16Values.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577000C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.WeightParameters.float16Values.setter(*a1);
  }

  v4 = *a1;

  NeuralNetwork.WeightParameters.float16Values.setter(v5);
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.setter()
{
  v3 = OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39(v3);
  result = sub_257486798(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.quantizedData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577001E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_52(a1);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v7, v8);
    v9 = OUTLINED_FUNCTION_263();
    sub_257486798(v9, v10);
    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
    v11 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v11, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v14, v15);
    *(v3 + 24) = v2;
    *(v3 + 32) = v1;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.setter()
{
  v3 = OUTLINED_FUNCTION_23_28();
  OUTLINED_FUNCTION_18_39(v3);
  result = sub_257486798(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.int8QuantizedData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_25_25(a1);
  OUTLINED_FUNCTION_17_28(v2);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *v1 = v4;
  v1[1] = v5;
  sub_257486740(v4, v5);
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257700324(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_52(a1);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_44_1();
    sub_257486740(v7, v8);
    v9 = OUTLINED_FUNCTION_263();
    sub_257486798(v9, v10);
    *(v3 + 40) = v2;
    *(v3 + 48) = v1;
    v11 = OUTLINED_FUNCTION_44_1();

    return sub_257486798(v11, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_263();
    result = sub_257486798(v14, v15);
    *(v3 + 40) = v2;
    *(v3 + 48) = v1;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.quantization.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for Proto_QuantizationParams(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = v1 + *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  v19 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  sub_257487308();
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v2);
  sub_2574695E4(v17, &qword_27F879C90, &unk_2577530D0);
  v22 = EnumTagSinglePayload == 1;
  v23 = v37;
  if (!v22)
  {
    sub_257487308();
    v24 = OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_155(v24, v25, v2);
    if (v22)
    {
      *v8 = 0;
      v26 = *(v2 + 20);
      type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      v31 = v8 + *(v2 + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v32 = OUTLINED_FUNCTION_188();
      OUTLINED_FUNCTION_155(v32, v33, v2);
      if (!v22)
      {
        sub_2574695E4(v15, &qword_27F879C90, &unk_2577530D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_95();
      sub_257701C64();
    }

    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
    v20 = 0;
  }

  v34 = type metadata accessor for NeuralNetwork.Quantization(0);
  return __swift_storeEnumTagSinglePayload(v23, v20, 1, v34);
}

uint64_t sub_2577005C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v5 - v2;
  sub_257487308();
  return NeuralNetwork.WeightParameters.quantization.setter(v3);
}

uint64_t NeuralNetwork.WeightParameters.quantization.setter(uint64_t a1)
{
  v3 = type metadata accessor for Proto_QuantizationParams(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = type metadata accessor for NeuralNetwork.Quantization(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v11, v12, v13);
  if (v14)
  {
    sub_2574695E4(a1, &qword_27F881638, &qword_257775E68);
    v15 = type metadata accessor for NeuralNetwork.WeightParameters();
    OUTLINED_FUNCTION_18_39(v15);
    v16 = type metadata accessor for Proto_WeightParams(0);
    sub_2574695E4(v1 + *(v16 + 40), &qword_27F879C90, &unk_2577530D0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v3);
  }

  else
  {
    OUTLINED_FUNCTION_4_58();
    sub_257701C64();
    sub_257701C64();
    v20 = type metadata accessor for NeuralNetwork.WeightParameters();
    OUTLINED_FUNCTION_18_39(v20);
    v21 = *(type metadata accessor for Proto_WeightParams(0) + 40);
    sub_2574695E4(v1 + v21, &qword_27F879C90, &unk_2577530D0);
    sub_257701C64();
    return __swift_storeEnumTagSinglePayload(v1 + v21, 0, 1, v3);
  }
}

void (*NeuralNetwork.WeightParameters.quantization.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for NeuralNetwork.Quantization(0);
  v3[1] = v4;
  v30 = v4;
  OUTLINED_FUNCTION_4(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for Proto_QuantizationParams(0);
  v3[3] = v6;
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  v3[4] = OUTLINED_FUNCTION_32_13();
  v29 = OUTLINED_FUNCTION_32_13();
  v3[5] = v29;
  v9 = OUTLINED_FUNCTION_19_29();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_32_13();
  v3[6] = v14;
  v15 = OUTLINED_FUNCTION_32_13();
  v3[7] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  OUTLINED_FUNCTION_13(v16);
  v18 = *(v17 + 64);
  v3[8] = __swift_coroFrameAllocStub(v18);
  v19 = __swift_coroFrameAllocStub(v18);
  v3[9] = v19;
  *(v3 + 20) = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  *(v3 + 21) = *(type metadata accessor for Proto_WeightParams(0) + 40);
  sub_257487308();
  v20 = 1;
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v15, 1, v6);
  sub_2574695E4(v15, &qword_27F879C90, &unk_2577530D0);
  if (v3 != 1)
  {
    sub_257487308();
    OUTLINED_FUNCTION_155(v14, 1, v6);
    if (v21)
    {
      *v29 = 0;
      v22 = *(v6 + 20);
      type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      v27 = v29 + *(v6 + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v14, 1, v6);
      if (!v21)
      {
        sub_2574695E4(v14, &qword_27F879C90, &unk_2577530D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_95();
      sub_257701C64();
    }

    OUTLINED_FUNCTION_0_95();
    sub_257701C64();
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v30);
  return sub_257700AC8;
}

void sub_257700AC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v9 = v2[2];
    v10 = *v2;
    OUTLINED_FUNCTION_263();
    sub_257487308();
    NeuralNetwork.WeightParameters.quantization.setter(v4);
    sub_2574695E4(v3, &qword_27F881638, &qword_257775E68);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((*a1)[9], 1, v2[1]);
    v12 = *(v2 + 20);
    v13 = *(v2 + 21);
    if (EnumTagSinglePayload == 1)
    {
      v14 = *v2 + v12;
      sub_2574695E4(v3, &qword_27F881638, &qword_257775E68);
      sub_2574695E4(v14 + v13, &qword_27F879C90, &unk_2577530D0);
      v15 = 1;
    }

    else
    {
      v16 = v2[4];
      v17 = v2[2];
      v18 = *v2 + v12;
      OUTLINED_FUNCTION_4_58();
      OUTLINED_FUNCTION_263();
      sub_257701C64();
      sub_257701C64();
      sub_2574695E4(v18 + v13, &qword_27F879C90, &unk_2577530D0);
      sub_257701C64();
      v15 = 0;
    }

    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    v9 = v2[2];
    __swift_storeEnumTagSinglePayload(*v2 + *(v2 + 20) + *(v2 + 21), v15, 1, v2[3]);
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);

  free(v2);
}

uint64_t NeuralNetwork.WeightParameters.isUpdatable.getter()
{
  v0 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_12_42(v0);
  return *(v1 + 56);
}

uint64_t NeuralNetwork.WeightParameters.isUpdatable.setter(char a1)
{
  v2 = type metadata accessor for NeuralNetwork.WeightParameters();
  result = OUTLINED_FUNCTION_12_42(v2);
  *(v4 + 56) = a1;
  return result;
}

uint64_t (*NeuralNetwork.WeightParameters.isUpdatable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3 + 56);
  return sub_257700D4C;
}

double NeuralNetwork.WeightParameters.init(_:updatable:)()
{
  v3 = v0 + *(OUTLINED_FUNCTION_31_17() + 20);
  *(v3 + 8) = xmmword_257745740;
  *(v3 + 24) = xmmword_257745740;
  *(v3 + 40) = xmmword_257745740;
  v4 = type metadata accessor for Proto_WeightParams(0);
  v5 = &v3[*(v4 + 36)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(v4 + 40);
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v3 = v1;
  v3[56] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v11 = OUTLINED_FUNCTION_26_18();
  *&result = 1;
  *(v11 + 16) = xmmword_2577442B0;
  *(v11 + 32) = *(v1 + 16);
  *v0 = v11;
  return result;
}

uint64_t NeuralNetwork.WeightParameters.init(_:updatable:)()
{
  v3 = v0 + *(OUTLINED_FUNCTION_31_17() + 20);
  *v3 = MEMORY[0x277D84F90];
  v4 = OUTLINED_FUNCTION_30_17(xmmword_257745740);
  v5 = &v3[*(v4 + 36)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(v4 + 40);
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v12 = *(v1 + 16);
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_2576FFFC4(v1 + 32, v1 + 32 + 2 * v12);
    v15 = v14;
    sub_257486798(*(v3 + 1), *(v3 + 2));
    *(v3 + 1) = v13;
    *(v3 + 2) = v15;
    v3[56] = v2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
    v16 = OUTLINED_FUNCTION_26_18();
    *(v16 + 16) = xmmword_2577442B0;
    v17 = *(v1 + 16);

    *(v16 + 32) = v17;
    *v0 = v16;
  }

  return result;
}

uint64_t NeuralNetwork.WeightParameters.init(quantizedData:updatable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  v9 = MEMORY[0x277D84F90];
  *v8 = MEMORY[0x277D84F90];
  v10 = OUTLINED_FUNCTION_30_17(xmmword_257745740);
  v11 = &v8[*(v10 + 36)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(v10 + 40);
  type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  result = sub_257486798(*(v8 + 3), *(v8 + 4));
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;
  v8[56] = a3;
  *a4 = v9;
  return result;
}

void static NeuralNetwork.WeightParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  if (sub_257487374(*v0, *v1))
  {
    v2 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);

    sub_257598490();
  }
}

uint64_t NeuralNetwork.WeightParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v56 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for NeuralNetwork.WeightParameters();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B48, &qword_257744390);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = xmmword_257775E20;
  v14 = (v0 + *(v9 + 20));
  v15 = *v14;
  *(v13 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D68, &qword_25776F940);
  *(v13 + 48) = v15;

  v16 = NeuralNetwork.WeightParameters.float16Values.getter();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881640, &unk_257775E80);
  *&v60 = v16;
  v17 = OUTLINED_FUNCTION_29_18(xmmword_257775E30);
  sub_25748396C(v17, &v58);
  sub_257469BAC();
  v19 = v18;
  *(v18 + 16) = 2;
  v20 = v58;
  *(v18 + 80) = v57;
  *(v18 + 96) = v20;
  *(v18 + 112) = v59;
  v21 = v14[3];
  v22 = v14[4];
  v23 = OUTLINED_FUNCTION_19_29();
  v25 = sub_2576FF394(v23, v24);
  v26 = MEMORY[0x277CC9318];
  if (!v25)
  {
    v61 = MEMORY[0x277CC9318];
    *&v60 = v21;
    *(&v60 + 1) = v22;
    v27 = OUTLINED_FUNCTION_29_18(xmmword_257775E40);
    sub_25748396C(v27, &v58);
    v28 = OUTLINED_FUNCTION_19_29();
    sub_257486740(v28, v29);
    if (*(v19 + 24) <= 5uLL)
    {
      sub_257469BAC();
      v19 = v52;
    }

    *(v19 + 16) = 3;
    v30 = v58;
    *(v19 + 128) = v57;
    *(v19 + 144) = v30;
    *(v19 + 160) = v59;
  }

  v31 = v14[5];
  v32 = v14[6];
  v33 = OUTLINED_FUNCTION_19_29();
  if (!sub_2576FF394(v33, v34))
  {
    v61 = v26;
    *&v60 = v31;
    *(&v60 + 1) = v32;
    sub_25748396C(&v60, &v58);
    v35 = OUTLINED_FUNCTION_19_29();
    sub_257486740(v35, v36);
    v37 = *(v19 + 16);
    if (v37 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_24_27();
      v19 = v53;
    }

    *(v19 + 16) = v37 + 1;
    OUTLINED_FUNCTION_7_42(v19 + 48 * v37);
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881638, &qword_257775E68);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
  NeuralNetwork.WeightParameters.quantization.getter(boxed_opaque_existential_0);
  v39 = OUTLINED_FUNCTION_29_18(xmmword_257775E50);
  sub_25748396C(v39, &v58);
  v40 = *(v19 + 16);
  v41 = v40 + 1;
  if (v40 >= *(v19 + 24) >> 1)
  {
    OUTLINED_FUNCTION_24_27();
    v19 = v50;
  }

  *(v19 + 16) = v41;
  OUTLINED_FUNCTION_7_42(v19 + 48 * v40);
  v42 = *(v14 + 56);
  v61 = MEMORY[0x277D839B0];
  LOBYTE(v60) = v42;
  v43 = OUTLINED_FUNCTION_29_18(xmmword_257744350);
  sub_25748396C(v43, &v58);
  v44 = v40 + 2;
  if (v44 > *(v19 + 24) >> 1)
  {
    sub_257469BAC();
    v19 = v51;
  }

  *(v19 + 16) = v44;
  OUTLINED_FUNCTION_7_42(v19 + 48 * v41);
  sub_257701E14();
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  (*(v54 + 104))(v56, *MEMORY[0x277D84C38], v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t sub_2577014A8()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B20, &unk_2577440E0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 8);
  return v0;
}

uint64_t sub_257701514()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B08, &qword_2577440C8);
  v1 = OUTLINED_FUNCTION_22_25();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_6_54(v2);
  return v0;
}

uint64_t sub_2577015A0()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_22_25();
  OUTLINED_FUNCTION_14_28(v5);
  OUTLINED_FUNCTION_6_54(v6);
  return v0;
}

uint64_t sub_2577015F0()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A000, &qword_257775F80);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 16);
  return v0;
}

uint64_t sub_257701698()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_22_25();
  OUTLINED_FUNCTION_14_28(v5);
  OUTLINED_FUNCTION_6_54(v6);
  return v0;
}

uint64_t sub_25770170C()
{
  OUTLINED_FUNCTION_15_26();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A030, &qword_257744968);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_9_38(v2 / 32);
  return v0;
}

size_t sub_2577017C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(a1, a2, a3, a4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      OUTLINED_FUNCTION_6_54(result - v11);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_257701A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_16_26(a1, a2, a3, a4);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_9_38((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_257701B00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881660, &unk_257775F20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 2);
  return v4;
}

uint64_t type metadata accessor for NeuralNetwork.WeightParameters()
{
  result = qword_27F881648;
  if (!qword_27F881648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257701BC8(uint64_t a1, uint64_t a2)
{
  result = sub_257742F64();
  v6 = result;
  if (result)
  {
    result = sub_257742F84();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_257742F74();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_2576FFEF4(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

uint64_t sub_257701C64()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

unint64_t sub_257701CC0()
{
  result = qword_27F87E2D0;
  if (!qword_27F87E2D0)
  {
    type metadata accessor for Proto_WeightParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E2D0);
  }

  return result;
}

void sub_257701D40()
{
  sub_257701DC4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Proto_WeightParams(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257701DC4()
{
  if (!qword_27F881658)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F881658);
    }
  }
}

uint64_t sub_257701E14()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_257701E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *OUTLINED_FUNCTION_5_52(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2] + *(result + 6);
  v3 = *result;
  return result;
}

__n128 OUTLINED_FUNCTION_7_42@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 160);
  v3 = *(v1 - 128);
  *(a1 + 48) = *(v1 - 144);
  *(a1 + 64) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_28()
{

  return type metadata accessor for NeuralNetwork.WeightParameters();
}

void OUTLINED_FUNCTION_24_27()
{

  sub_257469BAC();
}

uint64_t OUTLINED_FUNCTION_25_25(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for NeuralNetwork.WeightParameters();
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_17(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;

  return type metadata accessor for Proto_WeightParams(0);
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return type metadata accessor for NeuralNetwork.WeightParameters();
}

void *OUTLINED_FUNCTION_32_13()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_2577020B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v28 - v23;
  sub_257702678(a1, v15);
  sub_2577027B0(a1, type metadata accessor for Proto_MILSpec_Dimension);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    result = sub_2577026E8(v15);
    v26 = 0;
LABEL_5:
    v27 = 1;
LABEL_8:
    *a2 = v26;
    *(a2 + 8) = v27;
    return result;
  }

  sub_257702750(v15, v24, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  sub_257702750(v24, v22, type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257702750(v22, v7, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    v26 = *v7;
    result = sub_2577027B0(v7, type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension);
    goto LABEL_5;
  }

  sub_257702750(v22, v11, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  v26 = *v11;
  result = sub_2577027B0(v11, type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t MLProgram.ShapeDimension.debugDescription.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 3026478;
    }

    else
    {
      return 63;
    }
  }

  else
  {
    v2 = *v0;
    return sub_257743974();
  }
}

uint64_t static MLProgram.ShapeDimension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t MLProgram.ShapeDimension.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x259C651F0](1);
    return sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    return MEMORY[0x259C651F0](v1);
  }
}

uint64_t MLProgram.ShapeDimension.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2 == 1)
  {
    MEMORY[0x259C651F0](1);
    sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    MEMORY[0x259C651F0](v1);
  }

  return sub_257743A64();
}

uint64_t sub_2577024EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_257743A14();
  if (v2 == 1)
  {
    MEMORY[0x259C651F0](1);
    sub_257743A34();
  }

  else
  {
    MEMORY[0x259C651F0](0);
    MEMORY[0x259C651F0](v1);
  }

  return sub_257743A64();
}

uint64_t MLProgram.ShapeDimension.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t MLProgram.ShapeDimension.value.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLProgram.ShapeDimension.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a3 = v3;
  *(a3 + 8) = a2 & 1;
  return result;
}

unint64_t sub_2577025AC()
{
  result = qword_27F881668;
  if (!qword_27F881668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881668);
  }

  return result;
}

unint64_t sub_257702610()
{
  result = qword_27F87B5C0;
  if (!qword_27F87B5C0)
  {
    type metadata accessor for Proto_MILSpec_Dimension(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B5C0);
  }

  return result;
}

uint64_t sub_257702678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577026E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257702750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2577027B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_257702808()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v36 - v19;
  v21 = v0 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  v22 = type metadata accessor for Proto_ArrayFeatureType(0);
  sub_2576A6098(v21 + *(v22 + 24), v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v7) == 1)
  {
    v23 = 0;
  }

  else
  {
    if (v2)
    {
      v24 = v2 <= 2;
    }

    else
    {
      v24 = 0;
    }

    v23 = !v24;
    sub_25770439C(v20, v16);
    sub_257704420(v16, v13, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    sub_2576A48B8();
    sub_257704480(v16, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  v25 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  v26 = MEMORY[0x277D84F90];
  if (!v25 && (v23 & 1) == 0)
  {
    v36[0] = v4;
    v27 = OUTLINED_FUNCTION_288();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_0_96();
    sub_25767A50C(v29, &qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_3_46();
    v30 = sub_257743604();
    v32 = v31;
    *v6 = v26;
    sub_25767A064();
    v33 = *(*v6 + 16);
    sub_25767A0B0(v33);
    v26 = *v6;
    *(v26 + 16) = v33 + 1;
    v34 = v26 + 48 * v33;
    *(v34 + 32) = 0;
    *(v34 + 40) = 0xD000000000000032;
    *(v34 + 48) = 0x8000000257781D60;
    OUTLINED_FUNCTION_8_26(v34);
    *(v35 + 64) = v30;
    *(v35 + 72) = v32;
  }

  *v6 = v26;
  OUTLINED_FUNCTION_35();
}

void sub_257702A64()
{
  OUTLINED_FUNCTION_31();
  v68 = v1;
  v69 = v0;
  v3 = v2;
  v65 = v4;
  v5 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63 - v17;
  v19 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  if (!v3 || v3 >= 3)
  {
    v20 = v69 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
    v21 = type metadata accessor for Proto_ArrayFeatureType(0);
    sub_2576A6098(v20 + *(v21 + 24), v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
    {
      v72 = v19;
    }

    else
    {
      sub_25770439C(v18, v14);
      sub_257704420(v14, v11, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2576A48B8();
      v22 = OUTLINED_FUNCTION_288();
      sub_257704480(v22, v23);
      if (v73)
      {
        sub_257703908();
      }

      else
      {
        sub_257703594();
      }
    }

    sub_25763D14C(v72);
  }

  v64 = v3;
  v24 = v69;
  v25 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v25)
  {
    v26 = 0;
    v27 = *(v69 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20));
    v70 = (v27 + 32);
    v66 = v25;
    v67 = "cation version 7 and later.";
    v28 = *(v27 + 16);
    while (1)
    {
      if (v28)
      {
        v72 = v19;
        v24 = &v72;
        sub_257483724();
        v29 = v72;
        v30 = *(v72 + 16);
        v31 = v70;
        v32 = v28;
        do
        {
          v33 = *v31++;
          v5 = v33;
          v72 = v29;
          v34 = *(v29 + 24);
          v35 = v30 + 1;
          if (v30 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_174(v34);
            v24 = &v72;
            sub_257483724();
            v29 = v72;
          }

          *(v29 + 16) = v35;
          *(v29 + 8 * v30++ + 32) = v5;
          --v32;
        }

        while (v32);
      }

      else
      {
        v35 = *(v19 + 16);
        v29 = v19;
      }

      if (v26 >= v35)
      {
        break;
      }

      v24 = *(v29 + 8 * v26 + 32);

      if (v24 < 0)
      {
        v72 = 0;
        v73 = 0xE000000000000000;
        sub_257743834();
        MEMORY[0x259C64E90](0xD000000000000033, v67 | 0x8000000000000000);
        v24 = v69;
        v36 = FeatureType.ShapedArrayParameters.shape.getter();
        if (v26 >= *(v36 + 16))
        {
          goto LABEL_36;
        }

        v37 = v19;
        v38 = *(v36 + 8 * v26 + 32);

        v71 = v38;
        v39 = sub_257743974();
        MEMORY[0x259C64E90](v39);

        MEMORY[0x259C64E90](0x646E692074612029, 0xEB00000000207865);
        v71 = v26;
        v40 = sub_257743974();
        MEMORY[0x259C64E90](v40);

        v41 = OUTLINED_FUNCTION_3_46();
        MEMORY[0x259C64E90](v41);
        v42 = v72;
        v43 = v73;
        v72 = v68;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
        OUTLINED_FUNCTION_0_96();
        sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90);
        OUTLINED_FUNCTION_3_46();
        v24 = sub_257743604();
        v45 = v44;
        v46 = v74;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v46 + 16);
          OUTLINED_FUNCTION_0_66();
          sub_25746996C();
          v46 = v51;
        }

        v5 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v5 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_174(v47);
          OUTLINED_FUNCTION_11_41();
          v46 = v52;
        }

        *(v46 + 16) = v5 + 1;
        v48 = v46 + 48 * v5;
        *(v48 + 32) = 0;
        *(v48 + 40) = v42;
        *(v48 + 48) = v43;
        OUTLINED_FUNCTION_8_26(v48);
        *(v49 + 64) = v24;
        *(v49 + 72) = v45;

        v74 = v46;
        v19 = v37;
        v25 = v66;
      }

      if (++v26 == v25)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v60 = *(v35 + 16);
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v35 = v61;
    goto LABEL_31;
  }

LABEL_28:
  v53 = type metadata accessor for FeatureType.ShapedArrayParameters();
  sub_2576A44B8(*(v69 + *(v53 + 20) + 8), *(v69 + *(v53 + 20) + 16), &v72);
  if (v72 || v64 > 6)
  {
    goto LABEL_34;
  }

  v5 = 0x8000000257781A70;
  v72 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v54, &qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_3_46();
  v26 = sub_257743604();
  v24 = v55;
  v35 = v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  v57 = *(v35 + 16);
  v56 = *(v35 + 24);
  if (v57 >= v56 >> 1)
  {
    OUTLINED_FUNCTION_174(v56);
    OUTLINED_FUNCTION_11_41();
    v35 = v62;
  }

  *(v35 + 16) = v57 + 1;
  v58 = v35 + 48 * v57;
  *(v58 + 32) = 0;
  *(v58 + 40) = 0xD00000000000006BLL;
  *(v58 + 48) = v5;
  OUTLINED_FUNCTION_8_26(v58);
  *(v59 + 64) = v26;
  *(v59 + 72) = v24;
  v74 = v35;
LABEL_34:
  sub_2577032F8(v68, &v72);
  sub_25763D14C(v72);
  *v65 = v74;
  OUTLINED_FUNCTION_35();
}

BOOL sub_257703054(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

BOOL sub_257703164(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

BOOL sub_257703248(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2577032F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  sub_2576A44B8(v6, v7, v31);
  v8 = LOBYTE(v31[0]);
  if (LOBYTE(v31[0]) == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = LOBYTE(v31[0]);
  }

  result = type metadata accessor for Proto_ArrayFeatureType(0);
  v11 = *(v5 + *(result + 28) + 8);
  if (!*(v5 + *(result + 28) + 8))
  {
    if (v9 != 3)
    {
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      v14 = 0x8000000257781C70;
      v13 = 0xD00000000000004BLL;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v11 == 1)
  {
    if (v8 >= 2)
    {
      OUTLINED_FUNCTION_9_39();
      sub_257743834();
      v12 = "es not match the data type ";
      v13 = 0xD00000000000004DLL;
      goto LABEL_11;
    }

LABEL_13:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (v11 != 2 || v9 == 2)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_9_39();
  sub_257743834();
  v12 = "does not match the data type ";
  v13 = 0xD00000000000004ELL;
LABEL_11:
  v14 = v12 | 0x8000000000000000;
LABEL_15:
  MEMORY[0x259C64E90](v13, v14);
  sub_2576A44B8(v6, v7, &v30);
  v16 = v30;
  if (v30 == 5)
  {
    v16 = 2;
  }

  v30 = v16;
  sub_257743884();
  v17 = OUTLINED_FUNCTION_3_46();
  MEMORY[0x259C64E90](v17);
  v19 = v31[0];
  v18 = v31[1];
  v31[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v20, &qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_3_46();
  v21 = sub_257743604();
  v23 = v22;

  sub_25746996C();
  v15 = v24;
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  if (v26 >= v25 >> 1)
  {
    OUTLINED_FUNCTION_174(v25);
    sub_25746996C();
    v15 = v29;
  }

  *(v15 + 16) = v26 + 1;
  v27 = v15 + 48 * v26;
  *(v27 + 32) = 0;
  *(v27 + 40) = v19;
  *(v27 + 48) = v18;
  OUTLINED_FUNCTION_8_26(v27);
  *(v28 + 64) = v21;
  *(v28 + 72) = v23;

LABEL_20:
  *a2 = v15;
  return result;
}

void sub_257703594()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = v1;
  v6 = v5;
  v7 = v2;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = v2;
    v53 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_0_96();
    sub_25767A50C(v10, &qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_3_46();
    v11 = sub_257743604();
    v13 = v12;
    sub_25746996C();
    v9 = v14;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      OUTLINED_FUNCTION_174(v15);
      OUTLINED_FUNCTION_11_41();
      v9 = v46;
    }

    *(v9 + 16) = v16 + 1;
    OUTLINED_FUNCTION_3_68();
    *(v17 + 40) = v18;
    *(v17 + 48) = 0x8000000257781BB0;
    OUTLINED_FUNCTION_8_26(v17);
    *(v19 + 64) = v11;
    *(v19 + 72) = v13;
    v7 = v51;
  }

  swift_getKeyPath();
  v20 = 32;
  do
  {
    if (!v8)
    {

      goto LABEL_15;
    }

    v53 = *(v6 + v20);

    swift_getAtKeyPath();

    v20 += 8;
    --v8;
  }

  while ((v52 & 1) == 0);

  v53 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v21, &qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_3_46();
  v22 = sub_257743604();
  v24 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = *(v9 + 16);
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v9 = v44;
  }

  v26 = *(v9 + 16);
  v25 = *(v9 + 24);
  if (v26 >= v25 >> 1)
  {
    OUTLINED_FUNCTION_174(v25);
    OUTLINED_FUNCTION_11_41();
    v9 = v45;
  }

  *(v9 + 16) = v26 + 1;
  OUTLINED_FUNCTION_3_68();
  *(v28 + 40) = v27 + 6;
  *(v28 + 48) = 0x8000000257781B20;
  OUTLINED_FUNCTION_8_26(v28);
  *(v29 + 64) = v22;
  *(v29 + 72) = v24;
LABEL_15:
  v30 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v30)
  {
    MEMORY[0x28223BE20](v31);
    v50[2] = v3;
    if (!sub_257703054(sub_257704400, v50, v6))
    {
      v53 = v4;
      v32 = OUTLINED_FUNCTION_288();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_0_96();
      sub_25767A50C(v34, &qword_27F87A1F8, &qword_257770B90);
      OUTLINED_FUNCTION_3_46();
      v35 = sub_257743604();
      v37 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v9 + 16);
        OUTLINED_FUNCTION_0_66();
        sub_25746996C();
        v9 = v48;
      }

      v39 = *(v9 + 16);
      v38 = *(v9 + 24);
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_174(v38);
        OUTLINED_FUNCTION_11_41();
        v9 = v49;
      }

      *(v9 + 16) = v39 + 1;
      OUTLINED_FUNCTION_3_68();
      *(v41 + 40) = v40 + 27;
      *(v41 + 48) = 0x8000000257781B60;
      OUTLINED_FUNCTION_8_26(v41);
      *(v42 + 64) = v35;
      *(v42 + 72) = v37;
    }
  }

  *v7 = v9;
  OUTLINED_FUNCTION_35();
}

void sub_257703908()
{
  OUTLINED_FUNCTION_31();
  v92 = v0;
  v4 = v3;
  v6 = v5;
  v84 = v7;
  v8 = type metadata accessor for SizeRange();
  v93 = *(v8 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_11();
  v91 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v94 = (&v83 - v13);
  v100 = MEMORY[0x277D84F90];
  v90 = v6;
  v14 = *(v6 + 16);
  v96 = v14;
  if (v14)
  {
    v15 = 0;
    v16 = v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v1 = *(v93 + 72);
    v95 = xmmword_2577442B0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
      inited = swift_initStackObject();
      *(inited + 16) = v95;
      v97 = v15;
      v98 = 0x5B65676E6172;
      v99 = 0xE600000000000000;
      v18 = sub_257743974();
      MEMORY[0x259C64E90](v18);
      v14 = v96;

      MEMORY[0x259C64E90](93, 0xE100000000000000);
      v19 = v99;
      *(inited + 32) = v98;
      *(inited + 40) = v19;
      v98 = v4;

      sub_25763D200(inited);
      v2 = v98;
      sub_25773ADC0(&v98);

      sub_25763D14C(v98);
      v16 += v1;
      ++v15;
    }

    while (v14 != v15);
  }

  v20 = v92;
  v21 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (!v21)
  {
    goto LABEL_42;
  }

  v22 = v20;
  v23 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  if (v23 == v14)
  {
    v89 = v4;
    if (v14)
    {
      v24 = 0;
      v25 = *(v92 + *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20));
      v90 += (*(v93 + 80) + 32) & ~*(v93 + 80);
      *&v95 = v25 + 32;
      v26 = *(v25 + 16);
      v87 = v25;
      v88 = " the allowed ranges' rank (";
      v86 = "n the allowed maximum (";
      v85 = "default height (";
      while (1)
      {
        if (v26)
        {
          v98 = MEMORY[0x277D84F90];
          v22 = &v98;
          sub_257483724();
          v27 = v98;
          v28 = *(v98 + 16);
          v1 = v95;
          v20 = v26;
          do
          {
            v29 = *v1;
            v1 += 8;
            v2 = v29;
            v98 = v27;
            v30 = *(v27 + 24);
            v31 = v28 + 1;
            if (v28 >= v30 >> 1)
            {
              OUTLINED_FUNCTION_174(v30);
              v22 = &v98;
              sub_257483724();
              v27 = v98;
            }

            *(v27 + 16) = v31;
            *(v27 + 8 * v28++ + 32) = v2;
            --v20;
          }

          while (v20);
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
          v31 = *(MEMORY[0x277D84F90] + 16);
        }

        if (v24 >= v31)
        {
          break;
        }

        v1 = *(v27 + 8 * v24 + 32);

        v32 = v94;
        v31 = v90 + *(v93 + 72) * v24;
        OUTLINED_FUNCTION_1_77();
        sub_257704420(v31, v32, v33);
        v20 = *v32;
        sub_257704480(v32, v22);
        if (v20 < 0)
        {
          goto LABEL_49;
        }

        if (v1 < v20)
        {
          OUTLINED_FUNCTION_10_46();
          sub_257743834();
          OUTLINED_FUNCTION_12_43();
          v97 = v24;
          v2 = MEMORY[0x277D83BF8];
          v34 = sub_257743974();
          v20 = v35;
          MEMORY[0x259C64E90](v34);

          MEMORY[0x259C64E90](10272, 0xE200000000000000);
          v22 = v92;
          v36 = FeatureType.ShapedArrayParameters.shape.getter();
          if (v24 >= *(v36 + 16))
          {
            goto LABEL_51;
          }

          v37 = *(v36 + 8 * v24 + 32);

          v97 = v37;
          v38 = sub_257743974();
          v22 = &v98;
          MEMORY[0x259C64E90](v38);

          MEMORY[0x259C64E90](0xD000000000000024, v86 | 0x8000000000000000);
          OUTLINED_FUNCTION_1_77();
          v20 = v94;
          sub_257704420(v31, v94, v39);
          v1 = *v20;
          sub_257704480(v20, &v98);
          if (v1 < 0)
          {
            goto LABEL_52;
          }

          v97 = v1;
          v40 = sub_257743974();
          MEMORY[0x259C64E90](v40);

          MEMORY[0x259C64E90](11817, 0xE200000000000000);
          v1 = v98;
          v20 = v99;
          v98 = v89;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
          OUTLINED_FUNCTION_0_96();
          sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90);
          OUTLINED_FUNCTION_3_46();
          v22 = sub_257743604();
          v42 = v41;
          v43 = v100;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = v43[2];
            OUTLINED_FUNCTION_0_66();
            sub_25746996C();
            v43 = v65;
          }

          v2 = v43[2];
          v44 = v43[3];
          if (v2 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_174(v44);
            sub_25746996C();
            v43 = v66;
          }

          v43[2] = v2 + 1;
          v45 = &v43[6 * v2];
          *(v45 + 32) = 0;
          *(v45 + 40) = v1;
          *(v45 + 48) = v20;
          OUTLINED_FUNCTION_8_26(v45);
          *(v46 + 64) = v22;
          *(v46 + 72) = v42;

          v100 = v43;
          v14 = v96;
        }

        OUTLINED_FUNCTION_1_77();
        v47 = v31;
        v48 = v91;
        sub_257704420(v47, v91, v49);
        v50 = *(v48 + 8);
        sub_257704480(v48, v22);
        if ((v50 & 0x8000000000000000) == 0)
        {
          v31 = *(v87 + 16);
          if (v31)
          {
            v98 = MEMORY[0x277D84F90];
            v22 = &v98;
            sub_257483724();
            v51 = v98;
            v52 = *(v98 + 16);
            v1 = v95;
            do
            {
              v53 = *v1;
              v1 += 8;
              v2 = v53;
              v98 = v51;
              v54 = *(v51 + 24);
              v20 = v52 + 1;
              if (v52 >= v54 >> 1)
              {
                OUTLINED_FUNCTION_174(v54);
                v22 = &v98;
                sub_257483724();
                v51 = v98;
              }

              *(v51 + 16) = v20;
              *(v51 + 8 * v52++ + 32) = v2;
              --v31;
            }

            while (v31);
          }

          else
          {
            v51 = MEMORY[0x277D84F90];
            v20 = *(MEMORY[0x277D84F90] + 16);
          }

          if (v24 >= v20)
          {
            goto LABEL_50;
          }

          v31 = *(v51 + 8 * v24 + 32);

          if (v50 < v31)
          {
            OUTLINED_FUNCTION_10_46();
            sub_257743834();
            OUTLINED_FUNCTION_12_43();
            v97 = v24;
            v1 = MEMORY[0x277D83B88];
            v20 = MEMORY[0x277D83BF8];
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](10272, 0xE200000000000000);
            v22 = v92;
            v55 = FeatureType.ShapedArrayParameters.shape.getter();
            if (v24 >= *(v55 + 16))
            {
              goto LABEL_53;
            }

            v56 = *(v55 + 8 * v24 + 32);

            v97 = v56;
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](0xD000000000000027, v85 | 0x8000000000000000);
            v97 = v50;
            sub_257743974();
            OUTLINED_FUNCTION_16_27();

            MEMORY[0x259C64E90](11817, 0xE200000000000000);
            v1 = v98;
            v57 = v99;
            v98 = v89;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
            OUTLINED_FUNCTION_0_96();
            sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90);
            OUTLINED_FUNCTION_3_46();
            v22 = sub_257743604();
            v20 = v58;
            v59 = v100;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = v59[2];
              OUTLINED_FUNCTION_0_66();
              sub_25746996C();
              v59 = v68;
            }

            v61 = v59[2];
            v60 = v59[3];
            if (v61 >= v60 >> 1)
            {
              OUTLINED_FUNCTION_174(v60);
              sub_25746996C();
              v59 = v69;
            }

            v59[2] = v61 + 1;
            v62 = &v59[6 * v61];
            *(v62 + 32) = 0;
            *(v62 + 40) = v1;
            *(v62 + 48) = v57;
            OUTLINED_FUNCTION_8_26(v62);
            *(v63 + 64) = v22;
            *(v63 + 72) = v20;

            v100 = v59;
            v14 = v96;
          }
        }

        if (++v24 == v14)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_42:
    v22 = v100;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_10_46();
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000025, 0x8000000257781BE0);
  v70 = *(FeatureType.ShapedArrayParameters.shape.getter() + 16);

  v97 = v70;
  v71 = sub_257743974();
  MEMORY[0x259C64E90](v71);

  MEMORY[0x259C64E90](0xD00000000000002BLL, 0x8000000257781C10);
  v97 = v14;
  sub_257743974();
  OUTLINED_FUNCTION_16_27();

  MEMORY[0x259C64E90](11817, 0xE200000000000000);
  v2 = v98;
  v31 = v99;
  v98 = v4;

  v72 = OUTLINED_FUNCTION_288();
  __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
  OUTLINED_FUNCTION_0_96();
  sub_25767A50C(v74, &qword_27F87A1F8, &qword_257770B90);
  OUTLINED_FUNCTION_3_46();
  v1 = sub_257743604();
  v20 = v75;
  v22 = v100;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    v80 = v22[2];
    OUTLINED_FUNCTION_0_66();
    sub_25746996C();
    v22 = v81;
  }

  v77 = v22[2];
  v76 = v22[3];
  if (v77 >= v76 >> 1)
  {
    OUTLINED_FUNCTION_174(v76);
    sub_25746996C();
    v22 = v82;
  }

  v22[2] = v77 + 1;
  v78 = &v22[6 * v77];
  *(v78 + 32) = 0;
  *(v78 + 40) = v2;
  *(v78 + 48) = v31;
  OUTLINED_FUNCTION_8_26(v78);
  *(v79 + 64) = v1;
  *(v79 + 72) = v20;

LABEL_47:
  *v84 = v22;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257704344(uint64_t *a1)
{
  v1 = *a1;
  v2 = FeatureType.ShapedArrayParameters.shape.getter();
  LOBYTE(v1) = sub_257487374(v1, v2);

  return v1 & 1;
}

uint64_t sub_25770439C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257704420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_257704480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_11_41()
{

  sub_25746996C();
}

void OUTLINED_FUNCTION_12_43()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;
  v3 = *(v0 - 248) | 0x8000000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_16_27()
{

  JUMPOUT(0x259C64E90);
}

uint64_t Model.init(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2577430C4();
  if (!v2)
  {
    Model.init(serializedData:)(v5, v6, a2);
  }

  v7 = sub_257743094();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t Model.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2577431D4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3();
  v9 = type metadata accessor for Proto_Model(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  sub_257486740(a1, a2);
  sub_2577431C4();
  sub_257704770();
  sub_257743404();
  result = sub_257486798(a1, a2);
  if (!v3)
  {
    return sub_2577047C8(v13, a3);
  }

  return result;
}

unint64_t sub_257704770()
{
  result = qword_281537FF0;
  if (!qword_281537FF0)
  {
    type metadata accessor for Proto_Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537FF0);
  }

  return result;
}

uint64_t sub_2577047C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Model.write(to:)(uint64_t a1)
{
  v4 = sub_257743094();
  v5 = OUTLINED_FUNCTION_2_66(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  (*(v7 + 16))(v11 - v10, a1, v1);
  if (sub_257742FF4() == 0x6C65646F6D6C6DLL && v12 == 0xE700000000000000)
  {
  }

  else
  {
    v14 = sub_257743994();

    if ((v14 & 1) == 0)
    {
      sub_257743014();
    }
  }

  type metadata accessor for Proto_Model(0);
  sub_257704770();
  v15 = sub_2577433F4();
  if (v2)
  {
    v17 = OUTLINED_FUNCTION_1_78();
    return v18(v17);
  }

  else
  {
    v20 = v15;
    v21 = v16;
    sub_257743134();
    v22 = OUTLINED_FUNCTION_1_78();
    v23(v22);
    return sub_257486798(v20, v21);
  }
}

uint64_t Model.serialized()()
{
  type metadata accessor for Proto_Model(0);
  sub_257704770();
  return sub_2577433F4();
}

void Model.writeAsPackage(to:)(uint64_t a1)
{
  v4 = sub_257743094();
  v5 = OUTLINED_FUNCTION_2_66(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for Package();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  (*(v7 + 16))(v12, a1, v1);
  Package.init(url:)();
  if (!v2)
  {
    Package.setRootModel(_:)();
    v18 = OUTLINED_FUNCTION_1_78();
    v19(v18);
    sub_257704B98(v17);
  }
}

uint64_t sub_257704B98(uint64_t a1)
{
  v2 = type metadata accessor for Package();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257743FF0;
  strcpy((v1 + 32), "Input Channels");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296();
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    *(v1 + 48) = sub_257743974();
    *(v1 + 56) = v4;
    *(v1 + 64) = 0x432074757074754FLL;
    *(v1 + 72) = 0xEF736C656E6E6168;
    result = OUTLINED_FUNCTION_296();
    if ((*(v2 + 24) & 0x8000000000000000) == 0)
    {
      v6 = *(v2 + 24);
      *(v1 + 80) = sub_257743974();
      *(v1 + 88) = v5;
      return v1;
    }
  }

  __break(1u);
  return result;
}

void NeuralNetwork.Layer.InnerProductParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = type metadata accessor for NeuralNetwork.WeightParameters();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v20 = *(v2 + 72);
  v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  v23 = (v22 + v21);
  v24 = *(v1 + 48);
  *v23 = 0x73746867696557;
  v23[1] = 0xE700000000000000;
  NeuralNetwork.Layer.InnerProductParameters.weights.getter((v22 + v21 + v24));
  v25 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  OUTLINED_FUNCTION_296();
  if (*(v25 + 32) == 1)
  {
    NeuralNetwork.Layer.InnerProductParameters.bias.getter();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_2574695E4(v12, &qword_27F880938, &unk_25776E510);
    }

    else
    {
      OUTLINED_FUNCTION_4_26();
      sub_2576A16F4(v12, v19);
      v26 = *(v1 + 48);
      *v6 = 1935763778;
      v6[1] = 0xE400000000000000;
      sub_257706B80(v19, v6 + v26);
      sub_257469D34();
      v28 = v27;
      OUTLINED_FUNCTION_0_97();
      sub_257706ADC(v19, v29);
      *(v28 + 16) = 2;
      sub_25749E9A8(v6, v28 + v21 + v20);
    }
  }

  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)()
{
  OUTLINED_FUNCTION_31();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v34 = v10;
  v35 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v27 = OUTLINED_FUNCTION_13_6();
  v31 = xmmword_2577442B0;
  *(v27 + 16) = xmmword_2577442B0;
  *(v27 + 32) = v9;
  *(v27 + 40) = v7;
  v28 = OUTLINED_FUNCTION_13_6();
  *(v28 + 16) = v31;
  *(v28 + 32) = v5;
  *(v28 + 40) = v3;

  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(v32, v33, v26);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v29 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v13 + v29) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v28);
  sub_2574897E0(v19);
  v30 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v30);
  sub_25752846C();
  sub_257706ADC(v26, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.innerProduct(inputChannelCount:outputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(a1, a2, a3);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  if (qword_27F879380 != -1)
  {
    OUTLINED_FUNCTION_8_40();
  }

  result = qword_27F87BF00;
  *(a3 + v6) = qword_27F87BF00;
  if (a1 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_4_59();
    v9 = v11;
    *(a3 + v6) = v11;
  }

  result = OUTLINED_FUNCTION_447();
  *(v9 + 16) = a1;
  if (a2 < 0)
  {
    goto LABEL_11;
  }

  v12 = *(a3 + v6);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a3 + v6);
  if ((v13 & 1) == 0)
  {
    v15 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v15);
    OUTLINED_FUNCTION_4_59();
    v14 = v16;
    *(a3 + v6) = v16;
  }

  result = OUTLINED_FUNCTION_447();
  *(v14 + 24) = a2;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.getter()
{
  v1 = type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter()
{
  v1 = type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  result = *(v0 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_19_30();
  v9 = type metadata accessor for Proto_WeightParams(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v1 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  v17 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v16 + v17, v2, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    *v15 = MEMORY[0x277D84F90];
    *(v15 + 8) = xmmword_257745740;
    *(v15 + 24) = xmmword_257745740;
    *(v15 + 40) = xmmword_257745740;
    *(v15 + 56) = 0;
    v18 = v15 + *(v9 + 36);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v19 = *(v9 + 40);
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_2576A16F4(v2, v15);
  }

  sub_2576FF45C(v15, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v24 = OUTLINED_FUNCTION_13_6();
  *(v24 + 16) = xmmword_257743FF0;
  result = OUTLINED_FUNCTION_296();
  v26 = *(v16 + 24);
  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 32) = v26;
    result = OUTLINED_FUNCTION_296();
    v27 = *(v16 + 16);
    if ((v27 & 0x8000000000000000) == 0)
    {
      *(v24 + 40) = v27;
      v28 = *a1;

      *a1 = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.getter()
{
  v1 = type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  OUTLINED_FUNCTION_296();
  return *(v0 + 32);
}

void NeuralNetwork.Layer.InnerProductParameters.bias.getter()
{
  OUTLINED_FUNCTION_31();
  v31[0] = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  v19 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296();
  sub_2574A172C(v18 + v19, v17, &qword_27F87A1A0, &qword_257745750);
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v2);
  sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
  v22 = EnumTagSinglePayload == 1;
  v23 = v31[0];
  if (!v22)
  {
    sub_2574A172C(v18 + v19, v15, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = xmmword_257745740;
      *(v8 + 24) = xmmword_257745740;
      *(v8 + 40) = xmmword_257745740;
      *(v8 + 56) = 0;
      v24 = v8 + *(v2 + 36);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v25 = *(v2 + 40);
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      if (__swift_getEnumTagSinglePayload(v15, 1, v2) != 1)
      {
        sub_2574695E4(v15, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2576A16F4(v15, v8);
    }

    sub_2576FF45C(v8, v23);
    v20 = 0;
  }

  v30 = type metadata accessor for NeuralNetwork.WeightParameters();
  __swift_storeEnumTagSinglePayload(v23, v20, 1, v30);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v6 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v7 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_4_59();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v6 + 16) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 80) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_296();
  v6 = *(v4 + 16);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_257705950;
  }

  return result;
}

void sub_257705950(uint64_t *a1, char a2)
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
    v11 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v12);
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 16) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v6 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v7 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_4_59();
      OUTLINED_FUNCTION_355_0(v8);
    }

    result = OUTLINED_FUNCTION_237_0();
    *(v6 + 24) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 80) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_296();
  v6 = *(v4 + 24);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_257705AF8;
  }

  return result;
}

void sub_257705AF8(uint64_t *a1, char a2)
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
    v11 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v11);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v12);
  }

  OUTLINED_FUNCTION_447();
  *(v8 + 24) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weightsShape.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v1 = OUTLINED_FUNCTION_13_6();
  *(v1 + 16) = xmmword_257743FF0;
  v2 = *(v0 + *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20));
  result = OUTLINED_FUNCTION_296();
  v4 = *(v2 + 24);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v4;
    result = OUTLINED_FUNCTION_296();
    v5 = *(v2 + 16);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(v1 + 40) = v5;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257705C40(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.WeightParameters();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257706B80(a1, v5);
  return NeuralNetwork.Layer.InnerProductParameters.weights.setter(v5);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Proto_WeightParams(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = *(type metadata accessor for NeuralNetwork.WeightParameters() + 20);
  OUTLINED_FUNCTION_5_53();
  sub_257706B80(a1 + v18, v16);
  v19 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  v20 = *(v1 + v19);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(a1, v21);
    v22 = *(v1 + v19);
  }

  else
  {
    v23 = *(v1 + v19);
    v24 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v24);

    sub_2575A1C58();
    v22 = v25;
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(a1, v26);

    *(v2 + v19) = v22;
  }

  OUTLINED_FUNCTION_1_5();
  sub_2576A16F4(v16, v9);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v27 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  swift_beginAccess();
  sub_25763A1E4(v9, v22 + v27);
  return swift_endAccess();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.weights.modify(void *a1)
{
  *a1 = v1;
  v3 = type metadata accessor for NeuralNetwork.WeightParameters();
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  NeuralNetwork.Layer.InnerProductParameters.weights.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

void sub_257705F00(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_257706B80(a1[2], v2);
    NeuralNetwork.Layer.InnerProductParameters.weights.setter(v2);
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v3, v5);
  }

  else
  {
    NeuralNetwork.Layer.InnerProductParameters.weights.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

void sub_257705F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574A172C(a1, &v5 - v4, &qword_27F880938, &unk_25776E510);
  NeuralNetwork.Layer.InnerProductParameters.bias.setter();
}

void NeuralNetwork.Layer.InnerProductParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Proto_WeightParams(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_30();
  v22 = type metadata accessor for NeuralNetwork.WeightParameters();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  sub_2574A172C(v4, v1, &qword_27F880938, &unk_25776E510);
  if (__swift_getEnumTagSinglePayload(v1, 1, v22) == 1)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
    v29 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
    v30 = *(v2 + v29);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
      v31 = *(v2 + v29);
    }

    else
    {
      v35 = *(v2 + v29);
      v36 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v36);

      sub_2575A1C58();
      v31 = v37;
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);

      *(v2 + v29) = v31;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v11);
    v41 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    swift_beginAccess();
    sub_25763A1E4(v10, v31 + v41);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v1, v28);
    v32 = *(v22 + 20);
    OUTLINED_FUNCTION_5_53();
    sub_257706B80(v28 + v33, v17);
    sub_25753171C(v17);
    sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v28, v34);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.bias.modify(void *a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.InnerProductParameters.bias.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25770635C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_2574A172C(a1[2], v2, &qword_27F880938, &unk_25776E510);
    NeuralNetwork.Layer.InnerProductParameters.bias.setter();
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v5 = a1[2];
    NeuralNetwork.Layer.InnerProductParameters.bias.setter();
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(char a1)
{
  v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v5 = OUTLINED_FUNCTION_376_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v6 + 32) = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.hasBias.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + 32);
  return OUTLINED_FUNCTION_15_10();
}

void sub_2577064E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    v9 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v10);
  }

  OUTLINED_FUNCTION_447();
  *(v6 + 32) = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.getter()
{
  v1 = type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328(v1);
  v2 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_296();
  return v2[v0];
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.setter(char a1)
{
  v4 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v5 = OUTLINED_FUNCTION_376_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_355_0(v8);
  }

  v9 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  result = OUTLINED_FUNCTION_237_0();
  v9[v6] = a1 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.isDynamicallyQuantized.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = v5[v4];
  return OUTLINED_FUNCTION_15_10();
}

void sub_2577066A8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_21_13(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    v9 = type metadata accessor for Proto_InnerProductLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_4_59();
    OUTLINED_FUNCTION_25_26(v10);
  }

  v11 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_447();
  v11[v6] = v3;

  free(v1);
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init()@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_InnerProductLayerParams(0) + 20);
  if (qword_27F879380 != -1)
  {
    OUTLINED_FUNCTION_8_40();
  }

  *(a1 + v2) = qword_27F87BF00;
}

void NeuralNetwork.Layer.InnerProductParameters.customMirror.getter()
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
  v11 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  sub_257706B80(v0, v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_257745520;
  *(v17 + 32) = 0xD000000000000011;
  *(v17 + 40) = 0x8000000257780C20;
  v18 = type metadata accessor for Proto_InnerProductLayerParams(0);
  OUTLINED_FUNCTION_328(v18);
  OUTLINED_FUNCTION_296();
  if ((MEMORY[0xD000000000000021] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = v1;
    v19 = MEMORY[0x277D83B88];
    *(v17 + 48) = MEMORY[0xD000000000000021];
    OUTLINED_FUNCTION_20_25();
    *(v17 + 72) = v19;
    *(v17 + 80) = v20 + 1;
    *(v17 + 88) = v21;
    OUTLINED_FUNCTION_296();
    if ((MEMORY[0xD000000000000029] & 0x8000000000000000) == 0)
    {
      *(v17 + 96) = MEMORY[0xD000000000000029];
      *(v17 + 120) = v19;
      *(v17 + 128) = 0x73746867696577;
      *(v17 + 136) = 0xE700000000000000;
      *(v17 + 168) = type metadata accessor for NeuralNetwork.WeightParameters();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 144));
      NeuralNetwork.Layer.InnerProductParameters.weights.getter(boxed_opaque_existential_0);
      *(v17 + 176) = 1935763810;
      *(v17 + 184) = 0xE400000000000000;
      *(v17 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
      __swift_allocate_boxed_opaque_existential_0((v17 + 192));
      NeuralNetwork.Layer.InnerProductParameters.bias.getter();
      *(v17 + 224) = 0x73616942736168;
      *(v17 + 232) = 0xE700000000000000;
      OUTLINED_FUNCTION_296();
      v23 = MEMORY[0x277D839B0];
      *(v17 + 240) = MEMORY[0xD000000000000031];
      OUTLINED_FUNCTION_20_25();
      *(v17 + 264) = v23;
      *(v17 + 272) = v24 + 5;
      *(v17 + 280) = v25;
      v26 = OBJC_IVAR____TtCV20MLModelSpecification29Proto_InnerProductLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
      OUTLINED_FUNCTION_296();
      v27 = *(v26 - 0x2FFFFFFFFFFFFFEFLL);
      *(v17 + 312) = v23;
      *(v17 + 288) = v27;
      sub_257743A74();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v32);
      sub_257743AA4();
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_257706ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.InnerProductParameters()
{
  result = qword_27F881678;
  if (!qword_27F881678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257706B80(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_257706BE0()
{
  result = qword_27F87E240;
  if (!qword_27F87E240)
  {
    type metadata accessor for Proto_InnerProductLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E240);
  }

  return result;
}

uint64_t sub_257706C60()
{
  result = type metadata accessor for Proto_InnerProductLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_4_59()
{

  sub_2575A1C58();
}

uint64_t OUTLINED_FUNCTION_8_40()
{

  return swift_once();
}

uint64_t NeuralNetwork.Layer.PermuteParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  *(v0 + 32) = 0x746174756D726550;
  *(v0 + 40) = 0xEB000000006E6F69;
  NeuralNetwork.Layer.PermuteParameters.permutation.getter();
  v1 = MEMORY[0x259C64F20]();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v0;
}

uint64_t static NeuralNetwork.Layer.permute(name:inputName:outputName:permutation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = swift_allocObject();
  v26 = xmmword_2577442B0;
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 32) = v27;
  *(v20 + 40) = a6;
  *v18 = MEMORY[0x277D84F90];
  v21 = *(type metadata accessor for Proto_PermuteLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.PermuteParameters.permutation.setter(v22);
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
  sub_25752842C(v20);
  sub_2574897E0(v14);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  sub_25752846C();
  return sub_257634BB4(v18);
}

uint64_t static NeuralNetwork.Layer.Kind.permute(permutation:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_PermuteLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.PermuteParameters.permutation.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.PermuteParameters.init(permutation:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a2 + *(type metadata accessor for Proto_PermuteLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  NeuralNetwork.Layer.PermuteParameters.permutation.setter(a1);
}

uint64_t NeuralNetwork.Layer.PermuteParameters.permutation.getter()
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

void sub_2577071F0(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.PermuteParameters.permutation.setter(v2);
}

void NeuralNetwork.Layer.PermuteParameters.permutation.setter(uint64_t a1)
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

void (*NeuralNetwork.Layer.PermuteParameters.permutation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.PermuteParameters.permutation.getter();
  return sub_25770735C;
}

void sub_25770735C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NeuralNetwork.Layer.PermuteParameters.permutation.setter(v5);
  }

  else
  {
    NeuralNetwork.Layer.PermuteParameters.permutation.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.PermuteParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_PermuteLayerParams(0) + 20);
    sub_2577431B4();
    sub_2577074B0(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2577074B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NeuralNetwork.Layer.PermuteParameters()
{
  result = qword_27F881688;
  if (!qword_27F881688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25770756C()
{
  result = type metadata accessor for Proto_PermuteLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2577075D8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v38 = a1;
  v37 = sub_257743094();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v45 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v56 = MEMORY[0x277D84F90];
    v41 = v8;
    sub_257485338();
    v46 = v56;
    v13 = sub_25770BCC0(v41);
    v15 = v14;
    v16 = v41;
    v17 = 0;
    v44 = v41 + 64;
    v36[1] = v6 + 32;
    v36[0] = v41 + 72;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v16 + 32))
      {
        v18 = v13 >> 6;
        if ((*(v44 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v16 + 36) != v15)
        {
          goto LABEL_26;
        }

        v40 = v12;
        v42 = v17;
        v19 = (*(v16 + 56) + (v13 << 6));
        v20 = v19[3];
        v22 = *v19;
        v21 = v19[1];
        v55[2] = v19[2];
        v55[3] = v20;
        v55[0] = v22;
        v55[1] = v21;
        v23 = v19[1];
        v51 = *v19;
        v52 = v23;
        v24 = v19[3];
        v53 = v19[2];
        v54 = v24;
        sub_25765DBE8(v55, &v47);
        v38(&v51);
        v43 = v4;
        if (v4)
        {
          goto LABEL_30;
        }

        v47 = v51;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        sub_25765DC20(&v47);
        v25 = v46;
        v56 = v46;
        v26 = *(v46 + 16);
        if (v26 >= *(v46 + 24) >> 1)
        {
          sub_257485338();
          v25 = v56;
        }

        *(v25 + 16) = v26 + 1;
        v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v46 = v25;
        (*(v6 + 32))(v25 + v27 + *(v6 + 72) * v26, v45, v37);
        v16 = v41;
        v28 = 1 << *(v41 + 32);
        if (v13 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v44 + 8 * v18);
        if ((v29 & (1 << v13)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v41 + 36) != v15)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v13 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v18 << 6;
          v32 = v18 + 1;
          v33 = (v36[0] + 8 * v18);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_257653FC0(v13, v15, v40 & 1);
              v16 = v41;
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          sub_257653FC0(v13, v15, v40 & 1);
          v16 = v41;
        }

LABEL_19:
        v17 = v42 + 1;
        v4 = v43;
        if (v42 + 1 == v10)
        {
          return v46;
        }

        v12 = 0;
        v15 = *(v16 + 36);
        v13 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    sub_25765DC20(&v47);

    __break(1u);
  }

  return result;
}

void Package.init(url:)()
{
  OUTLINED_FUNCTION_165_0();
  v100 = v0;
  v2 = v1;
  v105 = v3;
  v4 = sub_257743164();
  v5 = OUTLINED_FUNCTION_63(v4);
  v98 = v6;
  v99 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v97 = v10 - v9;
  v95 = sub_257742F04();
  v11 = OUTLINED_FUNCTION_63(v95);
  v92 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v94 = v16 - v15;
  v108 = sub_257742FE4();
  v17 = OUTLINED_FUNCTION_63(v108);
  v112 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = sub_257743094();
  v25 = OUTLINED_FUNCTION_63(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_167();
  v96 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = v90 - v33;
  v106 = v27;
  v35 = *(v27 + 16);
  (v35)(v90 - v33, v2, v24);
  v107 = v34;
  if (sub_257742FF4() == 0x67616B6361706C6DLL && v36 == 0xE900000000000065)
  {
    v38 = v24;
  }

  else
  {
    v38 = v24;
    v39 = sub_257743994();

    if ((v39 & 1) == 0)
    {
      sub_257743014();
    }
  }

  v40 = v105;
  v93 = v38;
  v35();
  v41 = *MEMORY[0x277CC91C0];
  v104 = *(v112 + 104);
  v42 = v108;
  v104(v23, v41, v108);
  v43 = type metadata accessor for Package();
  v44 = *(v43 + 20);
  v45 = v43;
  v91 = v43;
  v103 = sub_2576E782C();
  sub_257743064();
  v102 = *(v112 + 8);
  v102(v23, v42);
  v46 = sub_257742F44();
  OUTLINED_FUNCTION_448(v46);
  *(v40 + *(v45 + 28)) = sub_257742F34();
  v47 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881698, &qword_2577761B0);
  v101 = v2;
  v48 = *(v92 + 72);
  v49 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2577442C0;

  sub_257742EE4();
  sub_257742ED4();
  sub_257742EF4();
  *&v109 = v50;
  OUTLINED_FUNCTION_16_28();
  sub_25770B8CC(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8816A8, &qword_2577761B8);
  sub_2577082AC();
  sub_2577437E4();
  sub_257742F14();

  v53 = v97;
  sub_257743154();
  v54 = sub_257743144();
  v56 = v55;
  (*(v98 + 8))(v53, v99);
  v57 = sub_2577435D4();
  v58 = (v47 + *(v91 + 24));
  *v58 = 0x302E302E31;
  v58[1] = 0xE500000000000000;
  v58[2] = v54;
  v58[3] = v56;
  v98 = v56;
  v58[4] = v57;
  OUTLINED_FUNCTION_12_44();
  *&v109 = v59;
  OUTLINED_FUNCTION_11_42();
  *(&v109 + 1) = v60;
  v61 = *MEMORY[0x277CC91D8];
  v62 = *MEMORY[0x277CC91D8];
  v63 = v108;
  v99 = v112 + 104;
  v104(v23, v62, v108);
  v64 = v96;
  v65 = v102;
  sub_257743084();
  v66 = v63;
  v67 = v64;
  v65(v23, v66);
  v68 = v100;
  v69 = sub_257743034();
  if (v68)
  {
    MEMORY[0x259C65580](v68);
    v70 = *(v106 + 8);
    v71 = v93;
    v70(v67, v93);
    v70(v101, v71);
    v70(v107, v71);
  }

  else
  {
    v72 = v69;
    LODWORD(v100) = v61;
    v97 = v57;
    v73 = v106 + 8;
    v74 = *(v106 + 8);
    v75 = v93;
    (v74)(v64, v93);
    if (v72)
    {
      v96 = v74;
      v106 = v73;
      OUTLINED_FUNCTION_12_44();
      *&v109 = v76;
      OUTLINED_FUNCTION_11_42();
      *(&v109 + 1) = v77;
      v78 = v23;
      v79 = v108;
      v104(v23, v100, v108);
      v80 = v90[1];
      sub_257743084();
      v102(v78, v79);
      sub_2577430C4();
      v83 = v96;
      (v96)(v80, v75);
      v84 = sub_257742EC4();
      OUTLINED_FUNCTION_448(v84);
      sub_257742EB4();
      sub_257708310();
      sub_257742EA4();

      v85 = OUTLINED_FUNCTION_39_14();
      sub_257486798(v85, v86);
      v87 = OUTLINED_FUNCTION_34_16();
      v83(v87);
      v88 = OUTLINED_FUNCTION_33_14();
      v83(v88);

      v89 = v110;
      *v58 = v109;
      v58[2] = v89;
      *(v58 + 3) = v111;
    }

    else
    {
      v81 = OUTLINED_FUNCTION_34_16();
      v74(v81);
      v82 = OUTLINED_FUNCTION_33_14();
      v74(v82);
    }
  }

  OUTLINED_FUNCTION_166_0();
}