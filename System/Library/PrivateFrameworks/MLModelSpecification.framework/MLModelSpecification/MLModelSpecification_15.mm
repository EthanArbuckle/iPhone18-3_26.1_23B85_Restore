uint64_t sub_2576130F4()
{
  sub_2576133F0(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder);

  return sub_257743424();
}

uint64_t sub_257613174()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA040);
  __swift_project_value_buffer(v0, qword_27F8EA040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ErrorOnUnknown";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IgnoreUnknown";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576133F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2576134C8()
{
  result = qword_27F87FBE0;
  if (!qword_27F87FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87FBE0);
  }

  return result;
}

uint64_t sub_25761351C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257613574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576135D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_OneHotEncoder.OneOf_CategoryType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257613778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_DoubleRange(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257456DD4);
}

uint64_t sub_2576137D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_DoubleRange(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257456E24);
}

uint64_t sub_257613838(uint64_t a1)
{
  v2 = type metadata accessor for Proto_DoubleRange(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_257613934()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2576139C8()
{
  result = type metadata accessor for Proto_Int64Range(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Int64Set(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_267();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (*(*(v8 - 8) + 84) == v3)
  {
    v9 = v8;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = sub_2577431B4();
    v10 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v4 + v10, v3, v9);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = sub_2577431B4();
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

void sub_257613BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  sub_257613C84(319, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_2577431B4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257613C84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2577437B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_257613CD8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Proto_StringParameter(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257613D14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = *(type metadata accessor for Proto_Int64Parameter(0) + 20);
  v2 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  return OUTLINED_FUNCTION_24_7(v2);
}

uint64_t sub_257613D5C@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Proto_BoolParameter(0) + 20)];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257613D94@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = *(type metadata accessor for Proto_DoubleParameter(0) + 20);
  v2 = type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues(0);
  return OUTLINED_FUNCTION_24_7(v2);
}

uint64_t sub_257613DDC()
{
  v48 = type metadata accessor for Proto_Int64Set(0);
  v1 = OUTLINED_FUNCTION_4(v48);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_6();
  v47 = type metadata accessor for Proto_Int64Range(0);
  v4 = OUTLINED_FUNCTION_4(v47);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v47 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCB8, &qword_257768750);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v25 = *(v22 + 56);
  sub_2576176A8();
  sub_2576176A8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_13_4();
    sub_2576176A8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2576175FC();
      if (sub_257487374(*v15, *v0))
      {
        v26 = *(v48 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_28();
        sub_2576171C4(v27, v28);
        v29 = sub_257743644();
        OUTLINED_FUNCTION_2_18();
        sub_257617650(v0, v30);
        if (v29)
        {
          OUTLINED_FUNCTION_2_18();
          v32 = v15;
LABEL_14:
          sub_257617650(v32, v31);
          OUTLINED_FUNCTION_3_18();
          sub_257617650(v24, v40);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_18();
        sub_257617650(v0, v45);
      }

      OUTLINED_FUNCTION_2_18();
      v44 = v15;
LABEL_19:
      sub_257617650(v44, v43);
      OUTLINED_FUNCTION_3_18();
      sub_257617650(v24, v46);
      return 0;
    }

    OUTLINED_FUNCTION_2_18();
    v34 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
    sub_2576176A8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2576175FC();
      if (*v17 == *v8 && v17[1] == v8[1])
      {
        v35 = *(v47 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_28();
        sub_2576171C4(v36, v37);
        v38 = sub_257743644();
        OUTLINED_FUNCTION_1_19();
        sub_257617650(v8, v39);
        if (v38)
        {
          OUTLINED_FUNCTION_1_19();
          v32 = v17;
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_19();
        sub_257617650(v8, v42);
      }

      OUTLINED_FUNCTION_1_19();
      v44 = v17;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_1_19();
    v34 = v17;
  }

  sub_257617650(v34, v33);
  sub_2574695E4(v24, &qword_27F87FCB8, &qword_257768750);
  return 0;
}

uint64_t sub_2576141A8()
{
  v0 = type metadata accessor for Proto_DoubleRange(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCA8, &qword_257768740);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74_0();
  v14 = *(v13 + 56);
  sub_2576176A8();
  sub_2576176A8();
  OUTLINED_FUNCTION_14_3();
  sub_2576175FC();
  sub_2576175FC();
  if (*v8 == *v6 && v8[1] == v6[1])
  {
    v15 = *(v0 + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_28();
    sub_2576171C4(v16, v17);
    v18 = sub_257743644();
    OUTLINED_FUNCTION_14_3();
    sub_257617650(v6, v19);
    sub_257617650(v8, v15);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_257617650(v6, type metadata accessor for Proto_DoubleRange);
    v21 = OUTLINED_FUNCTION_205();
    sub_257617650(v21, v22);
  }

  return 0;
}

uint64_t sub_2576143A8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA058);
  __swift_project_value_buffer(v0, qword_27F8EA058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "defaultValue";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "set";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576145B4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 11:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_257614B34(v7, v8, v9, v10);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_257614630(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_257743324();
        break;
    }
  }

  return result;
}

uint64_t sub_257614630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Range(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCC8, &qword_257768758);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_Int64Parameter(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FC38, &qword_257768128);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FC38, &qword_257768128);
  }

  else
  {
    sub_2576175FC();
    sub_2576175FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257617650(v17, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87FCC8, &qword_257768758);
      sub_2576175FC();
      sub_2576175FC();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2576171C4(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FCC8, &qword_257768758);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FCC8, &qword_257768758);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FCC8, &qword_257768758);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FCC8, &qword_257768758);
  }

  sub_2576175FC();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87FCC8, &qword_257768758);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FC38, &qword_257768128);
  sub_2576175FC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_257614B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Set(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCD0, &qword_257768760);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_Int64Parameter(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FC38, &qword_257768128);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FC38, &qword_257768128);
  }

  else
  {
    sub_2576175FC();
    sub_2576175FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87FCD0, &qword_257768760);
      sub_2576175FC();
      sub_2576175FC();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257617650(v17, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
    }
  }

  sub_2576171C4(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FCD0, &qword_257768760);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FCD0, &qword_257768760);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FCD0, &qword_257768760);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FCD0, &qword_257768760);
  }

  sub_2576175FC();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87FCD0, &qword_257768760);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FC38, &qword_257768128);
  sub_2576175FC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_257615038()
{
  OUTLINED_FUNCTION_2_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  if (!*v0 || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    v10 = type metadata accessor for Proto_Int64Parameter(0);
    sub_2574AD5D8(v2 + *(v10 + 20), v8, &qword_27F87FC38, &qword_257768128);
    v11 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = OUTLINED_FUNCTION_3_9();
      sub_257615380(v12, v13, v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_3_9();
      sub_25761516C(v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_3_18();
    result = sub_257617650(v8, v20);
    if (!v1)
    {
LABEL_8:
      v21 = *(v10 + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25761516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Int64Range(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_Int64Parameter(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FC38, &qword_257768128);
  v14 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FC38, &qword_257768128);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2576175FC();
      sub_2576171C4(&qword_27F87A6D8, type metadata accessor for Proto_Int64Range);
      sub_257743574();
      return sub_257617650(v12, type metadata accessor for Proto_Int64Range);
    }

    result = sub_257617650(v8, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
  }

  __break(1u);
  return result;
}

uint64_t sub_257615380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Int64Set(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_Int64Parameter(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FC38, &qword_257768128);
  v14 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FC38, &qword_257768128);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2576175FC();
      sub_2576171C4(&qword_27F87A6B8, type metadata accessor for Proto_Int64Set);
      sub_257743574();
      return sub_257617650(v12, type metadata accessor for Proto_Int64Set);
    }

    result = sub_257617650(v8, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
  }

  __break(1u);
  return result;
}

uint64_t sub_257615594()
{
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(v4);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC38, &qword_257768128);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCB0, &qword_257768748);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  if (*v1 != *v0)
  {
    goto LABEL_11;
  }

  v30 = type metadata accessor for Proto_Int64Parameter(0);
  v19 = *(v30 + 20);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_34_0(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_34_0(&v18[v20]);
    if (v21)
    {
      sub_2574695E4(v18, &qword_27F87FC38, &qword_257768128);
LABEL_14:
      v26 = *(v30 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_28();
      sub_2576171C4(v27, v28);
      v23 = OUTLINED_FUNCTION_4_2();
      return v23 & 1;
    }

    goto LABEL_10;
  }

  sub_2574AD5D8(v18, v3, &qword_27F87FC38, &qword_257768128);
  OUTLINED_FUNCTION_34_0(&v18[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_3_18();
    sub_257617650(v3, v22);
LABEL_10:
    sub_2574695E4(v18, &qword_27F87FCB0, &qword_257768748);
    goto LABEL_11;
  }

  sub_2576175FC();
  v25 = sub_257613DDC();
  sub_257617650(v2, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
  sub_257617650(v3, type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues);
  sub_2574695E4(v18, &qword_27F87FC38, &qword_257768128);
  if (v25)
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_25761584C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576171C4(&qword_27F87FCC0, type metadata accessor for Proto_Int64Parameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576158EC(uint64_t a1)
{
  v2 = sub_2576171C4(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576159B4()
{
  sub_2576171C4(&qword_27F87BE80, type metadata accessor for Proto_Int64Parameter);

  return sub_257743424();
}

uint64_t sub_257615A34()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA070);
  __swift_project_value_buffer(v0, qword_27F8EA070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "defaultValue";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257615C00()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 10)
    {
      v3 = OUTLINED_FUNCTION_6_10();
      sub_257615C64(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }
  }

  return result;
}

uint64_t sub_257615C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_DoubleRange(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC08, &qword_2577680C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCE0, &qword_257768768);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  __swift_storeEnumTagSinglePayload(&v30 - v21, 1, 1, v5);
  v23 = *(type metadata accessor for Proto_DoubleParameter(0) + 20);
  v33 = a1;
  v31 = v23;
  sub_2574AD5D8(a1 + v23, v12, &qword_27F87FC08, &qword_2577680C8);
  v32 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FC08, &qword_2577680C8);
  }

  else
  {
    sub_2576175FC();
    sub_2576175FC();
    sub_2574695E4(v22, &qword_27F87FCE0, &qword_257768768);
    sub_2576175FC();
    sub_2576175FC();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_2576171C4(&qword_27F87A698, type metadata accessor for Proto_DoubleRange);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FCE0, &qword_257768768);
  }

  sub_2574AD5D8(v22, v20, &qword_27F87FCE0, &qword_257768768);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87FCE0, &qword_257768768);
    v26 = v20;
    return sub_2574695E4(v26, &qword_27F87FCE0, &qword_257768768);
  }

  sub_2576175FC();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v22, &qword_27F87FCE0, &qword_257768768);
  v28 = v33;
  v29 = v31;
  sub_2574695E4(v33 + v31, &qword_27F87FC08, &qword_2577680C8);
  sub_2576175FC();
  return __swift_storeEnumTagSinglePayload(v28 + v29, 0, 1, v32);
}

uint64_t sub_25761611C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v1 || (v2 = v0, OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v0))
  {
    v4 = OUTLINED_FUNCTION_3_9();
    result = sub_25761619C(v4, v5, v6, v7);
    if (!v2)
    {
      v8 = *(type metadata accessor for Proto_DoubleParameter(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25761619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC08, &qword_2577680C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_DoubleRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_DoubleParameter(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FC08, &qword_2577680C8);
  v14 = type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FC08, &qword_2577680C8);
  }

  sub_2576175FC();
  sub_2576171C4(&qword_27F87A698, type metadata accessor for Proto_DoubleRange);
  sub_257743574();
  return sub_257617650(v12, type metadata accessor for Proto_DoubleRange);
}

uint64_t sub_257616378()
{
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues(v4);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FC08, &qword_2577680C8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FCA0, &qword_257768738);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  if (*v1 != *v0)
  {
    goto LABEL_11;
  }

  v29 = type metadata accessor for Proto_DoubleParameter(0);
  v19 = *(v29 + 20);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_34_0(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_34_0(&v18[v20]);
    if (v21)
    {
      sub_2574695E4(v18, &qword_27F87FC08, &qword_2577680C8);
LABEL_13:
      v24 = *(v29 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_28();
      sub_2576171C4(v25, v26);
      v22 = OUTLINED_FUNCTION_4_2();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_2574AD5D8(v18, v3, &qword_27F87FC08, &qword_2577680C8);
  OUTLINED_FUNCTION_34_0(&v18[v20]);
  if (v21)
  {
    sub_257617650(v3, type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues);
LABEL_10:
    sub_2574695E4(v18, &qword_27F87FCA0, &qword_257768738);
    goto LABEL_11;
  }

  sub_2576175FC();
  v23 = sub_2576141A8();
  sub_257617650(v2, type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues);
  sub_257617650(v3, type metadata accessor for Proto_DoubleParameter.OneOf_AllowedValues);
  sub_2574695E4(v18, &qword_27F87FC08, &qword_2577680C8);
  if (v23)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_257616640(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576171C4(&qword_27F87FCD8, type metadata accessor for Proto_DoubleParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576166E0(uint64_t a1)
{
  v2 = sub_2576171C4(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576167A8()
{
  sub_2576171C4(&qword_27F87F9B8, type metadata accessor for Proto_DoubleParameter);

  return sub_257743424();
}

uint64_t sub_257616834()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_257616880()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_257743534(), !v0))
  {
    v6 = *(type metadata accessor for Proto_StringParameter(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_257616900(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_StringParameter(0) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_28();
  sub_2576171C4(v4, v5);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2576169EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576171C4(&qword_27F87FCE8, type metadata accessor for Proto_StringParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257616A8C(uint64_t a1)
{
  v2 = sub_2576171C4(&qword_27F87B018, type metadata accessor for Proto_StringParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257616B54()
{
  sub_2576171C4(&qword_27F87B018, type metadata accessor for Proto_StringParameter);

  return sub_257743424();
}

uint64_t sub_257616BE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "defaultValue";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_257743584();
  OUTLINED_FUNCTION_4(v10);
  (*(v11 + 104))(v8, v9);
  return sub_257743594();
}

uint64_t sub_257616D40()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743274();
    }
  }

  return result;
}

uint64_t sub_257616D8C()
{
  OUTLINED_FUNCTION_2_7();
  if (*v0 != 1 || (OUTLINED_FUNCTION_8_6(), result = sub_2577434B4(), !v1))
  {
    v3 = *(type metadata accessor for Proto_BoolParameter(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_257616DF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_0();
  v4 = *(type metadata accessor for Proto_BoolParameter(v3) + 20);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_28();
  sub_2576171C4(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257616E74(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2576171C4(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257616F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576171C4(&qword_27F87FCF0, type metadata accessor for Proto_BoolParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257616FEC(uint64_t a1)
{
  v2 = sub_2576171C4(&qword_27F87F930, type metadata accessor for Proto_BoolParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576170B4()
{
  sub_2576171C4(&qword_27F87F930, type metadata accessor for Proto_BoolParameter);

  return sub_257743424();
}

uint64_t sub_2576171C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576175FC()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_257617650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576176A8()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v4 = v1 + *(v2 + 24);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_2574AD5D8(v0 + v2, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_2574AD5D8(v0 + v2, v1 + v5, v3, v4);
}

uint64_t type metadata accessor for Proto_Scaler()
{
  result = qword_281537F98;
  if (!qword_281537F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257617890()
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

uint64_t sub_257617914@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Proto_Scaler() + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_257617954()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA0B8);
  __swift_project_value_buffer(v0, qword_27F8EA0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shiftValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scaleValue";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257617B1C()
{
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_257743334();
    }
  }

  return result;
}

uint64_t sub_257617B90()
{
  if (!*(*v0 + 16) || (result = OUTLINED_FUNCTION_0_29(), !v1))
  {
    if (!*(v0[1] + 16) || (result = OUTLINED_FUNCTION_0_29(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Proto_Scaler() + 24);
      return sub_257743194();
    }
  }

  return result;
}

uint64_t sub_257617C34(uint64_t *a1, uint64_t *a2)
{
  if ((sub_257479D04(*a1, *a2) & 1) == 0 || (sub_257479D04(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_Scaler() + 24);
  sub_2577431B4();
  sub_257618100(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_257617CF0()
{
  sub_257743A14();
  type metadata accessor for Proto_Scaler();
  sub_257618100(&qword_27F87FD00, type metadata accessor for Proto_Scaler);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257617DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257618100(&qword_27F87FD10, type metadata accessor for Proto_Scaler);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257617E48@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8799A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA0B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257617EF0(uint64_t a1)
{
  v2 = sub_257618100(&qword_27F87BB18, type metadata accessor for Proto_Scaler);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257617F60()
{
  sub_257618100(&qword_27F87BB18, type metadata accessor for Proto_Scaler);

  return sub_257743424();
}

uint64_t sub_257618100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_29()
{

  return sub_257743494();
}

void sub_2576181B0()
{
  sub_257618234();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257618234()
{
  if (!qword_281537460)
  {
    type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537460);
    }
  }
}

uint64_t sub_2576182AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257457278);
}

uint64_t sub_257618324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_25745727C);
}

uint64_t sub_25761838C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_2577431B4();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_25761846C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576184BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD88, &qword_257768C68);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  v20 = *(v17 + 56);
  sub_257619B5C(a1, &v24 - v18);
  sub_257619B5C(a2, &v19[v20]);
  sub_257619B04();
  sub_257619B04();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_30();
  sub_2576198B4(v21, v22);
  LOBYTE(a2) = sub_257743644();
  sub_257619AAC(v10, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
  sub_257619AAC(v12, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
  return a2 & 1;
}

uint64_t sub_257618668()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA0D0);
  __swift_project_value_buffer(v0, qword_27F8EA0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 20;
  *v5 = "vggish";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_2576187D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 20)
    {
      sub_25761883C(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_25761883C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD70, &qword_257768C58);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_2574A172C(a1, v12, &qword_27F87FD18, &unk_2577688F0);
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FD18, &unk_2577688F0);
  }

  else
  {
    sub_257619B04();
    sub_257619B04();
    sub_2574695E4(v22, &qword_27F87FD70, &qword_257768C58);
    sub_257619B04();
    sub_257619B04();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_2576198B4(&qword_27F87FD30, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
  v24 = v31;
  sub_2577433D4();
  if (v24)
  {
    v25 = v22;
    return sub_2574695E4(v25, &qword_27F87FD70, &qword_257768C58);
  }

  sub_2574A172C(v22, v20, &qword_27F87FD70, &qword_257768C58);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87FD70, &qword_257768C58);
    v25 = v20;
    return sub_2574695E4(v25, &qword_27F87FD70, &qword_257768C58);
  }

  sub_257619B04();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v22, &qword_27F87FD70, &qword_257768C58);
  v27 = v29;
  sub_2574695E4(v29, &qword_27F87FD18, &unk_2577688F0);
  sub_257619B04();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t sub_257618CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_257618D60(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0) + 20);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257618D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574A172C(a1, v8, &qword_27F87FD18, &unk_2577688F0);
  v13 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FD18, &unk_2577688F0);
  }

  sub_257619B04();
  sub_2576198B4(&qword_27F87FD30, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
  sub_257743574();
  return sub_257619AAC(v12, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);
}

uint64_t sub_257618F3C()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD18, &unk_2577688F0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FD80, &qword_257768C60);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_2574A172C(v1, &v30 - v20, &qword_27F87FD18, &unk_2577688F0);
  sub_2574A172C(v0, &v21[v22], &qword_27F87FD18, &unk_2577688F0);
  OUTLINED_FUNCTION_65(v21);
  if (v23)
  {
    OUTLINED_FUNCTION_65(&v21[v22]);
    if (v23)
    {
      sub_2574695E4(v21, &qword_27F87FD18, &unk_2577688F0);
LABEL_12:
      v26 = *(type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0) + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_30();
      sub_2576198B4(v27, v28);
      v24 = sub_257743644();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_2574A172C(v21, v14, &qword_27F87FD18, &unk_2577688F0);
  OUTLINED_FUNCTION_65(&v21[v22]);
  if (v23)
  {
    sub_257619AAC(v14, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType);
LABEL_9:
    sub_2574695E4(v21, &qword_27F87FD80, &qword_257768C60);
    goto LABEL_10;
  }

  sub_257619B04();
  v25 = sub_2576184BC(v14, v8);
  sub_257619AAC(v8, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType);
  sub_257619AAC(v14, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType);
  sub_2574695E4(v21, &qword_27F87FD18, &unk_2577688F0);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_25761923C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576198B4(&qword_27F87FD68, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576192DC(uint64_t a1)
{
  v2 = sub_2576198B4(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576193A4()
{
  sub_2576198B4(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);

  return sub_257743424();
}

uint64_t sub_257619424()
{
  result = MEMORY[0x259C64E90](0x6873696767562ELL, 0xE700000000000000);
  qword_27F8EA0E8 = 0xD00000000000002DLL;
  unk_27F8EA0F0 = 0x8000000257780110;
  return result;
}

uint64_t sub_257619490()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA0F8);
  __swift_project_value_buffer(v0, qword_27F8EA0F8);
  return sub_2577435A4();
}

uint64_t sub_2576194DC()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_30();
  sub_2576198B4(v0, v1);
  return sub_257743644() & 1;
}

uint64_t sub_25761954C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2576198B4(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576195D4()
{
  if (qword_27F8799B8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F8EA0E8;

  return v0;
}

uint64_t sub_25761963C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576198B4(&qword_27F87FD78, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576196DC(uint64_t a1)
{
  v2 = sub_2576198B4(&qword_27F87FD30, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576197A4()
{
  sub_2576198B4(&qword_27F87FD30, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.Vggish);

  return sub_257743424();
}

uint64_t sub_2576198B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257619AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257619B04()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_257619B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing.OneOf_SoundAnalysisPreprocessingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257619D38()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257619DFC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257619EDC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_97_0();
  }

  return result;
}

void sub_257619F9C()
{
  sub_2574B0924(319, &qword_27F87A678);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

void sub_25761A0B4()
{
  sub_25761A200(319, &qword_2815377D0, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_25761A200(319, &qword_281537FA8, type metadata accessor for Proto_Kernel, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25761A200(319, &qword_281537DF0, type metadata accessor for Proto_Coefficients, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25761A200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25761A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

uint64_t sub_25761A48C()
{
  result = type metadata accessor for Proto_LinearKernel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_RBFKernel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_PolyKernel(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_SigmoidKernel(319);
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

void sub_25761A570()
{
  sub_2574B0924(319, &qword_27F87B178);
  if (v0 <= 0x3F)
  {
    sub_25761A200(319, &qword_2815376A8, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25761A200(319, &qword_27F87FE10, type metadata accessor for Proto_Coefficients, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2574B0924(319, &qword_27F87A678);
        if (v3 <= 0x3F)
        {
          sub_25761A200(319, &qword_281537690, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2577431B4();
            if (v5 <= 0x3F)
            {
              sub_25761A200(319, &qword_281537FA8, type metadata accessor for Proto_Kernel, MEMORY[0x277D83D88]);
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

void sub_25761A7B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_25761A200(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_2577431B4();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_97_0();
    }
  }
}

uint64_t sub_25761A81C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Proto_SupportVectorRegressor(0);
  *(a1 + v6[5]) = 0;
  v7 = a1 + v6[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = v6[7];
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v6[8];
  type metadata accessor for Proto_Coefficients(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_25761A8C0@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v4 = OUTLINED_FUNCTION_95_0(v3);
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(v4);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(a1 + v3[6]) = v2;
  *(a1 + v3[7]) = v2;
  *(a1 + v3[8]) = v2;
  *(a1 + v3[9]) = v2;
  v9 = v3[10];
  type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = a1 + v3[11];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v15 = v3[12];
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_25761A988@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Proto_RBFKernel(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25761A9C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Proto_PolyKernel(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25761A9FC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_SigmoidKernel(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25761AA34()
{
  OUTLINED_FUNCTION_31();
  v76 = v3;
  v77 = v4;
  v72 = type metadata accessor for Proto_SigmoidKernel(0);
  v5 = OUTLINED_FUNCTION_4(v72);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v75 = (v9 - v8);
  v10 = OUTLINED_FUNCTION_153();
  v71 = type metadata accessor for Proto_PolyKernel(v10);
  v11 = OUTLINED_FUNCTION_4(v71);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v74 = v15 - v14;
  v16 = OUTLINED_FUNCTION_153();
  v73 = type metadata accessor for Proto_RBFKernel(v16);
  v17 = OUTLINED_FUNCTION_4(v73);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_14();
  v21 = type metadata accessor for Proto_LinearKernel(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_6();
  v25 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v70 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v70 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = &v70 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880060, &qword_25776A188);
  OUTLINED_FUNCTION_13(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_40_2();
  v45 = *(v44 + 56);
  sub_257626AB8();
  sub_257626AB8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_10();
      sub_257626AB8();
      if (OUTLINED_FUNCTION_84_3() != 1)
      {
        OUTLINED_FUNCTION_4_12();
        v47 = v37;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_121_0();
      sub_257626A64();
      if (*v37 == *v2)
      {
        v60 = *(v73 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v61, v62);
        OUTLINED_FUNCTION_50_1();
      }

      OUTLINED_FUNCTION_4_12();
      sub_257626A0C(v2, v63);
      OUTLINED_FUNCTION_4_12();
      v54 = v37;
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_11_10();
      sub_257626AB8();
      if (OUTLINED_FUNCTION_84_3() != 2)
      {
        OUTLINED_FUNCTION_6_16();
        v47 = v34;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_121_0();
      v48 = v74;
      sub_257626A64();
      if (*v34 == *v48 && v34[1] == *(v48 + 8) && v34[2] == *(v48 + 16))
      {
        v49 = *(v71 + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v50, v51);
        sub_257743644();
        OUTLINED_FUNCTION_6_16();
        sub_257626A0C(v48, v52);
      }

      else
      {
        OUTLINED_FUNCTION_6_16();
        sub_257626A0C(v48, v64);
      }

      OUTLINED_FUNCTION_6_16();
      v54 = v34;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_11_10();
      sub_257626AB8();
      if (OUTLINED_FUNCTION_84_3() != 3)
      {
        OUTLINED_FUNCTION_5_18();
        v47 = v31;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_121_0();
      v55 = v75;
      sub_257626A64();
      if (*v31 == *v55 && v31[1] == v55[1])
      {
        v56 = *(v72 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v57, v58);
        sub_257743644();
        OUTLINED_FUNCTION_5_18();
        sub_257626A0C(v55, v59);
      }

      else
      {
        OUTLINED_FUNCTION_5_18();
        sub_257626A0C(v55, v68);
      }

      OUTLINED_FUNCTION_5_18();
      v54 = v31;
LABEL_26:
      sub_257626A0C(v54, v53);
      OUTLINED_FUNCTION_3_19();
      sub_257626A0C(v0, v69);
      break;
    default:
      OUTLINED_FUNCTION_11_10();
      sub_257626AB8();
      if (OUTLINED_FUNCTION_84_3())
      {
        v46 = type metadata accessor for Proto_LinearKernel;
        v47 = v39;
LABEL_21:
        sub_257626A0C(v47, v46);
        sub_2574695E4(v0, &qword_27F880060, &qword_25776A188);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        sub_257626A64();
        sub_2577431B4();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v65, v66);
        sub_257743644();
        sub_257626A0C(v1, type metadata accessor for Proto_LinearKernel);
        sub_257626A0C(v39, type metadata accessor for Proto_LinearKernel);
        OUTLINED_FUNCTION_3_19();
        sub_257626A0C(v0, v67);
      }

      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_25761B04C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = a1 + *(type metadata accessor for Proto_Kernel(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25761B098@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Proto_SparseNode(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25761B0D4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_25761B11C()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_333_0();
  v42 = type metadata accessor for Proto_DenseSupportVectors(v5);
  v6 = OUTLINED_FUNCTION_4(v42);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v41 = type metadata accessor for Proto_SparseSupportVectors(0);
  v9 = OUTLINED_FUNCTION_4(v41);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_14();
  v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_106_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880048, &qword_25776A170);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_2();
  v23 = *(v22 + 56);
  sub_257626AB8();
  OUTLINED_FUNCTION_75_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_41_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() == 1)
    {
      OUTLINED_FUNCTION_48_2();
      v24 = *v2;
      v25 = *v1;
      sub_25747B378();
      if (v26)
      {
        OUTLINED_FUNCTION_371_0();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v27, v28);
        OUTLINED_FUNCTION_185_0();
      }

      OUTLINED_FUNCTION_2_19();
      sub_257626A0C(v1, v29);
      OUTLINED_FUNCTION_2_19();
      v31 = v2;
LABEL_14:
      sub_257626A0C(v31, v30);
      OUTLINED_FUNCTION_12_12();
      sub_257626A0C(v0, v40);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_2_19();
    v33 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_41_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() != 1)
    {
      OUTLINED_FUNCTION_47_3();
      v34 = *v3;
      v35 = *v4;
      sub_25747B1CC();
      if (v36)
      {
        OUTLINED_FUNCTION_72_1();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v37, v38);
        OUTLINED_FUNCTION_50_1();
      }

      OUTLINED_FUNCTION_1_20();
      sub_257626A0C(v4, v39);
      OUTLINED_FUNCTION_1_20();
      v31 = v3;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_20();
    v33 = v3;
  }

  sub_257626A0C(v33, v32);
  sub_2574695E4(v0, &qword_27F880048, &qword_25776A170);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

void sub_25761B400()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_333_0();
  v42 = type metadata accessor for Proto_DenseSupportVectors(v5);
  v6 = OUTLINED_FUNCTION_4(v42);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v41 = type metadata accessor for Proto_SparseSupportVectors(0);
  v9 = OUTLINED_FUNCTION_4(v41);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_14();
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_106_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880058, &qword_25776A180);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_2();
  v23 = *(v22 + 56);
  sub_257626AB8();
  OUTLINED_FUNCTION_75_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_40_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() == 1)
    {
      OUTLINED_FUNCTION_48_2();
      v24 = *v2;
      v25 = *v1;
      sub_25747B378();
      if (v26)
      {
        OUTLINED_FUNCTION_371_0();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v27, v28);
        OUTLINED_FUNCTION_185_0();
      }

      OUTLINED_FUNCTION_2_19();
      sub_257626A0C(v1, v29);
      OUTLINED_FUNCTION_2_19();
      v31 = v2;
LABEL_14:
      sub_257626A0C(v31, v30);
      OUTLINED_FUNCTION_14_4();
      sub_257626A0C(v0, v40);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_2_19();
    v33 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() != 1)
    {
      OUTLINED_FUNCTION_47_3();
      v34 = *v3;
      v35 = *v4;
      sub_25747B1CC();
      if (v36)
      {
        OUTLINED_FUNCTION_72_1();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v37, v38);
        OUTLINED_FUNCTION_50_1();
      }

      OUTLINED_FUNCTION_1_20();
      sub_257626A0C(v4, v39);
      OUTLINED_FUNCTION_1_20();
      v31 = v3;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_1_20();
    v33 = v3;
  }

  sub_257626A0C(v33, v32);
  sub_2574695E4(v0, &qword_27F880058, &qword_25776A180);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

void sub_25761B6E0()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_333_0();
  v36 = type metadata accessor for Proto_Int64Vector(v5);
  v6 = OUTLINED_FUNCTION_4(v36);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v35 = type metadata accessor for Proto_StringVector(0);
  v9 = OUTLINED_FUNCTION_4(v35);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_14();
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_106_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880050, &qword_25776A178);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_2();
  v23 = *(v22 + 56);
  sub_257626AB8();
  OUTLINED_FUNCTION_75_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_42_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() == 1)
    {
      sub_257626A64();
      if (sub_257487374(*v2, *v1))
      {
        OUTLINED_FUNCTION_371_0();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v24, v25);
        OUTLINED_FUNCTION_185_0();
      }

      OUTLINED_FUNCTION_8_8();
      sub_257626A0C(v1, v26);
      OUTLINED_FUNCTION_8_8();
      v28 = v2;
LABEL_14:
      sub_257626A0C(v28, v27);
      OUTLINED_FUNCTION_13_5();
      sub_257626A0C(v0, v34);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_8_8();
    v30 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_42_5();
    sub_257626AB8();
    if (OUTLINED_FUNCTION_367_0() != 1)
    {
      sub_257626A64();
      if (sub_257479C78(*v3, *v4))
      {
        OUTLINED_FUNCTION_72_1();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v31, v32);
        OUTLINED_FUNCTION_50_1();
      }

      OUTLINED_FUNCTION_7_11();
      sub_257626A0C(v4, v33);
      OUTLINED_FUNCTION_7_11();
      v28 = v3;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_7_11();
    v30 = v3;
  }

  sub_257626A0C(v30, v29);
  sub_2574695E4(v0, &qword_27F880050, &qword_25776A178);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25761BA00()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA110);
  __swift_project_value_buffer(v0, qword_27F8EA110);
  return sub_2577435A4();
}

uint64_t sub_25761BA4C()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v0, v1);
  OUTLINED_FUNCTION_55_0();
  return sub_257743644() & 1;
}

uint64_t sub_25761BAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880008, type metadata accessor for Proto_LinearKernel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761BB74(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FF18, type metadata accessor for Proto_LinearKernel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761BC3C()
{
  sub_257625BB4(&qword_27F87FF18, type metadata accessor for Proto_LinearKernel);

  return sub_257743424();
}

uint64_t sub_25761BCD4()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (result = OUTLINED_FUNCTION_29_4(), !v1))
  {
    v3 = *(type metadata accessor for Proto_RBFKernel(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25761BD38(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_RBFKernel(v2);
  OUTLINED_FUNCTION_95_0(v3);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v4, v5);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25761BE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880010, type metadata accessor for Proto_RBFKernel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761BEC0(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FF08, type metadata accessor for Proto_RBFKernel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761BF88()
{
  sub_257625BB4(&qword_27F87FF08, type metadata accessor for Proto_RBFKernel);

  return sub_257743424();
}

uint64_t sub_25761C008()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA140);
  __swift_project_value_buffer(v0, qword_27F8EA140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "degree";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "c";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gamma";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25761C210()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743304();
    }
  }

  return result;
}

uint64_t sub_25761C28C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_8_6(), result = sub_2577434F4(), !v1))
  {
    if (!*(v2 + 8) || (result = OUTLINED_FUNCTION_29_4(), !v1))
    {
      if (!*(v2 + 16) || (result = OUTLINED_FUNCTION_29_4(), !v1))
      {
        v4 = *(type metadata accessor for Proto_PolyKernel(0) + 28);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_25761C324(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_34_3(a1, a2);
  if (!v4 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_PolyKernel(0) + 28);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25761C40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880018, type metadata accessor for Proto_PolyKernel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761C4AC(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FEF8, type metadata accessor for Proto_PolyKernel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761C574()
{
  sub_257625BB4(&qword_27F87FEF8, type metadata accessor for Proto_PolyKernel);

  return sub_257743424();
}

uint64_t sub_25761C614()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }
  }

  return result;
}

uint64_t sub_25761C674()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (result = OUTLINED_FUNCTION_29_4(), !v1))
  {
    if (!*(v2 + 8) || (result = OUTLINED_FUNCTION_29_4(), !v1))
    {
      v4 = *(type metadata accessor for Proto_SigmoidKernel(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25761C6F4(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_34_3(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_SigmoidKernel(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v4, v5);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25761C7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880020, type metadata accessor for Proto_SigmoidKernel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761C86C(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FEE8, type metadata accessor for Proto_SigmoidKernel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761C934()
{
  sub_257625BB4(&qword_27F87FEE8, type metadata accessor for Proto_SigmoidKernel);

  return sub_257743424();
}

uint64_t sub_25761C9B4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA170);
  __swift_project_value_buffer(v0, qword_27F8EA170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "linearKernel";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rbfKernel";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "polyKernel";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sigmoidKernel";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25761CBF8()
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
      case 1:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_25761CC98(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_25761D190(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_25761D688(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_25761DB80(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_25761CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_LinearKernel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFE8, &qword_25776A150);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FE18, &qword_257768E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257626A0C(v17, type metadata accessor for Proto_Kernel.OneOf_Kernel);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87FFE8, &qword_25776A150);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_257625BB4(&qword_27F87FF18, type metadata accessor for Proto_LinearKernel);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFE8, &qword_25776A150);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFE8, &qword_25776A150);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFE8, &qword_25776A150);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFE8, &qword_25776A150);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87FFE8, &qword_25776A150);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FE18, &qword_257768E40);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25761D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_RBFKernel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFF0, &qword_25776A158);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FE18, &qword_257768E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87FFF0, &qword_25776A158);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_Kernel.OneOf_Kernel);
    }
  }

  sub_257625BB4(&qword_27F87FF08, type metadata accessor for Proto_RBFKernel);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFF0, &qword_25776A158);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFF0, &qword_25776A158);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFF0, &qword_25776A158);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFF0, &qword_25776A158);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87FFF0, &qword_25776A158);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FE18, &qword_257768E40);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25761D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_PolyKernel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFF8, &qword_25776A160);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FE18, &qword_257768E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v24, &qword_27F87FFF8, &qword_25776A160);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_Kernel.OneOf_Kernel);
    }
  }

  sub_257625BB4(&qword_27F87FEF8, type metadata accessor for Proto_PolyKernel);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFF8, &qword_25776A160);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFF8, &qword_25776A160);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFF8, &qword_25776A160);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFF8, &qword_25776A160);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87FFF8, &qword_25776A160);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FE18, &qword_257768E40);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25761DB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_SigmoidKernel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880000, &qword_25776A168);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FE18, &qword_257768E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v24, &qword_27F880000, &qword_25776A168);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_Kernel.OneOf_Kernel);
    }
  }

  sub_257625BB4(&qword_27F87FEE8, type metadata accessor for Proto_SigmoidKernel);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F880000, &qword_25776A168);
  }

  sub_2574AD5D8(v24, v22, &qword_27F880000, &qword_25776A168);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F880000, &qword_25776A168);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F880000, &qword_25776A168);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F880000, &qword_25776A168);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FE18, &qword_257768E40);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25761E078()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  sub_2574AD5D8(v0, &v30 - v6, &qword_27F87FE18, &qword_257768E40);
  type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  OUTLINED_FUNCTION_91_0();
  if (__swift_getEnumTagSinglePayload(v8, v9, v10) == 1)
  {
    goto LABEL_8;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = OUTLINED_FUNCTION_5_10();
      sub_25761E3E8(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = OUTLINED_FUNCTION_5_10();
      sub_25761E5FC(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = OUTLINED_FUNCTION_5_10();
      sub_25761E810(v19, v20, v21, v22);
      break;
    default:
      v11 = OUTLINED_FUNCTION_5_10();
      sub_25761E1D8(v11, v12, v13, v14);
      break;
  }

  OUTLINED_FUNCTION_3_19();
  result = sub_257626A0C(v7, v27);
  if (!v1)
  {
LABEL_8:
    v29 = v0 + *(type metadata accessor for Proto_Kernel(0) + 20);
    OUTLINED_FUNCTION_10_7();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25761E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_LinearKernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FE18, &qword_257768E40);
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FF18, type metadata accessor for Proto_LinearKernel);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_LinearKernel);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  }

  __break(1u);
  return result;
}

uint64_t sub_25761E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_RBFKernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FE18, &qword_257768E40);
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FF08, type metadata accessor for Proto_RBFKernel);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_RBFKernel);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  }

  __break(1u);
  return result;
}

uint64_t sub_25761E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_PolyKernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FE18, &qword_257768E40);
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FEF8, type metadata accessor for Proto_PolyKernel);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_PolyKernel);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  }

  __break(1u);
  return result;
}

uint64_t sub_25761E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_SigmoidKernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FE18, &qword_257768E40);
  v13 = type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE18, &qword_257768E40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FEE8, type metadata accessor for Proto_SigmoidKernel);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_SigmoidKernel);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification19SupportVectorKernelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_0_0();
  v26 = type metadata accessor for Proto_Kernel.OneOf_Kernel(v25);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_6();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE18, &qword_257768E40);
  OUTLINED_FUNCTION_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880068, &qword_25776A190);
  OUTLINED_FUNCTION_13(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &a9 - v41;
  v43 = *(v40 + 56);
  sub_2574AD5D8(v21, &a9 - v41, &qword_27F87FE18, &qword_257768E40);
  sub_2574AD5D8(v20, &v42[v43], &qword_27F87FE18, &qword_257768E40);
  OUTLINED_FUNCTION_155(v42, 1, v26);
  if (v44)
  {
    OUTLINED_FUNCTION_155(&v42[v43], 1, v26);
    if (v44)
    {
      sub_2574695E4(v42, &qword_27F87FE18, &qword_257768E40);
LABEL_12:
      v48 = type metadata accessor for Proto_Kernel(0);
      OUTLINED_FUNCTION_95_0(v48);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_31();
      sub_257625BB4(v49, v50);
      OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }

LABEL_9:
    sub_2574695E4(v42, &qword_27F880068, &qword_25776A190);
    goto LABEL_13;
  }

  sub_2574AD5D8(v42, v35, &qword_27F87FE18, &qword_257768E40);
  OUTLINED_FUNCTION_155(&v42[v43], 1, v26);
  if (v44)
  {
    OUTLINED_FUNCTION_3_19();
    sub_257626A0C(v35, v45);
    goto LABEL_9;
  }

  sub_257626A64();
  sub_25761AA34();
  v47 = v46;
  sub_257626A0C(v22, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  sub_257626A0C(v35, type metadata accessor for Proto_Kernel.OneOf_Kernel);
  sub_2574695E4(v42, &qword_27F87FE18, &qword_257768E40);
  if (v47)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25761ECF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F87FFE0, type metadata accessor for Proto_Kernel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761ED90(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761EE58()
{
  sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);

  return sub_257743424();
}

uint64_t sub_25761EEF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2577435B4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40);
  OUTLINED_FUNCTION_89_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257743FF0;
  v14 = (v13 + v12);
  v15 = v13 + v12 + *(v7 + 56);
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x277D21870];
  v17 = sub_257743584();
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v10 + *(v7 + 56);
  *(v14 + v10) = 2;
  *v20 = a4;
  *(v20 + 1) = a5;
  v20[16] = 2;
  v19();
  return sub_257743594();
}

uint64_t sub_25761F0A0()
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
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743304();
    }
  }

  return result;
}

uint64_t sub_25761F10C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*v0 || (OUTLINED_FUNCTION_8_6(), result = sub_2577434F4(), !v1))
  {
    if (!*(v2 + 8) || (result = OUTLINED_FUNCTION_29_4(), !v1))
    {
      v4 = *(type metadata accessor for Proto_SparseNode(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25761F188(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_34_3(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_SparseNode(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v4, v5);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25761F260(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880038, type metadata accessor for Proto_SparseNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761F300(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FEC0, type metadata accessor for Proto_SparseNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761F3C8()
{
  sub_257625BB4(&qword_27F87FEC0, type metadata accessor for Proto_SparseNode);

  return sub_257743424();
}

uint64_t sub_25761F460()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_SparseNode(0), sub_257625BB4(&qword_27F87FEC0, type metadata accessor for Proto_SparseNode), result = OUTLINED_FUNCTION_25_2(), !v1))
  {
    v3 = *(type metadata accessor for Proto_SparseVector(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25761F5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880030, type metadata accessor for Proto_SparseVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761F664(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FEA8, type metadata accessor for Proto_SparseVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761F72C()
{
  sub_257625BB4(&qword_27F87FEA8, type metadata accessor for Proto_SparseVector);

  return sub_257743424();
}

uint64_t sub_25761F804(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_257743234();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25761FEE4(a1, v11, a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_25761F89C()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_SparseVector(0), sub_257625BB4(&qword_27F87FEA8, type metadata accessor for Proto_SparseVector), result = OUTLINED_FUNCTION_25_2(), !v1))
  {
    v3 = *(type metadata accessor for Proto_SparseSupportVectors(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25761FA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880028, type metadata accessor for Proto_SparseSupportVectors);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761FAA0(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761FB68()
{
  sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);

  return sub_257743424();
}

uint64_t sub_25761FCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F87FFD8, type metadata accessor for Proto_DenseVector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25761FD54(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FE78, type metadata accessor for Proto_DenseVector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25761FE1C()
{
  sub_257625BB4(&qword_27F87FE78, type metadata accessor for Proto_DenseVector);

  return sub_257743424();
}

uint64_t sub_25761FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_257625BB4(a6, a7);
  return sub_2577433C4();
}

uint64_t sub_25761FF80()
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_DenseVector(0), sub_257625BB4(&qword_27F87FE78, type metadata accessor for Proto_DenseVector), result = OUTLINED_FUNCTION_25_2(), !v1))
  {
    v3 = *(type metadata accessor for Proto_DenseSupportVectors(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2576200E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F87FFD0, type metadata accessor for Proto_DenseSupportVectors);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257620184(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762024C()
{
  sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);

  return sub_257743424();
}

uint64_t sub_257620324(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_257743234();
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

uint64_t sub_257620398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*(*v4 + 16) || (OUTLINED_FUNCTION_8_6(), result = sub_257743494(), !v5))
  {
    v8 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25762040C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a4(0);
  OUTLINED_FUNCTION_95_0(v5);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_31();
  sub_257625BB4(v6, v7);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257620510(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F880040, type metadata accessor for Proto_Coefficients);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576205B0(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257620678()
{
  sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);

  return sub_257743424();
}

uint64_t sub_257620728()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA218);
  __swift_project_value_buffer(v0, qword_27F8EA218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kernel";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sparseSupportVectors";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "denseSupportVectors";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "coefficients";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rho";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576209A8()
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
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_257620A58();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_257620B0C(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_257621004(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_6_8();
        sub_2576214FC();
        break;
      case 5:
        OUTLINED_FUNCTION_6_8();
        sub_2576215B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_257620A58()
{
  v0 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 28);
  type metadata accessor for Proto_Kernel(0);
  sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);
  return sub_2577433D4();
}

uint64_t sub_257620B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_SparseSupportVectors(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFB8, &qword_25776A140);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FDD8, &qword_25776E390);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FDD8, &qword_25776E390);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFB8, &qword_25776A140);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFB8, &qword_25776A140);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFB8, &qword_25776A140);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FDD8, &qword_25776E390);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_257621004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_DenseSupportVectors(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFC0, &qword_25776A148);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574AD5D8(a1, v12, &qword_27F87FDD8, &qword_25776E390);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FDD8, &qword_25776E390);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
    }
  }

  sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFC0, &qword_25776A148);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFC0, &qword_25776A148);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFC0, &qword_25776A148);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87FDD8, &qword_25776E390);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2576214FC()
{
  v0 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 32);
  type metadata accessor for Proto_Coefficients(0);
  sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);
  return sub_2577433D4();
}

uint64_t sub_257621614()
{
  OUTLINED_FUNCTION_70_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_66_1();
  v7 = OUTLINED_FUNCTION_9_9();
  result = sub_257621770(v7, v8, v9, v10);
  if (!v1)
  {
    sub_2574AD5D8(v2, v0, &qword_27F87FDD8, &qword_25776E390);
    type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
    OUTLINED_FUNCTION_91_0();
    if (__swift_getEnumTagSinglePayload(v12, v13, v14) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = OUTLINED_FUNCTION_9_9();
        sub_257621B64(v15, v16, v17, v18);
      }

      else
      {
        v19 = OUTLINED_FUNCTION_9_9();
        sub_257621950(v19, v20, v21, v22);
      }

      OUTLINED_FUNCTION_12_12();
      sub_257626A0C(v0, v23);
    }

    v24 = OUTLINED_FUNCTION_9_9();
    sub_257621D78(v24, v25, v26, v27);
    v28 = type metadata accessor for Proto_SupportVectorRegressor(0);
    if (*(v2 + *(v28 + 20)))
    {
      sub_257743524();
    }

    v29 = *(v28 + 24);
    return OUTLINED_FUNCTION_76_2();
  }

  return result;
}

uint64_t sub_257621770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Kernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorRegressor(0);
  sub_2574AD5D8(a1 + *(v13 + 28), v8, &qword_27F87FDE0, &unk_257768D60);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FDE0, &unk_257768D60);
  }

  sub_257626A64();
  sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);
  sub_257743574();
  return sub_257626A0C(v12, type metadata accessor for Proto_Kernel);
}

uint64_t sub_257621950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_SparseSupportVectors(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FDD8, &qword_25776E390);
  v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FDD8, &qword_25776E390);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_SparseSupportVectors);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
  }

  __break(1u);
  return result;
}

uint64_t sub_257621B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_DenseSupportVectors(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574AD5D8(a1, v8, &qword_27F87FDD8, &qword_25776E390);
  v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FDD8, &qword_25776E390);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_DenseSupportVectors);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
  }

  __break(1u);
  return result;
}

uint64_t sub_257621D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Coefficients(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorRegressor(0);
  sub_2574AD5D8(a1 + *(v13 + 32), v8, &qword_27F87FDE8, &qword_25776E3A0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FDE8, &qword_25776E3A0);
  }

  sub_257626A64();
  sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);
  sub_257743574();
  return sub_257626A0C(v12, type metadata accessor for Proto_Coefficients);
}

void _s20MLModelSpecification35SupportVectorRegressorConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v106 = type metadata accessor for Proto_Coefficients(0);
  v6 = OUTLINED_FUNCTION_4(v106);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v102 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_198();
  v103 = v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880088, &qword_25776A1B0);
  OUTLINED_FUNCTION_4(v105);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_198();
  v107 = v19;
  v20 = OUTLINED_FUNCTION_153();
  v111 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(v20);
  v21 = OUTLINED_FUNCTION_4(v111);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v104 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_198();
  v109 = v30;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880090, &qword_25776A1B8);
  OUTLINED_FUNCTION_4(v110);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_198();
  v112 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for Proto_Kernel(v35);
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_6();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  v45 = &v102 - v44;
  v46 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880080, &qword_25776A1A8) - 8);
  v47 = *(*v46 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_66_1();
  v108 = type metadata accessor for Proto_SupportVectorRegressor(0);
  v49 = v108[7];
  v50 = v46[14];
  v113 = v5;
  sub_2574AD5D8(v5 + v49, v0, &qword_27F87FDE0, &unk_257768D60);
  v51 = v3 + v49;
  v52 = v3;
  sub_2574AD5D8(v51, v0 + v50, &qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v53, v54, v55);
  if (v62)
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_155(v56, v57, v58);
    if (v62)
    {
      sub_2574695E4(v0, &qword_27F87FDE0, &unk_257768D60);
      goto LABEL_11;
    }

LABEL_9:
    v64 = &qword_27F880080;
    v65 = &qword_25776A1A8;
    v66 = v0;
LABEL_33:
    sub_2574695E4(v66, v64, v65);
    goto LABEL_34;
  }

  sub_2574AD5D8(v0, v45, &qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_155(v59, v60, v61);
  if (v62)
  {
    OUTLINED_FUNCTION_46_3();
    sub_257626A0C(v45, v63);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_44_2();
  sub_257626A64();
  _s20MLModelSpecification19SupportVectorKernelV2eeoiySbAC_ACtFZ_0(v45, v1, v67, v68, v69, v70, v71, v72, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v74 = v73;
  OUTLINED_FUNCTION_45_1();
  sub_257626A0C(v1, v75);
  sub_257626A0C(v45, &qword_27F87FDE0);
  sub_2574695E4(v0, &qword_27F87FDE0, &unk_257768D60);
  if ((v74 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_11:
  v76 = *(v110 + 48);
  v77 = v112;
  v78 = v113;
  v79 = OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_42_3(v79, v80);
  OUTLINED_FUNCTION_42_3(v3, v77 + v76);
  OUTLINED_FUNCTION_25_4(v77, 1);
  if (v62)
  {
    OUTLINED_FUNCTION_22_6();
    if (v62)
    {
      sub_2574695E4(v77, &qword_27F87FDD8, &qword_25776E390);
      goto LABEL_21;
    }

LABEL_19:
    v64 = &qword_27F880090;
    v65 = &qword_25776A1B8;
LABEL_32:
    v66 = v77;
    goto LABEL_33;
  }

  v81 = v109;
  sub_2574AD5D8(v77, v109, &qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_22_6();
  if (v82)
  {
    OUTLINED_FUNCTION_12_12();
    sub_257626A0C(v81, v83);
    goto LABEL_19;
  }

  v84 = v104;
  sub_257626A64();
  sub_25761B11C();
  v86 = v85;
  sub_257626A0C(v84, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
  sub_257626A0C(v81, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
  sub_2574695E4(v77, &qword_27F87FDD8, &qword_25776E390);
  if ((v86 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  v87 = v107;
  v88 = v108[8];
  v89 = *(v105 + 48);
  OUTLINED_FUNCTION_42_3(v78 + v88, v107);
  v90 = v52 + v88;
  v77 = v87;
  OUTLINED_FUNCTION_42_3(v90, v87 + v89);
  v91 = v106;
  OUTLINED_FUNCTION_25_4(v87, 1);
  if (!v62)
  {
    v95 = v87;
    v96 = v103;
    sub_2574AD5D8(v95, v103, &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_22_6();
    if (!v97)
    {
      OUTLINED_FUNCTION_83_2();
      v98 = sub_257479D04(*v96, *v89);
      if (v98)
      {
        v99 = *(v91 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_31();
        sub_257625BB4(v100, v101);
        LOBYTE(v99) = sub_257743644();
        sub_257626A0C(v89, type metadata accessor for Proto_Coefficients);
        sub_257626A0C(v96, type metadata accessor for Proto_Coefficients);
        sub_2574695E4(v77, &qword_27F87FDE8, &qword_25776E3A0);
        if ((v99 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }

      sub_257626A0C(v89, type metadata accessor for Proto_Coefficients);
      sub_257626A0C(v96, type metadata accessor for Proto_Coefficients);
      v64 = &qword_27F87FDE8;
      v65 = &qword_25776E3A0;
      goto LABEL_32;
    }

    sub_257626A0C(v96, type metadata accessor for Proto_Coefficients);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_22_6();
  if (!v62)
  {
LABEL_31:
    v64 = &qword_27F880088;
    v65 = &qword_25776A1B0;
    goto LABEL_32;
  }

  sub_2574695E4(v87, &qword_27F87FDE8, &qword_25776E3A0);
LABEL_26:
  if (*(v78 + v108[5]) == *(v52 + v108[5]))
  {
    v92 = v108[6];
    sub_2577431B4();
    OUTLINED_FUNCTION_0_31();
    sub_257625BB4(v93, v94);
    sub_257743644();
  }

LABEL_34:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576226C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F87FFC8, type metadata accessor for Proto_SupportVectorRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257622760(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257622828()
{
  sub_257625BB4(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor);

  return sub_257743424();
}

uint64_t sub_2576228A8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA230);
  __swift_project_value_buffer(v0, qword_27F8EA230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25774B5E0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "kernel";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "numberOfSupportVectorsPerClass";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sparseSupportVectors";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "denseSupportVectors";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "coefficients";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "rho";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "probA";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "probB";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 100;
  *v22 = "stringClassLabels";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 101;
  *v24 = "int64ClassLabels";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257622C5C()
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
        OUTLINED_FUNCTION_6_8();
        sub_257622D70();
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_2577432A4();
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_6_10();
        sub_257622E24(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_6_10();
        sub_257623328(v15, v16, v17, v18);
        break;
      case 5:
        OUTLINED_FUNCTION_6_8();
        sub_25762382C();
        break;
      case 6:
        OUTLINED_FUNCTION_6_8();
        sub_2576238E0();
        break;
      case 7:
        OUTLINED_FUNCTION_6_8();
        sub_257623944();
        break;
      case 8:
        OUTLINED_FUNCTION_6_8();
        sub_2576239A8();
        break;
      default:
        if (result == 100)
        {
          v7 = OUTLINED_FUNCTION_6_10();
          sub_257623A0C(v7, v8, v9, v10);
        }

        else if (result == 101)
        {
          v3 = OUTLINED_FUNCTION_6_10();
          sub_257623F10(v3, v4, v5, v6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_257622D70()
{
  v0 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 48);
  type metadata accessor for Proto_Kernel(0);
  sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);
  return sub_2577433D4();
}

uint64_t sub_257622E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_SparseSupportVectors(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFB8, &qword_25776A140);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FE00, &unk_257768E10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE00, &unk_257768E10);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFB8, &qword_25776A140);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFB8, &qword_25776A140);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFB8, &qword_25776A140);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87FFB8, &qword_25776A140);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FE00, &unk_257768E10);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_257623328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_DenseSupportVectors(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FFC0, &qword_25776A148);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 20);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FE00, &unk_257768E10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE00, &unk_257768E10);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
    }
  }

  sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87FFC0, &qword_25776A148);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87FFC0, &qword_25776A148);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87FFC0, &qword_25776A148);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87FFC0, &qword_25776A148);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FE00, &unk_257768E10);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_25762382C()
{
  v0 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 24);
  type metadata accessor for Proto_Coefficients(0);
  sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);
  return sub_2577433C4();
}

uint64_t sub_257623A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
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
  v31 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 40);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FE08, &qword_25776CCD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE08, &qword_25776CCD0);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_257625BB4(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A878, &unk_257748700);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A878, &unk_257748700);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FE08, &qword_25776CCD0);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_257623F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
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
  v31 = *(type metadata accessor for Proto_SupportVectorClassifier(0) + 40);
  v32 = a1;
  sub_2574AD5D8(a1 + v31, v12, &qword_27F87FE08, &qword_25776CCD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87FE08, &qword_25776CCD0);
  }

  else
  {
    sub_257626A64();
    sub_257626A64();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_257626A64();
      sub_257626A64();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257626A0C(v17, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
    }
  }

  sub_257625BB4(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
  v25 = v36;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_2574AD5D8(v24, v22, &qword_27F87A880, &qword_25774AFD0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87A880, &qword_25774AFD0);
  }

  sub_257626A64();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F87FE08, &qword_25776CCD0);
  sub_257626A64();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_257624414()
{
  OUTLINED_FUNCTION_70_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  result = sub_257624724(v1, v4, v2, v0);
  if (!v5)
  {
    if (*(*v3 + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_257743474();
    }

    v19 = type metadata accessor for Proto_SupportVectorClassifier(0);
    sub_2574AD5D8(v3 + v19[5], v17, &qword_27F87FE00, &unk_257768E10);
    v20 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
    if (__swift_getEnumTagSinglePayload(v17, 1, v20) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = OUTLINED_FUNCTION_9_9();
        sub_257624B24(v21, v22, v23, v24);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_9_9();
        sub_257624904(v25, v26, v27, v28);
      }

      OUTLINED_FUNCTION_14_4();
      sub_257626A0C(v17, v29);
    }

    if (*(*(v3 + v19[6]) + 16))
    {
      type metadata accessor for Proto_Coefficients(0);
      sub_257625BB4(&qword_27F87FE48, type metadata accessor for Proto_Coefficients);
      OUTLINED_FUNCTION_55_0();
      sub_257743564();
    }

    if (*(*(v3 + v19[7]) + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_257743494();
    }

    if (*(*(v3 + v19[8]) + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_257743494();
    }

    if (*(*(v3 + v19[9]) + 16))
    {
      OUTLINED_FUNCTION_28_5();
      sub_257743494();
    }

    sub_2574AD5D8(v3 + v19[10], v11, &qword_27F87FE08, &qword_25776CCD0);
    v30 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v30) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = OUTLINED_FUNCTION_9_9();
        sub_257624F64(v31, v32, v33, v34);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_9_9();
        sub_257624D44(v35, v36, v37, v38);
      }

      OUTLINED_FUNCTION_13_5();
      sub_257626A0C(v11, v39);
    }

    v40 = v19[11];
    return OUTLINED_FUNCTION_76_2();
  }

  return result;
}

uint64_t sub_257624724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_Kernel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 48), v8, &qword_27F87FDE0, &unk_257768D60);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2574695E4(v8, &qword_27F87FDE0, &unk_257768D60);
  }

  sub_257626A64();
  sub_257625BB4(&qword_27F87FED8, type metadata accessor for Proto_Kernel);
  sub_257743574();
  return sub_257626A0C(v12, type metadata accessor for Proto_Kernel);
}

uint64_t sub_257624904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_SparseSupportVectors(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FE00, &unk_257768E10);
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE00, &unk_257768E10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FE90, type metadata accessor for Proto_SparseSupportVectors);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_SparseSupportVectors);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
  }

  __break(1u);
  return result;
}

uint64_t sub_257624B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_DenseSupportVectors(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 20), v8, &qword_27F87FE00, &unk_257768E10);
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE00, &unk_257768E10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87FE60, type metadata accessor for Proto_DenseSupportVectors);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_DenseSupportVectors);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
  }

  __break(1u);
  return result;
}

uint64_t sub_257624D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 40), v8, &qword_27F87FE08, &qword_25776CCD0);
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE08, &qword_25776CCD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_StringVector);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_257624F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SupportVectorClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 40), v8, &qword_27F87FE08, &qword_25776CCD0);
  v14 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87FE08, &qword_25776CCD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257626A64();
      sub_257625BB4(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_257626A0C(v12, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_257626A0C(v8, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification36SupportVectorClassifierConfigurationV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v95 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels(0);
  v6 = OUTLINED_FUNCTION_4(v95);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v92 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_198();
  v93 = v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880070, &qword_25776A198);
  OUTLINED_FUNCTION_4(v94);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_198();
  v96 = v19;
  v20 = OUTLINED_FUNCTION_153();
  v100 = type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors(v20);
  v21 = OUTLINED_FUNCTION_4(v100);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v97 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_198();
  v98 = v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880078, &qword_25776A1A0);
  OUTLINED_FUNCTION_4(v99);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_198();
  v101 = v34;
  v35 = OUTLINED_FUNCTION_153();
  v36 = type metadata accessor for Proto_Kernel(v35);
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_66_1();
  v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880080, &qword_25776A1A8) - 8);
  v48 = *(*v47 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_40_2();
  v102 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v103 = v5;
  v50 = v102[12];
  v51 = v47[14];
  sub_2574AD5D8(v5 + v50, v0, &qword_27F87FDE0, &unk_257768D60);
  sub_2574AD5D8(v3 + v50, v0 + v51, &qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_155(v0, 1, v36);
  if (v56)
  {
    OUTLINED_FUNCTION_155(v0 + v51, 1, v36);
    if (v56)
    {
      sub_2574695E4(v0, &qword_27F87FDE0, &unk_257768D60);
      goto LABEL_12;
    }

LABEL_9:
    v58 = &qword_27F880080;
    v59 = &qword_25776A1A8;
    v60 = v0;
LABEL_10:
    sub_2574695E4(v60, v58, v59);
    goto LABEL_38;
  }

  v52 = OUTLINED_FUNCTION_205();
  sub_2574AD5D8(v52, v53, v54, v55);
  OUTLINED_FUNCTION_155(v0 + v51, 1, v36);
  if (v56)
  {
    OUTLINED_FUNCTION_46_3();
    sub_257626A0C(v1, v57);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_44_2();
  sub_257626A64();
  _s20MLModelSpecification19SupportVectorKernelV2eeoiySbAC_ACtFZ_0(v1, v42, v61, v62, v63, v64, v65, v66, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v5);
  v68 = v67;
  OUTLINED_FUNCTION_45_1();
  sub_257626A0C(v42, v69);
  sub_257626A0C(v1, v36);
  sub_2574695E4(v0, &qword_27F87FDE0, &unk_257768D60);
  if ((v68 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if ((sub_257479BB4(*v103, *v3) & 1) == 0)
  {
    goto LABEL_38;
  }

  v70 = v102[5];
  v71 = *(v99 + 48);
  OUTLINED_FUNCTION_42_3(v103 + v70, v101);
  OUTLINED_FUNCTION_42_3(v3 + v70, v101 + v71);
  OUTLINED_FUNCTION_25_4(v101, 1);
  if (v56)
  {
    OUTLINED_FUNCTION_25_4(v101 + v71, 1);
    if (v56)
    {
      sub_2574695E4(v101, &qword_27F87FE00, &unk_257768E10);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_2574AD5D8(v101, v98, &qword_27F87FE00, &unk_257768E10);
  OUTLINED_FUNCTION_25_4(v101 + v71, 1);
  if (v72)
  {
    OUTLINED_FUNCTION_14_4();
    sub_257626A0C(v98, v73);
LABEL_21:
    v58 = &qword_27F880078;
    v59 = &qword_25776A1A0;
    v60 = v101;
    goto LABEL_10;
  }

  sub_257626A64();
  sub_25761B400();
  v75 = v74;
  sub_257626A0C(v97, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
  sub_257626A0C(v98, type metadata accessor for Proto_SupportVectorClassifier.OneOf_SupportVectors);
  sub_2574695E4(v101, &qword_27F87FE00, &unk_257768E10);
  if ((v75 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  OUTLINED_FUNCTION_78_1(v102[6]);
  sub_25747BC24();
  if ((v76 & 1) == 0)
  {
    goto LABEL_38;
  }

  v77 = OUTLINED_FUNCTION_78_1(v102[7]);
  if ((sub_257479D04(v77, v78) & 1) == 0)
  {
    goto LABEL_38;
  }

  v79 = OUTLINED_FUNCTION_78_1(v102[8]);
  if ((sub_257479D04(v79, v80) & 1) == 0)
  {
    goto LABEL_38;
  }

  v81 = OUTLINED_FUNCTION_78_1(v102[9]);
  if ((sub_257479D04(v81, v82) & 1) == 0)
  {
    goto LABEL_38;
  }

  v83 = v102[10];
  v84 = *(v94 + 48);
  OUTLINED_FUNCTION_42_3(v103 + v83, v96);
  OUTLINED_FUNCTION_42_3(v3 + v83, v96 + v84);
  OUTLINED_FUNCTION_25_4(v96, 1);
  if (v56)
  {
    OUTLINED_FUNCTION_22_6();
    if (v56)
    {
      sub_2574695E4(v96, &qword_27F87FE08, &qword_25776CCD0);
LABEL_37:
      v89 = v102[11];
      sub_2577431B4();
      OUTLINED_FUNCTION_0_31();
      sub_257625BB4(v90, v91);
      sub_257743644();
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  sub_2574AD5D8(v96, v93, &qword_27F87FE08, &qword_25776CCD0);
  OUTLINED_FUNCTION_22_6();
  if (v85)
  {
    OUTLINED_FUNCTION_13_5();
    sub_257626A0C(v93, v86);
LABEL_35:
    v58 = &qword_27F880070;
    v59 = &qword_25776A198;
    v60 = v96;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83_2();
  sub_25761B6E0();
  v88 = v87;
  sub_257626A0C(v84, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
  sub_257626A0C(v93, type metadata accessor for Proto_SupportVectorClassifier.OneOf_ClassLabels);
  sub_2574695E4(v96, &qword_27F87FE08, &qword_25776CCD0);
  if (v88)
  {
    goto LABEL_37;
  }

LABEL_38:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257625864(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_257625BB4(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25762593C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257625BB4(&qword_27F87FFB0, type metadata accessor for Proto_SupportVectorClassifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576259DC(uint64_t a1)
{
  v2 = sub_257625BB4(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257625AA4()
{
  sub_257625BB4(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier);

  return sub_257743424();
}

uint64_t sub_257625BB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257626A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257626A64()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_257626AB8()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_257743524();
}

double OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  v3 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return sub_257626A64();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_257626A64();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D217A0];

  return sub_257620324(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v2 = *(*(v0 - 96) + 20);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_257626AB8();
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_78_1@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_2()
{
  v2 = *(v0 - 176);

  return sub_257626A64();
}

uint64_t OUTLINED_FUNCTION_84_3()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_257626F70()
{
  sub_25762701C();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25762701C()
{
  if (!qword_2815375B8)
  {
    type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2815375B8);
    }
  }
}

uint64_t sub_257627094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257457CF8);
}

uint64_t sub_2576270EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257457D70);
}

uint64_t sub_257627154@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 32);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576271CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800C0, &qword_25776A3B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_2576286A4(a1, &v26 - v16);
  sub_2576286A4(a2, &v17[v18]);
  sub_257628648(v17, v12, type metadata accessor for Proto_StringVector);
  sub_257628648(&v17[v18], v10, type metadata accessor for Proto_StringVector);
  if (sub_257479C78(*v12, *v10))
  {
    v19 = *(v4 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_21();
    sub_257628518(v20, v21);
    v22 = sub_257743644();
    sub_2576285F0(v10, type metadata accessor for Proto_StringVector);
    sub_2576285F0(v12, type metadata accessor for Proto_StringVector);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    sub_2576285F0(v10, type metadata accessor for Proto_StringVector);
    v24 = OUTLINED_FUNCTION_205();
    sub_2576285F0(v24, v25);
  }

  return 0;
}

uint64_t sub_2576273D0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA248);
  __swift_project_value_buffer(v0, qword_27F8EA248);
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

uint64_t sub_257627618(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_2576276D0(v8, v9, a2, a3);
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

uint64_t sub_2576276D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
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
  v29 = *(type metadata accessor for Proto_CoreMLModels_TextClassifier(0) + 28);
  v40 = a1;
  v38 = v29;
  sub_2574AD5D8(a1 + v29, v14, &qword_27F880098, &unk_25776A1C0);
  v39 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v14, &qword_27F880098, &unk_25776A1C0);
  }

  else
  {
    sub_257628648(v14, v21, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
    sub_257628648(v21, v19, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
    sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
    sub_257628648(v19, v10, type metadata accessor for Proto_StringVector);
    sub_257628648(v10, v28, type metadata accessor for Proto_StringVector);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
  }

  sub_257628518(&qword_27F87A748, type metadata accessor for Proto_StringVector);
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
  sub_257628648(v26, v41, type metadata accessor for Proto_StringVector);
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v28, &qword_27F87A878, &unk_257748700);
  v35 = v40;
  v36 = v38;
  sub_2574695E4(v40 + v38, &qword_27F880098, &unk_25776A1C0);
  sub_257628648(v34, v35 + v36, type metadata accessor for Proto_StringVector);
  return __swift_storeEnumTagSinglePayload(v35 + v36, 0, 1, v39);
}

uint64_t sub_257627B88(uint64_t a1, uint64_t a2, uint64_t a3)
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
        result = sub_257627C9C(v3, a1, a2, a3);
        if (!v5)
        {
          v12 = v3 + *(type metadata accessor for Proto_CoreMLModels_TextClassifier(0) + 32);
          OUTLINED_FUNCTION_10_7();
          return sub_257743194();
        }
      }
    }
  }

  return result;
}

uint64_t sub_257627C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_2574AD5D8(a1 + *(v13 + 28), v8, &qword_27F880098, &unk_25776A1C0);
  v14 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    return sub_2574695E4(v8, &qword_27F880098, &unk_25776A1C0);
  }

  sub_257628648(v8, v12, type metadata accessor for Proto_StringVector);
  sub_257628518(&qword_27F87A748, type metadata accessor for Proto_StringVector);
  sub_257743574();
  return sub_2576285F0(v12, type metadata accessor for Proto_StringVector);
}

uint64_t _s20MLModelSpecification27TextClassifierConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880098, &unk_25776A1C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800C8, &qword_25776A3B8);
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

  v31 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v21 = *(v31 + 28);
  v22 = *(v14 + 48);
  sub_2574AD5D8(a1 + v21, v19, &qword_27F880098, &unk_25776A1C0);
  sub_2574AD5D8(a2 + v21, &v19[v22], &qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_65(v19);
  if (v20)
  {
    OUTLINED_FUNCTION_65(&v19[v22]);
    if (v20)
    {
      sub_2574695E4(v19, &qword_27F880098, &unk_25776A1C0);
LABEL_20:
      v27 = *(v31 + 32);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_21();
      sub_257628518(v28, v29);
      v24 = sub_257743644();
      return v24 & 1;
    }

    goto LABEL_16;
  }

  sub_2574AD5D8(v19, v13, &qword_27F880098, &unk_25776A1C0);
  OUTLINED_FUNCTION_65(&v19[v22]);
  if (v23)
  {
    sub_2576285F0(v13, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
LABEL_16:
    sub_2574695E4(v19, &qword_27F8800C8, &qword_25776A3B8);
    goto LABEL_17;
  }

  sub_257628648(&v19[v22], v9, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  v26 = sub_2576271CC(v13, v9);
  sub_2576285F0(v9, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  sub_2576285F0(v13, type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels);
  sub_2574695E4(v19, &qword_27F880098, &unk_25776A1C0);
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_25762819C()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  sub_257628518(&qword_27F8800A8, type metadata accessor for Proto_CoreMLModels_TextClassifier);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257628274(uint64_t a1, uint64_t a2)
{
  v4 = sub_257628518(&qword_27F8800B8, type metadata accessor for Proto_CoreMLModels_TextClassifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576282F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879A30 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257628398(uint64_t a1)
{
  v2 = sub_257628518(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257628408()
{
  sub_257628518(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier);

  return sub_257743424();
}

uint64_t sub_257628518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576285F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257628648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576286A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_TextClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2576287D0()
{
  sub_2576288DC(319, &qword_2815377A8, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      sub_2576288DC(319, &qword_281537780, type metadata accessor for Proto_TreeEnsembleParameters, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2576288DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2576289B8()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2576288DC(319, &qword_281537780, type metadata accessor for Proto_TreeEnsembleParameters, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257628AA4()
{
  sub_2576288DC(319, &qword_27F8800F0, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode, MEMORY[0x277D83940]);
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

void sub_257628BC0()
{
  sub_2576288DC(319, &qword_27F880108, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257628CBC@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_24_8(a1);
  v3 = type metadata accessor for Proto_TreeEnsembleRegressor(v2);
  v4 = v1 + *(v3 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(v3 + 24);
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  v6 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_257628D10@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_24_8(a1);
  v3 = type metadata accessor for Proto_TreeEnsembleClassifier(v2);
  v4 = v3[5];
  v5 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = v1 + v3[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v7 = v3[7];
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  v8 = OUTLINED_FUNCTION_17_4();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_257628DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762E35C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_257628ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762E460();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_257628F34()
{
  result = qword_27F880110;
  if (!qword_27F880110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880110);
  }

  return result;
}

unint64_t sub_257628FC0()
{
  result = qword_27F880128;
  if (!qword_27F880128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880128);
  }

  return result;
}

unint64_t sub_257629018()
{
  result = qword_27F880130;
  if (!qword_27F880130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880130);
  }

  return result;
}

unint64_t sub_2576290A4()
{
  result = qword_27F880148;
  if (!qword_27F880148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880148);
  }

  return result;
}

uint64_t sub_2576290F8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  v1 = a1 + *(type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0) + 56);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762918C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576291D0(uint64_t a1, uint64_t a2)
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
  v17 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v55 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880218, &qword_25776AE88);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v55 - v31;
  v33 = *(v30 + 56);
  sub_25762E4B4(a1, &v55 - v31);
  sub_25762E4B4(a2, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25762E4B4(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E408();
      if (sub_257487374(*v23, *v9))
      {
        v34 = *(v56 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v35, v36);
        v37 = sub_257743644();
        OUTLINED_FUNCTION_2_20();
        sub_25762E3B0(v9, v38);
        if (v37)
        {
          OUTLINED_FUNCTION_2_20();
          v40 = v23;
LABEL_13:
          sub_25762E3B0(v40, v39);
          OUTLINED_FUNCTION_3_20();
          sub_25762E3B0(v32, v48);
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_20();
        sub_25762E3B0(v9, v50);
      }

      OUTLINED_FUNCTION_2_20();
      v52 = v23;
LABEL_18:
      sub_25762E3B0(v52, v51);
      OUTLINED_FUNCTION_3_20();
      sub_25762E3B0(v32, v54);
      return 0;
    }

    OUTLINED_FUNCTION_2_20();
    v42 = v23;
  }

  else
  {
    sub_25762E4B4(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25762E408();
      if (sub_257479C78(*v25, *v16))
      {
        v43 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v44, v45);
        v46 = sub_257743644();
        OUTLINED_FUNCTION_1_22();
        sub_25762E3B0(v16, v47);
        if (v46)
        {
          OUTLINED_FUNCTION_1_22();
          v40 = v25;
          goto LABEL_13;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_22();
        sub_25762E3B0(v16, v53);
      }

      OUTLINED_FUNCTION_1_22();
      v52 = v25;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_22();
    v42 = v25;
  }

  sub_25762E3B0(v42, v41);
  sub_2574695E4(v32, &qword_27F880218, &qword_25776AE88);
  return 0;
}

uint64_t sub_25762956C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA260);
  __swift_project_value_buffer(v0, qword_27F8EA260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NoTransform";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Classification_SoftMax";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Regression_Logistic";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Classification_SoftMaxWithZeroClassReference";
  *(v14 + 1) = 44;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576297D0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA278);
  __swift_project_value_buffer(v0, qword_27F8EA278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nodes";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numPredictionDimensions";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "basePredictionValue";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576299D8()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_10_7();
        sub_257743334();
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_257629A58();
        break;
    }
  }

  return result;
}

uint64_t sub_257629A58()
{
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode);
  return sub_2577433C4();
}

uint64_t sub_257629AF8()
{
  OUTLINED_FUNCTION_8_9();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0), sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_12_8(), result = sub_257743494(), !v1))
      {
        v4 = *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_257629BF4()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2;
  v5 = *v4;
  sub_257481CB8();
  if ((v6 & 1) == 0 || *(v1 + 8) != *(v0 + 8) || (sub_257479D04(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  sub_25762DE04(v8, v9);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257629CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801E0, type metadata accessor for Proto_TreeEnsembleParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257629D88(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257629E50()
{
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);

  return sub_257743424();
}

uint64_t sub_257629ED0()
{
  result = MEMORY[0x259C64E90](0x646F4E656572542ELL, 0xE900000000000065);
  qword_27F8EA290 = 0xD00000000000001CLL;
  *algn_27F8EA298 = 0x80000002577803C0;
  return result;
}

uint64_t sub_257629F40()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2A0);
  __swift_project_value_buffer(v0, qword_27F8EA2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25774B5E0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "treeId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "nodeId";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "nodeBehavior";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "branchFeatureIndex";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "branchFeatureValue";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "trueChildNodeId";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "falseChildNodeId";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "missingValueTracksTrueChild";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "evaluationInfo";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 30;
  *v24 = "relativeHitRate";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_25762A2F0()
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
      case 2:
      case 10:
      case 12:
      case 13:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_25762A3D8();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        continue;
      case 11:
        goto LABEL_6;
      case 14:
        OUTLINED_FUNCTION_10_7();
        sub_257743274();
        break;
      case 20:
        OUTLINED_FUNCTION_6_8();
        sub_25762A440();
        break;
      default:
        if (result == 30)
        {
LABEL_6:
          OUTLINED_FUNCTION_10_7();
          sub_257743374();
        }

        break;
    }
  }
}

uint64_t sub_25762A440()
{
  type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);
  return sub_2577433C4();
}

uint64_t sub_25762A4E0()
{
  v3 = v1;
  OUTLINED_FUNCTION_8_9();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
    {
      if (!*(v2 + 16) || (v6 = *(v2 + 16), v7 = *(v2 + 24), sub_25762E460(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), (v3 = v1) == 0))
      {
        if (!*(v2 + 32) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
        {
          if (!*(v2 + 40) || (v1 = v3, OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
          {
            if (!*(v2 + 48) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
            {
              if (!*(v2 + 56) || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
              {
                if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), (v3 = v1) == 0))
                {
                  if (!*(*(v2 + 72) + 16) || (type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0), sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), (v3 = v1) == 0))
                  {
                    if (!*(v2 + 80) || (OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
                    {
                      v5 = *(type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0) + 56);
                      return OUTLINED_FUNCTION_7_5();
                    }
                  }
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

uint64_t _s20MLModelSpecification12TreeEnsembleV0C4NodeV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v4 + 8) == *(v5 + 8))
    {
      v6 = *(v3 + 16);
      v7 = *(v2 + 16);
      if (*(v2 + 24) == 1)
      {
        switch(v7)
        {
          case 1:
            if (v6 != 1)
            {
              return 0;
            }

            goto LABEL_8;
          case 2:
            if (v6 != 2)
            {
              return 0;
            }

            goto LABEL_8;
          case 3:
            if (v6 != 3)
            {
              return 0;
            }

            goto LABEL_8;
          case 4:
            if (v6 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v6 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v6 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            if (!v6)
            {
              goto LABEL_8;
            }

            return 0;
        }
      }

      if (v6 == v7)
      {
LABEL_8:
        if (*(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40) && *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56) && *(v3 + 64) == *(v2 + 64))
        {
          v8 = *(v3 + 72);
          v9 = *(v2 + 72);
          sub_257481FA8();
          if ((v10 & 1) != 0 && *(v3 + 80) == *(v2 + 80))
          {
            v11 = *(type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0) + 56);
            sub_2577431B4();
            OUTLINED_FUNCTION_0_32();
            sub_25762DE04(v12, v13);
            return OUTLINED_FUNCTION_4_2() & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_25762A8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F880200, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762A96C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762AA34()
{
  sub_25762DE04(&qword_27F880198, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode);

  return sub_257743424();
}

uint64_t sub_25762AAB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2B8);
  __swift_project_value_buffer(v0, qword_27F8EA2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BranchOnValueLessThanEqual";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BranchOnValueLessThan";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BranchOnValueGreaterThanEqual";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BranchOnValueGreaterThan";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "BranchOnValueEqual";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "BranchOnValueNotEqual";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LeafNode";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762ADD0()
{
  if (qword_27F879A48 != -1)
  {
    swift_once();
  }

  v1 = qword_27F8EA290;
  v2 = *algn_27F8EA298;
  swift_bridgeObjectRetain_n();
  MEMORY[0x259C64E90](0x7461756C6176452ELL, 0xEF6F666E496E6F69);

  qword_27F8EA2D0 = v1;
  *algn_27F8EA2D8 = v2;
  return result;
}

uint64_t sub_25762AE80()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2E0);
  __swift_project_value_buffer(v0, qword_27F8EA2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "evaluationIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "evaluationValue";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762B048()
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
      OUTLINED_FUNCTION_10_7();
      sub_257743374();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577433B4();
    }
  }

  return result;
}

uint64_t sub_25762B0B0()
{
  v3 = v1;
  OUTLINED_FUNCTION_8_9();
  if (!*v0 || (OUTLINED_FUNCTION_12_8(), result = sub_257743554(), (v3 = v1) == 0))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_10_7(), result = sub_257743524(), !v3))
    {
      v5 = *(type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25762B140(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  sub_25762DE04(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25762B230(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F880210, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762B2D0(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762B398()
{
  sub_25762DE04(&qword_27F880178, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);

  return sub_257743424();
}

uint64_t sub_25762B418()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA2F8);
  __swift_project_value_buffer(v0, qword_27F8EA2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "treeEnsemble";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "postEvaluationTransform";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "stringClassLabels";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "int64ClassLabels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762B65C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = OUTLINED_FUNCTION_20_2();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 101:
        v7 = OUTLINED_FUNCTION_205();
        sub_25762BCB4(v7, v8, v2, v1);
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_257458400();
        break;
      case 100:
        v5 = OUTLINED_FUNCTION_205();
        sub_25762B7B0(v5, v6, v2, v1);
        break;
      case 1:
        OUTLINED_FUNCTION_6_8();
        sub_25762B6FC();
        break;
    }
  }

  return result;
}

uint64_t sub_25762B6FC()
{
  v0 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 28);
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);
  return sub_2577433D4();
}

uint64_t sub_25762B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
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
  v31 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    sub_25762E408();
    sub_25762E408();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E3B0(v17, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
      sub_25762E408();
      sub_25762E408();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_25762DE04(&qword_27F87A748, type metadata accessor for Proto_StringVector);
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

  sub_25762E408();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A878, &unk_257748700);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F8800E0, &qword_25776A3E8);
  sub_25762E408();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_25762BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for Proto_Int64Vector(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
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
  v31 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  v32 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    sub_25762E408();
    sub_25762E408();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
      sub_25762E408();
      sub_25762E408();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_25762E3B0(v17, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
    }
  }

  sub_25762DE04(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
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

  sub_25762E408();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v34;
  sub_2574695E4(v24, &qword_27F87A880, &qword_25774AFD0);
  v30 = v31;
  v29 = v32;
  sub_2574695E4(v32 + v31, &qword_27F8800E0, &qword_25776A3E8);
  sub_25762E408();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_25762C1B8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  OUTLINED_FUNCTION_18_9();
  result = sub_25762C360(v9, v10, v11, v12);
  if (!v1)
  {
    if (*v0)
    {
      v14 = *(v0 + 8);
      v28 = *v0;
      v29 = v14;
      sub_25762E35C();
      sub_2577434C4();
    }

    v15 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
    v16 = *(v15 + 20);
    sub_257487308();
    v17 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_18_9();
        sub_25762C760(v18, v19, v20, v21);
      }

      else
      {
        OUTLINED_FUNCTION_18_9();
        sub_25762C540(v22, v23, v24, v25);
      }

      OUTLINED_FUNCTION_3_20();
      sub_25762E3B0(v8, v26);
    }

    v27 = v2 + *(v15 + 24);
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25762C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 28);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F8800E8, &unk_25776A3F0);
  }

  sub_25762E408();
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_257743574();
  return sub_25762E3B0(v11, type metadata accessor for Proto_TreeEnsembleParameters);
}

uint64_t sub_25762C540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_StringVector(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  sub_257487308();
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25762E408();
      sub_25762DE04(&qword_27F87A748, type metadata accessor for Proto_StringVector);
      sub_257743574();
      return sub_25762E3B0(v11, type metadata accessor for Proto_StringVector);
    }

    result = sub_25762E3B0(v7, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t sub_25762C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Proto_Int64Vector(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_TreeEnsembleClassifier(0) + 20);
  sub_257487308();
  v13 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F8800E0, &qword_25776A3E8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25762E408();
      sub_25762DE04(&qword_281537E60, type metadata accessor for Proto_Int64Vector);
      sub_257743574();
      return sub_25762E3B0(v11, type metadata accessor for Proto_Int64Vector);
    }

    result = sub_25762E3B0(v7, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  }

  __break(1u);
  return result;
}

uint64_t _s20MLModelSpecification35TreeEnsembleClassifierConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v70 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  v4 = OUTLINED_FUNCTION_4(v70);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v67 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E0, &qword_25776A3E8);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v68 = &v66 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880220, &qword_25776AE90);
  OUTLINED_FUNCTION_4(v69);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v71 = &v66 - v17;
  v18 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = (&v66 - v29);
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880228, &qword_25776AE98) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &v66 - v34;
  v72 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v73 = a1;
  v36 = v72[7];
  v37 = v31[14];
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_42_0(v35);
  if (v40)
  {
    OUTLINED_FUNCTION_42_0(&v35[v37]);
    if (v40)
    {
      sub_2574695E4(v35, &qword_27F8800E8, &unk_25776A3F0);
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  sub_257487308();
  OUTLINED_FUNCTION_42_0(&v35[v37]);
  if (v40)
  {
    OUTLINED_FUNCTION_16_4();
    sub_25762E3B0(v30, v41);
LABEL_13:
    v42 = &qword_27F880228;
    v43 = &qword_25776AE98;
LABEL_20:
    v51 = v35;
LABEL_21:
    sub_2574695E4(v51, v42, v43);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_14_5();
  sub_25762E408();
  v44 = *v30;
  v45 = *v24;
  sub_257481CB8();
  if ((v46 & 1) == 0 || v30[1] != v24[1] || (sub_257479D04(v30[2], v24[2]) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_5();
    sub_25762E3B0(v24, v50);
    sub_25762E3B0(v30, &unk_25776A3F0);
    v42 = &qword_27F8800E8;
    v43 = &unk_25776A3F0;
    goto LABEL_20;
  }

  v47 = *(v18 + 28);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_32();
  sub_25762DE04(v48, v49);
  LOBYTE(v47) = sub_257743644();
  sub_25762E3B0(v24, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_25762E3B0(v30, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_2574695E4(v35, &qword_27F8800E8, &unk_25776A3F0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v38 = *v73;
  v39 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v39)
    {
      case 1:
        if (v38 == 1)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 2:
        if (v38 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 3:
        if (v38 == 3)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      default:
        if (!v38)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
    }
  }

  if (v38 != v39)
  {
    goto LABEL_22;
  }

LABEL_25:
  v54 = v71;
  v55 = v72[5];
  v56 = *(v69 + 48);
  sub_257487308();
  v57 = v54;
  sub_257487308();
  v58 = v70;
  if (__swift_getEnumTagSinglePayload(v54, 1, v70) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v54 + v56, 1, v58) == 1)
    {
      sub_2574695E4(v54, &qword_27F8800E0, &qword_25776A3E8);
LABEL_38:
      v63 = v72[6];
      sub_2577431B4();
      OUTLINED_FUNCTION_0_32();
      sub_25762DE04(v64, v65);
      v52 = sub_257743644();
      return v52 & 1;
    }

    goto LABEL_30;
  }

  v59 = v68;
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v58) == 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_25762E3B0(v59, v60);
LABEL_30:
    v42 = &qword_27F880220;
    v43 = &qword_25776AE90;
    v51 = v57;
    goto LABEL_21;
  }

  v61 = v67;
  sub_25762E408();
  v62 = sub_2576291D0(v59, v61);
  sub_25762E3B0(v61, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  sub_25762E3B0(v59, type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels);
  sub_2574695E4(v57, &qword_27F8800E0, &qword_25776A3E8);
  if (v62)
  {
    goto LABEL_38;
  }

LABEL_22:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_25762CFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801F8, type metadata accessor for Proto_TreeEnsembleClassifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762D05C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762D124()
{
  sub_25762DE04(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier);

  return sub_257743424();
}

uint64_t sub_25762D1A4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA310);
  __swift_project_value_buffer(v0, qword_27F8EA310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "treeEnsemble";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "postEvaluationTransform";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762D36C()
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
      sub_257458400();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_6_8();
      sub_25762D3CC();
    }
  }

  return result;
}

uint64_t sub_25762D3CC()
{
  v0 = *(type metadata accessor for Proto_TreeEnsembleRegressor(0) + 24);
  type metadata accessor for Proto_TreeEnsembleParameters(0);
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);
  return sub_2577433D4();
}

uint64_t sub_25762D480()
{
  OUTLINED_FUNCTION_8_9();
  result = sub_25762D528(v0, v5, v3, v2);
  if (!v1)
  {
    if (*v4)
    {
      v8 = *v4;
      v9 = *(v4 + 8);
      sub_25762E35C();
      OUTLINED_FUNCTION_27_4();
      sub_2577434C4();
    }

    v7 = *(type metadata accessor for Proto_TreeEnsembleRegressor(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_25762D528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Proto_TreeEnsembleRegressor(0) + 24);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F8800E8, &unk_25776A3F0);
  }

  sub_25762E408();
  sub_25762DE04(&qword_27F8801B0, type metadata accessor for Proto_TreeEnsembleParameters);
  sub_257743574();
  return sub_25762E3B0(v11, type metadata accessor for Proto_TreeEnsembleParameters);
}

uint64_t _s20MLModelSpecification34TreeEnsembleRegressorConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8800E8, &unk_25776A3F0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = (&v43 - v15);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880228, &qword_25776AE98) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v44 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v22 = *(v44 + 24);
  v23 = v17[14];
  v46 = a1;
  sub_257487308();
  v45 = a2;
  sub_257487308();
  OUTLINED_FUNCTION_42_0(v21);
  if (!v26)
  {
    sub_257487308();
    OUTLINED_FUNCTION_42_0(&v21[v23]);
    if (!v26)
    {
      OUTLINED_FUNCTION_14_5();
      sub_25762E408();
      v30 = *v16;
      v31 = *v10;
      sub_257481CB8();
      if (v32 & 1) != 0 && v16[1] == v10[1] && (sub_257479D04(v16[2], v10[2]))
      {
        v33 = *(v4 + 28);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_32();
        sub_25762DE04(v34, v35);
        v36 = sub_257743644();
        sub_25762E3B0(v10, type metadata accessor for Proto_TreeEnsembleParameters);
        sub_25762E3B0(v16, type metadata accessor for Proto_TreeEnsembleParameters);
        sub_2574695E4(v21, &qword_27F8800E8, &unk_25776A3F0);
        if ((v36 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_6;
      }

      OUTLINED_FUNCTION_15_5();
      sub_25762E3B0(v10, v37);
      sub_25762E3B0(v16, a1);
      v28 = &qword_27F8800E8;
      v29 = &unk_25776A3F0;
LABEL_20:
      sub_2574695E4(v21, v28, v29);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_16_4();
    sub_25762E3B0(v16, v27);
LABEL_13:
    v28 = &qword_27F880228;
    v29 = &qword_25776AE98;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_42_0(&v21[v23]);
  if (!v26)
  {
    goto LABEL_13;
  }

  sub_2574695E4(v21, &qword_27F8800E8, &unk_25776A3F0);
LABEL_6:
  v24 = *v46;
  v25 = *v45;
  if (*(v45 + 8) == 1)
  {
    switch(v25)
    {
      case 1:
        if (v24 == 1)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      case 2:
        if (v24 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      case 3:
        if (v24 == 3)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      default:
        if (!v24)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
    }
  }

  if (v24 == v25)
  {
LABEL_24:
    v40 = *(v44 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_32();
    sub_25762DE04(v41, v42);
    v38 = sub_257743644();
    return v38 & 1;
  }

LABEL_21:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_25762DAB4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_25762DE04(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25762DB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25762DE04(&qword_27F8801E8, type metadata accessor for Proto_TreeEnsembleRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25762DC2C(uint64_t a1)
{
  v2 = sub_25762DE04(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25762DCF4()
{
  sub_25762DE04(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor);

  return sub_257743424();
}

uint64_t sub_25762DE04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25762E35C()
{
  result = qword_27F8801F0;
  if (!qword_27F8801F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8801F0);
  }

  return result;
}

uint64_t sub_25762E3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25762E408()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

unint64_t sub_25762E460()
{
  result = qword_27F880208;
  if (!qword_27F880208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880208);
  }

  return result;
}

uint64_t sub_25762E4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleClassifier.OneOf_ClassLabels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return 0;
}

void sub_25762E648()
{
  sub_25762E6CC();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25762E6CC()
{
  if (!qword_2815374B8)
  {
    type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2815374B8);
    }
  }
}

uint64_t sub_25762E744()
{
  result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25762E820()
{
  sub_2575068A0();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25762E8EC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25762E978@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762E9C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  v2 = v1 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762E9FC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_101_2(a1);
  *(v1 + 16) = MEMORY[0x277D84F90];
  v2 = v1 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25762EA3C(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  v4 = OUTLINED_FUNCTION_4(v58);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880308, &unk_25776B630);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v57 - v31;
  v33 = *(v30 + 56);
  sub_257631E50(a1, &v57 - v31);
  sub_257631E50(a2, &v32[v33]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257631E50(v32, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631D50();
      v34 = *v23;
      v35 = *v9;
      if (v23[8])
      {
        v34 = *v23 != 0;
      }

      if (*(v9 + 8) == 1)
      {
        if (v35)
        {
          if (v34 != 1)
          {
            goto LABEL_25;
          }
        }

        else if (v34)
        {
LABEL_25:
          OUTLINED_FUNCTION_4_13();
          sub_257631CF8(v9, v55);
          v48 = v23;
          v47 = v33;
          goto LABEL_26;
        }
      }

      else if (v34 != v35)
      {
        goto LABEL_25;
      }

      if ((sub_257479C78(*(v23 + 2), *(v9 + 16)) & 1) == 0)
      {
        goto LABEL_25;
      }

      v49 = *(v58 + 24);
      v33 = sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      sub_2576319E0(v50, v51);
      if ((sub_257743644() & 1) == 0)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_4_13();
      sub_257631CF8(v9, v52);
      v45 = v23;
      v44 = v33;
LABEL_24:
      sub_257631CF8(v45, v44);
      OUTLINED_FUNCTION_2_21();
      sub_257631CF8(v32, v53);
      return 1;
    }

    v36 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects;
    v37 = v23;
  }

  else
  {
    sub_257631E50(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257631D50();
      v38 = *(v16 + 8);
      if (sub_257487360(*v25, v25[8], *v16))
      {
        v39 = *(v10 + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_1_23();
        sub_2576319E0(v40, v41);
        v42 = sub_257743644();
        OUTLINED_FUNCTION_0_33();
        sub_257631CF8(v16, v43);
        if (v42)
        {
          OUTLINED_FUNCTION_0_33();
          v45 = v25;
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_33();
        sub_257631CF8(v16, v46);
      }

      OUTLINED_FUNCTION_0_33();
      v48 = v25;
LABEL_26:
      sub_257631CF8(v48, v47);
      OUTLINED_FUNCTION_2_21();
      sub_257631CF8(v32, v56);
      return 0;
    }

    OUTLINED_FUNCTION_0_33();
    v37 = v25;
  }

  sub_257631CF8(v37, v36);
  sub_2574695E4(v32, &qword_27F880308, &unk_25776B630);
  return 0;
}

uint64_t sub_25762EE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_257631DA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_25762EEE4()
{
  result = qword_27F880230;
  if (!qword_27F880230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880230);
  }

  return result;
}

unint64_t sub_25762EF70()
{
  result = qword_27F880248;
  if (!qword_27F880248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880248);
  }

  return result;
}

uint64_t sub_25762F06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_257631DFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_25762F0C8()
{
  result = qword_27F880250;
  if (!qword_27F880250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880250);
  }

  return result;
}

unint64_t sub_25762F154()
{
  result = qword_27F880268;
  if (!qword_27F880268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880268);
  }

  return result;
}

uint64_t sub_25762F1A8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA328);
  __swift_project_value_buffer(v0, qword_27F8EA328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 20;
  *v6 = "scene";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 21;
  *v10 = "objects";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25762F374()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 21)
    {
      OUTLINED_FUNCTION_205();
      OUTLINED_FUNCTION_11_6();
      sub_25762F8DC(v7, v8, v9, v10);
    }

    else if (result == 20)
    {
      OUTLINED_FUNCTION_205();
      OUTLINED_FUNCTION_11_6();
      sub_25762F3E4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_25762F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8802D0, &qword_25776B618);
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
    sub_2574695E4(v12, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    sub_257631D50();
    sub_257631D50();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631CF8(v17, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
    }

    else
    {
      sub_2574695E4(v24, &qword_27F8802D0, &qword_25776B618);
      sub_257631D50();
      sub_257631D50();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F8802D0, &qword_25776B618);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F8802D0, &qword_25776B618);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F8802D0, &qword_25776B618);
  }

  sub_257631D50();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F8802D0, &qword_25776B618);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A068, &qword_2577449A0);
  sub_257631D50();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25762F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8802D8, &qword_25776B620);
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
    sub_2574695E4(v12, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    sub_257631D50();
    sub_257631D50();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v24, &qword_27F8802D8, &qword_25776B620);
      sub_257631D50();
      sub_257631D50();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_257631CF8(v17, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
    }
  }

  sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F8802D8, &qword_25776B620);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F8802D8, &qword_25776B620);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F8802D8, &qword_25776B620);
  }

  sub_257631D50();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F8802D8, &qword_25776B620);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87A068, &qword_2577449A0);
  sub_257631D50();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_25762FDD4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  sub_257487308();
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_11_6();
    sub_257630128(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_11_6();
    sub_25762FF14(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_2_21();
  result = sub_257631CF8(v7, v17);
  if (!v1)
  {
LABEL_6:
    v19 = v0 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0) + 20);
    return OUTLINED_FUNCTION_37_2();
  }

  return result;
}

uint64_t sub_25762FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257631D50();
      sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);
      sub_257743574();
      return sub_257631CF8(v11, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);
    }

    result = sub_257631CF8(v7, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  }

  __break(1u);
  return result;
}

uint64_t sub_257630128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257487308();
  v12 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A068, &qword_2577449A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257631D50();
      sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);
      sub_257743574();
      return sub_257631CF8(v11, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);
    }

    result = sub_257631CF8(v7, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  }

  __break(1u);
  return result;
}

uint64_t sub_25763033C()
{
  OUTLINED_FUNCTION_267();
  v0 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A068, &qword_2577449A0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880300, &qword_25776B628);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_257487308();
  sub_257487308();
  OUTLINED_FUNCTION_65(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_65(&v19[v20]);
    if (v21)
    {
      sub_2574695E4(v19, &qword_27F87A068, &qword_2577449A0);
LABEL_12:
      v25 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0) + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      sub_2576319E0(v26, v27);
      v23 = OUTLINED_FUNCTION_4_2();
      return v23 & 1;
    }

    goto LABEL_9;
  }

  sub_257487308();
  OUTLINED_FUNCTION_65(&v19[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_2_21();
    sub_257631CF8(v12, v22);
LABEL_9:
    sub_2574695E4(v19, &qword_27F880300, &qword_25776B628);
    goto LABEL_10;
  }

  sub_257631D50();
  v24 = sub_25762EA3C(v12, v6);
  sub_257631CF8(v6, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  sub_257631CF8(v12, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType);
  sub_2574695E4(v19, &qword_27F87A068, &qword_2577449A0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_25763060C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802C8, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2576306AC(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257630774()
{
  sub_2576319E0(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);

  return sub_257743424();
}

uint64_t sub_257630814()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA350);
  __swift_project_value_buffer(v0, qword_27F8EA350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_257743594();
}

uint64_t sub_257630980()
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
      OUTLINED_FUNCTION_11_6();
      sub_2576309D8();
    }
  }

  return result;
}

uint64_t sub_257630A40()
{
  OUTLINED_FUNCTION_8_10();
  if (!v2 || (v5 = *(v1 + 8), sub_257631DA8(), result = OUTLINED_FUNCTION_10_15(), !v0))
  {
    v4 = v1 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
    return OUTLINED_FUNCTION_37_2();
  }

  return result;
}

uint64_t sub_257630AC4()
{
  OUTLINED_FUNCTION_267();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene(0) + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_23();
      sub_2576319E0(v5, v6);
      return OUTLINED_FUNCTION_4_2() & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_257630BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802E0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257630C78(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257630D40()
{
  sub_2576319E0(&qword_27F880280, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Scene);

  return sub_257743424();
}

uint64_t sub_257630DC0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA368);
  __swift_project_value_buffer(v0, qword_27F8EA368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SCENE_VERSION_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCENE_VERSION_1";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SCENE_VERSION_2";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257631008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x259C64E90](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x8000000257780680;
  return result;
}

uint64_t sub_257631074()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA390);
  __swift_project_value_buffer(v0, qword_27F8EA390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "output";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257631240()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      sub_257743344();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_11_6();
      sub_2576312B8();
    }
  }

  return result;
}

uint64_t sub_257631320()
{
  OUTLINED_FUNCTION_8_10();
  if (!v3 || (v6 = *(v2 + 8), sub_257631DFC(), result = OUTLINED_FUNCTION_10_15(), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_11_6(), result = sub_257743514(), !v0))
    {
      v5 = v2 + *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
      return OUTLINED_FUNCTION_37_2();
    }
  }

  return result;
}

uint64_t sub_2576313CC()
{
  OUTLINED_FUNCTION_267();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_257479C78(*(v1 + 16), *(v0 + 16)))
  {
    v6 = *(type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_23();
    sub_2576319E0(v7, v8);
    return OUTLINED_FUNCTION_4_2() & 1;
  }

  return 0;
}

uint64_t sub_257631498(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2576319E0(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25763157C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2576319E0(&qword_27F8802F0, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25763161C(uint64_t a1)
{
  v2 = sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2576316E4()
{
  sub_2576319E0(&qword_27F880270, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.Objects);

  return sub_257743424();
}

uint64_t sub_257631764()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3A8);
  __swift_project_value_buffer(v0, qword_27F8EA3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OBJECTS_VERSION_INVALID";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OBJECTS_VERSION_1";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576319E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257631CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_257631D50()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

unint64_t sub_257631DA8()
{
  result = qword_27F8802E8;
  if (!qword_27F8802E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8802E8);
  }

  return result;
}

unint64_t sub_257631DFC()
{
  result = qword_27F8802F8;
  if (!qword_27F8802F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8802F8);
  }

  return result;
}

uint64_t sub_257631E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_15()
{

  return sub_2577434C4();
}

uint64_t type metadata accessor for Proto_CoreMLModels_WordEmbedding()
{
  result = qword_281537600;
  if (!qword_281537600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257631FCC()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257632060@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v1 = a1 + *(type metadata accessor for Proto_CoreMLModels_WordEmbedding() + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576320AC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3C0);
  __swift_project_value_buffer(v0, qword_27F8EA3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
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
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "modelParameterData";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2576322B8()
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
      case 100:
        OUTLINED_FUNCTION_10_7();
        sub_2577432D4();
        break;
      case 10:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 1:
        OUTLINED_FUNCTION_10_7();
        sub_2577433A4();
        break;
    }
  }

  return result;
}

uint64_t sub_257632350()
{
  if (!*v0 || (result = sub_257743544(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v1))
    {
      if (sub_2576FF394(*(v0 + 24), *(v0 + 32)) || (OUTLINED_FUNCTION_3_10(), result = sub_2577434D4(), !v1))
      {
        v5 = v0 + *(type metadata accessor for Proto_CoreMLModels_WordEmbedding() + 28);
        OUTLINED_FUNCTION_10_7();
        return sub_257743194();
      }
    }
  }

  return result;
}

uint64_t sub_257632444(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_CoreMLModels_WordEmbedding() + 28);
  sub_2577431B4();
  sub_257632930(&qword_27F879B68, MEMORY[0x277D216C8]);
  return sub_257743644() & 1;
}

uint64_t sub_257632524()
{
  sub_257743A14();
  type metadata accessor for Proto_CoreMLModels_WordEmbedding();
  sub_257632930(&qword_27F880318, type metadata accessor for Proto_CoreMLModels_WordEmbedding);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576325FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257632930(&qword_27F880328, type metadata accessor for Proto_CoreMLModels_WordEmbedding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257632678@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F879AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2577435B4();
  v3 = __swift_project_value_buffer(v2, qword_27F8EA3C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257632720(uint64_t a1)
{
  v2 = sub_257632930(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257632790()
{
  sub_257632930(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding);

  return sub_257743424();
}

uint64_t sub_257632930(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2576329C0()
{
  sub_257632A78();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257632A78()
{
  if (!qword_281537710)
  {
    type metadata accessor for Proto_CoreMLModels_WordTagger.OneOf_Tags(255);
    v0 = sub_2577437B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281537710);
    }
  }
}

uint64_t sub_257632AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257458A04);
}

uint64_t sub_257632B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_StringVector(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257458A7C);
}

uint64_t sub_257632BB0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_257632C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880358, &qword_25776B9A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_257634348(a1, &v26 - v16);
  sub_257634348(a2, &v17[v18]);
  sub_2576342EC(v17, v12, type metadata accessor for Proto_StringVector);
  sub_2576342EC(&v17[v18], v10, type metadata accessor for Proto_StringVector);
  if (sub_257479C78(*v12, *v10))
  {
    v19 = *(v4 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_3_21();
    sub_2576341BC(v20, v21);
    v22 = sub_257743644();
    sub_257634294(v10, type metadata accessor for Proto_StringVector);
    sub_257634294(v12, type metadata accessor for Proto_StringVector);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    sub_257634294(v10, type metadata accessor for Proto_StringVector);
    v24 = OUTLINED_FUNCTION_205();
    sub_257634294(v24, v25);
  }

  return 0;
}

uint64_t sub_257632E3C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8EA3D8);
  __swift_project_value_buffer(v0, qword_27F8EA3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577503A0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "revision";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_257743584();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "language";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 20;
  *v11 = "tokensOutputFeatureName";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 21;
  *v13 = "tokenTagsOutputFeatureName";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 22;
  *v15 = "tokenLocationsOutputFeatureName";
  *(v15 + 1) = 31;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 23;
  *v17 = "tokenLengthsOutputFeatureName";
  *(v17 + 1) = 29;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 100;
  *v19 = "modelParameterData";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 200;
  *v21 = "stringTags";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_257743594();
}