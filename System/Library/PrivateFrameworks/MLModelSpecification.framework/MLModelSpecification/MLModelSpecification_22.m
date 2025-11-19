uint64_t FeatureType.ShapedArrayParameters.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
  *v1 = MEMORY[0x277D84F90];
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = type metadata accessor for Proto_ArrayFeatureType(0);
  v3 = v2[6];
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_23_17(&v1[v2[7]]);
  v8 = &v1[v2[8]];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void static FeatureType.ShapedArrayParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_0_0();
    v3 = *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);

    sub_2574C0698();
  }
}

void FeatureType.ShapedArrayParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_36_8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_2576A6380();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744000;
  *(v18 + 32) = 0x6570616873;
  *(v18 + 40) = 0xE500000000000000;
  v19 = FeatureType.ShapedArrayParameters.shape.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 0x6570795461746164;
  *(v18 + 88) = 0xE800000000000000;
  *(v18 + 120) = &type metadata for FeatureType.ShapedArrayParameters.DataType;
  FeatureType.ShapedArrayParameters.dataType.getter();
  *(v18 + 128) = 0xD000000000000010;
  *(v18 + 136) = 0x8000000257781200;
  *(v18 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880DB8, &qword_257771760);
  FeatureType.ShapedArrayParameters.shapeFlexibility.getter();
  strcpy((v18 + 176), "defaultValue");
  *(v18 + 189) = 0;
  *(v18 + 190) = -5120;
  v21 = &v0[*(v14 + 20)];
  v22 = &v21[*(type metadata accessor for Proto_ArrayFeatureType(0) + 28)];
  v23 = *v22;
  v24 = *(v22 + 8);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = *&v23;
    }

    else
    {
      v25 = 0.0;
      if (v24 == 2)
      {
        v25 = v23;
      }
    }
  }

  else
  {
    v25 = SLODWORD(v23);
  }

  v26 = MEMORY[0x277D839F8];
  *(v18 + 192) = v25;
  *(v18 + 216) = v26;
  *(v18 + 224) = 0x6E6F6974704F7369;
  *(v18 + 232) = 0xEA00000000006C61;
  LOBYTE(v26) = *v0;
  *(v18 + 264) = MEMORY[0x277D839B0];
  *(v18 + 240) = v26;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576A5AB8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_ArrayFeatureType.Shape(v3);
  v5 = OUTLINED_FUNCTION_63(v4);
  v39 = v6;
  v40 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = v0 + *(type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v2 + 16);
  if (v16)
  {
    v34 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484560();
    v17 = 0;
    v18 = v42;
    v36 = v11;
    v37 = v2 + 32;
    v35 = v14;
    v38 = v16;
    while (v17 < *(v2 + 16))
    {
      v19 = *(v37 + 8 * v17);
      v20 = *(v40 + 20);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = v2;
        v41 = MEMORY[0x277D84F90];
        sub_2574845B8();
        v23 = v41;
        v24 = *(v41 + 16);
        v25 = 32;
        do
        {
          v26 = *(v19 + v25);
          v41 = v23;
          v27 = *(v23 + 24);
          if (v24 >= v27 >> 1)
          {
            OUTLINED_FUNCTION_174(v27);
            sub_2574845B8();
            v23 = v41;
          }

          *(v23 + 16) = v24 + 1;
          *(v23 + 8 * v24 + 32) = v26;
          v25 += 8;
          ++v24;
          --v21;
        }

        while (v21);

        v2 = v22;
        v11 = v36;
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      *v11 = v23;
      OUTLINED_FUNCTION_12_28();
      sub_2576A642C();
      v42 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v28);
        sub_257484560();
        v18 = v42;
      }

      ++v17;
      *(v18 + 16) = v29 + 1;
      v30 = *(v39 + 80);
      OUTLINED_FUNCTION_193();
      v32 = *(v31 + 72);
      OUTLINED_FUNCTION_12_28();
      sub_2576A642C();
      if (v17 == v38)
      {

        v0 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_16:
    *v0 = v18;
    OUTLINED_FUNCTION_35();
  }
}

void sub_2576A5D40()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_16_1();
  v3 = type metadata accessor for SizeRange();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = type metadata accessor for Proto_SizeRange(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v0 + *(type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v16 = *(v2 + 16);
  if (v16)
  {
    v26 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_2574845E8();
    v17 = v27;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v2 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_13_19();
      sub_2576A6380();
      OUTLINED_FUNCTION_10_33();
      sub_2576A6380();
      OUTLINED_FUNCTION_15_16();
      v23 = *(v27 + 16);
      v22 = *(v27 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v22);
        sub_2574845E8();
      }

      *(v27 + 16) = v23 + 1;
      v24 = *(v12 + 80);
      OUTLINED_FUNCTION_193();
      v25 = *(v12 + 72);
      sub_2576A642C();
      v20 += v21;
      --v16;
    }

    while (v16);

    v0 = v26;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *v0 = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t static FeatureType.ShapedArrayParameters.ShapeFlexibility.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (a2[1])
    {
      v5 = *a2;

      sub_25748244C();
      v7 = v6;

      return v7 & 1;
    }

    return 0;
  }

  if (a2[1])
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_205();

  return sub_257482390(v9, v10);
}

uint64_t FeatureType.ShapedArrayParameters.DataType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 65600)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  if (result == 0x20000)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (result == 131104)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (result == 65568)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (result == 65552)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2576A6058@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ShapedArrayParameters.DataType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2576A6098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576A6108(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_2576A611C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_2576A6134()
{
  result = qword_281537BA8;
  if (!qword_281537BA8)
  {
    type metadata accessor for Proto_ArrayFeatureType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BA8);
  }

  return result;
}

unint64_t sub_2576A6190()
{
  result = qword_27F880DC0;
  if (!qword_27F880DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880DC0);
  }

  return result;
}

uint64_t sub_2576A620C()
{
  result = type metadata accessor for Proto_ArrayFeatureType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s21ShapedArrayParametersV8DataTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2576A6380()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_2576A63D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576A642C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

double OUTLINED_FUNCTION_14_15@<D0>(_BYTE *a1@<X8>)
{
  result = 0.0;
  if (a1[8] == 2)
  {
    return *a1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return sub_2576A63D4(v0, type metadata accessor for SizeRange);
}

void OUTLINED_FUNCTION_19_23()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16) + *(v0 + 12);
}

void OUTLINED_FUNCTION_28_17(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_29_13(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return type metadata accessor for Proto_ArrayFeatureType(0);
}

uint64_t OUTLINED_FUNCTION_36_8()
{

  return type metadata accessor for FeatureType.ShapedArrayParameters();
}

void sub_2576A66C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_257743704();
  if (!sub_2576A708C(a2, v8, a4))
  {
    sub_2576A72C4(a2, a3, a4);
    if (__OFADD__(a1, v9))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (a1 + v9 <= 120)
    {
      sub_2576A7674();
      MEMORY[0x259C64E90]();

      return;
    }
  }

  if (!a4)
  {

    return;
  }

  if (a4 != 1)
  {
    v27 = *(a2 + 16);
    if (!v27)
    {
      return;
    }

    v28 = 0;
    v29 = (a2 + 40);
    v30 = (a3 + 48);
    v46 = v27 - 1;
    v47 = *(a2 + 16);
    for (i = a3; ; a3 = i)
    {
      if (v27 == v28)
      {
        OUTLINED_FUNCTION_16_16();
        return;
      }

      if (v28 >= *(a3 + 16))
      {
        break;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = *(v30 - 2);
      v34 = *(v30 - 1);
      v35 = *v30;

      v36 = OUTLINED_FUNCTION_4_39();
      sub_2576A8798(v36, v37, v38);
      sub_2576A7944(v32, v31, a1, v33, v34, v35);
      v40 = v39;
      v42 = v41;

      v43 = OUTLINED_FUNCTION_4_39();
      sub_257483A28(v43, v44, v45);
      MEMORY[0x259C64E90](v40, v42);

      if (v46 != v28)
      {
        OUTLINED_FUNCTION_16_16();
      }

      v29 += 2;
      v30 += 24;
      ++v28;
      v27 = v47;
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (a2 + 48);
    while (v10 != v11)
    {
      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      v16 = OUTLINED_FUNCTION_5_40();
      sub_2576A8798(v16, v17, v18);
      v19 = sub_257743974();
      v21 = OUTLINED_FUNCTION_35_10(v19, v20, a1);
      v23 = v22;
      v24 = OUTLINED_FUNCTION_5_40();
      sub_257483A28(v24, v25, v26);

      MEMORY[0x259C64E90](v21, v23);

      if (v10 - 1 != v11)
      {
        OUTLINED_FUNCTION_16_16();
      }

      v12 += 24;
      ++v11;
    }
  }
}

uint64_t sub_2576A6968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
}

uint64_t sub_2576A6978(uint64_t a1)
{
  v2 = *(a1 + 16);

  return a1;
}

uint64_t sub_2576A69C4()
{
  v0 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

uint64_t sub_2576A69F0()
{
  v0 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  return v0;
}

uint64_t sub_2576A6A1C()
{
  v1 = OUTLINED_FUNCTION_39_10();
  v2 = type metadata accessor for DenseSupportVector(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_18();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E18, &qword_257771B68);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_15();
  if (!v0)
  {
    goto LABEL_4;
  }

  v10 = sub_2577014A8();
  v11 = OUTLINED_FUNCTION_205();
  sub_2576AAB64(v11, v12, v13);
  OUTLINED_FUNCTION_10_34();
  v20 = OUTLINED_FUNCTION_36_9(v14, v15, v16, v17, v18, v19);
  v21 = OUTLINED_FUNCTION_4_39();
  sub_2574695E4(v21, v22, v23);
  if (v20 != v0)
  {
    __break(1u);
LABEL_4:
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v10;
}

uint64_t sub_2576A6B40()
{
  OUTLINED_FUNCTION_39_10();
  v1 = type metadata accessor for SupportVectorCoefficients();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_18();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E00, &qword_257771B50);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_15();
  if (!v0)
  {
    goto LABEL_4;
  }

  v9 = sub_2577014A8();
  v10 = OUTLINED_FUNCTION_205();
  sub_2576AAB64(v10, v11, v12);
  OUTLINED_FUNCTION_9_31();
  v19 = OUTLINED_FUNCTION_36_9(v13, v14, v15, v16, v17, v18);
  v20 = OUTLINED_FUNCTION_4_39();
  sub_2574695E4(v20, v21, v22);
  if (v19 != v0)
  {
    __break(1u);
LABEL_4:
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v9;
}

size_t sub_2576A6C64()
{
  v2 = OUTLINED_FUNCTION_39_10();
  v3 = type metadata accessor for DenseSupportVectorCollection(v2);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E28, &unk_257771B78);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_257701EC8(v13, 0);
  v15 = type metadata accessor for DenseSupportVector(0);
  OUTLINED_FUNCTION_13(v15);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  sub_2576AAB64(v0, v1, type metadata accessor for DenseSupportVectorCollection);
  v18 = OUTLINED_FUNCTION_37_11();
  v21 = sub_2576A8F1C(v18, v19, v20);
  sub_2574695E4(v12, &qword_27F880E28, &unk_257771B78);
  if (v21 != v13)
  {
    __break(1u);
LABEL_4:
    v14 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v14;
}

size_t sub_2576A6DCC()
{
  v2 = OUTLINED_FUNCTION_39_10();
  v3 = type metadata accessor for SparseSupportVectorCollection(v2);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_257701ECC(v13, 0);
  v15 = type metadata accessor for SparseSupportVector(0);
  OUTLINED_FUNCTION_13(v15);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  sub_2576AAB64(v0, v1, type metadata accessor for SparseSupportVectorCollection);
  v18 = OUTLINED_FUNCTION_37_11();
  v21 = sub_2576A9654(v18, v19, v20);
  sub_2574695E4(v12, &qword_27F880E10, &qword_257771B60);
  if (v21 != v13)
  {
    __break(1u);
LABEL_4:
    v14 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_45_7();
  return v14;
}

uint64_t sub_2576A6F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_257701514();
  v5 = sub_2576A9D8C(&v7, v4 + 32, v2, a1);

  if (v5 == v2)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A6FDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2576A8A20(a1, a2);

  return v2;
}

BOOL sub_2576A708C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 != 1)
  {
    return *(a1 + 16) != 0;
  }

  v3 = (a1 + 48);
  v4 = *(a1 + 16) + 1;
  do
  {
    v5 = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v6 = v3 + 24;
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;
    v10 = OUTLINED_FUNCTION_173();
    sub_2576A8798(v10, v11, v9);
    v12 = sub_2576A708C(v8);
    v13 = OUTLINED_FUNCTION_173();
    sub_257483A28(v13, v14, v9);
    v3 = v6;
  }

  while ((v12 & 1) == 0);
  return v5;
}

uint64_t sub_2576A7140(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    v3 = OUTLINED_FUNCTION_52_4();
    sub_257483754(v3, v4, v5);
    v6 = v29;
    v28 = a1;
    v7 = (a1 + 40);
    v8 = v2;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = *(v29 + 16);
      v11 = *(v29 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_257483754((v11 > 1), v12 + 1, 1);
      }

      *(v29 + 16) = v12 + 1;
      v13 = v29 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v7 += 5;
      --v8;
    }

    while (v8);
    v30 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_52_4();
    sub_257484040(v14, v15, v16);
    v17 = (v28 + 64);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      v21 = OUTLINED_FUNCTION_4_39();
      sub_2576A8798(v21, v22, v23);
      v25 = *(v30 + 16);
      v24 = *(v30 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_257484040((v24 > 1), v25 + 1, 1);
      }

      v17 += 40;
      *(v30 + 16) = v25 + 1;
      v26 = v30 + 24 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = v19;
      *(v26 + 48) = v20;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_2576A72C4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {

    sub_2577436A4();
    return;
  }

  if (a3 == 1)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      return;
    }

    v50 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_52_4();
    sub_257483724();
    v6 = v50;
    v7 = (a1 + 48);
    v8 = v5;
    do
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = OUTLINED_FUNCTION_277();
      sub_2576A8798(v12, v13, v11);
      v14 = OUTLINED_FUNCTION_277();
      v15 = sub_2576A72C4(v14);
      v16 = OUTLINED_FUNCTION_277();
      sub_257483A28(v16, v17, v11);
      OUTLINED_FUNCTION_38_8();
      if (v18)
      {
        sub_257483724();
        v6 = v50;
      }

      v7 += 24;
      *(v6 + 16) = v9;
      *(v6 + 8 * v10 + 32) = v15;
      --v8;
    }

    while (v8);
    v38 = 0;
    v39 = v10 + 1;
    v40 = 32;
    do
    {
      v41 = *(v6 + v40);
      v42 = __OFADD__(v38, v41);
      v38 += v41;
      if (v42)
      {
        __break(1u);
        goto LABEL_37;
      }

      v40 += 8;
      --v39;
    }

    while (v39);

    if (__OFADD__(v38, 2))
    {
      goto LABEL_41;
    }

    if (v5 + 0x3FFFFFFFFFFFFFFFLL < 0)
    {
      goto LABEL_42;
    }

    if (!__OFADD__(v38 + 2, 2 * v5 - 2))
    {
      return;
    }

    __break(1u);
LABEL_29:
    v43 = 0;
    v44 = v10 + 1;
    v45 = 32;
    while (1)
    {
      v46 = *(v6 + v45);
      v42 = __OFADD__(v43, v46);
      v43 += v46;
      if (v42)
      {
        break;
      }

      v45 += 8;
      if (!--v44)
      {

        if (__OFADD__(v43, 2))
        {
          goto LABEL_43;
        }

        v47 = *(v48 + 16);
        if (v47 + 0x3FFFFFFFFFFFFFFFLL < 0)
        {
          goto LABEL_44;
        }

        if (__OFADD__(v43 + 2, 2 * v47 - 2))
        {
          goto LABEL_45;
        }

        return;
      }
    }
  }

  else
  {
    v19 = *(a1 + 16);
    if (!v19)
    {
      return;
    }

    v51 = MEMORY[0x277D84F90];
    sub_257483724();
    v6 = v51;
    v20 = *(a2 + 16);
    v48 = a1;
    v21 = (a1 + 40);
    v22 = (a2 + 48);
    while (v20)
    {
      v49 = v19;
      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v22 - 2);
      v26 = *(v22 - 1);
      v27 = *v22;

      v28 = OUTLINED_FUNCTION_22_19();
      sub_2576A8798(v28, v29, v30);
      v10 = sub_2577436A4();
      v31 = OUTLINED_FUNCTION_22_19();
      v32 = sub_2576A72C4(v31);

      v33 = OUTLINED_FUNCTION_22_19();
      sub_257483A28(v33, v34, v35);
      v36 = v10 + v32;
      if (__OFADD__(v10, v32))
      {
        goto LABEL_38;
      }

      v37 = v36 + 2;
      if (__OFADD__(v36, 2))
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_38_8();
      if (v18)
      {
        sub_257483724();
        v6 = v51;
      }

      *(v6 + 16) = v23;
      *(v6 + 8 * v10 + 32) = v37;
      --v20;
      v21 += 2;
      v22 += 24;
      v19 = v49 - 1;
      if (v49 == 1)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_2576A75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!sub_2576A708C(a3, a2, a5))
  {
    if (a2)
    {
      a1 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v8 = OUTLINED_FUNCTION_173();
      sub_2576A72C4(v8, v9, a5);
      if (!__OFADD__(a1, v10))
      {
        return;
      }

      __break(1u);
    }

    v11 = OUTLINED_FUNCTION_173();
    sub_2576A72C4(v11, v12, a5);
    if (!__OFADD__(a1, v13))
    {
      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_2576A7674()
{
  OUTLINED_FUNCTION_24_17();
  v3 = v2;
  v4 = v0;
  if (!v1)
  {

LABEL_19:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_25_15();
    return;
  }

  if (v1 == 1)
  {
    v5 = *(v0 + 16);
    if (v5)
    {
      v48 = MEMORY[0x277D84F90];
      v6 = OUTLINED_FUNCTION_52_4();
      sub_257483754(v6, v7, v8);
      v9 = (v4 + 48);
      do
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v13 = OUTLINED_FUNCTION_21_20();
        sub_2576A8798(v13, v14, v15);
        v16 = OUTLINED_FUNCTION_21_20();
        v17 = sub_2576A7674(v16);
        v19 = v18;
        v20 = OUTLINED_FUNCTION_21_20();
        sub_257483A28(v20, v21, v22);
        v24 = *(v48 + 16);
        v23 = *(v48 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_257483754((v23 > 1), v24 + 1, 1);
        }

        v9 += 24;
        *(v48 + 16) = v24 + 1;
        v25 = v48 + 16 * v24;
        *(v25 + 32) = v17;
        *(v25 + 40) = v19;
        --v5;
      }

      while (v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_11_30(&qword_27F87A200);
    OUTLINED_FUNCTION_34_10();

    OUTLINED_FUNCTION_33_10();

    v26 = 93;
    goto LABEL_18;
  }

  v27 = *(v0 + 16);
  if (!v27)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    OUTLINED_FUNCTION_11_30(&qword_27F87A200);
    OUTLINED_FUNCTION_34_10();

    OUTLINED_FUNCTION_33_10();

    v26 = 125;
LABEL_18:
    MEMORY[0x259C64E90](v26, 0xE100000000000000);
    goto LABEL_19;
  }

  v51 = MEMORY[0x277D84F90];
  sub_257483754(0, v27, 0);
  v28 = *(v4 + 16);
  v29 = (v4 + 40);
  v30 = (v3 + 48);
  v31 = *(v3 + 16);
  while (v28)
  {
    if (!v31)
    {
      goto LABEL_21;
    }

    v46 = v28;
    v47 = v27;
    v32 = *(v30 - 2);
    v33 = *(v30 - 1);
    v34 = *v30;
    v49 = *(v29 - 1);
    v50 = *v29;
    swift_bridgeObjectRetain_n();
    v35 = OUTLINED_FUNCTION_4_39();
    sub_2576A8798(v35, v36, v37);
    MEMORY[0x259C64E90](8250, 0xE200000000000000);
    v38 = OUTLINED_FUNCTION_4_39();
    v39 = sub_2576A7674(v38);
    MEMORY[0x259C64E90](v39);

    v40 = OUTLINED_FUNCTION_4_39();
    sub_257483A28(v40, v41, v42);
    v44 = *(v51 + 16);
    v43 = *(v51 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_257483754((v43 > 1), v44 + 1, 1);
    }

    *(v51 + 16) = v44 + 1;
    v45 = v51 + 16 * v44;
    --v31;
    *(v45 + 32) = v49;
    *(v45 + 40) = v50;
    v28 = v46 - 1;
    v29 += 2;
    v30 += 24;
    v27 = v47 - 1;
    if (v47 == 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2576A7944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = sub_257743704();
  v14 = v13;

  MEMORY[0x259C64E90](a1, a2);
  MEMORY[0x259C64E90](58, 0xE100000000000000);
  v15 = sub_2577436A4();
  v16 = sub_2577436A4();
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFADD__(v17, 2))
  {
LABEL_30:
    __break(1u);
    return;
  }

  sub_2576A75C0(a3, v17 + 2, a4, a5, a6);
  if (v18)
  {

    v59 = 32;
    v60 = 0xE100000000000000;
    sub_2576A7674();
    MEMORY[0x259C64E90]();

LABEL_15:
    MEMORY[0x259C64E90](v59, v60);

    return;
  }

  OUTLINED_FUNCTION_16_16();
  if (!a6)
  {
    v59 = v12;
    v60 = v14;
    MEMORY[0x259C64E90](8224, 0xE200000000000000);
    MEMORY[0x259C64E90](a4, a5);
    goto LABEL_15;
  }

  if (a6 == 1)
  {

    v19 = *(a4 + 16);
    if (v19)
    {
      v20 = a4;
      v21 = 0;
      v22 = (v20 + 48);
      while (v19 != v21)
      {
        v24 = *(v22 - 2);
        v23 = *(v22 - 1);
        v25 = *v22;
        v26 = OUTLINED_FUNCTION_5_40();
        sub_2576A8798(v26, v27, v28);
        v29 = sub_257743974();
        v31 = OUTLINED_FUNCTION_35_10(v29, v30, a3 + 1);
        v33 = v32;
        v34 = OUTLINED_FUNCTION_5_40();
        sub_257483A28(v34, v35, v36);

        MEMORY[0x259C64E90](v31, v33);

        if (v19 - 1 != v21)
        {
          OUTLINED_FUNCTION_16_16();
        }

        v22 += 24;
        ++v21;
      }

      return;
    }

    v55 = 23899;
LABEL_26:
    MEMORY[0x259C64E90](v55, 0xE200000000000000);
    return;
  }

  v37 = *(a4 + 16);
  if (!v37)
  {
    v55 = 32123;
    goto LABEL_26;
  }

  v38 = 0;
  v39 = (a4 + 40);
  v40 = (a5 + 48);
  v56 = v37 - 1;
  v57 = v37;
  v58 = a5;
  while (v37 != v38)
  {
    if (v38 >= *(a5 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v42 = *(v39 - 1);
    v41 = *v39;
    v44 = *(v40 - 2);
    v43 = *(v40 - 1);
    v45 = *v40;

    v46 = OUTLINED_FUNCTION_5_40();
    sub_2576A8798(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_35_10(v42, v41, a3 + 1);
    v51 = v50;

    v52 = OUTLINED_FUNCTION_5_40();
    sub_257483A28(v52, v53, v54);
    MEMORY[0x259C64E90](v49, v51);

    if (v56 != v38)
    {
      OUTLINED_FUNCTION_16_16();
    }

    v39 += 2;
    v40 += 24;
    ++v38;
    v37 = v57;
    a5 = v58;
  }
}

uint64_t sub_2576A7C70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2576A7140(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2576A7C98(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2576A7CA8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = j__OUTLINED_FUNCTION_32(*v2, a1);
  *a2 = result;
  return result;
}

void (*sub_2576A7CD4(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v5 = __swift_coroFrameAllocStub(0x21uLL);
  *a1 = v5;
  v6 = *a2;
  v8 = *v2;
  v7 = v2[1];
  v9 = OUTLINED_FUNCTION_289();
  sub_2576C2B8C(v6, v9 & 1, v8);
  if (v9)
  {
    v10 = v8 + 16 * v6;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    v13 = OUTLINED_FUNCTION_289();
    sub_2576C2B8C(v6, v13 & 1, v7);
    if (v13)
    {
      v14 = v7 + 24 * v6;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *(v14 + 48);
      *v5 = v12;
      v5[1] = v11;
      v5[2] = v15;
      v5[3] = v16;
      *(v5 + 32) = v17;

      sub_2576A8798(v15, v16, v17);
      return sub_2576A7DEC;
    }
  }

  else
  {
    sub_2576A81B8(v6, v8);
    __break(1u);
  }

  result = sub_2576A8644(v6, v7);
  __break(1u);
  return result;
}

void sub_2576A7DEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  sub_257483A28(v3, v4, v5);

  free(v1);
}

uint64_t sub_2576A7E48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[1];
  result = sub_2576A7E80(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_2576A7E80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t sub_2576A7EE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  result = sub_2576A6978(*v1);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_2576A7F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  result = sub_2576A7F50(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2576A7F50(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_2576A7F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_2576A7FB4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v9 & 1;
  return result;
}

uint64_t sub_2576A7FB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2576A8000(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_2576A8010(*a1, *a2);
}

uint64_t sub_2576A8010(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_2576A804C(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_257466FD8(*a1, *a2, a2[1]);
}

uint64_t sub_2576A8060(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_25745F0F4(*a1, *a2, a2[1]);
}

uint64_t sub_2576A8074(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_25745F108(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_2576A808C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2576A7C98(*a1);
  *a2 = result;
  return result;
}

__n128 sub_2576A80B8@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

unint64_t sub_2576A80DC()
{
  result = qword_27F880DD8;
  if (!qword_27F880DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880DD8);
  }

  return result;
}

uint64_t sub_2576A81B8(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  MEMORY[0x259C64E90](0x676E69727453, 0xE600000000000000);
  MEMORY[0x259C64E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_257743AF4();
  MEMORY[0x259C64E90](v4);

  result = sub_2577438D4();
  __break(1u);
  return result;
}

uint64_t sub_2576A8300()
{
  v2 = OUTLINED_FUNCTION_15_17();
  v3 = type metadata accessor for Proto_DenseVector(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v8 & v7))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for Proto_DenseVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000011);
  v10 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v10);
  swift_getObjectType();
  v11 = sub_257743AF4();
  MEMORY[0x259C64E90](v11);

  result = OUTLINED_FUNCTION_17_19();
  __break(1u);
  return result;
}

uint64_t sub_2576A8420()
{
  v2 = OUTLINED_FUNCTION_15_17();
  v3 = type metadata accessor for Proto_SparseVector(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v8 & v7))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for Proto_SparseVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000012);
  v10 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v10);
  swift_getObjectType();
  v11 = sub_257743AF4();
  MEMORY[0x259C64E90](v11);

  result = OUTLINED_FUNCTION_17_19();
  __break(1u);
  return result;
}

uint64_t sub_2576A852C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    return v2;
  }

LABEL_7:
  sub_257743834();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000043);
  MEMORY[0x259C64E90](0x656C62756F44, 0xE600000000000000);
  v4 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v4);
  swift_getObjectType();
  v5 = sub_257743AF4();
  MEMORY[0x259C64E90](v5);

  result = OUTLINED_FUNCTION_17_19();
  __break(1u);
  return result;
}

uint64_t sub_2576A8644(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    sub_257483A28(v5, v6, v7);
    return v2;
  }

LABEL_7:
  sub_257743834();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  MEMORY[0x259C64E90](0x646F4E746E697250, 0xE900000000000065);
  MEMORY[0x259C64E90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_257743AF4();
  MEMORY[0x259C64E90](v4);

  result = sub_2577438D4();
  __break(1u);
  return result;
}

uint64_t sub_2576A8798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
    }

    else if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2576A87F4()
{
  v2 = OUTLINED_FUNCTION_15_17();
  v3 = type metadata accessor for SparseSupportVector(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v8 & v7))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for SparseSupportVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  MEMORY[0x259C64E90](0xD000000000000043, 0x8000000257781250);
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000013);
  v10 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v10);
  swift_getObjectType();
  v11 = sub_257743AF4();
  MEMORY[0x259C64E90](v11);

  result = OUTLINED_FUNCTION_17_19();
  __break(1u);
  return result;
}

uint64_t sub_2576A8914()
{
  v2 = OUTLINED_FUNCTION_15_17();
  v3 = type metadata accessor for DenseSupportVector(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  if (v0 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_10();
  if (!(!v8 & v7))
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_52();
  if (OUTLINED_FUNCTION_6_39())
  {
    sub_2576AA004(v1, type metadata accessor for DenseSupportVector);
    return OUTLINED_FUNCTION_18_27();
  }

LABEL_8:
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_29_14();
  MEMORY[0x259C64E90](0xD000000000000012);
  v10 = OUTLINED_FUNCTION_0_72();
  MEMORY[0x259C64E90](v10);
  swift_getObjectType();
  v11 = sub_257743AF4();
  MEMORY[0x259C64E90](v11);

  result = OUTLINED_FUNCTION_17_19();
  __break(1u);
  return result;
}

uint64_t sub_2576A8A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(a1 + 16);
  v6 = sub_257701578();
  v7 = sub_2576A9E7C(&v9, v6 + 32, v2, a1, a2);

  if (v7 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_2576A8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_24_17();
  a25 = v27;
  a26 = v29;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v28;
    v33 = OUTLINED_FUNCTION_20_16();
    v35 = v34(v33);
    v32(&a10, v35 + 32, v31, v26);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_44_6();
    if (!v36)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_25_15();
}

uint64_t sub_2576A8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v10 = v6;
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v15 = *(*v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  result = sub_2576A9FA8(v10, &v25 - v17, a6);
  v20 = v14[11];
  *&v18[v20] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    sub_2576AABC0(v18, a1, a4, a5);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = *(*v18 + 16);
    v23 = *v18 + 32;
    while (v22 != v21)
    {
      v24 = *(v23 + 8 * v21);
      *&v18[v20] = v21 + 1;
      *(a2 + 8 * v21++) = v24;
      if (a3 == v21)
      {
        goto LABEL_10;
      }
    }

    a3 = v22;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A8F1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E20, &qword_257771B70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v8;
  v66 = type metadata accessor for DenseSupportVector(0);
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v65 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E28, &unk_257771B78);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  sub_2576AAB64(v3, &v58 - v23, type metadata accessor for DenseSupportVectorCollection);
  v25 = *(v21 + 44);
  DenseSupportVectorCollection.vectors.getter();

  result = sub_2576AA004(v3, type metadata accessor for DenseSupportVectorCollection);
  v69 = v24;
  v64 = v25;
  *&v24[v25] = 0;
  if (!a2)
  {
    v27 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_29:
    v27 = a3;
LABEL_32:
    sub_2576AABC0(v69, v59, &qword_27F880E28, &unk_257771B78);
    return v27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = *v69;
    v29 = *(*v69 + 16);
    v70 = *v69;
    v62 = v29;
    v63 = v18;
    v68 = a3;
    v60 = v15;
    while (1)
    {
      v72 = a2;
      if (v29)
      {
        v30 = v27;
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v31 = v73;
        v32 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v33 = v29;
        v34 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v35 = *(v32 + 72);
        do
        {
          sub_2576AAB64(v34, v18, type metadata accessor for Proto_DenseVector);
          v73 = v31;
          v36 = v18;
          v37 = *(v31 + 16);
          if (v37 >= *(v31 + 24) >> 1)
          {
            sub_2574836CC();
            v31 = v73;
          }

          *(v31 + 16) = v37 + 1;
          sub_2576A9FA8(v36, v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, type metadata accessor for DenseSupportVector);
          v34 += v35;
          --v33;
          v18 = v36;
        }

        while (v33);
        v27 = v30;
        a3 = v68;
        a2 = v72;
        v28 = v70;
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v38 = *(v31 + 16);

      if (v27 == v38)
      {
        v57 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v66);
        sub_2574695E4(v57, &qword_27F880E20, &qword_257771B70);
        goto LABEL_32;
      }

      v39 = *(v28 + 16);
      if (v39)
      {
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v40 = v73;
        v41 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v42 = v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v43 = *(v41 + 72);
        do
        {
          sub_2576AAB64(v42, v15, type metadata accessor for Proto_DenseVector);
          v73 = v40;
          v44 = *(v40 + 16);
          if (v44 >= *(v40 + 24) >> 1)
          {
            sub_2574836CC();
            v40 = v73;
          }

          *(v40 + 16) = v44 + 1;
          result = sub_2576A9FA8(v15, v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v44, type metadata accessor for DenseSupportVector);
          v42 += v43;
          --v39;
        }

        while (v39);
        a2 = v72;
        v28 = v70;
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      if (v27 >= *(v40 + 16))
      {
        break;
      }

      v45 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v46 = *(v9 + 72);
      sub_2576AAB64(v40 + v45 + v46 * v27, v71, type metadata accessor for DenseSupportVector);

      v47 = *(v28 + 16);
      if (v47)
      {
        v67 = v27;
        v73 = MEMORY[0x277D84F90];
        sub_2574836CC();
        v48 = v73;
        v49 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v50 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v51 = *(v49 + 72);
        v52 = v61;
        do
        {
          sub_2576AAB64(v50, v52, type metadata accessor for Proto_DenseVector);
          v73 = v48;
          v53 = *(v48 + 16);
          if (v53 >= *(v48 + 24) >> 1)
          {
            sub_2574836CC();
            v48 = v73;
          }

          *(v48 + 16) = v53 + 1;
          sub_2576A9FA8(v52, v48 + v45 + v53 * v46, type metadata accessor for DenseSupportVector);
          v50 += v51;
          --v47;
        }

        while (v47);

        v27 = v67;
        a3 = v68;
        a2 = v72;
        v15 = v60;
        v28 = v70;
      }

      *&v69[v64] = ++v27;
      v54 = v71;
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v66);
      v55 = v54;
      v56 = v65;
      sub_2576A9FA8(v55, v65, type metadata accessor for DenseSupportVector);
      sub_2576A9FA8(v56, a2, type metadata accessor for DenseSupportVector);
      if (v27 == a3)
      {
        goto LABEL_29;
      }

      a2 += v46;
      v29 = v62;
      v18 = v63;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A9654(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E08, &qword_257771B58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v8;
  v66 = type metadata accessor for SparseSupportVector(0);
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v65 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E10, &qword_257771B60);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  sub_2576AAB64(v3, &v58 - v23, type metadata accessor for SparseSupportVectorCollection);
  v25 = *(v21 + 44);
  SparseSupportVectorCollection.vectors.getter();

  result = sub_2576AA004(v3, type metadata accessor for SparseSupportVectorCollection);
  v69 = v24;
  v64 = v25;
  *&v24[v25] = 0;
  if (!a2)
  {
    v27 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_29:
    v27 = a3;
LABEL_32:
    sub_2576AABC0(v69, v59, &qword_27F880E10, &qword_257771B60);
    return v27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = *v69;
    v29 = *(*v69 + 16);
    v70 = *v69;
    v62 = v29;
    v63 = v18;
    v68 = a3;
    v60 = v15;
    while (1)
    {
      v72 = a2;
      if (v29)
      {
        v30 = v27;
        v73 = MEMORY[0x277D84F90];
        sub_257483674();
        v31 = v73;
        v32 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v33 = v29;
        v34 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v35 = *(v32 + 72);
        do
        {
          sub_2576AAB64(v34, v18, type metadata accessor for Proto_SparseVector);
          v73 = v31;
          v36 = v18;
          v37 = *(v31 + 16);
          if (v37 >= *(v31 + 24) >> 1)
          {
            sub_257483674();
            v31 = v73;
          }

          *(v31 + 16) = v37 + 1;
          sub_2576A9FA8(v36, v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, type metadata accessor for SparseSupportVector);
          v34 += v35;
          --v33;
          v18 = v36;
        }

        while (v33);
        v27 = v30;
        a3 = v68;
        a2 = v72;
        v28 = v70;
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v38 = *(v31 + 16);

      if (v27 == v38)
      {
        v57 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v66);
        sub_2574695E4(v57, &qword_27F880E08, &qword_257771B58);
        goto LABEL_32;
      }

      v39 = *(v28 + 16);
      if (v39)
      {
        v73 = MEMORY[0x277D84F90];
        sub_257483674();
        v40 = v73;
        v41 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v42 = v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v43 = *(v41 + 72);
        do
        {
          sub_2576AAB64(v42, v15, type metadata accessor for Proto_SparseVector);
          v73 = v40;
          v44 = *(v40 + 16);
          if (v44 >= *(v40 + 24) >> 1)
          {
            sub_257483674();
            v40 = v73;
          }

          *(v40 + 16) = v44 + 1;
          result = sub_2576A9FA8(v15, v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v44, type metadata accessor for SparseSupportVector);
          v42 += v43;
          --v39;
        }

        while (v39);
        a2 = v72;
        v28 = v70;
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      if (v27 >= *(v40 + 16))
      {
        break;
      }

      v45 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v46 = *(v9 + 72);
      sub_2576AAB64(v40 + v45 + v46 * v27, v71, type metadata accessor for SparseSupportVector);

      v47 = *(v28 + 16);
      if (v47)
      {
        v67 = v27;
        v73 = MEMORY[0x277D84F90];
        sub_257483674();
        v48 = v73;
        v49 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v50 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v51 = *(v49 + 72);
        v52 = v61;
        do
        {
          sub_2576AAB64(v50, v52, type metadata accessor for Proto_SparseVector);
          v73 = v48;
          v53 = *(v48 + 16);
          if (v53 >= *(v48 + 24) >> 1)
          {
            sub_257483674();
            v48 = v73;
          }

          *(v48 + 16) = v53 + 1;
          sub_2576A9FA8(v52, v48 + v45 + v53 * v46, type metadata accessor for SparseSupportVector);
          v50 += v51;
          --v47;
        }

        while (v47);

        v27 = v67;
        a3 = v68;
        a2 = v72;
        v15 = v60;
        v28 = v70;
      }

      *&v69[v64] = ++v27;
      v54 = v71;
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v66);
      v55 = v54;
      v56 = v65;
      sub_2576A9FA8(v55, v65, type metadata accessor for SparseSupportVector);
      sub_2576A9FA8(v56, a2, type metadata accessor for SparseSupportVector);
      if (v27 == a3)
      {
        goto LABEL_29;
      }

      a2 += v46;
      v29 = v62;
      v18 = v63;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A9D8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v13 = *(a4 + v8 + 40);
      v14 = *(a4 + v8 + 48);
      v15 = *(a4 + v8 + 56);
      v16 = *(a4 + v8 + 64);
      v17 = *(a4 + v8 + 72);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 8) = v13;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      *(v12 + 32) = v16;
      *(v12 + 40) = v17;
      if (v11 == v9)
      {
        sub_257466F40(v13, v14, v15);

        goto LABEL_12;
      }

      sub_257466F40(v13, v14, v15);

      v8 += 48;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2576A9E7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v16 = a3;
    v17 = result;
    v7 = 0;
    v8 = *(a4 + 16);
    v9 = a3 - 1;
    v10 = (a4 + 40);
    for (i = (a5 + 48); ; i += 24)
    {
      if (v8 == v7)
      {
        a3 = v8;
        result = v17;
        goto LABEL_13;
      }

      if (v7 >= *(a4 + 16))
      {
        break;
      }

      if (v7 >= *(a5 + 16))
      {
        goto LABEL_15;
      }

      v12 = *v10;
      v13 = *(i - 2);
      v14 = *(i - 1);
      v15 = *i;
      *v6 = *(v10 - 1);
      *(v6 + 8) = v12;
      *(v6 + 16) = v13;
      *(v6 + 24) = v14;
      *(v6 + 32) = v15;
      if (v9 == v7)
      {

        sub_2576A8798(v13, v14, v15);
        a3 = v16;
        result = v17;
        goto LABEL_13;
      }

      v6 += 40;

      result = sub_2576A8798(v13, v14, v15);
      v10 += 2;
      ++v7;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576A9FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576AA004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_2576AA05C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v25 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            v7 = 0;
            a3 = v9;
            result = v24;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v13);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = v10;
LABEL_15:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(a4 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v8 = *v16;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v22 = a3;
      if (v12 == a3)
      {
        break;
      }

      v8 += 40;

      result = sub_2576AAC1C(v19, v20, v21);
      v9 = v12;
      v10 = v13;
      a4 = v25;
      a3 = v22;
    }

    sub_2576AAC1C(v19, v20, v21);
    v10 = v13;
    result = v24;
    a4 = v25;
    a3 = v22;
LABEL_19:
    v5 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_2576AA20C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a4 + 56) + v12);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v12);
      a2[1] = v13;
      a2 += 2;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576AA300(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576AA460(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v19 = (*(a4 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      *v11 = v18;
      v11[1] = v21;
      v11[2] = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576AA5C0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2576AA728(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2576AA8B0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v53 = a7;
  v54 = a8;
  v51 = a5;
  v52 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v47 = *(v50 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v48 = &v44 - v16;
  v17 = a4 + 64;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a4 + 64);
  if (!a2)
  {
    v22 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v22;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v44 = -1 << *(a4 + 32);
    v45 = a1;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v18) >> 6;
    v46 = a3;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_25;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }

      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v20 = 0;
            a3 = v21;
            a1 = v45;
            goto LABEL_20;
          }

          v20 = *(v17 + 8 * v25);
          ++v22;
          if (v20)
          {
            v55 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v55 = a2;
      v25 = v22;
LABEL_16:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = v26 | (v25 << 6);
      v28 = a4;
      v29 = *(a4 + 48);
      v30 = *(a4 + 56);
      v31 = (v29 + 16 * v27);
      v32 = *v31;
      v33 = v31[1];
      v34 = v53(0);
      OUTLINED_FUNCTION_13(v34);
      v36 = v30 + *(v35 + 72) * v27;
      v37 = v49;
      sub_2576AAB64(v36, &v49[*(v50 + 48)], v54);
      *v37 = v32;
      v37[1] = v33;
      v38 = v37;
      v39 = v48;
      v41 = v51;
      v40 = v52;
      sub_2576AABC0(v38, v48, v51, v52);
      v42 = v39;
      v43 = v55;
      sub_2576AABC0(v42, v55, v41, v40);
      a3 = v46;
      if (v24 == v46)
      {
        break;
      }

      a2 = v43 + *(v47 + 72);

      v21 = v24;
      v22 = v25;
      a4 = v28;
    }

    v22 = v25;
    a1 = v45;
    a4 = v28;
LABEL_20:
    v18 = v44;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2576AAB64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576AABC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_2576AAC1C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_257486740(result, a2);
  }

  if (a3 == 1)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2576AAC68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2576AACA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52()
{
  *(v2 - 48) = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v0 + 0x20);

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_6_39()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_30(unint64_t *a1)
{

  return sub_25767A50C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_29()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0xE000000000000000;

  return sub_257743834();
}

uint64_t OUTLINED_FUNCTION_13_20()
{
}

void OUTLINED_FUNCTION_16_16()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return sub_2577438D4();
}

uint64_t OUTLINED_FUNCTION_23_18@<X0>(uint64_t (*a1)(void)@<X6>, uint64_t (*a2)(void)@<X7>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2576AA8B0(va, v4 + a3, v5, v6, v7, v8, a1, a2);
}

void OUTLINED_FUNCTION_31_9()
{

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_33_10()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_34_10()
{

  return sub_257743604();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2576A7944(a1, a2, a3, v4, v3, v5);
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{

  return sub_2576A8DF8(v8, v6 + 32, v7, v9, v10, a6);
}

void OUTLINED_FUNCTION_40_9()
{
  v1 = *(v0 - 40);
  *(v0 - 48) = *(v0 - 48);
  *(v0 - 40) = v1;
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_2576AA004(v1, v0);
}

Swift::Void __swiftcall Model.rename(feature:to:)(Swift::String feature, Swift::String to)
{
  v780 = to;
  v796 = feature;
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_38_0(v11);
  v762 = type metadata accessor for MLProgram.Function();
  v12 = OUTLINED_FUNCTION_13(v762);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v15);
  v16 = type metadata accessor for MLProgram();
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v20);
  v21 = type metadata accessor for NeuralNetwork();
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v25);
  v26 = type metadata accessor for NeuralNetworkRegressor();
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v31 = OUTLINED_FUNCTION_38_0(v30);
  v32 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v31);
  v33 = OUTLINED_FUNCTION_24(v32);
  v795 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_196();
  v40 = OUTLINED_FUNCTION_38_0(v39);
  v41 = type metadata accessor for NeuralNetwork.Preprocessor(v40);
  v42 = OUTLINED_FUNCTION_24(v41);
  v797 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  v785 = v46;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_167();
  v784 = v49;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  v794 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_167();
  v783 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_38_0(v56);
  v57 = type metadata accessor for NeuralNetwork.Layer();
  v58 = OUTLINED_FUNCTION_24(v57);
  v766 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v64);
  v66 = (&v753 - v65);
  v67 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  v68 = OUTLINED_FUNCTION_24(v67);
  v798 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_0();
  v791 = v72;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_167();
  v790 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_196();
  v789 = v76;
  v77 = type metadata accessor for NeuralNetworkClassifier();
  v78 = OUTLINED_FUNCTION_13(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_1();
  v82 = OUTLINED_FUNCTION_38_0(v81);
  v83 = type metadata accessor for Proto_Model(v82);
  v84 = OUTLINED_FUNCTION_24(v83);
  v787 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_12_1();
  v788 = v88;
  v89 = type metadata accessor for Model(0);
  v90 = OUTLINED_FUNCTION_24(v89);
  v793 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_25_0();
  v782 = v94;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_196();
  v97 = OUTLINED_FUNCTION_38_0(v96);
  v98 = type metadata accessor for PipelineConfiguration(v97);
  v99 = OUTLINED_FUNCTION_13(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_1();
  v103 = OUTLINED_FUNCTION_38_0(v102);
  v104 = type metadata accessor for PipelineRegressorConfiguration(v103);
  v105 = OUTLINED_FUNCTION_13(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_12_1();
  v109 = OUTLINED_FUNCTION_38_0(v108);
  v110 = type metadata accessor for PipelineClassifierConfiguration(v109);
  v111 = OUTLINED_FUNCTION_13(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_12_1();
  v115 = OUTLINED_FUNCTION_38_0(v114);
  v116 = type metadata accessor for ItemSimilarityRecommenderConfiguration(v115);
  v117 = OUTLINED_FUNCTION_13(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v120);
  v121 = type metadata accessor for WordTaggerConfiguration();
  v122 = OUTLINED_FUNCTION_13(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_12_1();
  v126 = OUTLINED_FUNCTION_38_0(v125);
  v127 = type metadata accessor for NonMaximumSuppressorConfiguration(v126);
  v128 = OUTLINED_FUNCTION_13(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_12_1();
  v757 = v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v133 = OUTLINED_FUNCTION_13(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  v137 = OUTLINED_FUNCTION_38_0(&v753 - v136);
  v138 = type metadata accessor for Proto_FeatureVectorizer.InputColumn(v137);
  v139 = OUTLINED_FUNCTION_24(v138);
  v781[1] = v140;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  v144 = OUTLINED_FUNCTION_38_0(v143);
  v145 = type metadata accessor for FeatureVectorizerConfiguration.Input(v144);
  v146 = OUTLINED_FUNCTION_24(v145);
  v792 = v147;
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_167();
  v786 = v151;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_196();
  v154 = OUTLINED_FUNCTION_38_0(v153);
  v155 = type metadata accessor for FeatureVectorizerConfiguration(v154);
  v156 = OUTLINED_FUNCTION_13(v155);
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_12_1();
  v160 = OUTLINED_FUNCTION_38_0(v159);
  v768 = type metadata accessor for ModelKind(v160);
  v161 = OUTLINED_FUNCTION_4(v768);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_38_0(v165);
  v166 = type metadata accessor for FeatureDescription();
  v167 = OUTLINED_FUNCTION_24(v166);
  LOBYTE(v169) = v168;
  v171 = *(v170 + 64);
  v172 = MEMORY[0x28223BE20](v167);
  v174 = &v753 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v172);
  v176 = (&v753 - v175);
  v777 = v2;
  Model.inputs.getter();
  v178 = v177;
  v179 = v177[2];
  v764 = 0;
  while (1)
  {
    if (v179 == v5)
    {

      OUTLINED_FUNCTION_34_11();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_56_3();
    if (v180)
    {
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
      goto LABEL_414;
    }

    OUTLINED_FUNCTION_68_2();
    v4 = v181 * v5;
    OUTLINED_FUNCTION_42_12();
    sub_2576AF17C(v182 + v4, v176, v183);
    v184 = *v176;
    v185 = v176[1];
    OUTLINED_FUNCTION_49_6();
    v188 = v188 && v186 == v187;
    if (v188)
    {
      break;
    }

    v189 = sub_257743994();
    OUTLINED_FUNCTION_10_35();
    sub_2576AF1DC(v176, v190);
    if (v189)
    {
      goto LABEL_12;
    }

    ++v5;
  }

  OUTLINED_FUNCTION_10_35();
  sub_2576AF1DC(v176, v191);
LABEL_12:

  OUTLINED_FUNCTION_34_11();
  Model.inputs.getter();
  v178 = v192;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_414:
  sub_25767A6C4(v178);
  v178 = v751;
LABEL_13:
  sub_2576AF100(v5, v178);
  v193 = (v178 + v3 + v4);
  v194 = v193[1];
  OUTLINED_FUNCTION_27_16(v193);

  OUTLINED_FUNCTION_34_11();
  Model.inputs.setter();
LABEL_14:
  Model.outputs.getter();
  v178 = v195;
  v5 = 0;
  v4 = v195[2];
  while (1)
  {
    if (v4 == v5)
    {

      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_73_0();
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_56_3();
    if (v180)
    {
      goto LABEL_412;
    }

    OUTLINED_FUNCTION_68_2();
    v197 = v196 * v5;
    OUTLINED_FUNCTION_42_12();
    sub_2576AF17C(v198 + v197, v174, v199);
    v200 = *v174;
    v201 = *(v174 + 8);
    OUTLINED_FUNCTION_49_6();
    if (v188 && v202 == v203)
    {
      break;
    }

    v205 = sub_257743994();
    OUTLINED_FUNCTION_10_35();
    sub_2576AF1DC(v174, v206);
    if (v205)
    {
      goto LABEL_25;
    }

    ++v5;
  }

  OUTLINED_FUNCTION_10_35();
  sub_2576AF1DC(v174, v207);
LABEL_25:

  OUTLINED_FUNCTION_34_11();
  Model.outputs.getter();
  v209 = v208;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25767A6C4(v209);
    v209 = v752;
  }

  OUTLINED_FUNCTION_73_0();
  sub_2576AF100(v5, v209);
  v210 = (v209 + v3 + v197);
  v169 = v210[1];
  OUTLINED_FUNCTION_27_16(v210);

  OUTLINED_FUNCTION_34_11();
  Model.outputs.setter();
LABEL_28:
  Model.predictedFeatureName.getter();
  OUTLINED_FUNCTION_49_6();
  v213 = v188 && v211 == v212;
  v214 = v765;
  if (v213)
  {

    OUTLINED_FUNCTION_34_11();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_11();
  if (v169)
  {
LABEL_35:

    Model.predictedFeatureName.setter();
  }

  Model.predictedProbabilitiesName.getter();
  v216 = v215;
  OUTLINED_FUNCTION_49_6();
  if (v188 && v217 == v218)
  {

    OUTLINED_FUNCTION_34_11();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_11();
  if (v169)
  {
LABEL_43:

    Model.predictedProbabilitiesName.setter();
  }

  Model.kind.getter();
  OUTLINED_FUNCTION_35_11();
  v169 = v216;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_392(&v780);
      sub_2576AF11C(v413, v414, v415);
      PipelineRegressorConfiguration.models.getter();
      v417 = *(v416 + 16);

      if (!v417)
      {
        goto LABEL_303;
      }

      v419 = 0;
      while (1)
      {
        PipelineRegressorConfiguration.models.getter();
        v421 = v420;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v421);
          v421 = v427;
        }

        if (v419 >= *(v421 + 16))
        {
          goto LABEL_419;
        }

        OUTLINED_FUNCTION_12_30();
        v424 = v421 + v422 + *(v423 + 72) * v419;
        v425._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v425, v426);
        PipelineRegressorConfiguration.models.setter();
        if (v417 == ++v419)
        {
LABEL_303:
          OUTLINED_FUNCTION_45_8(v3, v418, type metadata accessor for PipelineRegressorConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v580, v581, v582, v583, v584, v585, v586, v587, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
          v588 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v588);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v417, v589);
          v579 = type metadata accessor for PipelineRegressorConfiguration;
          goto LABEL_304;
        }
      }

    case 2u:
      v294 = OUTLINED_FUNCTION_31_10();
      sub_2576AF11C(v294, v174, v295);
      v296 = *(PipelineConfiguration.models.getter() + 16);

      if (!v296)
      {
        goto LABEL_339;
      }

      v298 = v174;
      v299 = 0;
      v300 = *v298;
      v301 = MEMORY[0x277D84F90];
      while (1)
      {
        v302 = *(v300 + 16);
        if (v302)
        {
          OUTLINED_FUNCTION_39_11(v301);
          sub_257695CE0(v302);
          OUTLINED_FUNCTION_12_30();
          v304 = v300 + v303;
          v306 = *(v305 + 72);
          v307 = v773;
          do
          {
            OUTLINED_FUNCTION_40_10();
            sub_2576AF17C(v304, v307, v308);
            v309 = v800;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v310 = *(v309 + 16);
              OUTLINED_FUNCTION_8_31();
              sub_257483F38();
              v307 = v773;
              v309 = v800;
            }

            v312 = *(v309 + 16);
            v311 = *(v309 + 24);
            if (v312 >= v311 >> 1)
            {
              OUTLINED_FUNCTION_16_17(v311);
              sub_257483F38();
              v307 = v773;
              v309 = v800;
            }

            *(v309 + 16) = v312 + 1;
            OUTLINED_FUNCTION_12_30();
            sub_2576AF11C(v307, v309 + v313 + *(v314 + 72) * v312, type metadata accessor for Model);
            v304 += v306;
            --v302;
          }

          while (v302);
        }

        else
        {
          v309 = v301;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v309);
          v309 = v332;
        }

        if (v299 >= *(v309 + 16))
        {
          goto LABEL_416;
        }

        OUTLINED_FUNCTION_12_30();
        v214 = (v309 + v315);
        v317 = *(v316 + 72);
        v318._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v318, v319);
        v320 = *(v309 + 16);
        if (v320)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D70(v320);
          do
          {
            v321 = OUTLINED_FUNCTION_31_10();
            v322 = v782;
            sub_2576AF17C(v321, v782, v323);
            OUTLINED_FUNCTION_40_10();
            OUTLINED_FUNCTION_75_5(v324, v325, v326);
            sub_2576AF1DC(v322, type metadata accessor for Model);
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_32();
              sub_257484E38();
              v322 = v800;
            }

            v328 = *(v322 + 16);
            v327 = *(v322 + 24);
            if (v328 >= v327 >> 1)
            {
              OUTLINED_FUNCTION_16_17(v327);
              sub_257484E38();
              v322 = v800;
            }

            *(v322 + 16) = v328 + 1;
            OUTLINED_FUNCTION_6_40();
            sub_2576AF11C(v331, v329 + v330 * v328, type metadata accessor for Proto_Model);
            v214 = (v214 + v317);
            --v320;
          }

          while (v320);

          v300 = v322;
          v301 = MEMORY[0x277D84F90];
        }

        else
        {

          v301 = MEMORY[0x277D84F90];
          v300 = MEMORY[0x277D84F90];
        }

        if (++v299 == v296)
        {
          v174 = v767;
          *v767 = v300;
LABEL_339:
          OUTLINED_FUNCTION_58_1(v174, v297, type metadata accessor for PipelineConfiguration);
          OUTLINED_FUNCTION_35_11();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v652, v653, v654, v655, v656, v657, v658, v659, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
          v660 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v660);
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v214, v661);
          v601 = type metadata accessor for PipelineConfiguration;
          goto LABEL_340;
        }
      }

    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
      v220 = type metadata accessor for ModelKind;
      goto LABEL_46;
    case 7u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6(&v797);
      sub_2576AF11C(v333, v334, v335);
      v336 = *(FeatureVectorizerConfiguration.inputs.getter() + 16);

      if (!v336)
      {
        goto LABEL_306;
      }

      v338 = 0;
      while (2)
      {
        v339 = *v770;
        v340 = *(*v770 + 16);
        if (v340)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695CF8(v340);
          OUTLINED_FUNCTION_12_30();
          v66 = (v339 + v341);
          v343 = *(v342 + 72);
          v344 = v800;
          v214 = v786;
          do
          {
            OUTLINED_FUNCTION_41_11();
            sub_2576AF17C(v66, v214, v345);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_32();
              sub_2574840A0();
              v344 = v800;
            }

            v174 = v344[2];
            v346 = v344[3];
            if (v174 >= v346 >> 1)
            {
              OUTLINED_FUNCTION_16_17(v346);
              sub_2574840A0();
              v344 = v800;
            }

            v344[2] = v174 + 1;
            OUTLINED_FUNCTION_6_40();
            v214 = v786;
            sub_2576AF11C(v786, v347 + v348 * v174, type metadata accessor for FeatureVectorizerConfiguration.Input);
            v66 = (v66 + v343);
            --v340;
          }

          while (v340);
        }

        OUTLINED_FUNCTION_56_3();
        if (v180)
        {
          goto LABEL_421;
        }

        OUTLINED_FUNCTION_28_19();
        OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_261(&v792);
        sub_2576AF17C(v349, v350, v351);

        v169 = *v66;
        v352 = v66[1];

        OUTLINED_FUNCTION_43_10();
        sub_2576AF1DC(v66, v353);
        OUTLINED_FUNCTION_72_3();
        if (v188 && v352 == v354)
        {
        }

        else
        {
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_71_3();
          if ((v169 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

        v169 = FeatureVectorizerConfiguration.inputs.getter();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A6AC(v169);
          v169 = v368;
        }

        OUTLINED_FUNCTION_74_1();
        if (v180)
        {
          goto LABEL_425;
        }

        v66 = (v214 + v169);
        v356 = (v214 + v169 + v174 * v338);
        v357 = v356[1];
        OUTLINED_FUNCTION_27_16(v356);

        v358 = *(v169 + 16);
        if (v358)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D88(v358);
          v214 = v781[0];
          do
          {
            OUTLINED_FUNCTION_44_7();
            OUTLINED_FUNCTION_38_6(&v804);
            sub_2576AF17C(v359, v360, v361);
            OUTLINED_FUNCTION_41_11();
            sub_2576AF17C(v357, v214, v362);
            OUTLINED_FUNCTION_43_10();
            sub_2576AF1DC(v357, v363);
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_32();
              sub_257484ED0();
              v357 = v800;
            }

            v365 = *(v357 + 16);
            v364 = *(v357 + 24);
            if (v365 >= v364 >> 1)
            {
              OUTLINED_FUNCTION_16_17(v364);
              sub_257484ED0();
              v357 = v800;
            }

            *(v357 + 16) = v365 + 1;
            OUTLINED_FUNCTION_6_40();
            v214 = v781[0];
            sub_2576AF11C(v781[0], v366 + v367 * v365, type metadata accessor for Proto_FeatureVectorizer.InputColumn);
            v66 = (v66 + v174);
            --v358;
          }

          while (v358);
        }

        else
        {

          v357 = MEMORY[0x277D84F90];
        }

        *v770 = v357;
LABEL_164:
        if (++v338 == v336)
        {
LABEL_306:
          v214 = v770;
          OUTLINED_FUNCTION_45_8(v770, v337, type metadata accessor for FeatureVectorizerConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v602, v603, v604, v605, v606, v607, v608, v609, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
          v610 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v610);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v169, v611);
          v220 = type metadata accessor for FeatureVectorizerConfiguration;
          goto LABEL_46;
        }

        continue;
      }

    case 0xEu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261(&v780._object);
      sub_2576AF11C(v223, v224, v225);
      v226 = type metadata accessor for Proto_NonMaximumSuppression(0);
      v227 = (v66 + v226[8]);
      v228 = *v227;
      v229 = v227[1];
      OUTLINED_FUNCTION_49_6();
      v231 = v188 && v229 == v230;
      if (v231 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v227 = v232;
        v227[1] = v214;
      }

      OUTLINED_FUNCTION_48_4(v226[9]);
      v234 = v188 && v229 == v233;
      if (v234 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v227 = v235;
        v227[1] = v214;
      }

      OUTLINED_FUNCTION_48_4(v226[10]);
      v237 = v188 && v229 == v236;
      if (v237 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v227 = v238;
        v227[1] = v214;
      }

      OUTLINED_FUNCTION_48_4(v226[11]);
      v240 = v188 && v229 == v239;
      if (v240 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v227 = v241;
        v227[1] = v214;
      }

      OUTLINED_FUNCTION_48_4(v226[12]);
      v243 = v188 && v229 == v242;
      if (v243 || (v244 = OUTLINED_FUNCTION_59_2(), countAndFlagsBits = v796._countAndFlagsBits, object = v796._object, (v244 & 1) != 0))
      {
        OUTLINED_FUNCTION_50_6();

        OUTLINED_FUNCTION_18_28();
        *v227 = v247;
        v227[1] = v214;
      }

      v248 = (v66 + v226[13]);
      v249 = *v248 == countAndFlagsBits && v248[1] == object;
      if (v249 || (OUTLINED_FUNCTION_55_5() & 1) != 0)
      {
        v227 = v780._object;

        OUTLINED_FUNCTION_306();
        *v248 = v250;
        v248[1] = v227;
      }

      v251 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_45_8(v251, v252, v253);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v254, v255, v256, v257, v258, v259, v260, v261, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
      v262 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v262);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v227, v263);
      v264 = type metadata accessor for NonMaximumSuppressorConfiguration;
      goto LABEL_266;
    case 0x17u:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261(v779);
      sub_2576AF11C(v428, v429, v430);
      v431 = v66[3];
      v432 = v66[4];
      OUTLINED_FUNCTION_49_6();
      v434 = v188 && v432 == v433;
      if (v434 || (v435 = OUTLINED_FUNCTION_55_5(), v436 = v796._countAndFlagsBits, v437 = v796._object, (v435 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[3] = v438;
        v66[4] = v216;
      }

      v439 = v66[5] == v436 && v66[6] == v437;
      if (v439 || (v440 = OUTLINED_FUNCTION_55_5(), v441 = v796._countAndFlagsBits, v442 = v796._object, (v440 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[5] = v443;
        v66[6] = v216;
      }

      v444 = v66[7] == v441 && v66[8] == v442;
      if (v444 || (v445 = OUTLINED_FUNCTION_55_5(), v446 = v796._countAndFlagsBits, v447 = v796._object, (v445 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[7] = v448;
        v66[8] = v216;
      }

      v449 = v66[9] == v446 && v66[10] == v447;
      if (v449 || (OUTLINED_FUNCTION_55_5() & 1) != 0)
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_306();
        v66[9] = v450;
        v66[10] = v216;
      }

      v451 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_58_1(v451, v452, v453);
      OUTLINED_FUNCTION_35_11();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v454, v455, v456, v457, v458, v459, v460, v461, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
      v462 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v462);
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v214, v463);
      v264 = type metadata accessor for WordTaggerConfiguration;
      goto LABEL_266;
    case 0x1Bu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_261(v781);
      sub_2576AF11C(v464, v465, v466);
      v467 = v66[1];
      v468 = v66[2];
      OUTLINED_FUNCTION_49_6();
      v470 = v188 && v468 == v469;
      if (v470 || (v471 = OUTLINED_FUNCTION_55_5(), v472 = v796._countAndFlagsBits, v473 = v796._object, (v471 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[1] = v474;
        v66[2] = v216;
      }

      v475 = v66[3] == v472 && v66[4] == v473;
      if (v475 || (v476 = OUTLINED_FUNCTION_55_5(), v477 = v796._countAndFlagsBits, v478 = v796._object, (v476 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[3] = v479;
        v66[4] = v216;
      }

      v480 = v66[5] == v477 && v66[6] == v478;
      if (v480 || (v481 = OUTLINED_FUNCTION_55_5(), v482 = v796._countAndFlagsBits, v483 = v796._object, (v481 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[5] = v484;
        v66[6] = v216;
      }

      v485 = v66[7] == v482 && v66[8] == v483;
      if (v485 || (v486 = OUTLINED_FUNCTION_55_5(), v487 = v796._countAndFlagsBits, v488 = v796._object, (v486 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[7] = v489;
        v66[8] = v216;
      }

      v490 = v66[9] == v487 && v66[10] == v488;
      if (v490 || (v491 = OUTLINED_FUNCTION_55_5(), v492 = v796._countAndFlagsBits, v493 = v796._object, (v491 & 1) != 0))
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_18_28();
        v66[9] = v494;
        v66[10] = v216;
      }

      v495 = v66[11] == v492 && v66[12] == v493;
      if (v495 || (OUTLINED_FUNCTION_55_5() & 1) != 0)
      {
        OUTLINED_FUNCTION_36_10();

        OUTLINED_FUNCTION_306();
        v66[11] = v496;
        v66[12] = v216;
      }

      v497 = OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_58_1(v497, v498, v499);
      OUTLINED_FUNCTION_35_11();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v500, v501, v502, v503, v504, v505, v506, v507, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
      v508 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v508);
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v214, v509);
      v264 = type metadata accessor for ItemSimilarityRecommenderConfiguration;
LABEL_266:
      v221 = v264;
      v222 = v66;
      goto LABEL_47;
    case 0x1Cu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6(v799);
      sub_2576AF11C(v369, v370, v371);
      v372 = *(NeuralNetwork.layers.getter() + 16);

      v792 = v372;
      if (!v372)
      {
        goto LABEL_341;
      }

      v174 = 0;
      v373 = *v216;
      v214 = MEMORY[0x277D84F90];
      do
      {
        v374 = *(v373 + 2);
        v793 = v373;
        if (v374)
        {
          OUTLINED_FUNCTION_70_5();
          OUTLINED_FUNCTION_12_30();
          v376 = &v373[v375];
          v378 = *(v377 + 72);
          v379 = v776;
          do
          {
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v376, v379, v380);
            v214 = v800;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v381 = v214[2];
              OUTLINED_FUNCTION_8_31();
              sub_2574841E8();
              OUTLINED_FUNCTION_54_5(&v803);
            }

            v383 = v214[2];
            v382 = v214[3];
            OUTLINED_FUNCTION_53_4();
            if (v180)
            {
              OUTLINED_FUNCTION_13_21(v384);
              sub_2574841E8();
              OUTLINED_FUNCTION_54_5(&v803);
            }

            OUTLINED_FUNCTION_17_20();
            v376 += v378;
            --v374;
          }

          while (v374);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A67C(v214);
          v214 = v397;
        }

        if (!v214[2])
        {
          goto LABEL_417;
        }

        OUTLINED_FUNCTION_30_12();
        v3 = v214 + v385;
        v169 = *(v4 + 72);
        v386 = v214 + v385;
        v387 = OUTLINED_FUNCTION_11_31();
        sub_2576ADC50(v387, v388, v389, v390);
        v391 = v214[2];
        if (v391)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D40(v391);
          v392 = v791;
          do
          {
            OUTLINED_FUNCTION_25_16();
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v66, v392, v393);
            OUTLINED_FUNCTION_26_12();
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_32();
              sub_2574843E0();
              v386 = v800;
            }

            v392 = *(v386 + 2);
            v394 = *(v386 + 3);
            OUTLINED_FUNCTION_53_4();
            if (v180)
            {
              OUTLINED_FUNCTION_13_21(v395);
              sub_2574843E0();
              v386 = v800;
            }

            *(v386 + 2) = v5;
            OUTLINED_FUNCTION_6_40();
            OUTLINED_FUNCTION_23_19(v396);
            v3 += v169;
            --v391;
          }

          while (v391);

          v373 = v386;
          v214 = MEMORY[0x277D84F90];
        }

        else
        {

          v214 = MEMORY[0x277D84F90];
          v373 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_62_6();
        v216 = v772;
      }

      while (!v188);
      *v772 = v373;
LABEL_341:
      v662 = *(NeuralNetwork.preprocessors.getter() + 16);

      OUTLINED_FUNCTION_66_5();
      v798 = v662;
      if (v662)
      {
        for (i = 0; i != v798; ++i)
        {
          v665 = *(v216[1] + 16);
          if (v665)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D28(v665);
            OUTLINED_FUNCTION_12_30();
            OUTLINED_FUNCTION_60_3();
            v666 = v785;
            do
            {
              OUTLINED_FUNCTION_1_56();
              sub_2576AF17C(v214, v666, v667);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_32();
                sub_257484240();
                v216 = v800;
              }

              OUTLINED_FUNCTION_61_4();
              if (v180)
              {
                OUTLINED_FUNCTION_16_17(v668);
                sub_257484240();
                v216 = v800;
              }

              v216[2] = v666;
              OUTLINED_FUNCTION_6_40();
              OUTLINED_FUNCTION_19_24();
              v666 = v785;
              sub_2576AF11C(v785, v669, v670);
              v214 = (v214 + v3);
              --v665;
            }

            while (v665);
          }

          OUTLINED_FUNCTION_56_3();
          if (v180)
          {
            goto LABEL_423;
          }

          OUTLINED_FUNCTION_28_19();
          v671 = v174 * i;
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_392(&v791);
          sub_2576AF17C(v672, v673, v674);

          v169 = *v3;
          v216 = *(v3 + 8);

          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v3, v675);
          OUTLINED_FUNCTION_72_3();
          if (v188 && v216 == v676)
          {

            OUTLINED_FUNCTION_66_5();
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_71_3();
            OUTLINED_FUNCTION_66_5();
            if ((v169 & 1) == 0)
            {
              continue;
            }
          }

          v169 = NeuralNetwork.preprocessors.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A664(v169);
            v169 = v691;
          }

          OUTLINED_FUNCTION_74_1();
          if (v180)
          {
            goto LABEL_427;
          }

          v214 = (v214 + v169);
          v216 = *(v214 + v671 + 8);
          OUTLINED_FUNCTION_27_16((v214 + v671));

          v678 = *(v169 + 16);
          if (v678)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D58(v678);
            do
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_69_2(v679, v680, v681);
              OUTLINED_FUNCTION_1_56();
              OUTLINED_FUNCTION_75_5(v682, v683, v684);
              OUTLINED_FUNCTION_3_53();
              sub_2576AF1DC(v216, v685);
              v686 = v800;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v687 = v686[2];
                OUTLINED_FUNCTION_8_31();
                sub_257484438();
                v686 = v800;
              }

              v689 = v686[2];
              v688 = v686[3];
              v3 = v689 + 1;
              if (v689 >= v688 >> 1)
              {
                OUTLINED_FUNCTION_16_17(v688);
                sub_257484438();
                v686 = v800;
              }

              v686[2] = v3;
              OUTLINED_FUNCTION_12_30();
              OUTLINED_FUNCTION_21_21(v686 + v690);
              v214 = (v214 + v174);
              --v678;
            }

            while (v678);
          }

          else
          {

            v686 = MEMORY[0x277D84F90];
          }

          OUTLINED_FUNCTION_66_5();
          v216[1] = v686;
        }
      }

      v214 = v216;
      OUTLINED_FUNCTION_45_8(v216, v663, type metadata accessor for NeuralNetwork);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v692, v693, v694, v695, v696, v697, v698, v699, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
      v700 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v700);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v169, v701);
      v220 = type metadata accessor for NeuralNetwork;
      goto LABEL_46;
    case 0x1Du:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6(&v796._object);
      sub_2576AF11C(v539, v540, v541);
      v542 = *(NeuralNetworkClassifier.layers.getter() + 16);

      v792 = v542;
      if (!v542)
      {
        goto LABEL_373;
      }

      v174 = 0;
      v543 = *v216;
      v544 = MEMORY[0x277D84F90];
      do
      {
        v545 = *(v543 + 2);
        v793 = v543;
        if (v545)
        {
          OUTLINED_FUNCTION_70_5();
          OUTLINED_FUNCTION_12_30();
          v547 = &v543[v546];
          v549 = *(v548 + 72);
          v550 = v774;
          do
          {
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v547, v550, v551);
            v544 = v800;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v552 = *(v544 + 16);
              OUTLINED_FUNCTION_8_31();
              sub_2574841E8();
              OUTLINED_FUNCTION_54_5(v801);
            }

            v554 = *(v544 + 16);
            v553 = *(v544 + 24);
            OUTLINED_FUNCTION_53_4();
            if (v180)
            {
              OUTLINED_FUNCTION_13_21(v555);
              sub_2574841E8();
              OUTLINED_FUNCTION_54_5(v801);
            }

            OUTLINED_FUNCTION_17_20();
            v547 += v549;
            --v545;
          }

          while (v545);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A67C(v544);
          v544 = v568;
        }

        if (!*(v544 + 16))
        {
          goto LABEL_420;
        }

        OUTLINED_FUNCTION_30_12();
        v3 = v544 + v556;
        v169 = *(v4 + 72);
        v557 = (v544 + v556);
        v558 = OUTLINED_FUNCTION_11_31();
        sub_2576ADC50(v558, v559, v560, v561);
        v562 = *(v544 + 16);
        if (v562)
        {
          OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
          sub_257695D40(v562);
          v563 = v789;
          do
          {
            OUTLINED_FUNCTION_25_16();
            OUTLINED_FUNCTION_2_47();
            sub_2576AF17C(v66, v563, v564);
            OUTLINED_FUNCTION_26_12();
            OUTLINED_FUNCTION_52_5();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_7_32();
              sub_2574843E0();
              v557 = v800;
            }

            v563 = *(v557 + 2);
            v565 = *(v557 + 3);
            OUTLINED_FUNCTION_53_4();
            if (v180)
            {
              OUTLINED_FUNCTION_13_21(v566);
              sub_2574843E0();
              v557 = v800;
            }

            *(v557 + 2) = v5;
            OUTLINED_FUNCTION_6_40();
            OUTLINED_FUNCTION_23_19(v567);
            v3 += v169;
            --v562;
          }

          while (v562);

          v543 = v557;
          v544 = MEMORY[0x277D84F90];
        }

        else
        {

          v544 = MEMORY[0x277D84F90];
          v543 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_62_6();
      }

      while (!v188);
      v216 = v769;
      *v769 = v543;
LABEL_373:
      v702 = *(NeuralNetworkClassifier.preprocessors.getter() + 16);

      v214 = v216;
      if (v702)
      {
        for (j = 0; j != v702; ++j)
        {
          v704 = *(v214[1] + 16);
          if (v704)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D28(v704);
            OUTLINED_FUNCTION_12_30();
            OUTLINED_FUNCTION_60_3();
            v705 = v783;
            do
            {
              OUTLINED_FUNCTION_1_56();
              sub_2576AF17C(v214, v705, v706);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_32();
                sub_257484240();
                v216 = v800;
              }

              OUTLINED_FUNCTION_61_4();
              if (v180)
              {
                OUTLINED_FUNCTION_16_17(v707);
                sub_257484240();
                v216 = v800;
              }

              v216[2] = v705;
              OUTLINED_FUNCTION_6_40();
              OUTLINED_FUNCTION_19_24();
              v705 = v783;
              sub_2576AF11C(v783, v708, v709);
              v214 = (v214 + v3);
              --v704;
            }

            while (v704);
          }

          OUTLINED_FUNCTION_56_3();
          if (v180)
          {
            goto LABEL_424;
          }

          OUTLINED_FUNCTION_28_19();
          v710 = v174 * j;
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_392(&v789);
          sub_2576AF17C(v711, v712, v713);

          v169 = *v3;
          v216 = *(v3 + 8);

          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v3, v714);
          OUTLINED_FUNCTION_72_3();
          if (v188 && v216 == v715)
          {
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_71_3();
            if ((v169 & 1) == 0)
            {
              goto LABEL_403;
            }
          }

          v169 = NeuralNetworkClassifier.preprocessors.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25767A664(v169);
            v169 = v731;
          }

          OUTLINED_FUNCTION_74_1();
          if (v180)
          {
            goto LABEL_428;
          }

          v717 = v214 + v169;
          v216 = *&v717[v710 + 8];
          OUTLINED_FUNCTION_27_16(&v717[v710]);

          v718 = *(v169 + 16);
          if (v718)
          {
            OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
            sub_257695D58(v718);
            do
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_69_2(v719, v720, v721);
              OUTLINED_FUNCTION_1_56();
              OUTLINED_FUNCTION_75_5(v722, v723, v724);
              OUTLINED_FUNCTION_3_53();
              sub_2576AF1DC(v216, v725);
              OUTLINED_FUNCTION_52_5();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_32();
                sub_257484438();
                v216 = v800;
              }

              v727 = v216[2];
              v726 = v216[3];
              if (v727 >= v726 >> 1)
              {
                OUTLINED_FUNCTION_16_17(v726);
                sub_257484438();
                v216 = v800;
              }

              v216[2] = v727 + 1;
              OUTLINED_FUNCTION_6_40();
              v3 = v730;
              sub_2576AF11C(v730, v728 + v729 * v727, type metadata accessor for Proto_NeuralNetworkPreprocessing);
              v717 += v174;
              --v718;
            }

            while (v718);
          }

          else
          {

            v216 = MEMORY[0x277D84F90];
          }

          v769[1] = v216;
LABEL_403:
          v214 = v769;
        }
      }

      v732 = (v214 + *(type metadata accessor for Proto_NeuralNetworkClassifier(0) + 36));
      v733 = *v732;
      v734 = v732[1];
      OUTLINED_FUNCTION_49_6();
      v736 = v188 && v734 == v735;
      if (v736 || (OUTLINED_FUNCTION_55_5() & 1) != 0)
      {
        v169 = v780._object;

        OUTLINED_FUNCTION_306();
        *v732 = v737;
        v732[1] = v169;
      }

      v738 = OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_45_8(v738, v739, v740);
      OUTLINED_FUNCTION_29_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_17();
      sub_25746EEC4(v741, v742, v743, v744, v745, v746, v747, v748, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
      v749 = type metadata accessor for Proto_Model.OneOf_Type(0);
      OUTLINED_FUNCTION_5_41(v749);
      OUTLINED_FUNCTION_34_11();
      sub_2574FE574();
      OUTLINED_FUNCTION_0_73();
      sub_2576AF1DC(v169, v750);
      v220 = type metadata accessor for NeuralNetworkClassifier;
      goto LABEL_46;
    case 0x1Eu:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_38_6(&v798);
      sub_2576AF11C(v265, v266, v267);
      v268 = *(NeuralNetworkRegressor.layers.getter() + 16);

      v792 = v268;
      if (!v268)
      {
        goto LABEL_307;
      }

      v174 = 0;
      v269 = *v216;
      v214 = MEMORY[0x277D84F90];
      break;
    case 0x1Fu:
      v510 = OUTLINED_FUNCTION_31_10();
      v174 = v759;
      sub_2576AF11C(v510, v759, v511);
      v178 = v174;
      MLProgram.functions.getter();
      v512 = 0;
      v515 = v513 + 64;
      v514 = *(v513 + 64);
      v797 = v513 + 64;
      v798 = v513;
      v516 = 1 << *(v513 + 32);
      v517 = -1;
      if (v516 < 64)
      {
        v517 = ~(-1 << v516);
      }

      v518 = v517 & v514;
      v3 = (v516 + 63) >> 6;
      if ((v517 & v514) != 0)
      {
        goto LABEL_270;
      }

LABEL_271:
      v4 = v763;
      do
      {
        v5 = v512 + 1;
        if (__OFADD__(v512, 1))
        {
          goto LABEL_413;
        }

        if (v5 >= v3)
        {

          OUTLINED_FUNCTION_58_1(v174, v590, type metadata accessor for MLProgram);
          OUTLINED_FUNCTION_35_11();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v591, v592, v593, v594, v595, v596, v597, v598, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
          v599 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v599);
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v214, v600);
          v601 = type metadata accessor for MLProgram;
LABEL_340:
          v221 = v601;
          v222 = v174;
          goto LABEL_47;
        }

        v518 = *(v515 + 8 * v5);
        ++v512;
      }

      while (!v518);
      while (1)
      {
        v519 = (*(v798 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v518)))));
        v520 = *v519;
        v521 = v519[1];
        MLProgram.functions.getter();
        v523 = v522;

        sub_257657BA8(v520, v521, v523, v4);
        v524 = v762;
        if (__swift_getEnumTagSinglePayload(v4, 1, v762) == 1)
        {
          goto LABEL_429;
        }

        v518 &= v518 - 1;

        OUTLINED_FUNCTION_261(&v782);
        sub_2576AF11C(v525, v526, v527);
        v528 = OUTLINED_FUNCTION_11_31();
        sub_2576ADDC0(v528, v529, v530, v531);
        v532 = OUTLINED_FUNCTION_64_5();
        v533 = v761;
        sub_2576AF17C(v532, v761, v534);
        __swift_storeEnumTagSinglePayload(v533, 0, 1, v524);
        MLProgram.functions.getter();
        v800 = v535;
        v178 = &v800;
        sub_257657BD4(v533, v520, v521);
        v536 = OUTLINED_FUNCTION_52_5();
        v169 = v764;
        sub_25765B92C(v536);
        v214 = v537;
        v764 = v169;

        sub_2576AF1DC(v66, type metadata accessor for MLProgram.Function);
        v538 = *(v174 + 8);

        *(v174 + 8) = v214;
        v512 = v5;
        LOBYTE(v169) = v777;
        v515 = v797;
        if (!v518)
        {
          goto LABEL_271;
        }

LABEL_270:
        v5 = v512;
        v4 = v763;
      }

    default:
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_392(v778);
      sub_2576AF11C(v398, v399, v400);
      PipelineClassifierConfiguration.models.getter();
      v402 = *(v401 + 16);

      if (!v402)
      {
        goto LABEL_302;
      }

      v404 = 0;
      while (1)
      {
        PipelineClassifierConfiguration.models.getter();
        v406 = v405;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A694(v406);
          v406 = v412;
        }

        if (v404 >= *(v406 + 16))
        {
          goto LABEL_418;
        }

        OUTLINED_FUNCTION_12_30();
        v409 = v406 + v407 + *(v408 + 72) * v404;
        v410._countAndFlagsBits = OUTLINED_FUNCTION_11_31();
        Model.rename(feature:to:)(v410, v411);
        PipelineClassifierConfiguration.models.setter();
        if (v402 == ++v404)
        {
LABEL_302:
          OUTLINED_FUNCTION_45_8(v3, v403, type metadata accessor for PipelineClassifierConfiguration);
          OUTLINED_FUNCTION_29_15();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_17();
          sub_25746EEC4(v569, v570, v571, v572, v573, v574, v575, v576, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
          v577 = type metadata accessor for Proto_Model.OneOf_Type(0);
          OUTLINED_FUNCTION_5_41(v577);
          OUTLINED_FUNCTION_34_11();
          sub_2574FE574();
          OUTLINED_FUNCTION_0_73();
          sub_2576AF1DC(v402, v578);
          v579 = type metadata accessor for PipelineClassifierConfiguration;
LABEL_304:
          v221 = v579;
          v222 = v3;
          goto LABEL_47;
        }
      }
  }

  do
  {
    v270 = *(v269 + 2);
    v793 = v269;
    if (v270)
    {
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_12_30();
      v272 = &v269[v271];
      v274 = *(v273 + 72);
      v275 = v775;
      do
      {
        OUTLINED_FUNCTION_2_47();
        sub_2576AF17C(v272, v275, v276);
        v214 = v800;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v277 = v214[2];
          OUTLINED_FUNCTION_8_31();
          sub_2574841E8();
          OUTLINED_FUNCTION_54_5(&v802);
        }

        v279 = v214[2];
        v278 = v214[3];
        OUTLINED_FUNCTION_53_4();
        if (v180)
        {
          OUTLINED_FUNCTION_13_21(v280);
          sub_2574841E8();
          OUTLINED_FUNCTION_54_5(&v802);
        }

        OUTLINED_FUNCTION_17_20();
        v272 += v274;
        --v270;
      }

      while (v270);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A67C(v214);
      v214 = v293;
    }

    if (!v214[2])
    {
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_30_12();
    v3 = v214 + v281;
    v169 = *(v4 + 72);
    v282 = v214 + v281;
    v283 = OUTLINED_FUNCTION_11_31();
    sub_2576ADC50(v283, v284, v285, v286);
    v287 = v214[2];
    if (v287)
    {
      OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
      sub_257695D40(v287);
      v288 = v790;
      do
      {
        OUTLINED_FUNCTION_25_16();
        OUTLINED_FUNCTION_2_47();
        sub_2576AF17C(v66, v288, v289);
        OUTLINED_FUNCTION_26_12();
        OUTLINED_FUNCTION_52_5();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_32();
          sub_2574843E0();
          v282 = v800;
        }

        v288 = *(v282 + 2);
        v290 = *(v282 + 3);
        OUTLINED_FUNCTION_53_4();
        if (v180)
        {
          OUTLINED_FUNCTION_13_21(v291);
          sub_2574843E0();
          v282 = v800;
        }

        *(v282 + 2) = v5;
        OUTLINED_FUNCTION_6_40();
        OUTLINED_FUNCTION_23_19(v292);
        v3 += v169;
        --v287;
      }

      while (v287);

      v269 = v282;
      v214 = MEMORY[0x277D84F90];
    }

    else
    {

      v214 = MEMORY[0x277D84F90];
      v269 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_62_6();
    v216 = v771;
  }

  while (!v188);
  *v771 = v269;
LABEL_307:
  v612 = *(NeuralNetworkRegressor.preprocessors.getter() + 16);

  OUTLINED_FUNCTION_67_6();
  v798 = v612;
  if (v612)
  {
    for (k = 0; k != v798; ++k)
    {
      v615 = *(v216[1] + 16);
      if (v615)
      {
        OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
        sub_257695D28(v615);
        OUTLINED_FUNCTION_12_30();
        OUTLINED_FUNCTION_60_3();
        v616 = v784;
        do
        {
          OUTLINED_FUNCTION_1_56();
          sub_2576AF17C(v214, v616, v617);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_32();
            sub_257484240();
            v216 = v800;
          }

          OUTLINED_FUNCTION_61_4();
          if (v180)
          {
            OUTLINED_FUNCTION_16_17(v618);
            sub_257484240();
            v216 = v800;
          }

          v216[2] = v616;
          OUTLINED_FUNCTION_6_40();
          OUTLINED_FUNCTION_19_24();
          v616 = v784;
          sub_2576AF11C(v784, v619, v620);
          v214 = (v214 + v3);
          --v615;
        }

        while (v615);
      }

      OUTLINED_FUNCTION_56_3();
      if (v180)
      {
        goto LABEL_422;
      }

      OUTLINED_FUNCTION_28_19();
      v621 = v174 * k;
      OUTLINED_FUNCTION_4_40();
      OUTLINED_FUNCTION_392(&v790);
      sub_2576AF17C(v622, v623, v624);

      v169 = *v3;
      v216 = *(v3 + 8);

      OUTLINED_FUNCTION_3_53();
      sub_2576AF1DC(v3, v625);
      OUTLINED_FUNCTION_72_3();
      if (v188 && v216 == v626)
      {

        OUTLINED_FUNCTION_67_6();
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_67_6();
        if ((v169 & 1) == 0)
        {
          continue;
        }
      }

      v169 = NeuralNetworkRegressor.preprocessors.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A664(v169);
        v169 = v641;
      }

      OUTLINED_FUNCTION_74_1();
      if (v180)
      {
        goto LABEL_426;
      }

      v214 = (v214 + v169);
      v216 = *(v214 + v621 + 8);
      OUTLINED_FUNCTION_27_16((v214 + v621));

      v628 = *(v169 + 16);
      if (v628)
      {
        OUTLINED_FUNCTION_39_11(MEMORY[0x277D84F90]);
        sub_257695D58(v628);
        do
        {
          OUTLINED_FUNCTION_4_40();
          OUTLINED_FUNCTION_69_2(v629, v630, v631);
          OUTLINED_FUNCTION_1_56();
          OUTLINED_FUNCTION_75_5(v632, v633, v634);
          OUTLINED_FUNCTION_3_53();
          sub_2576AF1DC(v216, v635);
          v636 = v800;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v637 = v636[2];
            OUTLINED_FUNCTION_8_31();
            sub_257484438();
            v636 = v800;
          }

          v639 = v636[2];
          v638 = v636[3];
          v3 = v639 + 1;
          if (v639 >= v638 >> 1)
          {
            OUTLINED_FUNCTION_16_17(v638);
            sub_257484438();
            v636 = v800;
          }

          v636[2] = v3;
          OUTLINED_FUNCTION_12_30();
          OUTLINED_FUNCTION_21_21(v636 + v640);
          v214 = (v214 + v174);
          --v628;
        }

        while (v628);
      }

      else
      {

        v636 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_67_6();
      v216[1] = v636;
    }
  }

  v214 = v216;
  OUTLINED_FUNCTION_45_8(v216, v613, type metadata accessor for NeuralNetworkRegressor);
  OUTLINED_FUNCTION_29_15();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_17();
  sub_25746EEC4(v642, v643, v644, v645, v646, v647, v648, v649, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764);
  v650 = type metadata accessor for Proto_Model.OneOf_Type(0);
  OUTLINED_FUNCTION_5_41(v650);
  OUTLINED_FUNCTION_34_11();
  sub_2574FE574();
  OUTLINED_FUNCTION_0_73();
  sub_2576AF1DC(v169, v651);
  v220 = type metadata accessor for NeuralNetworkRegressor;
LABEL_46:
  v221 = v220;
  v222 = v214;
LABEL_47:
  sub_2576AF1DC(v222, v221);
}

uint64_t sub_2576ADB74(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = type metadata accessor for FeatureDescription();
    OUTLINED_FUNCTION_24(v8);
    result = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_2576ADC50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v10 = *(v4 + v9);
  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = sub_2576AE470(a1, a2, v11);
  if (v13)
  {
    goto LABEL_6;
  }

  v14 = v12;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25767A634(v11);
    v11 = v22;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v14 >= *(v11 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v11 + 16 * v14;
  v16 = *(v15 + 40);
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;

  NeuralNetwork.Layer.inputNames.setter();
LABEL_6:
  v17 = *(v4 + v9);
  swift_beginAccess();
  v11 = *(v17 + 40);
  v18 = sub_2576AE470(a1, a2, v11);
  if (v19)
  {
    return;
  }

  a2 = v18;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_25767A634(v11);
  v11 = v23;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  if (a2 >= *(v11 + 16))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v20 = v11 + 16 * a2;
  v21 = *(v20 + 40);
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  NeuralNetwork.Layer.outputNames.setter();
}

void sub_2576ADDC0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v72 = &v66 - v16;
  v17 = type metadata accessor for MLProgram.Block();
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v68 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v66 - v21;
  v22 = type metadata accessor for MLProgram.NamedValueType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v26 = (&v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v4;
  v27 = MLProgram.Function.inputs.getter();
  v28 = *(v27 + 16);
  v79 = 0;
  v76 = a2;
  for (i = a1; ; a1 = i)
  {
    if (v28 == v9)
    {

      goto LABEL_15;
    }

    if (v9 >= *(v27 + 16))
    {
      goto LABEL_35;
    }

    v5 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v6 = *(v23 + 72) * v9;
    sub_2576AF17C(v27 + v5 + v6, v26, type metadata accessor for MLProgram.NamedValueType);
    if (*v26 == a1 && v26[1] == a2)
    {
      break;
    }

    v30 = sub_257743994();
    sub_2576AF1DC(v26, type metadata accessor for MLProgram.NamedValueType);
    if (v30)
    {
      goto LABEL_12;
    }

    ++v9;
  }

  sub_2576AF1DC(v26, type metadata accessor for MLProgram.NamedValueType);
LABEL_12:

  v27 = MLProgram.Function.inputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (v9 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v31 = (v27 + v5 + v6);
    v32 = v31[1];
    v33 = v74;
    *v31 = v73;
    v31[1] = v33;

    MLProgram.Function.inputs.setter();
LABEL_15:
    v27 = v80;
    MLProgram.Function.blockSpecializations.getter();
    v5 = 0;
    v36 = v34 + 64;
    v35 = *(v34 + 64);
    v75 = v34;
    v37 = 1 << *(v34 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v35;
    v6 = (v37 + 63) >> 6;
    v77 = v17;
    v70 = v34 + 64;
    if ((v38 & v35) != 0)
    {
      break;
    }

LABEL_19:
    v40 = v76;
    v9 = i;
    while (1)
    {
      v41 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v41 >= v6)
      {

        return;
      }

      v39 = *(v36 + 8 * v41);
      ++v5;
      if (v39)
      {
        v5 = v41;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    sub_25767A64C(v27);
    v27 = v65;
  }

  while (1)
  {
    v40 = v76;
    v9 = i;
LABEL_24:
    v42 = (*(v75 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v39)))));
    v44 = *v42;
    v43 = v42[1];
    MLProgram.Function.blockSpecializations.getter();
    v46 = v45;

    v17 = v72;
    sub_257657B7C(v44, v43, v46, v72);
    v47 = v77;
    if (__swift_getEnumTagSinglePayload(v17, 1, v77) == 1)
    {
      break;
    }

    v48 = v78;
    sub_2576AF11C(v17, v78, type metadata accessor for MLProgram.Block);
    sub_2576AE4FC(v9, v40, v73, v74);
    v49 = v71;
    sub_2576AF17C(v48, v71, type metadata accessor for MLProgram.Block);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    MLProgram.Function.blockSpecializations.getter();
    v51 = v50;
    if (__swift_getEnumTagSinglePayload(v49, 1, v47) == 1)
    {
      v17 = v47;
      sub_2574695E4(v49, &qword_27F880698, &qword_25776CFE0);
      v52 = sub_25765368C(v44, v43);
      if (v53)
      {
        v54 = v52;
        swift_isUniquelyReferenced_nonNull_native();
        v82 = v51;
        v55 = *(v51 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
        v17 = v77;
        sub_257743894();
        v51 = v82;
        v56 = *(*(v82 + 48) + 16 * v54 + 8);

        v57 = v69;
        sub_2576AF11C(*(v51 + 56) + *(v67 + 72) * v54, v69, type metadata accessor for MLProgram.Block);
        sub_2577438B4();
        v58 = 0;
        v59 = v79;
      }

      else
      {
        v58 = 1;
        v59 = v79;
        v57 = v69;
      }

      v36 = v70;
      __swift_storeEnumTagSinglePayload(v57, v58, 1, v17);

      sub_2574695E4(v57, &qword_27F880698, &qword_25776CFE0);
    }

    else
    {
      v60 = v49;
      v61 = v68;
      sub_2576AF11C(v60, v68, type metadata accessor for MLProgram.Block);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v51;
      sub_25765C2DC(v61, v44, v43);

      v51 = v82;
      v59 = v79;
      v36 = v70;
    }

    v39 &= v39 - 1;
    sub_257653AF8(v51);
    v63 = v62;
    v79 = v59;

    sub_2576AF1DC(v78, type metadata accessor for MLProgram.Block);
    v27 = v80;
    v64 = *(v80 + 24);

    *(v27 + 24) = v63;
    if (!v39)
    {
      goto LABEL_19;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_2576AE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_257743994() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_2576AE4FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = v4;
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v10 = type metadata accessor for MLProgram.NamedValueType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MLProgram.Block.inputs.getter();
  v16 = 0;
  v17 = *(v15 + 16);
  while (1)
  {
    if (v17 == v16)
    {

      v16 = v33;
      v7 = v34;
      v19 = v35;
      goto LABEL_15;
    }

    if (v16 >= *(v15 + 16))
    {
      goto LABEL_28;
    }

    v6 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v5 = *(v11 + 72) * v16;
    sub_2576AF17C(v15 + v6 + v5, v14, type metadata accessor for MLProgram.NamedValueType);
    if (*v14 == a1 && v14[1] == v35)
    {
      break;
    }

    v7 = sub_257743994();
    sub_2576AF1DC(v14, type metadata accessor for MLProgram.NamedValueType);
    if (v7)
    {
      goto LABEL_12;
    }

    ++v16;
  }

  sub_2576AF1DC(v14, type metadata accessor for MLProgram.NamedValueType);
LABEL_12:

  v15 = MLProgram.Block.inputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v19 = v35;
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v20 = (v15 + v6 + v5);
      v21 = v20[1];
      v16 = v33;
      v7 = v34;
      *v20 = v33;
      v20[1] = v7;

      MLProgram.Block.inputs.setter();
LABEL_15:
      v15 = *(v8 + 8);
      v22 = sub_2576AE470(a1, v19, v15);
      if (v23)
      {
        goto LABEL_20;
      }

      v11 = v22;

      v24 = v15;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          break;
        }

        goto LABEL_18;
      }
    }

    sub_25767A634(v15);
    v24 = v31;
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_18:
    if (v11 >= *(v24 + 16))
    {
      goto LABEL_33;
    }

    v25 = v24 + 16 * v11;
    v26 = *(v25 + 40);
    *(v25 + 32) = v16;
    *(v25 + 40) = v7;

    *(v8 + 8) = v24;
    v19 = v35;
LABEL_20:
    v5 = *(MLProgram.Block.operations.getter() + 16);

    if (!v5)
    {
      return;
    }

    v6 = 0;
    while (1)
    {
      v15 = v8;
      v11 = MLProgram.Block.operations.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A604(v11);
        v11 = v29;
      }

      if (v6 >= *(v11 + 16))
      {
        break;
      }

      v27 = *(type metadata accessor for MLProgram.Operation() - 8);
      v28 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v6;
      sub_2576AE86C(a1, v19, v16, v7);
      MLProgram.Block.operations.setter();
      if (v5 == ++v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_25767A64C(v15);
    v15 = v30;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2576AE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v78 = a1;
  v79 = a2;
  v6 = type metadata accessor for MLProgram.NamedValueType();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880610, &qword_25776CC98);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v66 - v16;
  v82 = type metadata accessor for MLProgram.Argument(0);
  v68 = *(v82 - 8);
  v17 = *(v68 + 64);
  v18 = MEMORY[0x28223BE20](v82 - 8);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v66 - v20;
  MLProgram.Operation.inputs.getter();
  v22 = 0;
  v23 = 0;
  v25 = v21 + 64;
  v24 = *(v21 + 64);
  v80 = v21;
  v81 = v4;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v71 = v29;
  v72 = v21 + 64;
  v73 = v9;
  if ((v27 & v24) != 0)
  {
    while (1)
    {
      v83 = v23;
LABEL_9:
      v31 = (*(v80 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v28)))));
      v33 = *v31;
      v32 = v31[1];
      MLProgram.Operation.inputs.getter();
      v35 = v34;

      v36 = v74;
      sub_257657A94(v33, v32, v35, v74);
      v37 = v82;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v82);
      v39 = v75;
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_36;
      }

      v40 = v84;
      sub_2576AF11C(v36, v84, type metadata accessor for MLProgram.Argument);
      sub_2576AEEFC(v78, v79, v76, v77);
      sub_2576AF17C(v40, v39, type metadata accessor for MLProgram.Argument);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v37);
      MLProgram.Operation.inputs.getter();
      v42 = v41;
      if (__swift_getEnumTagSinglePayload(v39, 1, v37) == 1)
      {
        sub_2574695E4(v39, &qword_27F880610, &qword_25776CC98);
        v43 = sub_25765368C(v33, v32);
        v25 = v72;
        v9 = v73;
        if (v44)
        {
          v45 = v43;
          swift_isUniquelyReferenced_nonNull_native();
          v85 = v42;
          v46 = *(v42 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
          sub_257743894();
          v42 = v85;
          v47 = *(*(v85 + 48) + 16 * v45 + 8);

          v48 = v70;
          sub_2576AF11C(*(v42 + 56) + *(v68 + 72) * v45, v70, type metadata accessor for MLProgram.Argument);
          v49 = v82;
          sub_2577438B4();
          v50 = 0;
          v23 = v83;
        }

        else
        {
          v50 = 1;
          v49 = v82;
          v23 = v83;
          v48 = v70;
        }

        __swift_storeEnumTagSinglePayload(v48, v50, 1, v49);

        sub_2574695E4(v48, &qword_27F880610, &qword_25776CC98);
      }

      else
      {
        v51 = v39;
        v52 = v69;
        sub_2576AF11C(v51, v69, type metadata accessor for MLProgram.Argument);
        swift_isUniquelyReferenced_nonNull_native();
        v85 = v42;
        sub_25765C1BC(v52, v33, v32);

        v42 = v85;
        v23 = v83;
        v25 = v72;
        v9 = v73;
      }

      v29 = v71;
      v28 &= v28 - 1;
      sub_257648D44(v42);
      v5 = v53;

      sub_2576AF1DC(v84, type metadata accessor for MLProgram.Argument);
      v54 = v81;
      v55 = *(v81 + 16);

      *(v54 + 16) = v5;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v30 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      sub_25767A64C(v25);
      v25 = v65;
      goto LABEL_30;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v22;
    if (v28)
    {
      v83 = v23;
      v22 = v30;
      goto LABEL_9;
    }
  }

  v83 = v23;

  v25 = MLProgram.Operation.outputs.getter();
  v23 = 0;
  v56 = *(v25 + 16);
  v58 = v78;
  v57 = v79;
  v59 = v67;
  while (1)
  {
    if (v56 == v23)
    {

      return;
    }

    if (v23 >= *(v25 + 16))
    {
      goto LABEL_33;
    }

    v5 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v29 = *(v59 + 72) * v23;
    sub_2576AF17C(v25 + v5 + v29, v9, type metadata accessor for MLProgram.NamedValueType);
    if (*v9 == v58 && v9[1] == v57)
    {
      break;
    }

    v61 = sub_257743994();
    sub_2576AF1DC(v9, type metadata accessor for MLProgram.NamedValueType);
    if (v61)
    {
      goto LABEL_29;
    }

    ++v23;
  }

  sub_2576AF1DC(v9, type metadata accessor for MLProgram.NamedValueType);
LABEL_29:

  v25 = MLProgram.Operation.outputs.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (v23 < *(v25 + 16))
  {
    v62 = (v25 + v5 + v29);
    v63 = v62[1];
    v64 = v77;
    *v62 = v76;
    v62[1] = v64;

    MLProgram.Operation.outputs.setter();
    return;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_2576AEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for MLProgram.Argument.Binding(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MLProgram.Argument.bindings.getter();
  v10 = *(v9 + 16);

  if (v10)
  {
    for (i = 0; v10 != i; ++i)
    {
      MLProgram.Argument.bindings.getter();
      v13 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A5EC(v13);
        v13 = v20;
      }

      if (i >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      v14 = (v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i);
      sub_2576AF17C(v14, v8, type metadata accessor for MLProgram.Argument.Binding);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2576AF1DC(v8, type metadata accessor for MLProgram.Argument.Binding);
      }

      else
      {
        if (*v8 == v23 && v8[1] == v24)
        {
          v18 = v8[1];
        }

        else
        {
          v16 = v8[1];
          v17 = sub_257743994();

          if ((v17 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        sub_2576AF1DC(v14, type metadata accessor for MLProgram.Argument.Binding);
        v19 = v22;
        *v14 = v21;
        v14[1] = v19;
        swift_storeEnumTagMultiPayload();
      }

LABEL_16:
      MLProgram.Argument.bindings.setter();
    }
  }
}

unint64_t sub_2576AF100(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2576AF11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2576AF17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576AF1DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_31()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128);
  v3 = *(v0 - 280);
  v4 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  *(v2 + 16) = v3;
  v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v0;

  return sub_2576AF11C(v1, v6, type metadata accessor for NeuralNetwork.Layer);
}

void OUTLINED_FUNCTION_18_28()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 128);
  v3 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_21_21@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + *(v1 + 72) * v3;

  return sub_2576AF11C(v2, v5, type metadata accessor for Proto_NeuralNetworkPreprocessing);
}

uint64_t OUTLINED_FUNCTION_23_19@<X0>(uint64_t a1@<X8>)
{

  return sub_2576AF11C(v2, a1 + v1 * v3, type metadata accessor for Proto_NeuralNetworkLayer);
}

uint64_t OUTLINED_FUNCTION_25_16()
{

  return sub_2576AF17C(v1, v0, type metadata accessor for NeuralNetwork.Layer);
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return sub_2576AF1DC(v0, type metadata accessor for NeuralNetwork.Layer);
}

uint64_t OUTLINED_FUNCTION_27_16@<X0>(void *a1@<X8>)
{
  v3 = *(v1 - 272);
  *a1 = *(v1 - 280);
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_29_15()
{
  result = v0;
  v3 = *(v1 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_11()
{
  result = v0;
  v3 = *(v1 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_10()
{
  v2 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 464);

  return sub_2576AF17C(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_48_4@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v3 = *(v1 + a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_6()
{
  v2 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 464);

  return sub_2576AF17C(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return sub_257743994();
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 152);

  return sub_2576AF17C(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
  *(v2 - 96) = v0;

  return sub_257695D10(v1);
}

uint64_t OUTLINED_FUNCTION_71_3()
{
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_2576AF17C(v3, v4, a3);
}

uint64_t static NeuralNetwork.Layer.meanVarianceNormalize(name:inputName:outputName:kind:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a7;
  v50 = a8;
  v47 = a3;
  v48 = a5;
  v51 = a1;
  v52 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = type metadata accessor for NeuralNetwork.Border(0);
  v19 = OUTLINED_FUNCTION_13(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  v32 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v39 = swift_allocObject();
  v46 = xmmword_2577442B0;
  *(v39 + 16) = xmmword_2577442B0;
  *(v39 + 32) = v47;
  *(v39 + 40) = a4;
  v40 = swift_allocObject();
  *(v40 + 16) = v46;
  *(v40 + 32) = v48;
  *(v40 + 40) = a6;
  OUTLINED_FUNCTION_2_48();
  sub_2576B029C(v49, v31, v41);
  OUTLINED_FUNCTION_1_57();
  sub_2576B029C(v50, v24, v42);

  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v31, v24, v38);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v43 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v43) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v40);
  sub_2574897E0(v17);
  v44 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v44);
  sub_25752846C();
  return sub_257634BB4(v38);
}

uint64_t static NeuralNetwork.Layer.Kind.meanVarianceNormalize(kind:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NeuralNetwork.Border(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_2_48();
  sub_2576B029C(a1, v19, v20);
  OUTLINED_FUNCTION_1_57();
  sub_2576B029C(a2, v12, v21);
  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v19, v12, a3);
  type metadata accessor for NeuralNetwork.Layer.Kind();
  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 0x432073736F726341;
  *(v1 + 40) = 0xEF736C656E6E6168;
  v3 = 1702195828;
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = 0xD000000000000012;
  *(v1 + 72) = 0x8000000257781320;
  if (*(v0 + 1))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v3 = 0x65736C6166;
    v6 = 0xE500000000000000;
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v6;
  *(v1 + 96) = 0x6E6F6C69737045;
  *(v1 + 104) = 0xE700000000000000;
  v7 = *(v0 + 4);
  *(v1 + 112) = sub_257743794();
  *(v2 + 120) = v8;
  return v2;
}

uint64_t (*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.acrossChannels.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

_BYTE *(*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.normalizeVariance.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return sub_2576AFCE8;
}

float (*NeuralNetwork.Layer.MeanVarianceNormalizeParameters.epsilon.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.init(acrossChannels:normalizeVariance:epsilon:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  v8 = a3 + *(type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0) + 28);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 4) = a4;
  return result;
}

BOOL static NeuralNetwork.Layer.MeanVarianceNormalizeParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && a1[1] == a2[1])
  {
    v2 = *(type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0) + 28);
    sub_2577431B4();
    sub_2576B038C(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.hash(into:)()
{
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  OUTLINED_FUNCTION_3_54();
  sub_2576B038C(v0, v1);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  OUTLINED_FUNCTION_3_54();
  sub_2576B038C(v0, v1);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576AFF54()
{
  sub_257743A14();
  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  sub_2576B038C(&qword_27F87DF38, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.MeanVarianceNormalizeParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_2576B029C(v1, v19 - v18, type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2577442C0;
  strcpy((v20 + 32), "acrossChannels");
  *(v20 + 47) = -18;
  v21 = MEMORY[0x277D839B0];
  *(v20 + 48) = *v1;
  *(v20 + 72) = v21;
  *(v20 + 80) = 0xD000000000000011;
  *(v20 + 88) = 0x800000025777F3A0;
  *(v20 + 96) = *(v1 + 1);
  *(v20 + 120) = v21;
  *(v20 + 128) = 0x6E6F6C69737065;
  *(v20 + 136) = 0xE700000000000000;
  v22 = *(v1 + 4);
  *(v20 + 168) = MEMORY[0x277D83A90];
  *(v20 + 144) = v22;
  v23 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.MeanVarianceNormalizeParameters()
{
  result = qword_27F880E38;
  if (!qword_27F880E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576B029C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576B038C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576B0400()
{
  result = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeatureType.StateParameters.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_7_33();
  sub_2576B0674(v1 + *(v14 + 20), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    *v2 = MEMORY[0x277D84F90];
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    v15 = type metadata accessor for Proto_ArrayFeatureType(0);
    v16 = v15[6];
    v17 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
    __swift_storeEnumTagSinglePayload(v2 + v16, 1, 1, v17);
    v18 = v2 + v15[7];
    *v18 = 0;
    *(v18 + 8) = -1;
    v19 = v2 + v15[8];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2576B06E4(v9);
    }
  }

  else
  {
    sub_2576B0B14();
  }

  v20 = *(type metadata accessor for FeatureType.ShapedArrayParameters() + 20);
  OUTLINED_FUNCTION_1_58();
  result = sub_2576B0B14();
  *a1 = 0;
  return result;
}

uint64_t sub_2576B0674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576B074C()
{
  v1 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  v26 = 0x6574617453;
  v27 = 0xE500000000000000;
  v15 = *v0;
  if (v15 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  *(inited + 32) = 1701869908;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = xmmword_257771DA0;
  *(inited + 64) = 0;
  strcpy((inited + 72), "Element Type");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  FeatureType.StateParameters.elementType.getter(v14);
  sub_2576B1134();
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  sub_2576A374C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2576B1378(v7, type metadata accessor for FeatureType.ShapedArrayParameters);
  OUTLINED_FUNCTION_4_41();
  *(inited + 88) = v18;
  *(inited + 96) = v20;
  *(inited + 104) = v22;
  *(inited + 112) = 0x6C616E6F6974704FLL;
  *(inited + 120) = 0xE800000000000000;
  v25[7] = v15;
  *(inited + 128) = sub_257743674();
  *(inited + 136) = v23;
  *(inited + 144) = 0;
  return sub_2576AACFC(inited);
}

uint64_t sub_2576B09B4()
{
  v0 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2576B1134();
  return FeatureType.StateParameters.elementType.setter();
}

uint64_t FeatureType.StateParameters.elementType.setter()
{
  v1 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = type metadata accessor for FeatureType.StateParameters(0);
  sub_2576B06E4(v0 + *(v4 + 20));
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  v5 = *(v2 + 28);
  OUTLINED_FUNCTION_1_58();
  sub_2576B0B14();
  type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2576B0B14()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

void (*FeatureType.StateParameters.elementType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v3[1] = v4;
  OUTLINED_FUNCTION_13(v4);
  v3[2] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  FeatureType.StateParameters.elementType.getter(v9);
  return sub_2576B0C34;
}

void sub_2576B0C34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[4];
    sub_2576B1134();
    v9 = type metadata accessor for FeatureType.StateParameters(0);
    sub_2576B06E4(v7 + *(v9 + 20));
    OUTLINED_FUNCTION_0_74();
    sub_2576B0B14();
    v10 = *(v6 + 20);
    OUTLINED_FUNCTION_1_58();
    sub_2576B0B14();
    type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_4_41();
  }

  else
  {
    v15 = type metadata accessor for FeatureType.StateParameters(0);
    sub_2576B06E4(v7 + *(v15 + 20));
    OUTLINED_FUNCTION_0_74();
    sub_2576B0B14();
    v16 = *(v6 + 20);
    OUTLINED_FUNCTION_1_58();
    sub_2576B0B14();
    type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t FeatureType.StateParameters.init(elementType:optional:)@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = &a2[*(OUTLINED_FUNCTION_7_33() + 20)];
  v8 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = v7 + *(type metadata accessor for Proto_StateFeatureType(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  sub_2576B06E4(v7);
  OUTLINED_FUNCTION_0_74();
  sub_2576B0B14();
  v10 = *(v5 + 28);
  OUTLINED_FUNCTION_1_58();
  sub_2576B0B14();
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v8);
  *a2 = a1;
  return result;
}

void static FeatureType.StateParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = OUTLINED_FUNCTION_0_0();
    v4 = *(type metadata accessor for FeatureType.StateParameters(v3) + 20);

    sub_2574C55BC();
  }
}

uint64_t FeatureType.StateParameters.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = OUTLINED_FUNCTION_7_33();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_2576B1134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257743FF0;
  *(v16 + 32) = 0x54746E656D656C65;
  *(v16 + 40) = 0xEB00000000657079;
  *(v16 + 72) = type metadata accessor for FeatureType.StateParameters.ElementType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 48));
  FeatureType.StateParameters.elementType.getter(boxed_opaque_existential_0);
  *(v16 + 80) = 0x6E6F6974704F7369;
  *(v16 + 88) = 0xEA00000000006C61;
  v18 = *v0;
  *(v16 + 120) = MEMORY[0x277D839B0];
  *(v16 + 96) = v18;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v19);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t sub_2576B1134()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t static FeatureType.StateParameters.ElementType.== infix(_:_:)()
{
  v0 = type metadata accessor for FeatureType.ShapedArrayParameters();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E48, &qword_257771DB0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  v13 = *(MEMORY[0x28223BE20](v10) + 56);
  sub_2576B1134();
  sub_2576B1134();
  sub_2576B0B14();
  sub_2576B0B14();
  if (*v8 == *v6)
  {
    v14 = *(v0 + 20);
    sub_2574C0698();
    v16 = v15;
    sub_2576B1378(v6, type metadata accessor for FeatureType.ShapedArrayParameters);
    sub_2576B1378(v8, type metadata accessor for FeatureType.ShapedArrayParameters);
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    sub_2576B1378(v6, type metadata accessor for FeatureType.ShapedArrayParameters);
    sub_2576B1378(v8, type metadata accessor for FeatureType.ShapedArrayParameters);
  }

  return 0;
}

uint64_t sub_2576B1378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2576B13D4()
{
  result = qword_27F87A980;
  if (!qword_27F87A980)
  {
    type metadata accessor for Proto_StateFeatureType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A980);
  }

  return result;
}

uint64_t sub_2576B1458()
{
  result = type metadata accessor for Proto_StateFeatureType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576B14D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureType.ShapedArrayParameters();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_25745F3B8);
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 254)
  {
    v5 = *a1;
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a4(0);
    v12 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2576B15B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeatureType.ShapedArrayParameters();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745F3D0);
}

_BYTE *__swift_store_extra_inhabitant_indexTm_4(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = a5(0);
    v9 = &v6[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2576B16A0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureType.ShapedArrayParameters();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return sub_2576B1378(v0, type metadata accessor for FeatureType.StateParameters.ElementType);
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return type metadata accessor for FeatureType.StateParameters(0);
}

uint64_t static NeuralNetwork.Layer.rankPreservingReshape(name:inputName:outputName:targetShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  v22 = *(type metadata accessor for Proto_RankPreservingReshapeLayerParams(0) + 20);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v23);
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

uint64_t static NeuralNetwork.Layer.Kind.rankPreservingReshape(targetShape:)@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_RankPreservingReshapeLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.init(targetShape:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a2 + *(type metadata accessor for Proto_RankPreservingReshapeLayerParams(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  return NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(a1);
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442B0;
  strcpy((v1 + 32), "Target Shape");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v17 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      v7 = sub_257743974();
      v9 = v8;
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257483754((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      --v4;
    }

    while (v4);
    v2 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v13 = sub_257743604();
  v15 = v14;

  *(v2 + 48) = v13;
  *(v2 + 56) = v15;
  return v2;
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter()
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

uint64_t sub_2576B1D34(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v2);
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(uint64_t a1)
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

uint64_t (*NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter();
  return sub_2576B1EA0;
}

uint64_t sub_2576B1EA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(*a1);
  }

  v4 = *a1;

  NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.setter(v5);
}

BOOL static NeuralNetwork.Layer.RankPreservingReshapeParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (sub_257487374(*a1, *a2))
  {
    v2 = *(type metadata accessor for Proto_RankPreservingReshapeLayerParams(0) + 20);
    sub_2577431B4();
    sub_2576B22C8(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.RankPreservingReshapeParameters.customMirror.getter()
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
  v11 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576B221C(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = 0x6853746567726174;
  *(v15 + 40) = 0xEB00000000657061;
  v16 = NeuralNetwork.Layer.RankPreservingReshapeParameters.targetShape.getter();
  *(v15 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v15 + 48) = v16;
  v17 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters()
{
  result = qword_27F880E70;
  if (!qword_27F880E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576B221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.RankPreservingReshapeParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B22C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576B2338()
{
  result = type metadata accessor for Proto_RankPreservingReshapeLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576B23A4()
{
  OUTLINED_FUNCTION_31();
  v50 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v48 = 0x6567616D49;
  v49 = 0xE500000000000000;
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  v46 = 60;
  v47 = 0xE100000000000000;
  OUTLINED_FUNCTION_8_32();
  v19 = &v0[v18];
  v45 = *&v0[v18];
  OUTLINED_FUNCTION_201();
  v20 = sub_257743974();
  MEMORY[0x259C64E90](v20);

  MEMORY[0x259C64E90](38851, 0xA200000000000000);
  v45 = *(v19 + 1);
  OUTLINED_FUNCTION_201();
  v21 = sub_257743974();
  MEMORY[0x259C64E90](v21);

  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](v46, v47);

  FeatureType.ImageParameters.sizeFlexibility.getter();
  v22 = OUTLINED_FUNCTION_35_12(v17);
  sub_2574695E4(v17, &qword_27F880C78, &qword_257770B68);
  if (v22 != 1 || (v23 = type metadata accessor for Proto_ImageFeatureType(0), OUTLINED_FUNCTION_28_20(&v19[*(v23 + 28)]), v25) && *v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2577442B0;
    *(inited + 32) = 1701869908;
    *(inited + 40) = 0xE400000000000000;
    v27 = v49;
    *(inited + 48) = v48;
    *(inited + 56) = v27;
    *(inited + 64) = 0;
    FeatureType.ImageParameters.sizeFlexibility.getter();
    if (OUTLINED_FUNCTION_35_12(v14) == 1)
    {
      sub_2574695E4(v14, &qword_27F880C78, &qword_257770B68);
    }

    else
    {
      OUTLINED_FUNCTION_11_32();
      sub_2576B4DAC();
      sub_2576B3B20();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      sub_257469AE0();
      inited = v34;
      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v7, v35);
      *(inited + 16) = 2;
      *(inited + 72) = 0xD000000000000010;
      *(inited + 80) = 0x8000000257781370;
      *(inited + 88) = v29;
      *(inited + 96) = v31;
      *(inited + 104) = v33;
    }

    v36 = type metadata accessor for Proto_ImageFeatureType(0);
    OUTLINED_FUNCTION_28_20(&v19[*(v36 + 28)]);
    if (v25)
    {
      v38 = 0xE300000000000000;
      v39 = 4343634;
      switch(*v37)
      {
        case 1:
          v38 = 0xE900000000000065;
          v39 = 0x6C61637379617247;
          goto LABEL_17;
        case 2:
          goto LABEL_17;
        case 3:
          v39 = 5392194;
          goto LABEL_17;
        case 4:
          v38 = 0x8000000257781350;
          v39 = 0xD000000000000013;
LABEL_17:
          v40 = *(inited + 16);
          if (v40 >= *(inited + 24) >> 1)
          {
            sub_257469AE0();
            inited = v43;
          }

          *(inited + 16) = v40 + 1;
          v41 = inited + 40 * v40;
          *(v41 + 32) = 0x705320726F6C6F43;
          *(v41 + 40) = 0xEB00000000656361;
          *(v41 + 48) = v39;
          *(v41 + 56) = v38;
          *(v41 + 64) = 0;
          break;
        default:
          break;
      }
    }

    sub_2576AACFC(inited);
  }

  v42 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

void FeatureType.ImageParameters.init(width:height:colorSpace:optional:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  OUTLINED_FUNCTION_8_32();
  v11 = &v7[v10];
  v12 = type metadata accessor for Proto_ImageFeatureType(0);
  v13 = v12[6];
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v11 + v12[8];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v11 = v5;
  v11[1] = v3;
  v19 = v11 + v12[7];
  *v19 = v9 + 1;
  v19[8] = 1;
  *v7 = v1;
  OUTLINED_FUNCTION_35();
}

void FeatureType.ImageParameters.colorSpace.getter(char *a1@<X8>)
{
  OUTLINED_FUNCTION_8_32();
  v3 = OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_28_20(v1 + *(v3 + 28));
  if (v5)
  {
    OUTLINED_FUNCTION_18_29(v4);
  }

  else
  {
    v6 = 4;
  }

  *a1 = v6;
}

uint64_t FeatureType.ImageParameters.Size.init(width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FeatureType.ImageParameters.sizeFlexibility.getter()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(v1);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  OUTLINED_FUNCTION_8_32();
  v15 = *(OUTLINED_FUNCTION_26_13() + 24);
  OUTLINED_FUNCTION_24_18();
  sub_257487308();
  v16 = 1;
  if (OUTLINED_FUNCTION_35_12(v14) != 1)
  {
    OUTLINED_FUNCTION_12_31();
    sub_2576B4DAC();
    OUTLINED_FUNCTION_7_34();
    sub_2576B418C();
    sub_2576B2E1C();
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v8, v17);
    v16 = 0;
  }

  v18 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  return __swift_storeEnumTagSinglePayload(v0, v16, 1, v18);
}

uint64_t FeatureType.ImageParameters.width.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_32();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.width.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  OUTLINED_FUNCTION_8_32();
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_2576B2B48;
}

uint64_t FeatureType.ImageParameters.height.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_32();
  *(v1 + v4 + 8) = a1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.height.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  OUTLINED_FUNCTION_8_32();
  *(a1 + 16) = v3;
  *a1 = *(v1 + v3 + 8);
  return sub_2576B2BD8;
}

uint64_t sub_2576B2BEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v5 - v2;
  sub_257487308();
  return FeatureType.ImageParameters.sizeFlexibility.setter(v3);
}

uint64_t FeatureType.ImageParameters.sizeFlexibility.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_257487308();
  v16 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_24_18();
    sub_2574695E4(v17, v18, v19);
    OUTLINED_FUNCTION_24_18();
    sub_2574695E4(v20, v21, v22);
    v23 = 1;
  }

  else
  {
    sub_2576B33FC();
    sub_2574695E4(a1, &qword_27F880C78, &qword_257770B68);
    OUTLINED_FUNCTION_1_59();
    sub_2576B3600(v9, v24);
    v23 = 0;
  }

  v25 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  __swift_storeEnumTagSinglePayload(v15, v23, 1, v25);
  OUTLINED_FUNCTION_8_32();
  v27 = v2 + v26;
  v28 = type metadata accessor for Proto_ImageFeatureType(0);
  return sub_2576B338C(v15, v27 + *(v28 + 24));
}

void sub_2576B2E1C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v74 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v70 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for Proto_SizeRange(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v71 = (v16 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = (&v68 - v19);
  v21 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = type metadata accessor for Proto_ImageFeatureType.ImageSize(0);
  v68 = *(v25 - 8);
  v26 = *(v68 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_3();
  v29 = (v28 - v27);
  v73 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  v30 = OUTLINED_FUNCTION_4(v73);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v69 = (v34 - v33);
  v35 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v36 = OUTLINED_FUNCTION_13(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v41 = (v40 - v39);
  v42 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_34();
  v72 = v1;
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2576B4DAC();
    v46 = *(v21 + 20);
    sub_257487308();
    OUTLINED_FUNCTION_65(v11);
    if (v47)
    {
      *v20 = 0;
      v20[1] = 0;
      v48 = v20 + *(v12 + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_65(v11);
      v61 = v70;
      v60 = v71;
      if (!v47)
      {
        sub_2574695E4(v11, &qword_27F87A8A0, &unk_2577487A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_55();
      sub_2576B4DAC();
      v61 = v70;
      v60 = v71;
    }

    OUTLINED_FUNCTION_3_55();
    sub_2576B4DAC();
    v62 = *(v21 + 24);
    sub_257487308();
    OUTLINED_FUNCTION_65(v61);
    if (v47)
    {
      *v60 = 0;
      v60[1] = 0;
      v63 = v60 + *(v12 + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v72, v64);
      OUTLINED_FUNCTION_14_16();
      OUTLINED_FUNCTION_65(v61);
      if (!v47)
      {
        sub_2574695E4(v61, &qword_27F87A8A0, &unk_2577487A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v72, v65);
      OUTLINED_FUNCTION_14_16();
      OUTLINED_FUNCTION_3_55();
      sub_2576B4DAC();
    }

    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    OUTLINED_FUNCTION_3_55();
    sub_2576B4DAC();
    swift_storeEnumTagMultiPayload();
LABEL_21:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_2576B4DAC();
  v49 = *v41;
  v50 = *(*v41 + 16);
  if (!v50)
  {
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v72, v67);
    OUTLINED_FUNCTION_15_18();
    v51 = MEMORY[0x277D84F90];
LABEL_20:
    *v69 = v51;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_32();
    sub_2576B4DAC();
    goto LABEL_21;
  }

  v75 = MEMORY[0x277D84F90];
  sub_257484F80(0, v50, 0);
  v51 = v75;
  v52 = v49 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v53 = *(v68 + 72);
  while (1)
  {
    sub_2576B418C();
    v54 = *v29;
    if (*v29 < 0)
    {
      break;
    }

    v55 = v29[1];
    sub_2576B3600(v29, type metadata accessor for Proto_ImageFeatureType.ImageSize);
    if (v55 < 0)
    {
      goto LABEL_23;
    }

    v75 = v51;
    v57 = *(v51 + 16);
    v56 = *(v51 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_257484F80((v56 > 1), v57 + 1, 1);
      v51 = v75;
    }

    *(v51 + 16) = v57 + 1;
    v58 = v51 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v55;
    v52 += v53;
    if (!--v50)
    {
      OUTLINED_FUNCTION_0_75();
      sub_2576B3600(v72, v59);
      OUTLINED_FUNCTION_15_18();
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_2576B338C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576B33FC()
{
  OUTLINED_FUNCTION_16_1();
  v1 = type metadata accessor for SizeRange();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v7 = (v5 - v6);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    sub_2576B4DAC();
    sub_2576B4DAC();
    sub_2576B418C();
    sub_2576B418C();
    sub_2576B438C();
    OUTLINED_FUNCTION_4_42();
    sub_2576B3600(v0, v21);
    sub_2576B3600(v12, v7);
  }

  else
  {
    v22 = *v19;
    sub_2576B41E8();
  }

  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B3600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void FeatureType.ImageParameters.sizeFlexibility.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v3[1] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[3] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[4] = OUTLINED_FUNCTION_27_17();
  v11 = OUTLINED_FUNCTION_27_17();
  v3[5] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  v3[6] = OUTLINED_FUNCTION_27_17();
  v3[7] = OUTLINED_FUNCTION_27_17();
  v15 = OUTLINED_FUNCTION_27_17();
  v3[8] = v15;
  OUTLINED_FUNCTION_8_32();
  *(v3 + 18) = v16;
  *(v3 + 19) = *(OUTLINED_FUNCTION_26_13() + 24);
  sub_257487308();
  v17 = 1;
  if (OUTLINED_FUNCTION_35_12(v11) != 1)
  {
    OUTLINED_FUNCTION_12_31();
    sub_2576B4DAC();
    OUTLINED_FUNCTION_7_34();
    sub_2576B418C();
    sub_2576B2E1C();
    OUTLINED_FUNCTION_0_75();
    sub_2576B3600(v7, v18);
    v17 = 0;
  }

  v19 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  __swift_storeEnumTagSinglePayload(v15, v17, 1, v19);
  OUTLINED_FUNCTION_35();
}

void sub_2576B3818()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[2];
    v10 = *v1;
    v11 = (*v0)[8];
    sub_257487308();
    FeatureType.ImageParameters.sizeFlexibility.setter(v5);
    sub_2574695E4(v3, &qword_27F880C78, &qword_257770B68);
  }

  else
  {
    v12 = (*v0)[8];
    sub_257487308();
    v13 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
    v15 = v1[7];
    v16 = v1[8];
    if (EnumTagSinglePayload == 1)
    {
      v17 = OUTLINED_FUNCTION_263();
      sub_2574695E4(v17, v18, &qword_257770B68);
      sub_2574695E4(v15, &qword_27F880C78, &qword_257770B68);
      v19 = 1;
    }

    else
    {
      v20 = v1[4];
      sub_2576B33FC();
      sub_2574695E4(v16, &qword_27F880C78, &qword_257770B68);
      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v15, v21);
      v19 = 0;
    }

    v22 = *(v1 + 19);
    v2 = v1[7];
    v3 = v1[8];
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v23 = *v1 + *(v1 + 18);
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(v7, v19, 1, v1[1]);
    sub_2576B338C(v7, v23 + v22);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v24);
}

uint64_t FeatureType.ImageParameters.colorSpace.setter(char *a1)
{
  v2 = qword_257772190[*a1];
  OUTLINED_FUNCTION_8_32();
  result = OUTLINED_FUNCTION_26_13();
  v4 = v1 + *(result + 28);
  *v4 = v2;
  *(v4 + 8) = 1;
  return result;
}

uint64_t (*FeatureType.ImageParameters.colorSpace.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_8_32();
  *(a1 + 8) = v3;
  v4 = *(OUTLINED_FUNCTION_26_13() + 28);
  *(a1 + 12) = v4;
  OUTLINED_FUNCTION_28_20(v1 + v4);
  if (v6)
  {
    OUTLINED_FUNCTION_18_29(v5);
  }

  else
  {
    v7 = 4;
  }

  *(a1 + 16) = v7;
  return sub_2576B3AF0;
}

uint64_t sub_2576B3AF0(uint64_t result)
{
  v1 = *result + *(result + 8) + *(result + 12);
  *v1 = qword_257772190[*(result + 16)];
  *(v1 + 8) = 1;
  return result;
}

void sub_2576B3B20()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for SizeRange();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_34_12();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    OUTLINED_FUNCTION_13_22();
    sub_2576B4DAC();
    sub_2576B4DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257743FF0;
    OUTLINED_FUNCTION_31_11(inited, 26967);
    SizeRange.description.getter();
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    *(inited + 64) = 0;
    *(inited + 72) = 0x746867696548;
    *(inited + 80) = 0xE600000000000000;
    SizeRange.description.getter();
    *(inited + 88) = v18;
    *(inited + 96) = v19;
    *(inited + 104) = 0;
    sub_2576A6964(inited);
    sub_2576B3600(v0, type metadata accessor for SizeRange);
    sub_2576B3600(v1, type metadata accessor for SizeRange);
  }

  else
  {
    v20 = *v13;
    v21 = *(*v13 + 16);
    if (v21)
    {
      v33 = MEMORY[0x277D84F90];
      sub_257484040(0, v21, 0);
      v22 = (v20 + 40);
      do
      {
        v23 = *v22;
        v30 = *(v22 - 1);
        v31 = sub_257743974();
        v32 = v24;
        MEMORY[0x259C64E90](38851, 0xA200000000000000);
        v25 = sub_257743974();
        MEMORY[0x259C64E90](v25);

        v27 = *(v33 + 16);
        v26 = *(v33 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_257484040((v26 > 1), v27 + 1, 1);
        }

        v22 += 2;
        *(v33 + 16) = v27 + 1;
        v28 = v33 + 24 * v27;
        *(v28 + 32) = v31;
        *(v28 + 40) = v32;
        *(v28 + 48) = 0;
        --v21;
      }

      while (v21);
    }

    else
    {
      v29 = *v13;
    }
  }

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ImageParameters.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_8_32();
  v3 = &a1[v2];
  v4 = type metadata accessor for Proto_ImageFeatureType(0);
  *v3 = 0;
  v3[1] = 0;
  v5 = v4[6];
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3 + v4[7];
  *v10 = 0;
  v10[8] = 1;
  v11 = v3 + v4[8];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void static FeatureType.ImageParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_8_32();

    sub_2574BCFA0();
  }
}

void FeatureType.ImageParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for FeatureType.ImageParameters(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_2576B418C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257744000;
  v19 = OUTLINED_FUNCTION_31_11(v18, 26999);
  v20 = &v0[*(v14 + 20)];
  v21 = MEMORY[0x277D83B88];
  v23 = *v20;
  v22 = v20[1];
  v19[6] = v23;
  v19[9] = v21;
  v19[10] = 0x746867696568;
  v19[11] = 0xE600000000000000;
  v19[12] = v22;
  v19[15] = v21;
  v19[16] = 0x78656C46657A6973;
  v19[17] = 0xEF7974696C696269;
  *(v18 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C78, &qword_257770B68);
  __swift_allocate_boxed_opaque_existential_0((v18 + 144));
  FeatureType.ImageParameters.sizeFlexibility.getter();
  *(v18 + 176) = 0x617053726F6C6F63;
  *(v18 + 184) = 0xEA00000000006563;
  *(v18 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E80, &qword_257771F20);
  FeatureType.ImageParameters.colorSpace.getter((v18 + 192));
  *(v18 + 224) = 0x6E6F6974704F7369;
  *(v18 + 232) = 0xEA00000000006C61;
  v24 = *v0;
  *(v18 + 264) = MEMORY[0x277D839B0];
  *(v18 + 240) = v24;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B418C()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

void sub_2576B41E8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_ImageFeatureType.ImageSize(v3);
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  v13 = v0 + *(type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = *(v2 + 16);
  if (v14)
  {
    v23 = MEMORY[0x277D84F90];
    sub_257484F28();
    v15 = v23;
    v16 = (v2 + 40);
    while (1)
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = v12 + *(v4 + 24);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v18 < 0)
      {
        break;
      }

      *v12 = v18;
      if (v17 < 0)
      {
        goto LABEL_12;
      }

      v12[1] = v17;
      v20 = *(v23 + 16);
      if (v20 >= *(v23 + 24) >> 1)
      {
        sub_257484F28();
      }

      v16 += 2;
      *(v23 + 16) = v20 + 1;
      v21 = v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v22 = *(v7 + 72);
      sub_2576B4DAC();
      if (!--v14)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    *v0 = v15;
    OUTLINED_FUNCTION_35();
  }
}

void sub_2576B438C()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for Proto_SizeRange(v1);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v7 = *(v6 + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  v11 = *(v6 + 24);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v2);
  sub_2576B4DAC();
  sub_2574695E4(v0 + v7, &qword_27F87A8A0, &unk_2577487A0);
  sub_2576B4DAC();
  __swift_storeEnumTagSinglePayload(v0 + v7, 0, 1, v2);
  OUTLINED_FUNCTION_263();
  sub_2576B4DAC();
  sub_2574695E4(v0 + v11, &qword_27F87A8A0, &unk_2577487A0);
  sub_2576B4DAC();
  __swift_storeEnumTagSinglePayload(v0 + v11, 0, 1, v2);
  OUTLINED_FUNCTION_35();
}

void static FeatureType.ImageParameters.SizeFlexibility.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for SizeRange();
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v6 = (v4 - v5);
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v48 - v10);
  v12 = type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v48 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E88, &qword_257771F28);
  OUTLINED_FUNCTION_13(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v48 - v27;
  v29 = (&v48 + *(v26 + 56) - v27);
  sub_2576B418C();
  sub_2576B418C();
  OUTLINED_FUNCTION_205();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_49();
    sub_2576B418C();
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_13_22();
      sub_2576B4DAC();
      v31 = v49;
      sub_2576B4DAC();
      sub_2576B4DAC();
      if (*v18 == *v11 && v18[1] == v11[1] && (v32 = type metadata accessor for Proto_SizeRange(0), v33 = *(v32 + 24), v12 = sub_2577431B4(), sub_2576B4E04(&qword_27F879B68, MEMORY[0x277D216C8]), (sub_257743644() & 1) != 0))
      {
        sub_2576B3600(v18, type metadata accessor for SizeRange);
        if (*v31 == *v6 && v31[1] == v6[1])
        {
          v34 = *(v32 + 24);
          sub_257743644();
          sub_2576B3600(v6, type metadata accessor for SizeRange);
          sub_2576B3600(v31, type metadata accessor for SizeRange);
          v35 = OUTLINED_FUNCTION_263();
          sub_2576B3600(v35, v36);
LABEL_16:
          OUTLINED_FUNCTION_1_59();
          sub_2576B3600(v28, v46);
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_4_42();
        v44 = v6;
        v45 = v47;
      }

      else
      {
        OUTLINED_FUNCTION_4_42();
        sub_2576B3600(v18, v43);
        v44 = v6;
        v45 = v12;
      }

      sub_2576B3600(v44, v45);
      sub_2576B3600(v31, v12);
      sub_2576B3600(v11, v12);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_42();
    sub_2576B3600(v18 + v30, v38);
    sub_2576B3600(v18, v12);
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    sub_2576B418C();
    v37 = *v21;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = *v29;
      v40 = OUTLINED_FUNCTION_263();
      sub_257482A08(v40, v41);

      OUTLINED_FUNCTION_1_59();
      sub_2576B3600(v28, v42);
      goto LABEL_17;
    }
  }

  sub_2574695E4(v28, &qword_27F880E88, &qword_257771F28);
LABEL_17:
  OUTLINED_FUNCTION_35();
}

uint64_t FeatureType.ImageParameters.SizeFlexibility.hash(into:)(uint64_t a1)
{
  v4 = type metadata accessor for SizeRange();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_34_12();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = (v14 - v13);
  OUTLINED_FUNCTION_2_49();
  sub_2576B418C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880C80, &unk_257770B70) + 48);
    sub_2576B4DAC();
    sub_2576B4DAC();
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_SizeRange(0);
    sub_2576B4E04(&qword_27F87AAA8, type metadata accessor for Proto_SizeRange);
    OUTLINED_FUNCTION_24_18();
    sub_2577435F4();
    OUTLINED_FUNCTION_24_18();
    sub_2577435F4();
    sub_2576B3600(v1, type metadata accessor for SizeRange);
    return sub_2576B3600(v2, type metadata accessor for SizeRange);
  }

  else
  {
    v18 = *v15;
    MEMORY[0x259C651F0](0);
    sub_257668370(a1, v18);
  }
}

uint64_t FeatureType.ImageParameters.SizeFlexibility.hashValue.getter()
{
  sub_257743A14();
  FeatureType.ImageParameters.SizeFlexibility.hash(into:)(v1);
  return sub_257743A64();
}

uint64_t sub_2576B4B50()
{
  sub_257743A14();
  FeatureType.ImageParameters.SizeFlexibility.hash(into:)(v1);
  return sub_257743A64();
}

uint64_t FeatureType.ImageParameters.Size.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C651F0](*v0);
  return MEMORY[0x259C651F0](v1);
}

uint64_t FeatureType.ImageParameters.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  MEMORY[0x259C651F0](v2);
  return sub_257743A64();
}

uint64_t sub_2576B4CBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  MEMORY[0x259C651F0](v2);
  return sub_257743A64();
}

uint64_t FeatureType.ImageParameters.ColorSpace.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 30)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (result == 40)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (result == 20)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (result == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2576B4D6C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.ImageParameters.ColorSpace.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2576B4DAC()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_2576B4E04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2576B4EE0()
{
  result = qword_27F880E98;
  if (!qword_27F880E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880E98);
  }

  return result;
}

unint64_t sub_2576B4F38()
{
  result = qword_27F880EA0;
  if (!qword_27F880EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880EA0);
  }

  return result;
}

uint64_t sub_2576B4FB4()
{
  result = type metadata accessor for Proto_ImageFeatureType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2576B5030()
{
  sub_2576B50A4();
  if (v0 <= 0x3F)
  {
    sub_2576B50F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2576B50A4()
{
  if (!qword_27F880EB8)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F880EB8);
    }
  }
}

void sub_2576B50F4()
{
  if (!qword_27F880EC0)
  {
    type metadata accessor for SizeRange();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F880EC0);
    }
  }
}

uint64_t _s15ImageParametersV4SizeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15ImageParametersV4SizeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *_s15ImageParametersV10ColorSpaceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{
  result = type metadata accessor for FeatureType.ImageParameters(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_2576B3600(v0, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return sub_2576B3600(v0, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return type metadata accessor for Proto_ImageFeatureType(0);
}

void *OUTLINED_FUNCTION_27_17()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_31_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x6874640000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return type metadata accessor for FeatureType.ImageParameters.SizeFlexibility(0);
}

uint64_t OUTLINED_FUNCTION_35_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void sub_2576B5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880410, &unk_25776BFB0);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_271();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_13(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = type metadata accessor for Proto_ActivationParams.OneOf_NonlinearityType(0);
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_11();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &a9 - v45;
  sub_2574A172C(v24, v36, &qword_27F879CC0, &unk_257752A20);
  OUTLINED_FUNCTION_155(v36, 1, v37);
  if (v51)
  {
    v47 = &qword_27F879CC0;
    v48 = &unk_257752A20;
    v49 = v36;
LABEL_7:
    sub_2574695E4(v49, v47, v48);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_42_13();
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  sub_2576B7680(v36, v46);
  sub_2576B7680(v46, v43);
  sub_2576B7CC8(v43, v20);
  v50 = type metadata accessor for NeuralNetwork.Layer.Activation(0);
  OUTLINED_FUNCTION_155(v20, 1, v50);
  if (v51)
  {
    v47 = &qword_27F880410;
    v48 = &unk_25776BFB0;
    v49 = v20;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_51_5();
  sub_2576B7680(v20, v26);
LABEL_8:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576B5744@<X0>(uint64_t (*a1)(void)@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v5 = a2 + *(a1(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a3;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}

void static NeuralNetwork.Layer.parameterizedRelu(name:inputName:outputName:scale:)()
{
  OUTLINED_FUNCTION_31();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_3();
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v19 = OUTLINED_FUNCTION_13_6();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = v8;
  *(v19 + 40) = v6;
  v20 = OUTLINED_FUNCTION_13_6();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = v4;
  *(v20 + 40) = v2;

  static NeuralNetwork.Layer.Kind.parameterizedRelu(scale:)(v23);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v21 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  *(v10 + v21) = qword_27F87BEE8;

  OUTLINED_FUNCTION_87_3();
  sub_2575283BC();
  sub_25752842C(v20);
  OUTLINED_FUNCTION_86_4();
  v22 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v22);
  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.parameterizedRelu(scale:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_16_1();
  v6 = type metadata accessor for Proto_WeightParams(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for NeuralNetwork.WeightParameters();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_14_17();
  sub_2576B750C(a1, v3);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v13 = *(type metadata accessor for Proto_ActivationPReLU(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  v17 = *(v11 + 28);
  OUTLINED_FUNCTION_4_43();
  sub_2576B750C(v3 + v18, v2);
  OUTLINED_FUNCTION_2_50();
  sub_2576B7568(v3, v19);
  sub_2574695E4(v1 + v13, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_3_56();
  sub_2576B7680(v2, v1 + v13);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  OUTLINED_FUNCTION_18_1();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B5AC4()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2576B5B54@<X0>(uint64_t (*a1)(void)@<X0>, float *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v7 = a2 + *(a1(0) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a3;
  a2[1] = a4;
  OUTLINED_FUNCTION_42_13();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NeuralNetwork.Layer.Kind();
  OUTLINED_FUNCTION_66_3();

  return swift_storeEnumTagMultiPayload();
}