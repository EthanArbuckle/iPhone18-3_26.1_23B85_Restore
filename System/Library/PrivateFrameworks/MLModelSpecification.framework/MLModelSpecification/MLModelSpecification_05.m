uint64_t sub_2574B7AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574B7BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574B7C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2574B7C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DictVectorizer.OneOf_Map(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2574B7E10()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

void sub_2574B7EB8()
{
  sub_2574B7FD4(319, &qword_281537990, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_2574B7FD4(319, &qword_281537EE8, type metadata accessor for Proto_SizeRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2574B7FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2574B8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

void sub_2574B8238()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2574B7FD4(319, &qword_281537EE8, type metadata accessor for Proto_SizeRange, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574B83F8()
{
  sub_2574B7FD4(319, &qword_281537B58, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_42Tm()
{
  OUTLINED_FUNCTION_41_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_72_0();
  }

  else
  {
    sub_2577431B4();
    v5 = OUTLINED_FUNCTION_24_5();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_43Tm()
{
  OUTLINED_FUNCTION_33_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_3(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_2574B869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_ArrayFeatureType(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_118Tm);
}

uint64_t sub_2574B8714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_ArrayFeatureType(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_119Tm);
}

uint64_t sub_2574B877C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_ArrayFeatureType(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2574B8844()
{
  result = type metadata accessor for Proto_Int64FeatureType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_DoubleFeatureType(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_StringFeatureType(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_ImageFeatureType(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Proto_ArrayFeatureType(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Proto_DictionaryFeatureType(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Proto_SequenceFeatureType(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Proto_StateFeatureType(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
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

uint64_t __swift_store_extra_inhabitant_index_88Tm()
{
  OUTLINED_FUNCTION_267();
  v1 = *(v0 + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_59_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2574B89B4()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_78_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_118Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_18_3(v7);
  if (*(v8 + 84) == a2)
  {
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void __swift_store_extra_inhabitant_index_119Tm()
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
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
    OUTLINED_FUNCTION_18_3(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      sub_2577431B4();
      v9 = *(v4 + 32);
    }

    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_2574B8BD4()
{
  sub_2574B8D28(319, &qword_27F87A660, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2574B7FD4(319, &qword_281537BB0, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2574B8D28(319, &qword_27F87A908, &type metadata for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2577431B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2574B8D28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for Proto_ArrayFeatureType.OneOf_DefaultOptionalValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2574B8F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_2577431B4();
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_78_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_97_0();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_78Tm(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_81_0();
  }

  sub_2577431B4();
  v4 = OUTLINED_FUNCTION_24_5();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void __swift_store_extra_inhabitant_index_79Tm()
{
  OUTLINED_FUNCTION_267();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_59_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_2574B91B4()
{
  sub_2574B7FD4(319, &qword_281537E90, type metadata accessor for Proto_FeatureType.OneOf_Type, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574B9274()
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v0 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v1 = OUTLINED_FUNCTION_95_0(v0);
  v2 = type metadata accessor for Proto_SizeRange(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

void sub_2574B92E8()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v40 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v9 = OUTLINED_FUNCTION_4(v40);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_6();
  v12 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v39 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC30, &qword_25774A448);
  OUTLINED_FUNCTION_13(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_2();
  v27 = *(v26 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_54_0();
      sub_2574CB180();
      sub_2574BE7B0();
      sub_2574CB128(v8, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
      sub_2574CB128(v18, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
      OUTLINED_FUNCTION_5_11();
      sub_2574CB128(v0, v28);
      goto LABEL_11;
    }

    v29 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange;
    v30 = v18;
LABEL_7:
    sub_2574CB128(v30, v29);
    sub_2574695E4(v0, &qword_27F87AC30, &qword_25774A448);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_2();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes;
    v30 = v21;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_54_0();
  sub_2574CB180();
  v31 = *v21;
  v32 = *v1;
  sub_25748282C();
  if (v33)
  {
    v34 = *(v40 + 20);
    v8 = sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    sub_2574C9F70(v35, v36);
    sub_257743644();
  }

  OUTLINED_FUNCTION_52_0();
  sub_2574CB128(v1, v37);
  sub_2574CB128(v21, v8);
  OUTLINED_FUNCTION_5_11();
  sub_2574CB128(v0, v38);
LABEL_11:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574B9670(uint64_t result)
{
  v1 = 4;
  v2 = 2;
  v3 = 3;
  if (result == 10)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  if (result != 30)
  {
    v3 = v4;
  }

  if (result != 20)
  {
    v2 = v3;
  }

  if (result != 40)
  {
    v1 = v2;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2574B96D8(uint64_t result, char a2)
{
  if (a2)
  {
    result *= 10;
  }

  return result;
}

uint64_t sub_2574B9738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2574B96D8(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_2574B9774(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CB228();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2574B97E8()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v3 = v2(v1);
  *v0 = 0;
  v0[1] = 0;
  v4 = v0 + *(v3 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B9824()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for Proto_ImageFeatureType(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v2[6];
  type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v0 + v2[7];
  *v8 = 0;
  v8[8] = 1;
  v9 = v0 + v2[8];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574B9894@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574B98DC()
{
  OUTLINED_FUNCTION_31();
  v43 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v5 = OUTLINED_FUNCTION_4(v43);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v42 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v8 = OUTLINED_FUNCTION_4(v42);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_78();
  v12 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_290();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC40, &qword_25774A458);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_40_2();
  v22 = *(v21 + 56);
  v23 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility;
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      v24 = *v3;
      v25 = *v1;
      sub_25747F268();
      if (v26)
      {
        v27 = *(v43 + 20);
        v23 = sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v28, v29);
        sub_257743644();
      }

      OUTLINED_FUNCTION_50_0();
      sub_2574CB128(v1, v30);
      v31 = v3;
LABEL_14:
      sub_2574CB128(v31, v23);
      OUTLINED_FUNCTION_9_6();
      sub_2574CB128(v0, v41);
      goto LABEL_15;
    }

    v32 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange;
    v33 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      v34 = *v4;
      v35 = *v2;
      sub_25748264C();
      if (v36)
      {
        v37 = *(v42 + 20);
        v23 = sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v38, v39);
        sub_257743644();
      }

      OUTLINED_FUNCTION_48_0();
      sub_2574CB128(v2, v40);
      v31 = v4;
      goto LABEL_14;
    }

    v32 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes;
    v33 = v4;
  }

  sub_2574CB128(v33, v32);
  sub_2574695E4(v0, &qword_27F87AC40, &qword_25774A458);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

BOOL sub_2574B9C94(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && a1 == a3;
  }
}

uint64_t sub_2574B9D14(uint64_t result)
{
  if (result)
  {
    if (result == 131104)
    {
      return 3;
    }

    else
    {
      v1 = 5;
      if (result != 65552)
      {
        v1 = result;
      }

      if (result == 131080)
      {
        v2 = 4;
      }

      else
      {
        v2 = v1;
      }

      if (result == 65600)
      {
        v3 = 2;
      }

      else
      {
        v3 = v2;
      }

      if (result == 65568)
      {
        return 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t sub_2574B9DB4(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_25774A490[result];
  }

  return result;
}

uint64_t sub_2574B9E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2574B9DB4(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_2574B9EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CB1D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574B9F24()
{
  result = qword_281537BF0;
  if (!qword_281537BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BF0);
  }

  return result;
}

unint64_t sub_2574B9FAC()
{
  result = qword_281537BF8;
  if (!qword_281537BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BF8);
  }

  return result;
}

unint64_t sub_2574BA004()
{
  result = qword_281537BE8;
  if (!qword_281537BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537BE8);
  }

  return result;
}

uint64_t sub_2574BA058@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Proto_ArrayFeatureType(0);
  v3 = v2[6];
  type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = a1 + v2[7];
  *v8 = 0;
  *(v8 + 8) = -1;
  v9 = a1 + v2[8];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574BA0DC()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = type metadata accessor for Proto_Int64FeatureType(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_290();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC28, &qword_25774A440);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_2();
  v24 = *(v23 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() == 1)
    {
      OUTLINED_FUNCTION_23_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v25, v26);
      OUTLINED_FUNCTION_360();
      sub_257743644();
      OUTLINED_FUNCTION_46_1();
      sub_2574CB128(v1, v27);
      v28 = OUTLINED_FUNCTION_222();
LABEL_9:
      sub_2574CB128(v28, v29);
      OUTLINED_FUNCTION_20_3();
      sub_2574CB128(v0, v35);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_22_3();
    v31 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() != 1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v32, v33);
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_47_1();
      sub_2574CB128(v2, v34);
      v28 = OUTLINED_FUNCTION_229();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10_9();
    v31 = v4;
  }

  sub_2574CB128(v31, v30);
  sub_2574695E4(v0, &qword_27F87AC28, &qword_25774A440);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

void sub_2574BA3A8()
{
  OUTLINED_FUNCTION_31();
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = type metadata accessor for Proto_Int64FeatureType(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_78();
  v14 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_290();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC20, &qword_25774A438);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_2();
  v24 = *(v23 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() == 1)
    {
      OUTLINED_FUNCTION_23_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v25, v26);
      OUTLINED_FUNCTION_360();
      sub_257743644();
      OUTLINED_FUNCTION_46_1();
      sub_2574CB128(v1, v27);
      v28 = OUTLINED_FUNCTION_222();
LABEL_9:
      sub_2574CB128(v28, v29);
      OUTLINED_FUNCTION_19_4();
      sub_2574CB128(v0, v35);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_22_3();
    v31 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_39_2();
    sub_2574CB27C();
    if (OUTLINED_FUNCTION_100_0() != 1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2574CB180();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v32, v33);
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_47_1();
      sub_2574CB128(v2, v34);
      v28 = OUTLINED_FUNCTION_229();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10_9();
    v31 = v4;
  }

  sub_2574CB128(v31, v30);
  sub_2574695E4(v0, &qword_27F87AC20, &qword_25774A438);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574BA674()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Proto_SequenceFeatureType(0);
  v7 = v0 + *(v6 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = *(v6 + 24);
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_2574BA6E8()
{
  OUTLINED_FUNCTION_267();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC38, &qword_25774A450);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *(v5 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  sub_2574C0698();
  v10 = v9;
  OUTLINED_FUNCTION_51_0();
  sub_2574CB128(&v7[v8], v11);
  sub_2574CB128(v7, v0);
  return v10 & 1;
}

uint64_t sub_2574BA7CC@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = a3 + *(a2(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574BA824()
{
  OUTLINED_FUNCTION_31();
  v120 = v2;
  v121 = v3;
  v4 = type metadata accessor for Proto_StateFeatureType(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v117 = v9 - v8;
  v10 = OUTLINED_FUNCTION_153();
  v11 = type metadata accessor for Proto_SequenceFeatureType(v10);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v116 = v16 - v15;
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for Proto_DictionaryFeatureType(v17);
  v19 = OUTLINED_FUNCTION_13(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v115 = v23 - v22;
  v24 = OUTLINED_FUNCTION_153();
  v25 = type metadata accessor for Proto_ArrayFeatureType(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v114 = v30 - v29;
  v31 = OUTLINED_FUNCTION_153();
  v32 = type metadata accessor for Proto_ImageFeatureType(v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v112 = v37 - v36;
  v38 = OUTLINED_FUNCTION_153();
  v39 = type metadata accessor for Proto_StringFeatureType(v38);
  v40 = OUTLINED_FUNCTION_13(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v113 = v44 - v43;
  v45 = OUTLINED_FUNCTION_153();
  v46 = type metadata accessor for Proto_DoubleFeatureType(v45);
  v47 = OUTLINED_FUNCTION_13(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  v111 = v51 - v50;
  v52 = OUTLINED_FUNCTION_153();
  v53 = type metadata accessor for Proto_Int64FeatureType(v52);
  v54 = OUTLINED_FUNCTION_13(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v110 = v58 - v57;
  v59 = OUTLINED_FUNCTION_153();
  v60 = type metadata accessor for Proto_FeatureType.OneOf_Type(v59);
  v61 = OUTLINED_FUNCTION_4(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_11();
  v119 = (v64 - v65);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v66);
  v118 = &v110 - v67;
  OUTLINED_FUNCTION_158();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = &v110 - v70;
  v72 = MEMORY[0x28223BE20](v69);
  v74 = &v110 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = (&v110 - v76);
  v78 = MEMORY[0x28223BE20](v75);
  v80 = &v110 - v79;
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v110 - v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_290();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC18, &qword_25774A430);
  OUTLINED_FUNCTION_13(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_40_2();
  v89 = *(v88 + 56);
  sub_2574CB27C();
  sub_2574CB27C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 1)
      {
        OUTLINED_FUNCTION_54_0();
        v100 = v111;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v102, v103);
        OUTLINED_FUNCTION_176();
        sub_257743644();
        v101 = type metadata accessor for Proto_DoubleFeatureType;
        goto LABEL_18;
      }

      v106 = type metadata accessor for Proto_DoubleFeatureType;
      goto LABEL_28;
    case 2u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 2)
      {
        OUTLINED_FUNCTION_23_4();
        v95 = v113;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v96, v97);
        sub_257743644();
        v77 = type metadata accessor for Proto_StringFeatureType;
        sub_2574CB128(v95, type metadata accessor for Proto_StringFeatureType);
        v94 = v80;
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_22_3();
      v91 = v80;
      goto LABEL_29;
    case 3u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 3)
      {
        OUTLINED_FUNCTION_54_0();
        v98 = v112;
        sub_2574CB180();
        sub_2574BCFA0();
        sub_2574CB128(v98, type metadata accessor for Proto_ImageFeatureType);
        v94 = v77;
        v99 = type metadata accessor for Proto_ImageFeatureType;
        goto LABEL_20;
      }

      v90 = type metadata accessor for Proto_ImageFeatureType;
      v91 = v77;
      goto LABEL_29;
    case 4u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 4)
      {
        OUTLINED_FUNCTION_54_0();
        v92 = v114;
        sub_2574CB180();
        sub_2574C0698();
        OUTLINED_FUNCTION_51_0();
        sub_2574CB128(v92, v93);
        v94 = v74;
        goto LABEL_19;
      }

      v90 = type metadata accessor for Proto_ArrayFeatureType;
      v91 = v74;
      goto LABEL_29;
    case 5u:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 5)
      {
        OUTLINED_FUNCTION_54_0();
        v104 = v115;
        sub_2574CB180();
        sub_2574C2CDC();
        v77 = type metadata accessor for Proto_DictionaryFeatureType;
        sub_2574CB128(v104, type metadata accessor for Proto_DictionaryFeatureType);
        v94 = v71;
        goto LABEL_19;
      }

      v90 = type metadata accessor for Proto_DictionaryFeatureType;
      v91 = v71;
      goto LABEL_29;
    case 6u:
      OUTLINED_FUNCTION_2_11();
      v83 = v118;
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 6)
      {
        OUTLINED_FUNCTION_54_0();
        v100 = v116;
        sub_2574CB180();
        OUTLINED_FUNCTION_176();
        sub_2574C4598();
        v101 = type metadata accessor for Proto_SequenceFeatureType;
        goto LABEL_18;
      }

      v106 = type metadata accessor for Proto_SequenceFeatureType;
      goto LABEL_28;
    case 7u:
      OUTLINED_FUNCTION_2_11();
      v83 = v119;
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0() == 7)
      {
        OUTLINED_FUNCTION_54_0();
        v100 = v117;
        sub_2574CB180();
        OUTLINED_FUNCTION_176();
        sub_2574C55BC();
        v101 = type metadata accessor for Proto_StateFeatureType;
LABEL_18:
        v77 = v101;
        sub_2574CB128(v100, v101);
        v94 = v83;
        goto LABEL_19;
      }

      v106 = type metadata accessor for Proto_StateFeatureType;
LABEL_28:
      v90 = v106;
      v91 = v83;
      goto LABEL_29;
    default:
      OUTLINED_FUNCTION_2_11();
      sub_2574CB27C();
      if (OUTLINED_FUNCTION_79_0())
      {
        OUTLINED_FUNCTION_10_9();
        v91 = v1;
LABEL_29:
        sub_2574CB128(v91, v90);
        sub_2574695E4(v0, &qword_27F87AC18, &qword_25774A430);
      }

      else
      {
        OUTLINED_FUNCTION_21_4();
        v107 = v110;
        sub_2574CB180();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v108, v109);
        OUTLINED_FUNCTION_229();
        sub_257743644();
        v77 = type metadata accessor for Proto_Int64FeatureType;
        sub_2574CB128(v107, type metadata accessor for Proto_Int64FeatureType);
        v94 = v1;
LABEL_19:
        v99 = v77;
LABEL_20:
        sub_2574CB128(v94, v99);
        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v0, v105);
      }

      OUTLINED_FUNCTION_35();
      return;
  }
}

unint64_t sub_2574BB090()
{
  result = qword_27F87A940;
  if (!qword_27F87A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A940);
  }

  return result;
}

unint64_t sub_2574BB118()
{
  result = qword_27F87A958;
  if (!qword_27F87A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A958);
  }

  return result;
}

unint64_t sub_2574BB170()
{
  result = qword_27F87A960;
  if (!qword_27F87A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87A960);
  }

  return result;
}

uint64_t sub_2574BB1C4()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_FeatureType.OneOf_Type(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Proto_FeatureType(0);
  *(v0 + *(v6 + 20)) = 0;
  v7 = v0 + *(v6 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574BB220()
{
  do
  {
    result = sub_257743234();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_2574BB298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB70, type metadata accessor for Proto_Int64FeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB338(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB400()
{
  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);

  return sub_257743424();
}

uint64_t sub_2574BB4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB78, type metadata accessor for Proto_DoubleFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB544(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB60C()
{
  sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType);

  return sub_257743424();
}

uint64_t sub_2574BB694(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_44_1();
  __swift_project_value_buffer(v4, v5);
  return sub_2577435A4();
}

uint64_t sub_2574BB6D8()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v0, v1);
  OUTLINED_FUNCTION_44_1();
  return sub_257743644() & 1;
}

uint64_t sub_2574BB760(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB80, type metadata accessor for Proto_StringFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BB800(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BB8C8()
{
  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);

  return sub_257743424();
}

uint64_t sub_2574BBA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABD8, type metadata accessor for Proto_SizeRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BBAC0(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BBB88()
{
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange);

  return sub_257743424();
}

uint64_t sub_2574BBC34()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8158);
  __swift_project_value_buffer(v0, qword_27F8E8158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedSizes";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "imageSizeRange";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 3;
  *v16 = "colorSpace";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BBEB8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 31:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574BC4D8(v7, v8, v9, v10);
        break;
      case 2:
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_2574BBF60();
        break;
      case 21:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574BBFD4(v3, v4, v5, v6);
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_10_7();
        sub_257743324();
        break;
    }
  }
}

uint64_t sub_2574BBF60()
{
  v0 = *(type metadata accessor for Proto_ImageFeatureType(0) + 28);
  sub_2574CB228();
  return sub_257743284();
}

uint64_t sub_2574BBFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABB8, &qword_25774A410);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v17, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87ABB8, &qword_25774A410);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87ABB8, &qword_25774A410);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87ABB8, &qword_25774A410);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87ABB8, &qword_25774A410);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87ABB8, &qword_25774A410);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87A8C8, &unk_257748860);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_2574BC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABC0, &qword_25774A418);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87ABC0, &qword_25774A418);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
    }
  }

  sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87ABC0, &qword_25774A418);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87ABC0, &qword_25774A418);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87ABC0, &qword_25774A418);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87ABC0, &qword_25774A418);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87A8C8, &unk_257748860);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

void sub_2574BC9DC()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  if (!OUTLINED_FUNCTION_93_0() || (OUTLINED_FUNCTION_12_8(), sub_257743504(), !v0))
  {
    if (!*(v1 + 8) || (OUTLINED_FUNCTION_12_8(), sub_257743504(), !v0))
    {
      v7 = type metadata accessor for Proto_ImageFeatureType(0);
      v8 = (v1 + v7[7]);
      if (!*v8 || (v21 = *v8, v22 = *(v8 + 8), sub_2574CB228(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v0))
      {
        v9 = v7[6];
        sub_257487308();
        v10 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
        if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
        {
          goto LABEL_12;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v11 = OUTLINED_FUNCTION_3_9();
          sub_2574BCD80(v11, v12, v13, v14);
        }

        else
        {
          v15 = OUTLINED_FUNCTION_3_9();
          sub_2574BCB60(v15, v16, v17, v18);
        }

        OUTLINED_FUNCTION_5_11();
        sub_2574CB128(v2, v19);
        if (!v0)
        {
LABEL_12:
          v20 = v7[8];
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574BCB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  sub_257487308();
  v13 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574BCD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_ImageFeatureType(0) + 24);
  sub_257487308();
  v13 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8C8, &unk_257748860);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  }

  __break(1u);
  return result;
}

void sub_2574BCFA0()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_0_0();
  v6 = type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8C8, &unk_257748860);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC48, &qword_25774A460);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_3();
  if (*v1 != *v0 || v1[1] != v0[1])
  {
    goto LABEL_15;
  }

  v28 = type metadata accessor for Proto_ImageFeatureType(0);
  v18 = v28[6];
  v19 = *(v14 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  OUTLINED_FUNCTION_28_0(v3);
  if (v20)
  {
    OUTLINED_FUNCTION_28_0(v3 + v19);
    if (v20)
    {
      sub_2574695E4(v3, &qword_27F87A8C8, &unk_257748860);
      goto LABEL_13;
    }

LABEL_11:
    sub_2574695E4(v3, &qword_27F87AC48, &qword_25774A460);
LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_264();
  sub_257487308();
  OUTLINED_FUNCTION_28_0(v3 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_5_11();
    sub_2574CB128(v4, v21);
    goto LABEL_11;
  }

  sub_2574CB180();
  OUTLINED_FUNCTION_229();
  sub_2574B92E8();
  v23 = v22;
  sub_2574CB128(v2, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  sub_2574CB128(v4, type metadata accessor for Proto_ImageFeatureType.OneOf_SizeFlexibility);
  sub_2574695E4(v3, &qword_27F87A8C8, &unk_257748860);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (!sub_257476938(*(v1 + v28[7]), *(v1 + v28[7] + 8), *(v0 + v28[7]), *(v0 + v28[7] + 8)))
  {
    goto LABEL_15;
  }

  v24 = v28[8];
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v25, v26);
  v27 = OUTLINED_FUNCTION_4_2();
LABEL_16:
  OUTLINED_FUNCTION_65_0(v27);
  OUTLINED_FUNCTION_35();
}

uint64_t (*sub_2574BD264(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_2574BD2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABA8, type metadata accessor for Proto_ImageFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BD358(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BD420()
{
  sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType);

  return sub_257743424();
}

uint64_t sub_2574BD4A0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8170);
  __swift_project_value_buffer(v0, qword_27F8E8170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INVALID_COLOR_SPACE";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "GRAYSCALE";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "RGB";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "BGR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 40;
  *v16 = "GRAYSCALE_FLOAT16";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BD75C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8198);
  __swift_project_value_buffer(v0, qword_27F8E8198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BD924(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_257743234();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(v4 + 8, a2, a3);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_264();
      sub_2577433B4();
    }
  }

  return result;
}

void sub_2574BD9B4()
{
  OUTLINED_FUNCTION_102_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), sub_257743554(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), v6(), !v1))
    {
      v7 = *(v4(0) + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574BDA44(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v5 = *(v2(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574BDB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABE0, type metadata accessor for Proto_ImageFeatureType.ImageSize);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BDC3C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BDD04()
{
  sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize);

  return sub_257743424();
}

uint64_t sub_2574BDDB0()
{
  result = MEMORY[0x259C64E90](0xD000000000000015, 0x800000025777A920);
  qword_27F8E81B0 = 0xD000000000000016;
  *algn_27F8E81B8 = 0x800000025777A820;
  return result;
}

uint64_t sub_2574BDE3C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_ImageFeatureType.ImageSize(0), sub_2574C9F70(&qword_27F87AA70, type metadata accessor for Proto_ImageFeatureType.ImageSize), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    v3 = *(type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574BDFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABE8, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BE058(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BE120()
{
  sub_2574C9F70(&qword_27F87AA50, type metadata accessor for Proto_ImageFeatureType.EnumeratedImageSizes);

  return sub_257743424();
}

uint64_t sub_2574BE200(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_84_0();
  result = MEMORY[0x259C64E90](0x69536567616D492ELL);
  *a3 = v7;
  *a4 = v8;
  return result;
}

uint64_t sub_2574BE284(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2577435B4();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_360();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40);
  OUTLINED_FUNCTION_89_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  v16 = (v15 + v14);
  v17 = v15 + v14 + *(v7 + 56);
  *v16 = 1;
  *v17 = a3;
  *(v17 + 8) = 10;
  *(v17 + 16) = 2;
  v18 = *MEMORY[0x277D21870];
  v19 = sub_257743584();
  OUTLINED_FUNCTION_4(v19);
  v21 = *(v20 + 104);
  (v21)(v17, v18, v19);
  v22 = v16 + v12 + *(v7 + 56);
  *(v16 + v12) = 2;
  *v22 = a4;
  *(v22 + 1) = a5;
  v22[16] = 2;
  v21();
  return sub_257743594();
}

uint64_t sub_2574BE428()
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

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2574C3DF0(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2574BE4A0();
    }
  }

  return result;
}

uint64_t sub_2574BE4A0()
{
  v0 = *(type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0) + 20);
  type metadata accessor for Proto_SizeRange(0);
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange);
  return sub_2577433D4();
}

uint64_t sub_2574BE554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_7();
  result = sub_2574BE5D0(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_10_7();
    sub_2574C43F4(v9, v10, v11, a3, v12, 2);
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574BE5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SizeRange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A8A0, &unk_2577487A0);
  }

  sub_2574CB180();
  sub_2574C9F70(&qword_27F87AAA0, type metadata accessor for Proto_SizeRange);
  sub_257743574();
  return sub_2574CB128(v11, type metadata accessor for Proto_SizeRange);
}

void sub_2574BE7B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for Proto_SizeRange(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v61 = (v6 - v7);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  v63 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v62 = (v14 - v15);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  v18 = (&v61 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABF8, &unk_25774A420);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v65 = v23 - v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  v64 = type metadata accessor for Proto_ImageFeatureType.ImageSizeRange(0);
  v28 = *(v64 + 20);
  v29 = *(v19 + 48);
  v66 = v1;
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_35_2(v27);
  if (v36)
  {
    OUTLINED_FUNCTION_35_2(&v27[v29]);
    if (v36)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  sub_257487308();
  OUTLINED_FUNCTION_35_2(&v27[v29]);
  if (v36)
  {
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v18, v37);
LABEL_13:
    v38 = &qword_27F87ABF8;
    v39 = &unk_25774A420;
LABEL_20:
    v49 = v27;
LABEL_32:
    sub_2574695E4(v49, v38, v39);
    v35 = 0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_18_5();
  v40 = v63;
  sub_2574CB180();
  if (*v18 != *v40 || v18[1] != v40[1])
  {
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v40, v47);
    goto LABEL_19;
  }

  v41 = *(v2 + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v42, v43);
  v44 = sub_257743644();
  OUTLINED_FUNCTION_1_9();
  sub_2574CB128(v40, v45);
  if ((v44 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v18, v48);
    v38 = &qword_27F87A8A0;
    v39 = &unk_2577487A0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_9();
  sub_2574CB128(v18, v46);
LABEL_5:
  sub_2574695E4(v27, &qword_27F87A8A0, &unk_2577487A0);
  v30 = v65;
  v31 = *(v64 + 24);
  v32 = *(v19 + 48);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_35_2(v30);
  if (!v36)
  {
    v50 = v62;
    sub_257487308();
    OUTLINED_FUNCTION_35_2(v30 + v32);
    if (!v51)
    {
      OUTLINED_FUNCTION_18_5();
      v53 = v61;
      sub_2574CB180();
      if (*v50 == *v53 && v50[1] == v53[1])
      {
        v54 = *(v2 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_15();
        sub_2574C9F70(v55, v56);
        LOBYTE(v54) = sub_257743644();
        OUTLINED_FUNCTION_1_9();
        sub_2574CB128(v53, v57);
        if (v54)
        {
          OUTLINED_FUNCTION_1_9();
          sub_2574CB128(v50, v58);
          goto LABEL_9;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_9();
        sub_2574CB128(v53, v59);
      }

      OUTLINED_FUNCTION_1_9();
      sub_2574CB128(v50, v60);
      v38 = &qword_27F87A8A0;
      v39 = &unk_2577487A0;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_1_9();
    sub_2574CB128(v50, v52);
LABEL_24:
    v38 = &qword_27F87ABF8;
    v39 = &unk_25774A420;
LABEL_31:
    v49 = v30;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_35_2(v30 + v32);
  if (!v36)
  {
    goto LABEL_24;
  }

LABEL_9:
  sub_2574695E4(v30, &qword_27F87A8A0, &unk_2577487A0);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v33, v34);
  v35 = OUTLINED_FUNCTION_68_0();
LABEL_33:
  OUTLINED_FUNCTION_65_0(v35);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574BEC90()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_205();

  return v4(v3);
}

uint64_t sub_2574BECE8()
{
  v0 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_44_1();

  return v4(v3);
}

uint64_t sub_2574BED74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABF0, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574BEE14(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574BEEDC()
{
  sub_2574C9F70(&qword_27F87AA30, type metadata accessor for Proto_ImageFeatureType.ImageSizeRange);

  return sub_257743424();
}

uint64_t sub_2574BEF5C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8200);
  __swift_project_value_buffer(v0, qword_27F8E8200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 21;
  *v12 = "enumeratedShapes";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "shapeRange";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 41;
  *v16 = "intDefaultValue";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 51;
  *v18 = "floatDefaultValue";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 61;
  *v20 = "doubleDefaultValue";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574BF260()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 61:
        OUTLINED_FUNCTION_6_8();
        sub_2574BFE94();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_2574BF368();
        break;
      case 21:
        v13 = OUTLINED_FUNCTION_6_10();
        sub_2574BF3D0(v13, v14, v15, v16);
        break;
      case 31:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574BF8D4(v3, v4, v5, v6);
        break;
      case 41:
        v7 = OUTLINED_FUNCTION_6_8();
        v12 = 0;
LABEL_15:
        sub_2574BFDD8(v7, v8, v9, v10, v11, v12);
        break;
      case 51:
        v7 = OUTLINED_FUNCTION_6_8();
        v12 = 1;
        goto LABEL_15;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577432B4();
        break;
    }
  }
}

uint64_t sub_2574BF3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB90, &qword_25774A400);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v17, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87AB90, &qword_25774A400);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB90, &qword_25774A400);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB90, &qword_25774A400);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB90, &qword_25774A400);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87AB90, &qword_25774A400);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87A8F0, &unk_257770640);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_2574BF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB98, &qword_25774A408);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87AB98, &qword_25774A408);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
    }
  }

  sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB98, &qword_25774A408);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB98, &qword_25774A408);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB98, &qword_25774A408);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87AB98, &qword_25774A408);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87A8F0, &unk_257770640);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_2574BFDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unsigned int *, uint64_t, uint64_t), char a6)
{
  v12 = 0;
  v13 = 1;
  result = a5(&v12, a3, a4);
  if (!v6 && (v13 & 1) == 0)
  {
    v10 = v12;
    result = type metadata accessor for Proto_ArrayFeatureType(0);
    v11 = a2 + *(result + 28);
    if (*(v11 + 8) != 255)
    {
      result = sub_257743244();
    }

    *v11 = v10;
    *(v11 + 8) = a6;
  }

  return result;
}

void sub_2574BFF4C()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  if (!*(OUTLINED_FUNCTION_93_0() + 16) || (OUTLINED_FUNCTION_12_8(), sub_257743484(), !v0))
  {
    if (!*(v1 + 8) || (v24 = *(v1 + 8), v25 = *(v1 + 16), sub_2574CB1D4(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v0))
    {
      v7 = type metadata accessor for Proto_ArrayFeatureType(0);
      v8 = v7[6];
      sub_257487308();
      v9 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
      if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_311();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = OUTLINED_FUNCTION_3_9();
        sub_2574C0314(v10, v11, v12, v13);
      }

      else
      {
        v14 = OUTLINED_FUNCTION_3_9();
        sub_2574C00F4(v14, v15, v16, v17);
      }

      OUTLINED_FUNCTION_9_6();
      sub_2574CB128(v2, v18);
      if (!v0)
      {
LABEL_10:
        v19 = *(v1 + v7[7] + 8);
        if (*(v1 + v7[7] + 8))
        {
          if (v19 == 1)
          {
            v21 = OUTLINED_FUNCTION_3_9();
            sub_2574C05A8(v21);
          }

          else
          {
            if (v19 != 2)
            {
LABEL_17:
              v23 = v7[8];
              OUTLINED_FUNCTION_7_5();
              goto LABEL_18;
            }

            v20 = OUTLINED_FUNCTION_3_9();
            sub_2574C0620(v20);
          }
        }

        else
        {
          v22 = OUTLINED_FUNCTION_3_9();
          sub_2574C0534(v22);
        }

        if (!v0)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  sub_257487308();
  v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C0314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_ArrayFeatureType(0) + 24);
  sub_257487308();
  v13 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8F0, &unk_257770640);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C0534(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  v3 = (a1 + *(result + 28));
  if (*(v3 + 8))
  {
    __break(1u);
  }

  else
  {
    v4 = *v3;
    return sub_2577434F4();
  }

  return result;
}

uint64_t sub_2574C05A8(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  v3 = (a1 + *(result + 28));
  if (*(v3 + 8) == 1)
  {
    v4 = *v3;
    return sub_2577434E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2574C0620(uint64_t a1)
{
  result = type metadata accessor for Proto_ArrayFeatureType(0);
  v3 = (a1 + *(result + 28));
  if (*(v3 + 8) == 2)
  {
    v4 = *v3;
    return sub_257743524();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2574C0698()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_0_0();
  v6 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(v5);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC50, &qword_25774A468);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_3();
  if ((sub_257487374(*v1, *v0) & 1) == 0 || !sub_257476988(*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)))
  {
    goto LABEL_12;
  }

  v33 = type metadata accessor for Proto_ArrayFeatureType(0);
  v18 = v33[6];
  v19 = *(v14 + 48);
  OUTLINED_FUNCTION_66();
  sub_257487308();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  OUTLINED_FUNCTION_28_0(v3);
  if (!v20)
  {
    OUTLINED_FUNCTION_264();
    sub_257487308();
    OUTLINED_FUNCTION_28_0(v3 + v19);
    if (!v20)
    {
      sub_2574CB180();
      OUTLINED_FUNCTION_229();
      sub_2574B98DC();
      v24 = v23;
      sub_2574CB128(v2, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2574CB128(v4, type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility);
      sub_2574695E4(v3, &qword_27F87A8F0, &unk_257770640);
      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_9_6();
    sub_2574CB128(v4, v21);
LABEL_11:
    sub_2574695E4(v3, &qword_27F87AC50, &qword_25774A468);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_0(v3 + v19);
  if (!v20)
  {
    goto LABEL_11;
  }

  sub_2574695E4(v3, &qword_27F87A8F0, &unk_257770640);
LABEL_15:
  v25 = v33[7];
  v26 = (v1 + v25);
  v27 = *(v1 + v25 + 8);
  v28 = v0 + v25;
  v29 = *(v28 + 8);
  if (v27 == 255)
  {
    if (v29 == 255)
    {
LABEL_20:
      v30 = v33[8];
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v31, v32);
      v22 = OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }
  }

  else if (v29 != 255 && sub_2574B9C94(*v26, v27, *v28, v29))
  {
    goto LABEL_20;
  }

LABEL_12:
  v22 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C097C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77_0();

  return v6(v5);
}

uint64_t sub_2574C09E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_2574C0A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB88, type metadata accessor for Proto_ArrayFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C0B1C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C0BE4()
{
  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);

  return sub_257743424();
}

uint64_t sub_2574C0C64()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8218);
  __swift_project_value_buffer(v0, qword_27F8E8218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257745520;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "INVALID_ARRAY_DATA_TYPE";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 65552;
  *v8 = "FLOAT16";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 65568;
  *v10 = "FLOAT32";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 65600;
  *v12 = "DOUBLE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 131080;
  *v14 = "INT8";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 131104;
  *v16 = "INT32";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2574C0F84()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432B4();
    }
  }

  return result;
}

uint64_t sub_2574C0FD4()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743484(), !v1))
  {
    v3 = *(type metadata accessor for Proto_ArrayFeatureType.Shape(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C10C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC00, type metadata accessor for Proto_ArrayFeatureType.Shape);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1160(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C1228()
{
  sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape);

  return sub_257743424();
}

uint64_t sub_2574C12E8()
{
  result = MEMORY[0x259C64E90](0xD000000000000011, 0x800000025777AA20);
  qword_27F8E8258 = 0xD000000000000016;
  unk_27F8E8260 = 0x800000025777A7E0;
  return result;
}

void sub_2574C1374()
{
  OUTLINED_FUNCTION_102_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  while (1)
  {
    v15 = sub_257743234();
    if (v1 || (v16 & 1) != 0)
    {
      break;
    }

    if (v15 == 1)
    {
      sub_2574C1848(v14, v8, v12, v10, v7, v5, v3);
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C1404()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_ArrayFeatureType.Shape(0), sub_2574C9F70(&qword_27F87AA00, type metadata accessor for Proto_ArrayFeatureType.Shape), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    v3 = *(type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C1580(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC08, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1620(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C16E8()
{
  sub_2574C9F70(&qword_27F87A9E0, type metadata accessor for Proto_ArrayFeatureType.EnumeratedShapes);

  return sub_257743424();
}

uint64_t sub_2574C17D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_84_0();
  result = MEMORY[0x259C64E90]();
  *a4 = v8;
  *a5 = v9;
  return result;
}

uint64_t sub_2574C1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_2574C9F70(a6, a7);
  return sub_2577433C4();
}

uint64_t sub_2574C18E4()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_SizeRange(0), OUTLINED_FUNCTION_17_6(), sub_2574C9F70(v2, v3), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_91_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    v5 = *(type metadata accessor for Proto_ArrayFeatureType.ShapeRange(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574C1988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_95_0(v8);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v9, v10);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574C1A68(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  v8 = *a5;

  return OUTLINED_FUNCTION_44_1();
}

uint64_t sub_2574C1B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AC10, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C1BD0(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C1C98()
{
  sub_2574C9F70(&qword_27F87A9C0, type metadata accessor for Proto_ArrayFeatureType.ShapeRange);

  return sub_257743424();
}

uint64_t sub_2574C1D58()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82A8);
  __swift_project_value_buffer(v0, qword_27F8E82A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int64KeyType";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringKeyType";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574C1F20()
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

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_6_10();
      sub_2574C247C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2574C1F84(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574C1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v17, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A8A8, &qword_257777E20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A8A8, &qword_257777E20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void sub_2574C2974()
{
  OUTLINED_FUNCTION_102_0();
  v6 = v1;
  OUTLINED_FUNCTION_76_0();
  v7 = OUTLINED_FUNCTION_311();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_54(v5);
  if (v13)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_2574C2AC8(v14, v15, v16, v17);
    v6 = v1;
    OUTLINED_FUNCTION_20_3();
    v19 = v5;
  }

  else
  {
    sub_2574C401C(v0, v4, v3, v2, &qword_27F87A8A8, &qword_257777E20, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    v19 = OUTLINED_FUNCTION_201();
  }

  sub_2574CB128(v19, v18);
  if (!v6)
  {
LABEL_6:
    v20 = v0 + *(type metadata accessor for Proto_DictionaryFeatureType(0) + 20);
    OUTLINED_FUNCTION_37_2();
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C2AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A8A8, &qword_257777E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  }

  __break(1u);
  return result;
}

void sub_2574C2CDC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(v4);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = OUTLINED_FUNCTION_201();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC58, &qword_25774A470);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0(v19);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_65(v1 + v3);
    if (v20)
    {
      sub_2574695E4(v1, &qword_27F87A8A8, &qword_257777E20);
LABEL_12:
      v25 = type metadata accessor for Proto_DictionaryFeatureType(0);
      OUTLINED_FUNCTION_95_0(v25);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v26, v27);
      v22 = OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_257487308();
  OUTLINED_FUNCTION_65(v1 + v3);
  if (v20)
  {
    OUTLINED_FUNCTION_20_3();
    sub_2574CB128(v2, v21);
LABEL_9:
    sub_2574695E4(v1, &qword_27F87AC58, &qword_25774A470);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_360();
  sub_2574BA0DC();
  v24 = v23;
  sub_2574CB128(v0, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  sub_2574CB128(v2, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
  sub_2574695E4(v1, &qword_27F87A8A8, &qword_257777E20);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C2F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABD0, type metadata accessor for Proto_DictionaryFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C301C(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C30E4()
{
  sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType);

  return sub_257743424();
}

uint64_t sub_2574C3164()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82C0);
  __swift_project_value_buffer(v0, qword_27F8E82C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "int64Type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "stringType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "sizeRange";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574C3370()
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
      case 101:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574C3DF0(v11, v12, v13, v14, v15);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574C38F8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574C3400(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_2574C3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB128(v17, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A898, &unk_257777D20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A898, &unk_257777D20);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C3DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_17_6();
  sub_2574C9F70(v6, v7);
  return sub_2577433D4();
}

void sub_2574C3E98()
{
  OUTLINED_FUNCTION_102_0();
  v6 = v1;
  OUTLINED_FUNCTION_76_0();
  v7 = OUTLINED_FUNCTION_311();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66();
  sub_257487308();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_54(v5);
  if (v13)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_201();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_2574C41E0(v14, v15, v16, v17);
    v6 = v1;
    OUTLINED_FUNCTION_19_4();
    v19 = v5;
  }

  else
  {
    sub_2574C401C(v0, v4, v3, v2, &qword_27F87A898, &unk_257777D20, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
    v19 = OUTLINED_FUNCTION_201();
  }

  sub_2574CB128(v19, v18);
  if (!v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_15_1();
    sub_2574C43F4(v20, v21, v22, v23, v24, 101);
    if (!v1)
    {
      v25 = v0 + *(type metadata accessor for Proto_SequenceFeatureType(0) + 20);
      OUTLINED_FUNCTION_37_2();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74_0();
  v17 = type metadata accessor for Proto_Int64FeatureType(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_264();
  sub_257487308();
  v21 = a7(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    result = sub_2574695E4(v8, a5, a6);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);
      OUTLINED_FUNCTION_91_0();
      sub_257743574();
      OUTLINED_FUNCTION_10_9();
      return sub_2574CB128(v9, v22);
    }

    result = sub_2574CB128(v8, a8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C41E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A898, &unk_257777D20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C43F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v24[0] = a6;
  v24[1] = a3;
  v24[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = type metadata accessor for Proto_SizeRange(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v18 = *(a5(0) + 24);
  sub_257487308();
  OUTLINED_FUNCTION_54(v13);
  if (v19)
  {
    return sub_2574695E4(v13, &qword_27F87A8A0, &unk_2577487A0);
  }

  sub_2574CB180();
  OUTLINED_FUNCTION_17_6();
  sub_2574C9F70(v20, v21);
  sub_257743574();
  OUTLINED_FUNCTION_1_9();
  return sub_2574CB128(v6, v22);
}

void sub_2574C4598()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v63 = type metadata accessor for Proto_SizeRange(0);
  v5 = OUTLINED_FUNCTION_4(v63);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v60 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v61 = &v60 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ABF8, &unk_25774A420);
  OUTLINED_FUNCTION_4(v62);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32_3();
  v18 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v60 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC60, &qword_25774A478);
  OUTLINED_FUNCTION_13(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v60 - v36;
  v38 = *(v35 + 56);
  v64 = v4;
  sub_257487308();
  v65 = v2;
  sub_257487308();
  OUTLINED_FUNCTION_6_9(v37);
  if (v39)
  {
    OUTLINED_FUNCTION_6_9(&v37[v38]);
    if (v39)
    {
      sub_2574695E4(v37, &qword_27F87A898, &unk_257777D20);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_27F87AC60;
    v42 = &qword_25774A478;
    v43 = v37;
LABEL_26:
    sub_2574695E4(v43, v41, v42);
LABEL_27:
    v53 = 0;
    goto LABEL_28;
  }

  sub_257487308();
  OUTLINED_FUNCTION_6_9(&v37[v38]);
  if (v39)
  {
    OUTLINED_FUNCTION_19_4();
    sub_2574CB128(v30, v40);
    goto LABEL_9;
  }

  sub_2574CB180();
  sub_2574BA3A8();
  v45 = v44;
  sub_2574CB128(v24, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  sub_2574CB128(v30, type metadata accessor for Proto_SequenceFeatureType.OneOf_Type);
  sub_2574695E4(v37, &qword_27F87A898, &unk_257777D20);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v46 = type metadata accessor for Proto_SequenceFeatureType(0);
  v47 = *(v46 + 24);
  v48 = *(v62 + 48);
  sub_257487308();
  sub_257487308();
  v49 = v63;
  if (__swift_getEnumTagSinglePayload(v0, 1, v63) == 1)
  {
    OUTLINED_FUNCTION_6_9(v0 + v48);
    if (!v39)
    {
      goto LABEL_19;
    }

    sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
  }

  else
  {
    v54 = v61;
    sub_257487308();
    OUTLINED_FUNCTION_6_9(v0 + v48);
    if (v39)
    {
      OUTLINED_FUNCTION_1_9();
      sub_2574CB128(v54, v55);
LABEL_19:
      v41 = &qword_27F87ABF8;
      v42 = &unk_25774A420;
LABEL_25:
      v43 = v0;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_18_5();
    v56 = v60;
    sub_2574CB180();
    if (*v54 != *v56 || v54[1] != v56[1])
    {
      sub_2574CB128(v56, type metadata accessor for Proto_SizeRange);
      sub_2574CB128(v54, type metadata accessor for Proto_SizeRange);
      v41 = &qword_27F87A8A0;
      v42 = &unk_2577487A0;
      goto LABEL_25;
    }

    v57 = *(v49 + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    sub_2574C9F70(v58, v59);
    LOBYTE(v57) = sub_257743644();
    sub_2574CB128(v56, type metadata accessor for Proto_SizeRange);
    sub_2574CB128(v54, type metadata accessor for Proto_SizeRange);
    sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
    if ((v57 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v50 = *(v46 + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_15();
  sub_2574C9F70(v51, v52);
  v53 = sub_257743644();
LABEL_28:
  OUTLINED_FUNCTION_65_0(v53);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C4B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABC8, type metadata accessor for Proto_SequenceFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C4BCC(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C4C94()
{
  sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType);

  return sub_257743424();
}

uint64_t sub_2574C4D2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2577435B4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40);
  OUTLINED_FUNCTION_89_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442B0;
  v15 = v14 + v13 + *(v4 + 56);
  *(v14 + v13) = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21870];
  v17 = sub_257743584();
  OUTLINED_FUNCTION_4(v17);
  (*(v18 + 104))(v15, v16);
  return sub_257743594();
}

uint64_t sub_2574C4E84()
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

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_2574C4ED0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2574C4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB50, &qword_25774A3E0);
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
    sub_2574695E4(v12, &qword_27F87A8D0, &qword_257748898);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    sub_2574695E4(v22, &qword_27F87AB50, &qword_25774A3E0);
    sub_2574CB180();
    sub_2574CB180();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);
  v24 = v31;
  sub_2577433D4();
  if (v24)
  {
    v25 = v22;
    return sub_2574695E4(v25, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87AB50, &qword_25774A3E0);
    v25 = v20;
    return sub_2574695E4(v25, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v22, &qword_27F87AB50, &qword_25774A3E0);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87A8D0, &qword_257748898);
  sub_2574CB180();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t sub_2574C5374()
{
  OUTLINED_FUNCTION_76_0();
  result = sub_2574C53E0(v0, v4, v3, v2);
  if (!v1)
  {
    v6 = v0 + *(type metadata accessor for Proto_StateFeatureType(0) + 20);
    return OUTLINED_FUNCTION_37_2();
  }

  return result;
}

uint64_t sub_2574C53E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8D0, &qword_257748898);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A8D0, &qword_257748898);
  }

  sub_2574CB180();
  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);
  sub_257743574();
  return sub_2574CB128(v11, type metadata accessor for Proto_ArrayFeatureType);
}

void sub_2574C55BC()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_StateFeatureType.OneOf_Type(v4);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = OUTLINED_FUNCTION_201();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AC68, &unk_25774A480);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0(v19);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_65(v1 + v3);
    if (v20)
    {
      sub_2574695E4(v1, &qword_27F87A8D0, &qword_257748898);
LABEL_12:
      v23 = type metadata accessor for Proto_StateFeatureType(0);
      OUTLINED_FUNCTION_95_0(v23);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_15();
      sub_2574C9F70(v24, v25);
      v21 = OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_257487308();
  OUTLINED_FUNCTION_65(v1 + v3);
  if (v20)
  {
    sub_2574CB128(v2, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
LABEL_9:
    sub_2574695E4(v1, &qword_27F87AC68, &unk_25774A480);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_360();
  v22 = sub_2574BA6E8();
  sub_2574CB128(v0, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
  sub_2574CB128(v2, type metadata accessor for Proto_StateFeatureType.OneOf_Type);
  sub_2574695E4(v1, &qword_27F87A8D0, &qword_257748898);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v21);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C583C(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77_0();

  return v6(v5);
}

uint64_t sub_2574C58D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87ABA0, type metadata accessor for Proto_StateFeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C5970(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C5A38()
{
  sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType);

  return sub_257743424();
}

uint64_t sub_2574C5AB8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E82F0);
  __swift_project_value_buffer(v0, qword_27F8E82F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257748730;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "int64Type";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "doubleType";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "stringType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "imageType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "multiArrayType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "dictionaryType";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "sequenceType";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "stateType";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 1000;
  *v22 = "isOptional";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2574C5E30()
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
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_2574C5F28(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_6_10();
        sub_2574C6420(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_2574C6918(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_2574C6E10(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2574C7308(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_6_10();
        sub_2574C7800(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_6_10();
        sub_2574C7CF8(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_6_10();
        sub_2574C81F0(v19, v20, v21, v22);
        break;
      default:
        if (result == 1000)
        {
          OUTLINED_FUNCTION_6_8();
          sub_2574C86E8();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2574C5F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_Int64FeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB30, &qword_25774A3C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB30, &qword_25774A3C0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB30, &qword_25774A3C0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_DoubleFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB38, &qword_25774A3C8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87AB38, &qword_25774A3C8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB38, &qword_25774A3C8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB38, &qword_25774A3C8);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB38, &qword_25774A3C8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB38, &qword_25774A3C8);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C6918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_StringFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB40, &qword_25774A3D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB40, &qword_25774A3D0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB40, &qword_25774A3D0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_ImageFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB48, &qword_25774A3D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v24, &qword_27F87AB48, &qword_25774A3D8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB48, &qword_25774A3D8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB48, &qword_25774A3D8);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB48, &qword_25774A3D8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB48, &qword_25774A3D8);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C7308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB50, &qword_25774A3E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v24, &qword_27F87AB50, &qword_25774A3E0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB50, &qword_25774A3E0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB50, &qword_25774A3E0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB50, &qword_25774A3E0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C7800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_DictionaryFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB58, &qword_25774A3E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v24, &qword_27F87AB58, &qword_25774A3E8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB58, &qword_25774A3E8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB58, &qword_25774A3E8);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB58, &qword_25774A3E8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB58, &qword_25774A3E8);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C7CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_SequenceFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB60, &qword_25774A3F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v24, &qword_27F87AB60, &qword_25774A3F0);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB60, &qword_25774A3F0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB60, &qword_25774A3F0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB60, &qword_25774A3F0);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB60, &qword_25774A3F0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574C81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_StateFeatureType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AB68, &qword_25774A3F8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    sub_2574CB180();
    sub_2574CB180();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v24, &qword_27F87AB68, &qword_25774A3F8);
      sub_2574CB180();
      sub_2574CB180();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574CB128(v17, type metadata accessor for Proto_FeatureType.OneOf_Type);
    }
  }

  sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87AB68, &qword_25774A3F8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87AB68, &qword_25774A3F8);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87AB68, &qword_25774A3F8);
  }

  sub_2574CB180();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87AB68, &qword_25774A3F8);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F879C28, &qword_257744540);
  sub_2574CB180();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void sub_2574C874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_102_0();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_2_7();
  v22 = OUTLINED_FUNCTION_311();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_66();
  sub_257487308();
  type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_54(v29);
  if (!v30)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v52 = OUTLINED_FUNCTION_3_9();
        sub_2574C8B04(v52, v53, v54, v55);
        goto LABEL_12;
      case 2u:
        v39 = OUTLINED_FUNCTION_3_9();
        sub_2574C8D18(v39, v40, v41, v42);
        goto LABEL_12;
      case 3u:
        v43 = OUTLINED_FUNCTION_3_9();
        sub_2574C8F2C(v43, v44, v45, v46);
        goto LABEL_12;
      case 4u:
        v35 = OUTLINED_FUNCTION_3_9();
        sub_2574C9140(v35, v36, v37, v38);
        goto LABEL_12;
      case 5u:
        v56 = OUTLINED_FUNCTION_3_9();
        sub_2574C9354(v56, v57, v58, v59);
        goto LABEL_12;
      case 6u:
        v60 = OUTLINED_FUNCTION_3_9();
        sub_2574C9568(v60, v61, v62, v63);
        goto LABEL_12;
      case 7u:
        v47 = OUTLINED_FUNCTION_3_9();
        sub_2574C977C(v47, v48, v49, v50);
        if (v18)
        {
          OUTLINED_FUNCTION_4_6();
          sub_2574CB128(v29, v51);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v29, v67);
        break;
      default:
        v31 = OUTLINED_FUNCTION_3_9();
        sub_2574C88F4(v31, v32, v33, v34);
LABEL_12:
        OUTLINED_FUNCTION_4_6();
        sub_2574CB128(v29, v64);
        if (!v18)
        {
          break;
        }

        goto LABEL_16;
    }
  }

  v65 = type metadata accessor for Proto_FeatureType(0);
  if (*(v19 + *(v65 + 20)) != 1 || (OUTLINED_FUNCTION_12_8(), sub_2577434B4(), !v18))
  {
    v66 = *(v65 + 24);
    OUTLINED_FUNCTION_7_5();
  }

LABEL_16:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2574C88F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Int64FeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537B40, type metadata accessor for Proto_Int64FeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_Int64FeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_DoubleFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAD0, type metadata accessor for Proto_DoubleFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_DoubleFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StringFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AAB8, type metadata accessor for Proto_StringFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_StringFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C8F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ImageFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87AA90, type metadata accessor for Proto_ImageFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ImageFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537BA8, type metadata accessor for Proto_ArrayFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_ArrayFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_DictionaryFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_281537900, type metadata accessor for Proto_DictionaryFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_DictionaryFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C9568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SequenceFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A998, type metadata accessor for Proto_SequenceFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_SequenceFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574C977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_StateFeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_FeatureType.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C28, &qword_257744540);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574CB180();
      sub_2574C9F70(&qword_27F87A980, type metadata accessor for Proto_StateFeatureType);
      sub_257743574();
      return sub_2574CB128(v11, type metadata accessor for Proto_StateFeatureType);
    }

    result = sub_2574CB128(v7, type metadata accessor for Proto_FeatureType.OneOf_Type);
  }

  __break(1u);
  return result;
}

void sub_2574C9990()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_0_0();
  v7 = type metadata accessor for Proto_FeatureType.OneOf_Type(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_6();
  v11 = OUTLINED_FUNCTION_201();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_75_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_56_0(v21);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_65(v3);
  if (!v22)
  {
    sub_257487308();
    OUTLINED_FUNCTION_65(v3 + v5);
    if (!v22)
    {
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_360();
      sub_2574BA824();
      v25 = v24;
      sub_2574CB128(v2, type metadata accessor for Proto_FeatureType.OneOf_Type);
      sub_2574CB128(v4, type metadata accessor for Proto_FeatureType.OneOf_Type);
      sub_2574695E4(v3, &qword_27F879C28, &qword_257744540);
      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_6();
    sub_2574CB128(v4, v23);
LABEL_9:
    sub_2574695E4(v3, &qword_27F879C30, &qword_257744548);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_65(v3 + v5);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_2574695E4(v3, &qword_27F879C28, &qword_257744540);
LABEL_11:
  v26 = type metadata accessor for Proto_FeatureType(0);
  if (*(v1 + *(v26 + 20)) == *(v0 + *(v26 + 20)))
  {
    v28 = *(v26 + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_15();
    sub_2574C9F70(v29, v30);
    v27 = OUTLINED_FUNCTION_4_2();
    goto LABEL_13;
  }

LABEL_12:
  v27 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v27);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574C9BC0(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  v2 = OUTLINED_FUNCTION_176();
  sub_2574C9F70(v2, v3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574C9C64(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_77_0();

  return v6(v5);
}

uint64_t sub_2574C9CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574C9F70(&qword_27F87AB28, type metadata accessor for Proto_FeatureType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574C9D98(uint64_t a1)
{
  v2 = sub_2574C9F70(&qword_281537E88, type metadata accessor for Proto_FeatureType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574C9E60()
{
  sub_2574C9F70(&qword_281537E88, type metadata accessor for Proto_FeatureType);

  return sub_257743424();
}

uint64_t sub_2574C9F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574CB128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574CB180()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

unint64_t sub_2574CB1D4()
{
  result = qword_281537C00;
  if (!qword_281537C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537C00);
  }

  return result;
}

unint64_t sub_2574CB228()
{
  result = qword_27F87ABB0;
  if (!qword_27F87ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ABB0);
  }

  return result;
}

uint64_t sub_2574CB27C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return sub_257487308();
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_2574CB180();
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_101_0()
{

  return sub_257487308();
}

uint64_t sub_2574CB8B4()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2574CB980()
{
  sub_2574CBA04();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574CBA04()
{
  if (!qword_27F87AC80)
  {
    type metadata accessor for Proto_FeatureVectorizer.InputColumn(255);
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87AC80);
    }
  }
}

uint64_t sub_2574CBA5C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  v1 = a1 + *(type metadata accessor for Proto_FeatureVectorizer.InputColumn(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CBA9C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_FeatureVectorizer(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CBADC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8308);
  __swift_project_value_buffer(v0, qword_27F8E8308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "inputList";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2574CBC48()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2574CBCA4();
    }
  }

  return result;
}

uint64_t sub_2574CBCA4()
{
  type metadata accessor for Proto_FeatureVectorizer.InputColumn(0);
  sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn);
  return sub_2577433C4();
}

uint64_t sub_2574CBD44()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (type metadata accessor for Proto_FeatureVectorizer.InputColumn(0), sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn), result = sub_257743564(), !v0))
  {
    v3 = *(type metadata accessor for Proto_FeatureVectorizer(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574CBE0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_257479344();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_FeatureVectorizer(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_16();
  sub_2574CC870(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574CBEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CC870(&qword_27F87ACC8, type metadata accessor for Proto_FeatureVectorizer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CBF84(uint64_t a1)
{
  v2 = sub_2574CC870(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CC04C()
{
  sub_2574CC870(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer);

  return sub_257743424();
}

uint64_t sub_2574CC0CC()
{
  result = MEMORY[0x259C64E90](0x6F437475706E492ELL, 0xEC0000006E6D756CLL);
  qword_27F8E8320 = 0xD000000000000017;
  *algn_27F8E8328 = 0x800000025777AAE0;
  return result;
}

uint64_t sub_2574CC140()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8330);
  __swift_project_value_buffer(v0, qword_27F8E8330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inputColumn";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inputDimensions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CC308()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_2577433B4();
    }

    else if (result == 1)
    {
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2574CC380()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *v1;
  v4 = v1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (result = sub_257743534(), !v0))
  {
    if (!*(v2 + 16) || (result = sub_257743554(), !v0))
    {
      v7 = *(type metadata accessor for Proto_FeatureVectorizer.InputColumn(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2574CC428(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_257743994() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_FeatureVectorizer.InputColumn(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_16();
  sub_2574CC870(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574CC4D4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574CC870(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574CC560()
{
  if (qword_27F878EF8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E8320;

  return v0;
}

uint64_t sub_2574CC5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CC870(&qword_27F87ACD0, type metadata accessor for Proto_FeatureVectorizer.InputColumn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CC698(uint64_t a1)
{
  v2 = sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CC760()
{
  sub_2574CC870(&qword_27F87AC88, type metadata accessor for Proto_FeatureVectorizer.InputColumn);

  return sub_257743424();
}

uint64_t sub_2574CC870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_7@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void sub_2574CCAE8()
{
  sub_2574CCB94();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2574CCB94()
{
  if (!qword_281537808)
  {
    type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537808);
    }
  }
}

uint64_t sub_2574CCC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257450DE4);
}

uint64_t sub_2574CCC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257450E5C);
}

uint64_t sub_2574CCCCC(uint64_t a1)
{
  v2 = type metadata accessor for Proto_StringVector(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2574CCD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD08, &qword_25774A9A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_2574CE3AC(a1, &v26 - v16);
  sub_2574CE3AC(a2, &v17[v18]);
  sub_2574CE350(v17, v12, type metadata accessor for Proto_StringVector);
  sub_2574CE350(&v17[v18], v10, type metadata accessor for Proto_StringVector);
  if (sub_257479C78(*v12, *v10))
  {
    v19 = *(v4 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_10();
    sub_2574CE220(v20, v21);
    v22 = sub_257743644();
    sub_2574CE2F8(v10, type metadata accessor for Proto_StringVector);
    sub_2574CE2F8(v12, type metadata accessor for Proto_StringVector);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    sub_2574CE2F8(v10, type metadata accessor for Proto_StringVector);
    v24 = OUTLINED_FUNCTION_205();
    sub_2574CE2F8(v24, v25);
  }

  return 0;
}

uint64_t sub_2574CCF78@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CCFF0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8348);
  __swift_project_value_buffer(v0, qword_27F8E8348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "revision";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "language";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "modelParameterData";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 200;
  *v14 = "stringClassLabels";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CD238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_257743234();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 200:
        v8 = OUTLINED_FUNCTION_205();
        sub_2574CD2F0(v8, v9, a2, a3);
        break;
      case 10:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
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

  return result;
}

uint64_t sub_2574CD2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
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
  v29 = *(type metadata accessor for Proto_CoreMLModels_Gazetteer(0) + 28);
  v40 = a1;
  v38 = v29;
  sub_2574AD5D8(a1 + v29, v14, &qword_27F87ACD8, &unk_25774A7C0);
  v39 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87ACD8, &unk_25774A7C0);
  }

  else
  {
    sub_2574CE350(v14, v21, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
    sub_2574CE350(v21, v19, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    sub_2574CE350(v19, v10, type metadata accessor for Proto_StringVector);
    sub_2574CE350(v10, v28, type metadata accessor for Proto_StringVector);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
  }

  sub_2574CE220(&qword_27F87A748, type metadata accessor for Proto_StringVector);
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
  sub_2574CE350(v26, v41, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  v35 = v40;
  v36 = v38;
  sub_2574695E4(v40 + v38, &qword_27F87ACD8, &unk_25774A7C0);
  sub_2574CE350(v34, v35 + v36, type metadata accessor for Proto_StringVector);
  return __swift_storeEnumTagSinglePayload(v35 + v36, 0, 1, v39);
}

uint64_t sub_2574CD7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*v3 || (result = sub_257743544(), !v4))
  {
    v10 = *(v3 + 16);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v5 = v4) == 0))
    {
      if (sub_2576FF394(*(v3 + 24), *(v3 + 32)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), (v5 = v4) == 0))
      {
        result = sub_2574CD8BC(v3, a1, a2, a3);
        if (!v5)
        {
          v12 = v3 + *(type metadata accessor for Proto_CoreMLModels_Gazetteer(0) + 32);
          OUTLINED_FUNCTION_10_7();
          return sub_257743194();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2574CD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_2574AD5D8(a1 + *(v13 + 28), v8, &qword_27F87ACD8, &unk_25774A7C0);
  v14 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87ACD8, &unk_25774A7C0);
  }

  sub_2574CE350(v8, v12, type metadata accessor for Proto_StringVector);
  sub_2574CE220(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  sub_257743574();
  return sub_2574CE2F8(v12, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification22GazetteerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD10, &qword_25774A9A8);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v20 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v20 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v31 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v21 = *(v31 + 28);
  v22 = *(v14 + 48);
  sub_2574AD5D8(a1 + v21, v19, &qword_27F87ACD8, &unk_25774A7C0);
  sub_2574AD5D8(a2 + v21, &v19[v22], &qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_65(v19);
  if (v20)
  {
    OUTLINED_FUNCTION_65(&v19[v22]);
    if (v20)
    {
      sub_2574695E4(v19, &qword_27F87ACD8, &unk_25774A7C0);
LABEL_20:
      v27 = *(v31 + 32);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_10();
      sub_2574CE220(v28, v29);
      v24 = sub_257743644();
      return v24 & 1;
    }

    goto LABEL_16;
  }

  sub_2574AD5D8(v19, v13, &qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_65(&v19[v22]);
  if (v23)
  {
    sub_2574CE2F8(v13, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
LABEL_16:
    sub_2574695E4(v19, &qword_27F87AD10, &qword_25774A9A8);
    goto LABEL_17;
  }

  sub_2574CE350(&v19[v22], v9, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  v26 = sub_2574CCD74(v13, v9);
  sub_2574CE2F8(v9, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  sub_2574CE2F8(v13, type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels);
  sub_2574695E4(v19, &qword_27F87ACD8, &unk_25774A7C0);
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2574CDDBC()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_2574CE220(&qword_27F87ACF0, type metadata accessor for Proto_CoreMLModels_Gazetteer);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574CDE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574CDED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2574CDF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574CE220(&qword_27F87AD00, type metadata accessor for Proto_CoreMLModels_Gazetteer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574CDFF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878F08 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E8348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574CE0A0(uint64_t a1)
{
  v2 = sub_2574CE220(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574CE110()
{
  sub_2574CE220(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer);

  return sub_257743424();
}

uint64_t sub_2574CE220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574CE2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574CE350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2574CE3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574CE498()
{
  sub_2574CE634(319, &qword_27F87AD20, type metadata accessor for Proto_GLMClassifier.DoubleArray, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2574CE5E4();
    if (v1 <= 0x3F)
    {
      sub_2574CE634(319, &qword_281537D80, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2577431B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2574CE5E4()
{
  if (!qword_27F87A678)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A678);
    }
  }
}

void sub_2574CE634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2574CE700()
{
  sub_2574CE5E4();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2574CE784(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for Proto_Int64Vector(0);
  v4 = OUTLINED_FUNCTION_4(v54);
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
  v17 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v53 - v24);
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ADB8, &qword_25774AFD8) - 8) + 64);
  OUTLINED_FUNCTION_29();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v53 - v29;
  v31 = *(v28 + 56);
  sub_2574D1A3C(a1, &v53 - v29);
  sub_2574D1A3C(a2, &v30[v31]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2574D1A3C(v30, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D19E4();
      if (sub_257487374(*v23, *v9))
      {
        v32 = *(v54 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_2_12();
        sub_2574D16EC(v33, v34);
        v35 = sub_257743644();
        OUTLINED_FUNCTION_1_11();
        sub_2574D198C(v9, v36);
        if (v35)
        {
          OUTLINED_FUNCTION_1_11();
          v38 = v23;
LABEL_13:
          sub_2574D198C(v38, v37);
          OUTLINED_FUNCTION_3_11();
          sub_2574D198C(v30, v46);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_11();
        sub_2574D198C(v9, v48);
      }

      OUTLINED_FUNCTION_1_11();
      v50 = v23;
LABEL_18:
      sub_2574D198C(v50, v49);
      OUTLINED_FUNCTION_3_11();
      sub_2574D198C(v30, v52);
      return 0;
    }

    OUTLINED_FUNCTION_1_11();
    v40 = v23;
  }

  else
  {
    sub_2574D1A3C(v30, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574D19E4();
      if (sub_257479C78(*v25, *v16))
      {
        v41 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_2_12();
        sub_2574D16EC(v42, v43);
        v44 = sub_257743644();
        OUTLINED_FUNCTION_0_17();
        sub_2574D198C(v16, v45);
        if (v44)
        {
          OUTLINED_FUNCTION_0_17();
          v38 = v25;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_17();
        sub_2574D198C(v16, v51);
      }

      OUTLINED_FUNCTION_0_17();
      v50 = v25;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_17();
    v40 = v25;
  }

  sub_2574D198C(v40, v39);
  sub_2574695E4(v30, &qword_27F87ADB8, &qword_25774AFD8);
  return 0;
}

uint64_t sub_2574CEB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D18E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574CEBCC()
{
  result = qword_27F87AD28;
  if (!qword_27F87AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD28);
  }

  return result;
}

unint64_t sub_2574CEC54()
{
  result = qword_27F87AD40;
  if (!qword_27F87AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD40);
  }

  return result;
}

unint64_t sub_2574CECAC()
{
  result = qword_27F87AD48;
  if (!qword_27F87AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD48);
  }

  return result;
}

uint64_t sub_2574CEDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D1938();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574CEE04()
{
  result = qword_27F87AD50;
  if (!qword_27F87AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD50);
  }

  return result;
}

unint64_t sub_2574CEE8C()
{
  result = qword_27F87AD68;
  if (!qword_27F87AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD68);
  }

  return result;
}

unint64_t sub_2574CEEE4()
{
  result = qword_27F87AD70;
  if (!qword_27F87AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AD70);
  }

  return result;
}

uint64_t sub_2574CEF38@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_GLMClassifier.DoubleArray(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CEF78@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v3 = type metadata accessor for Proto_GLMClassifier(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + *(v3 + 36);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574CEFF8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8360);
  __swift_project_value_buffer(v0, qword_27F8E8360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "weights";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "postEvaluationTransform";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "classEncoding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "stringClassLabels";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 101;
  *v18 = "int64ClassLabels";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574CF2BC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF3B8();
        break;
      case 2:
        sub_257743334();
        break;
      case 3:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF458();
        break;
      case 4:
        OUTLINED_FUNCTION_11_6();
        sub_2574CF4C0();
        break;
      default:
        if (result == 100)
        {
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_11_6();
          sub_2574CF528(v7, v8, v9, v10);
        }

        else if (result == 101)
        {
          OUTLINED_FUNCTION_205();
          OUTLINED_FUNCTION_11_6();
          sub_2574CFA2C(v3, v4, v5, v6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2574CF3B8()
{
  type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray);
  return sub_2577433C4();
}

uint64_t sub_2574CF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A878, &unk_257748700);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    sub_2574D19E4();
    sub_2574D19E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D198C(v17, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
      sub_2574D19E4();
      sub_2574D19E4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2574D16EC(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_2574D19E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87AD18, &unk_25774A9B0);
  sub_2574D19E4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_2574CFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A880, &qword_25774AFD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    sub_2574D19E4();
    sub_2574D19E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_2574D19E4();
      sub_2574D19E4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574D198C(v17, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
    }
  }

  sub_2574D16EC(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574D19E4();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87AD18, &unk_25774A9B0);
  sub_2574D19E4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_2574CFF30()
{
  OUTLINED_FUNCTION_2_7();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  if (!*(*v1 + 16) || (type metadata accessor for Proto_GLMClassifier.DoubleArray(0), sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (v2 = v0, OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v0))
    {
      if (!*(v3 + 16) || (v9 = *(v3 + 24), v25 = *(v3 + 16), v26 = v9, sub_2574D18E4(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v0 = v2) == 0))
      {
        if (!*(v3 + 32) || (v10 = *(v3 + 40), v25 = *(v3 + 32), v26 = v10, sub_2574D1938(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v0 = v2) == 0))
        {
          v11 = type metadata accessor for Proto_GLMClassifier(0);
          v12 = *(v11 + 32);
          sub_257487308();
          v13 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
          if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
          {
            goto LABEL_14;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_11_6();
            v14 = v0;
            sub_2574D0398(v15, v16, v17, v18);
          }

          else
          {
            OUTLINED_FUNCTION_11_6();
            v14 = v0;
            sub_2574D0178(v19, v20, v21, v22);
          }

          OUTLINED_FUNCTION_3_11();
          result = sub_2574D198C(v7, v23);
          if (!v14)
          {
LABEL_14:
            v24 = *(v11 + 36);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2574D0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  sub_257487308();
  v13 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2574D19E4();
      sub_2574D16EC(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_2574D198C(v11, type metadata accessor for Proto_StringVector);
    }

    result = sub_2574D198C(v7, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574D0398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  sub_257487308();
  v13 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87AD18, &unk_25774A9B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574D19E4();
      sub_2574D16EC(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_2574D198C(v11, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_2574D198C(v7, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification29LinearClassifierConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_267();
  v2 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ADC0, &unk_25774AFE0);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = *v1;
  v20 = *v0;
  sub_25747FFC0();
  if ((v21 & 1) == 0 || (sub_257479D04(v1[1], v0[1]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v22 = v1[2];
  v23 = v0[2];
  if (*(v1 + 24))
  {
    v22 = v22 != 0;
  }

  if (*(v0 + 24) == 1)
  {
    if (v23)
    {
      if (v22 != 1)
      {
        goto LABEL_30;
      }
    }

    else if (v22)
    {
      goto LABEL_30;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_30;
  }

  v24 = v1[4];
  v25 = v0[4];
  if (*(v1 + 40))
  {
    v24 = v24 != 0;
  }

  if (*(v0 + 40) == 1)
  {
    if (v25)
    {
      if (v24 != 1)
      {
        goto LABEL_30;
      }
    }

    else if (v24)
    {
      goto LABEL_30;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_30;
  }

  v37 = type metadata accessor for Proto_GLMClassifier(0);
  v26 = *(v37 + 32);
  v27 = *(v13 + 48);
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_65(v18);
  if (v28)
  {
    OUTLINED_FUNCTION_65(&v18[v27]);
    if (v28)
    {
      sub_2574695E4(v18, &qword_27F87AD18, &unk_25774A9B0);
      goto LABEL_33;
    }
  }

  else
  {
    sub_257487308();
    OUTLINED_FUNCTION_65(&v18[v27]);
    if (!v28)
    {
      sub_2574D19E4();
      v32 = sub_2574CE784(v12, v8);
      sub_2574D198C(v8, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
      sub_2574D198C(v12, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
      sub_2574695E4(v18, &qword_27F87AD18, &unk_25774A9B0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_33:
      v33 = *(v37 + 36);
      sub_2577431B4();
      OUTLINED_FUNCTION_2_12();
      sub_2574D16EC(v34, v35);
      v30 = OUTLINED_FUNCTION_4_2();
      return v30 & 1;
    }

    OUTLINED_FUNCTION_3_11();
    sub_2574D198C(v12, v29);
  }

  sub_2574695E4(v18, &qword_27F87ADC0, &unk_25774AFE0);
LABEL_30:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_2574D0928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2574D099C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2574D0A10(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2574D0A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D16EC(&qword_27F87AD98, type metadata accessor for Proto_GLMClassifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D0B04(uint64_t a1)
{
  v2 = sub_2574D16EC(&qword_281537D78, type metadata accessor for Proto_GLMClassifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D0BCC()
{
  sub_2574D16EC(&qword_281537D78, type metadata accessor for Proto_GLMClassifier);

  return sub_257743424();
}

uint64_t sub_2574D0C4C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8378);
  __swift_project_value_buffer(v0, qword_27F8E8378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Logit";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Probit";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D0E38()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8390);
  __swift_project_value_buffer(v0, qword_27F8E8390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ReferenceClass";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OneVsRest";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D1024()
{
  result = MEMORY[0x259C64E90](0x41656C62756F442ELL, 0xEC00000079617272);
  qword_27F8E83A8 = 0xD000000000000013;
  unk_27F8E83B0 = 0x800000025777AB90;
  return result;
}

uint64_t sub_2574D1098()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83B8);
  __swift_project_value_buffer(v0, qword_27F8E83B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2574D1204()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_257743334();
    }
  }

  return result;
}

uint64_t sub_2574D125C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v0))
  {
    v3 = *(type metadata accessor for Proto_GLMClassifier.DoubleArray(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574D12CC()
{
  OUTLINED_FUNCTION_267();
  if ((sub_257479D04(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_GLMClassifier.DoubleArray(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_2_12();
  sub_2574D16EC(v3, v4);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574D1350(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574D16EC(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D13DC()
{
  if (qword_27F878F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E83A8;

  return v0;
}

uint64_t sub_2574D1474(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D16EC(&qword_27F87ADB0, type metadata accessor for Proto_GLMClassifier.DoubleArray);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D1514(uint64_t a1)
{
  v2 = sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D15DC()
{
  sub_2574D16EC(&qword_281537DB0, type metadata accessor for Proto_GLMClassifier.DoubleArray);

  return sub_257743424();
}

uint64_t sub_2574D16EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2574D18E4()
{
  result = qword_27F87ADA0;
  if (!qword_27F87ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADA0);
  }

  return result;
}

unint64_t sub_2574D1938()
{
  result = qword_27F87ADA8;
  if (!qword_27F87ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADA8);
  }

  return result;
}

uint64_t sub_2574D198C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574D19E4()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

uint64_t sub_2574D1A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2574D1B9C()
{
  sub_2574D1C40();
  if (v0 <= 0x3F)
  {
    sub_2574CE5E4();
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

void sub_2574D1C40()
{
  if (!qword_27F87ADD8)
  {
    type metadata accessor for Proto_GLMRegressor.DoubleArray(255);
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87ADD8);
    }
  }
}

void sub_2574D1CBC(uint64_t a1@<X8>)
{
  sub_2574D1CA8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_2574D1D00(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2574D1CA8();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_2574D1D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D31D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2574D1DBC()
{
  result = qword_27F87ADE0;
  if (!qword_27F87ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADE0);
  }

  return result;
}

unint64_t sub_2574D1E14()
{
  result = qword_27F87ADE8;
  if (!qword_27F87ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F87ADF0, qword_25774B0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADE8);
  }

  return result;
}

unint64_t sub_2574D1E7C()
{
  result = qword_27F87ADF8;
  if (!qword_27F87ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ADF8);
  }

  return result;
}

unint64_t sub_2574D1ED4()
{
  result = qword_27F87AE00;
  if (!qword_27F87AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AE00);
  }

  return result;
}

uint64_t sub_2574D1F28@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_GLMRegressor.DoubleArray(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D1F68@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v3 = a1 + *(type metadata accessor for Proto_GLMRegressor(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D1FB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83D0);
  __swift_project_value_buffer(v0, qword_27F8E83D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "weights";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "postEvaluationTransform";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D21BC()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_11_6();
        sub_2574D22F4();
        break;
      case 2:
        sub_257743334();
        break;
      case 1:
        OUTLINED_FUNCTION_11_6();
        sub_2574D2254();
        break;
    }
  }

  return result;
}

uint64_t sub_2574D2254()
{
  type metadata accessor for Proto_GLMRegressor.DoubleArray(0);
  sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray);
  return sub_2577433C4();
}

uint64_t sub_2574D235C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_GLMRegressor.DoubleArray(0), sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray), OUTLINED_FUNCTION_9_5(), result = sub_257743564(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v1))
    {
      if (!*(v2 + 16) || (v5 = *(v2 + 16), v6 = *(v2 + 24), sub_2574D31D8(), OUTLINED_FUNCTION_9_5(), result = sub_2577434C4(), !v1))
      {
        v4 = *(type metadata accessor for Proto_GLMRegressor(0) + 28);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2574D2490(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_7_8(a1, a2);
  sub_257480000();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if ((sub_257479D04(*(v3 + 8), *(v2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  if (!sub_257487360(*(v3 + 16), *(v3 + 24), *(v2 + 16)))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Proto_GLMRegressor(0) + 28);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_18();
  sub_2574D2FE0(v7, v8);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574D2584(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D2FE0(&qword_27F87AE48, type metadata accessor for Proto_GLMRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D2624(uint64_t a1)
{
  v2 = sub_2574D2FE0(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D26EC()
{
  sub_2574D2FE0(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor);

  return sub_257743424();
}

uint64_t sub_2574D276C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E83E8);
  __swift_project_value_buffer(v0, qword_27F8E83E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NoTransform";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Logit";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Probit";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D2994()
{
  result = MEMORY[0x259C64E90](0x41656C62756F442ELL, 0xEC00000079617272);
  qword_27F8E8400 = 0xD000000000000012;
  *algn_27F8E8408 = 0x800000025777AC30;
  return result;
}

uint64_t sub_2574D2A08()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8410);
  __swift_project_value_buffer(v0, qword_27F8E8410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2574D2B74()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_9_5(), OUTLINED_FUNCTION_11_6(), result = sub_257743494(), !v1))
  {
    v3 = *(type metadata accessor for Proto_GLMRegressor.DoubleArray(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2574D2BE0(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_7_8(a1, a2);
  if ((sub_257479D04(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_GLMRegressor.DoubleArray(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_18();
  sub_2574D2FE0(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574D2C5C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574D2FE0(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D2CE8()
{
  if (qword_27F878F48 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8E8400;

  return v0;
}

uint64_t sub_2574D2D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D2FE0(&qword_27F87AE58, type metadata accessor for Proto_GLMRegressor.DoubleArray);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D2E08(uint64_t a1)
{
  v2 = sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D2ED0()
{
  sub_2574D2FE0(&qword_27F87AE10, type metadata accessor for Proto_GLMRegressor.DoubleArray);

  return sub_257743424();
}

uint64_t sub_2574D2FE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2574D31D8()
{
  result = qword_27F87AE50;
  if (!qword_27F87AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87AE50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t type metadata accessor for Proto_Identity()
{
  result = qword_27F87AE60;
  if (!qword_27F87AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2574D32CC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2574D3338()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8428);
  __swift_project_value_buffer(v0, qword_27F8E8428);
  return sub_2577435A4();
}

uint64_t sub_2574D3384()
{
  sub_2577431B4();
  sub_2574D37EC(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_2574D340C()
{
  sub_257743A14();
  type metadata accessor for Proto_Identity();
  sub_2574D37EC(&qword_27F87AE78, type metadata accessor for Proto_Identity);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574D34B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574D37EC(&qword_27F87AE90, type metadata accessor for Proto_Identity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574D3534@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F878F58 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8E8428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2574D35DC(uint64_t a1)
{
  v2 = sub_2574D37EC(&qword_27F87AE70, type metadata accessor for Proto_Identity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574D364C()
{
  sub_2574D37EC(&qword_27F87AE70, type metadata accessor for Proto_Identity);

  return sub_257743424();
}

uint64_t sub_2574D37EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574D3854()
{
  result = type metadata accessor for Proto_DoubleVector(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64Vector(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_StringToDoubleMap(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_Int64ToDoubleMap(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2574D3958()
{
  sub_2574D39F4();
  if (v0 <= 0x3F)
  {
    sub_2574D3A4C();
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

void sub_2574D39F4()
{
  if (!qword_281537F70)
  {
    type metadata accessor for Proto_Imputer.OneOf_ImputedValue(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537F70);
    }
  }
}

void sub_2574D3A4C()
{
  if (!qword_27F87AEA0)
  {
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87AEA0);
    }
  }
}

uint64_t sub_2574D3AA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2574D3AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2574D3B3C(uint64_t a1, uint64_t a2)
{
  v113 = a1;
  v114 = a2;
  v108 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  v2 = OUTLINED_FUNCTION_4(v108);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v112 = v5;
  v6 = OUTLINED_FUNCTION_153();
  v107 = type metadata accessor for Proto_StringToDoubleMap(v6);
  v7 = OUTLINED_FUNCTION_4(v107);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v111 = v10;
  v11 = OUTLINED_FUNCTION_153();
  v106 = type metadata accessor for Proto_Int64Vector(v11);
  v12 = OUTLINED_FUNCTION_4(v106);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v110 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v105 = type metadata accessor for Proto_DoubleVector(v16);
  v17 = OUTLINED_FUNCTION_4(v105);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v109 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v22 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(v21);
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v105 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v105 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v105 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v105 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v105 - v42);
  MEMORY[0x28223BE20](v41);
  v45 = (&v105 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AEE8, &qword_25774B890);
  OUTLINED_FUNCTION_13(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v105 - v51;
  v53 = (&v105 + *(v50 + 56) - v51);
  sub_2574D7AE4(v113, &v105 - v51);
  sub_2574D7AE4(v114, v53);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2574D7AE4(v52, v43);
      if (OUTLINED_FUNCTION_11_7() != 1)
      {
        goto LABEL_40;
      }

      v54 = *v43 == *v53;
      goto LABEL_21;
    case 2u:
      sub_2574D7AE4(v52, v40);
      v64 = *v40;
      v63 = v40[1];
      if (OUTLINED_FUNCTION_11_7() != 2)
      {

        goto LABEL_40;
      }

      if (v64 == *v53 && v63 == *(v53 + 1))
      {
        v103 = *(v53 + 1);
      }

      else
      {
        v66 = *(v53 + 1);
        v67 = sub_257743994();

        if ((v67 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_50;
    case 3u:
      sub_2574D7AE4(v52, v37);
      if (OUTLINED_FUNCTION_11_7() != 3)
      {
        v94 = type metadata accessor for Proto_DoubleVector;
        v95 = v37;
        goto LABEL_39;
      }

      v68 = OUTLINED_FUNCTION_15_2();
      v69 = v109;
      sub_2574D7A84(v68, v109, v70);
      if (sub_257479D04(*v37, *v69))
      {
        v71 = *(v105 + 20);
        v43 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v72, v73);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_7_9();
          sub_2574D7A2C(v69, v74);
          v62 = v37;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_7_9();
      sub_2574D7A2C(v69, v98);
      v97 = v37;
      goto LABEL_45;
    case 4u:
      sub_2574D7AE4(v52, v34);
      if (OUTLINED_FUNCTION_11_7() != 4)
      {
        v94 = type metadata accessor for Proto_Int64Vector;
        v95 = v34;
        goto LABEL_39;
      }

      v55 = OUTLINED_FUNCTION_15_2();
      v56 = v110;
      sub_2574D7A84(v55, v110, v57);
      if (sub_257487374(*v34, *v56))
      {
        v58 = *(v106 + 20);
        v43 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v59, v60);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_10_10();
          sub_2574D7A2C(v56, v61);
          v62 = v34;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_10_10();
      sub_2574D7A2C(v56, v96);
      v97 = v34;
      goto LABEL_45;
    case 5u:
      sub_2574D7AE4(v52, v31);
      if (OUTLINED_FUNCTION_11_7() != 5)
      {
        v94 = type metadata accessor for Proto_StringToDoubleMap;
        v95 = v31;
        goto LABEL_39;
      }

      v76 = OUTLINED_FUNCTION_15_2();
      v77 = v111;
      sub_2574D7A84(v76, v111, v78);
      v79 = *v31;
      v80 = *v77;
      sub_257476CF4();
      if (v81)
      {
        v82 = *(v107 + 20);
        v43 = sub_2577431B4();
        OUTLINED_FUNCTION_0_19();
        sub_2574D7954(v83, v84);
        if (sub_257743644())
        {
          OUTLINED_FUNCTION_9_7();
          sub_2574D7A2C(v77, v85);
          v62 = v31;
          goto LABEL_33;
        }
      }

      OUTLINED_FUNCTION_9_7();
      sub_2574D7A2C(v77, v99);
      v97 = v31;
      goto LABEL_45;
    case 6u:
      sub_2574D7AE4(v52, v28);
      if (OUTLINED_FUNCTION_11_7() != 6)
      {
        v94 = type metadata accessor for Proto_Int64ToDoubleMap;
        v95 = v28;
LABEL_39:
        sub_2574D7A2C(v95, v94);
LABEL_40:
        sub_2574695E4(v52, &qword_27F87AEE8, &qword_25774B890);
        return 0;
      }

      v86 = OUTLINED_FUNCTION_15_2();
      v87 = v112;
      sub_2574D7A84(v86, v112, v88);
      sub_257477924(*v28, *v87);
      if ((v89 & 1) == 0 || (v90 = *(v108 + 20), v43 = sub_2577431B4(), OUTLINED_FUNCTION_0_19(), sub_2574D7954(v91, v92), (sub_257743644() & 1) == 0))
      {
        OUTLINED_FUNCTION_8_5();
        sub_2574D7A2C(v87, v100);
        v97 = v28;
LABEL_45:
        sub_2574D7A2C(v97, v43);
LABEL_46:
        OUTLINED_FUNCTION_1_12();
        sub_2574D7A2C(v52, v101);
        return 0;
      }

      OUTLINED_FUNCTION_8_5();
      sub_2574D7A2C(v87, v93);
      v62 = v28;
LABEL_33:
      sub_2574D7A2C(v62, v43);
LABEL_50:
      OUTLINED_FUNCTION_1_12();
      sub_2574D7A2C(v52, v104);
      return 1;
    default:
      sub_2574D7AE4(v52, v45);
      if (OUTLINED_FUNCTION_11_7())
      {
        goto LABEL_40;
      }

      v54 = *v45 == *v53;
LABEL_21:
      v75 = v54;
      sub_2574D7A2C(v52, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
      return v75;
  }
}

uint64_t sub_2574D42C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      return a6 == 1 && a1 == a4;
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_257743994();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return !a6 && *&a1 == *&a4;
  }
}

uint64_t sub_2574D435C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Proto_Imputer(0);
  v4 = a1 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  v5 = a1 + *(v3 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574D43C0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8440);
  __swift_project_value_buffer(v0, qword_27F8E8440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25774B5E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "imputedDoubleValue";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imputedInt64Value";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "imputedStringValue";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "imputedDoubleArray";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "imputedInt64Array";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "imputedStringDictionary";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "imputedInt64Dictionary";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "replaceDoubleValue";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "replaceInt64Value";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "replaceStringValue";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574D4778()
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
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2574D48B0(v3, v4);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_6_8();
        sub_2574D4A48(v23, v24);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2574D4BE0(v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_6_10();
        sub_2574D4D84(v13, v14, v15, v16);
        break;
      case 5:
        v5 = OUTLINED_FUNCTION_6_10();
        sub_2574D527C(v5, v6, v7, v8);
        break;
      case 6:
        v25 = OUTLINED_FUNCTION_6_10();
        sub_2574D5774(v25, v26, v27, v28);
        break;
      case 7:
        v29 = OUTLINED_FUNCTION_6_10();
        sub_2574D5C6C(v29, v30, v31, v32);
        break;
      case 11:
        v17 = OUTLINED_FUNCTION_6_8();
        v22 = 0;
        goto LABEL_14;
      case 12:
        v17 = OUTLINED_FUNCTION_6_8();
        v22 = 1;
LABEL_14:
        sub_2574D6164(v17, v18, v19, v20, v21, v22);
        break;
      case 13:
        v9 = OUTLINED_FUNCTION_6_8();
        sub_2574D623C(v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2574D48B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 1;
  result = sub_257743364();
  if (!v2 && (v13 & 1) == 0)
  {
    v9 = v12;
    sub_2574A172C(a2, v7, &qword_27F87AE98, &qword_25776F620);
    v10 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_2574D4A48(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 1;
  result = sub_257743314();
  if (!v2 && (v12 & 1) == 0)
  {
    v13 = v11;
    sub_2574A172C(a2, v7, &qword_27F87AE98, &qword_25776F620);
    v9 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v13;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_2574D4BE0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0;
  result = sub_257743384();
  if (v2)
  {
  }

  v9 = v13;
  if (v13)
  {
    v14 = v12;
    sub_2574A172C(a2, v7, &qword_27F87AE98, &qword_25776F620);
    v10 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_2574695E4(v7, &qword_27F87AE98, &qword_25776F620);
    if (EnumTagSinglePayload != 1)
    {
      sub_257743244();
    }

    sub_2574695E4(a2, &qword_27F87AE98, &qword_25776F620);
    *a2 = v14;
    a2[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_2574D4D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_DoubleVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AED0, &unk_25774B870);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574A172C(a1, v14, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v14, v21, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v21, v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v28, &qword_27F87AED0, &unk_25774B870);
      sub_2574D7A84(v19, v10, type metadata accessor for Proto_DoubleVector);
      sub_2574D7A84(v10, v28, type metadata accessor for Proto_DoubleVector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A6F8, type metadata accessor for Proto_DoubleVector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87AED0, &unk_25774B870);
  }

  sub_2574A172C(v28, v26, &qword_27F87AED0, &unk_25774B870);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87AED0, &unk_25774B870);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87AED0, &unk_25774B870);
  }

  v32 = v39;
  sub_2574D7A84(v26, v39, type metadata accessor for Proto_DoubleVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87AED0, &unk_25774B870);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v32, v34, type metadata accessor for Proto_DoubleVector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574D527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
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
  sub_2574A172C(a1, v14, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v14, v21, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v21, v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
      sub_2574D7A84(v19, v10, type metadata accessor for Proto_Int64Vector);
      sub_2574D7A84(v10, v28, type metadata accessor for Proto_Int64Vector);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574A172C(v28, v26, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87A880, &qword_25774AFD0);
  }

  v32 = v39;
  sub_2574D7A84(v26, v39, type metadata accessor for Proto_Int64Vector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87A880, &qword_25774AFD0);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v32, v34, type metadata accessor for Proto_Int64Vector);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574D5774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_StringToDoubleMap(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AED8, &qword_25774B880);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574A172C(a1, v14, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v14, v21, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v21, v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v28, &qword_27F87AED8, &qword_25774B880);
      sub_2574D7A84(v19, v10, type metadata accessor for Proto_StringToDoubleMap);
      sub_2574D7A84(v10, v28, type metadata accessor for Proto_StringToDoubleMap);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A788, type metadata accessor for Proto_StringToDoubleMap);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87AED8, &qword_25774B880);
  }

  sub_2574A172C(v28, v26, &qword_27F87AED8, &qword_25774B880);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87AED8, &qword_25774B880);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87AED8, &qword_25774B880);
  }

  v32 = v39;
  sub_2574D7A84(v26, v39, type metadata accessor for Proto_StringToDoubleMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87AED8, &qword_25774B880);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v32, v34, type metadata accessor for Proto_StringToDoubleMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574D5C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Proto_Int64ToDoubleMap(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AEE0, &qword_25774B888);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - v27;
  __swift_storeEnumTagSinglePayload(&v35 - v27, 1, 1, v5);
  v36 = a1;
  sub_2574A172C(a1, v14, &qword_27F87AE98, &qword_25776F620);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v38 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F87AE98, &qword_25776F620);
  }

  else
  {
    sub_2574D7A84(v14, v21, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    sub_2574D7A84(v21, v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v28, &qword_27F87AEE0, &qword_25774B888);
      sub_2574D7A84(v19, v10, type metadata accessor for Proto_Int64ToDoubleMap);
      sub_2574D7A84(v10, v28, type metadata accessor for Proto_Int64ToDoubleMap);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    }

    else
    {
      sub_2574D7A2C(v19, type metadata accessor for Proto_Imputer.OneOf_ImputedValue);
    }
  }

  sub_2574D7954(&qword_27F87A768, type metadata accessor for Proto_Int64ToDoubleMap);
  v29 = v40;
  sub_2577433D4();
  if (v29)
  {
    v30 = v28;
    return sub_2574695E4(v30, &qword_27F87AEE0, &qword_25774B888);
  }

  sub_2574A172C(v28, v26, &qword_27F87AEE0, &qword_25774B888);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_2574695E4(v28, &qword_27F87AEE0, &qword_25774B888);
    v30 = v26;
    return sub_2574695E4(v30, &qword_27F87AEE0, &qword_25774B888);
  }

  v32 = v39;
  sub_2574D7A84(v26, v39, type metadata accessor for Proto_Int64ToDoubleMap);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v33 = v38;
  sub_2574695E4(v28, &qword_27F87AEE0, &qword_25774B888);
  v34 = v36;
  sub_2574695E4(v36, &qword_27F87AE98, &qword_25776F620);
  sub_2574D7A84(v32, v34, type metadata accessor for Proto_Int64ToDoubleMap);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
}

uint64_t sub_2574D6164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v15 = 0;
  v16 = 1;
  result = a5(&v15, a3, a4);
  if (!v6 && (v16 & 1) == 0)
  {
    v10 = v15;
    v11 = a2 + *(type metadata accessor for Proto_Imputer(0) + 20);
    if (*(v11 + 16) == 255)
    {
      v12 = -1;
    }

    else
    {
      sub_257743244();
      v12 = *(v11 + 16);
    }

    v13 = *v11;
    v14 = *(v11 + 8);
    *v11 = v10;
    *(v11 + 8) = 0;
    *(v11 + 16) = a6;
    return sub_257467084(v13, v14, v12);
  }

  return result;
}

uint64_t sub_2574D623C(uint64_t a1, uint64_t a2)
{
  result = sub_257743384();
  if (v2)
  {
  }

  if (v9)
  {
    v5 = a2 + *(type metadata accessor for Proto_Imputer(0) + 20);
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
    *(v5 + 16) = 2;
    return sub_257467084(v7, v8, v6);
  }

  return result;
}

uint64_t sub_2574D631C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AE98, &qword_25776F620);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  sub_2574A172C(v0, &v37 - v6, &qword_27F87AE98, &qword_25776F620);
  v8 = type metadata accessor for Proto_Imputer.OneOf_ImputedValue(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v27 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D6648(v27);
        goto LABEL_16;
      case 2u:
        OUTLINED_FUNCTION_1_12();
        sub_2574D7A2C(v7, v21);
        v22 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D6788(v22);
        goto LABEL_16;
      case 3u:
        v23 = OUTLINED_FUNCTION_5_10();
        sub_2574D68DC(v23, v24, v25, v26);
        goto LABEL_20;
      case 4u:
        v17 = OUTLINED_FUNCTION_5_10();
        sub_2574D6AF0(v17, v18, v19, v20);
        goto LABEL_20;
      case 5u:
        v28 = OUTLINED_FUNCTION_5_10();
        sub_2574D6D04(v28, v29, v30, v31);
        goto LABEL_20;
      case 6u:
        v32 = OUTLINED_FUNCTION_5_10();
        sub_2574D6F18(v32, v33, v34, v35);
LABEL_20:
        OUTLINED_FUNCTION_1_12();
        result = sub_2574D7A2C(v7, v36);
        if (v1)
        {
          return result;
        }

        break;
      default:
        v13 = OUTLINED_FUNCTION_5_10();
        result = sub_2574D650C(v13);
LABEL_16:
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v9 = type metadata accessor for Proto_Imputer(0);
  v10 = *(v0 + *(v9 + 20) + 16);
  if (!*(v0 + *(v9 + 20) + 16))
  {
    v15 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D712C(v15);
LABEL_10:
    if (v1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v10 == 1)
  {
    v14 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D71A0(v14);
    goto LABEL_10;
  }

  if (v10 == 2)
  {
    v11 = OUTLINED_FUNCTION_5_10();
    result = sub_2574D7218(v11);
    goto LABEL_10;
  }

LABEL_11:
  v16 = v0 + *(v9 + 24);
  return sub_257743194();
}